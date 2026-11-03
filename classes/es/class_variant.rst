:github_url: hide

.. _class_Variant:

Variant
=======

El tipo de dato más importante de Godot.

.. rst-class:: classref-introduction-group

Descripción
----------------------

En programación, una clase Variant (variante en español) es una clase que está diseñada para almacenar datos de cualquier tipo. A los lenguajes de programación dinámicos como PHP, Lua, JavaScript y GDScript les gusta usarlos para almacenar datos de variables en el backend. Gracias a las variantes, las variables son capaces de cambiar el tipo de valor que contienen libremente.


.. tabs::

 .. code-tab:: gdscript

    var foo = 2 # foo es dinámicamente un entero
    foo = "¡Ahora foo es una string!"
    foo = RefCounted.new() # foo es un objeto
    var bar: int = 2 # bar es estáticamente un entero.
    # bar = "¡Uh oh, no puedo hacer que las variables estáticamente escritas se conviertan en un tipo diferente!"

 .. code-tab:: csharp

    // C# Es de tipado estático. Una vez que una variable tiene un tipo de datos establecido, este no podrá ser cambiado más adelante. Puedes utilizar la palabra clave `var` para dejar que el compilador deduzca el tipo de datos de la variable automáticamente.
    var foo = 2; // foo es un entero (int) de 32 bits. Ten cuidado, los números enteros en GDScript son de 64 bits y su equivalente directo en C# es `long`.
    // foo = "foo fue y siempre será un entero, por lo tanto no se puede convertir en una string";
    var boo = "¡boo es una string!";
    var referencia = new RefCounted(); //`var` es especialmente útil cuando se utiliza junto con un constructor.

    // Godot también provee un tipo de variante que funciona como una unión para todos los tipos de datos que son compatibles con Variant.
    Variant mivariable = 2; // mivariable es dinámicamente un entero (almacenado como un `long` dentro de la variante).
    mivariable = "¡Ahora mivariable es una string!";
    mivariable = new RefCounted(); // mivariable es un objeto de tipo GodotObject.



Godot rastrea todas las variables de la API de scripting dentro de variantes. Sin siquiera darte cuenta, utilizas las variantes todo el tiempo. Cuando un determinado lenguaje aplica sus propias reglas para mantener los datos escritos, entonces ese lenguaje está aplicando su propia lógica personalizada sobre las bases de la API de scripting basada en variantes.

- GDScript envuelve automáticamente los valores en ellas. Mantiene todos los datos de las variables en variantes simples de forma predeterminada y luego, opcionalmente, aplica reglas de escritura estática personalizadas en los tipos de variables.

- C# es de tipado estático, pero utiliza su propia implementación del tipo Variant en lugar de utilizar la clase **Variant** de Godot cuando se necesita representar un valor dinámico. A una variante en C# se le puede asignar implícitamente cualquier tipo compatible, pero convertirla requiere un cast específico.

La función global :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` devuelve el valor enumerado del tipo de variante almacenado en la variable actual (véase :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`).


.. tabs::

 .. code-tab:: gdscript

    var foo = 2
    match typeof(foo):
        TYPE_NIL:
            print("foo es nulo (null)")
        TYPE_INTEGER:
            print("foo es un entero")
        TYPE_OBJECT:
            # Ten en cuenta que los objetos son su propia categoría especial.
            # Para obtener el nombre del tipo de objeto subyacente, necesitas el método `get_class()`.
            print("foo es un(a) %s" % foo.get_class()) # Inyecta el nombre de la clase en una string formateada.
            # Ten presente que el método `get_class()` no toma en cuenta el valor del identificador global`class_name` de un script.
            # Si necesitas obtener ese valor debes usar `foo.get_script().get_global_name()`

 .. code-tab:: csharp

    Variant foo = 2;
    switch (foo.VariantType)
    {
        case Variant.Type.Nil:
            GD.Print("foo es nulo (null)");
            break;
        case Variant.Type.Int:
            GD.Print("foo es un entero");
            break;
        case Variant.Type.Object:
            // Ten en cuenta que los objetos son su propia categoría especial.
            // Puedes convertir una variante a un objeto de tipo GodotObject y usar la reflección para obtener su nombre.
            GD.Print($"foo es un(a) {foo.AsGodotObject().GetType().Name}");
            break;
    }



Una variante sólo ocupa 20 bytes y puede almacenar casi cualquier tipo de dato del motor en su interior. Las variantes rara vez se utilizan para mantener información durante largos periodos de tiempo. En cambio, se utilizan principalmente para la comunicación, la edición, la serialización y el desplazamiento de datos.

Godot ha invertido específicamente en hacer que su clase Variant sea lo más flexible posible; tanto es así que se utiliza para una multitud de operaciones para facilitar la comunicación entre todos los sistemas de Godot.

Una variante:

- Puede almacenar casi cualquier tipo de datos.

- Puede realizar operaciones entre muchas variantes. GDScript utiliza **Variant** como su tipo de dato atómico/nativo.

- Puede ser "hashed", por lo que puede ser comparado rápidamente con otras variantes.

- Puede ser usado para convertir con seguridad entre tipos de datos.

- Puede ser usado para abstraer métodos que están siendo llamados y sus argumentos. Godot exporta todas sus funciones a través de variantes.

- Puede utilizarse para diferir llamadas o mover datos entre hilos.

- Puede ser serializado como binario y ser almacenado en el disco, o transferido a través de la red.

- Puede ser serializado como texto y ser usado para imprimir valores y configuraciones editables.

- Puede funcionar como una propiedad exportada, de modo que el editor puede editarla globalmente.

- Puede ser usado por diccionarios, arrays, parsers, etc.

\ **Los contenedores (Array y Dictionary):** Ambos están implementados utilizando variantes. Un :ref:`Dictionary<class_Dictionary>` puede hacer coincidir cualquier tipo de datos utilizado como clave con cualquier otro tipo de datos. Un :ref:`Array<class_Array>` solo contiene un array de variantes. Por supuesto, una variante también puede contener un :ref:`Dictionary<class_Dictionary>` y un :ref:`Array<class_Array>` en su interior, lo que lo hace aún más flexible.

Las modificaciones a un contenedor modificarán todas las referencias que apuntan hacia él. Debe crearse un :ref:`Mutex<class_Mutex>` para bloquearla si deseas un acceso multihilo.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la clase Variant <../engine_details/architecture/variant_class>`

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
