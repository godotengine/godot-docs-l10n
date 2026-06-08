:github_url: hide

.. _class_NodePath:

NodePath
========

A pre-parsed scene tree path.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El tipo :ref:`Variant<class_Variant>` integrado **NodePath** representa una ruta a un nodo o propiedad en una jerarquía de nodos. Está diseñado para pasarse de manera eficiente a muchos métodos integrados (como :ref:`Node.get_node()<class_Node_method_get_node>`, :ref:`Object.set_indexed()<class_Object_method_set_indexed>`, :ref:`Tween.tween_property()<class_Tween_method_tween_property>`, etc.) sin una dependencia estricta del nodo o propiedad al que apuntan.

Una ruta de nodo se representa como una :ref:`String<class_String>` compuesta por nombres de nodo separados por barras (``/``) y nombres de propiedad separados por dos puntos (``:``) (también llamados "subnombres"). De manera similar a una ruta de sistema de archivos, ``".."`` y ``"."`` son nombres de nodo especiales. Hacen referencia al nodo superior y al nodo actual, respectivamente.

Los siguientes ejemplos son rutas relativas al nodo actual:

::

    ^"A" # Apunta al hijo directo A.
    ^"A/B" # Apunta al hijo B de A.
    ^"." # Apunta al nodo actual.
    ^".." # Apunta al nodo padre.
    ^"../C" # Apunta al nodo hermano C.
    ^"../.." # Apunta al nodo abuelo.

Una barra diagonal inicial significa que la ruta es absoluta y comienza desde :ref:`SceneTree<class_SceneTree>`:

::

    ^"/root" # Apunta a la ventana raíz de SceneTree.
    ^"/root/Title" # Puede apuntar al nodo raíz de la escena principal llamado "Title".
    ^"/root/Global" # Puede apuntar a un nodo o escena cargados automáticamente llamados "Global".

A pesar de su nombre, las rutas de nodos también pueden apuntar a una propiedad:

::

    ^":position" # Apunta a la posición de este objeto.
    ^":position:x" # Apunta a la posición de este objeto en el eje x.
    ^"Camera3D:rotation:y" # Apunta a la cámara secundaria Camera3D y su rotación y.
    ^"/root:size:x" # Apunta a la ventana raíz y su ancho.

En algunas situaciones, es posible omitir el prefijo ``:`` inicial cuando se apunta a la propiedad de un objeto. Como ejemplo, este es el caso de :ref:`Object.set_indexed()<class_Object_method_set_indexed>` y :ref:`Tween.tween_property()<class_Tween_method_tween_property>`, ya que esos métodos llaman a :ref:`get_as_property_path()<class_NodePath_method_get_as_property_path>` en segundo plano. Sin embargo, generalmente se recomienda mantener el prefijo ``:``.

Las rutas de nodos no pueden comprobar si son válidas y pueden apuntar a nodos o propiedades que no existen. Su significado depende completamente del contexto en el que se utilizan.

Normalmente no hay que preocuparse por el tipo **NodePath**, ya que las strings se convierten automáticamente al tipo cuando es necesario. Aún hay ocasiones en las que definir rutas de nodos es útil. Por ejemplo, las propiedades **NodePath** exportadas permiten seleccionar fácilmente cualquier nodo dentro de la escena que se está editando actualmente. También se actualizan automáticamente al mover, renombrar o eliminar nodos en el editor del árbol de escenas. Véase también :ref:`@GDScript.@export_node_path<class_@GDScript_annotation_@export_node_path>`.

Véase también :ref:`StringName<class_StringName>`, que es un tipo similar diseñado para strings optimizadas.

\ **Nota:** En un contexto booleano, un **NodePath** se evaluará como ``false`` si está vacío (``NodePath("")``). De lo contrario, un **NodePath** siempre se evaluará como ``true``.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `2D Role Playing Game (RPG) Demo <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ )                                         |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`String<class_String>`\ )     |
   +---------------------------------+----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`get_as_property_path<class_NodePath_method_get_as_property_path>`\ (\ ) |const|                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_names<class_NodePath_method_get_concatenated_names>`\ (\ ) |const|                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_subnames<class_NodePath_method_get_concatenated_subnames>`\ (\ ) |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_NodePath_method_get_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_name_count<class_NodePath_method_get_name_count>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_subname<class_NodePath_method_get_subname>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_subname_count<class_NodePath_method_get_subname_count>`\ (\ ) |const|                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_NodePath_method_hash>`\ (\ ) |const|                                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_absolute<class_NodePath_method_is_absolute>`\ (\ ) |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_NodePath_method_is_empty>`\ (\ ) |const|                                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`slice<class_NodePath_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_NodePath_operator_neq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_NodePath_operator_eq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_NodePath_constructor_NodePath:

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ ) :ref:`🔗<class_NodePath_constructor_NodePath>`

Construye un **NodePath** vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`NodePath<class_NodePath>`\ )

Construye un **NodePath** como copia del **NodePath** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`String<class_String>`\ )

Construye un **NodePath** a partir de un :ref:`String<class_String>`. La ruta creada es absoluta si comienza con una barra (consulta el :ref:`is_absolute()<class_NodePath_method_is_absolute>`).

Los "subnombres" opcionales que se incluyen después de la ruta apuntando al nodo objetivo pueden hacer referencia a propiedades, y también pueden estar anidados.

Las siguientes cadenas pueden ser rutas válidas de nodos:

::

    # Apunta al nodo Sprite2D.
    "Level/RigidBody2D/Sprite2D"

    # Señala al nodo Sprite2D y a su recurso "texture".
    # get_node() recuperaría el Sprite2D, mientras que get_node_and_resource()
    # recuperaría tanto el nodo Sprite2D como el recurso "texture".
    "Level/RigidBody2D/Sprite2D:texture"

    # Apunta al nodo Sprite2D y a su propiedad "position".
    "Level/RigidBody2D/Sprite2D:position"

    # Señala al nodo Sprite2D y al componente "x" de su propiedad "position".
    "Level/RigidBody2D/Sprite2D:position:x"

    # Apunta al nodo RigidBody2D como una ruta absoluta comenzando desde el SceneTree.
    "/root/Level/RigidBody2D"

\ **Nota:** En GDScript, también es posible convertir una cadena constante en una ruta de nodo anteponiéndole ``^``. ``^"path/to/node"`` es equivalente a ``NodePath("path/to/node")``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NodePath_method_get_as_property_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_as_property_path**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_as_property_path>`

Returns a copy of this node path with a colon character (``:``) prefixed, transforming it to a pure property path with no node names (relative to the current node).


.. tabs::

 .. code-tab:: gdscript

    # node_path points to the "x" property of the child node named "position".
    var node_path = ^"position:x"

    # property_path points to the "position" in the "x" axis of this node.
    var property_path = node_path.get_as_property_path()
    print(property_path) # Prints ":position:x"

 .. code-tab:: csharp

    // nodePath points to the "x" property of the child node named "position".
    var nodePath = new NodePath("position:x");

    // propertyPath points to the "position" in the "x" axis of this node.
    NodePath propertyPath = nodePath.GetAsPropertyPath();
    GD.Print(propertyPath); // Prints ":position:x"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_names**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_names>`

Devuelve todos los nombres de nodo concatenados con una barra inclinada (``/``) como un solo :ref:`StringName<class_StringName>`.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_subnames:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_subnames**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_subnames>`

Returns all property subnames concatenated with a colon character (``:``) as a single :ref:`StringName<class_StringName>`.


.. tabs::

 .. code-tab:: gdscript

    var node_path = ^"Sprite2D:texture:resource_name"
    print(node_path.get_concatenated_subnames()) # Prints "texture:resource_name"

 .. code-tab:: csharp

    var nodePath = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(nodePath.GetConcatenatedSubnames()); // Prints "texture:resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_name>`

Returns the node name indicated by ``idx``, starting from 0. If ``idx`` is out of bounds, an error is generated. See also :ref:`get_subname_count()<class_NodePath_method_get_subname_count>` and :ref:`get_name_count()<class_NodePath_method_get_name_count>`.


.. tabs::

 .. code-tab:: gdscript

    var sprite_path = NodePath("../RigidBody2D/Sprite2D")
    print(sprite_path.get_name(0)) # Prints ".."
    print(sprite_path.get_name(1)) # Prints "RigidBody2D"
    print(sprite_path.get_name(2)) # Prints "Sprite"

 .. code-tab:: csharp

    var spritePath = new NodePath("../RigidBody2D/Sprite2D");
    GD.Print(spritePath.GetName(0)); // Prints ".."
    GD.Print(spritePath.GetName(1)); // Prints "PathFollow2D"
    GD.Print(spritePath.GetName(2)); // Prints "Sprite"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_name_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_name_count>`

Returns the number of node names in the path. Property subnames are not included.

For example, ``"../RigidBody2D/Sprite2D:texture"`` contains 3 node names.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_subname**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_subname>`

Returns the property name indicated by ``idx``, starting from 0. If ``idx`` is out of bounds, an error is generated. See also :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`.


.. tabs::

 .. code-tab:: gdscript

    var path_to_name = NodePath("Sprite2D:texture:resource_name")
    print(path_to_name.get_subname(0)) # Prints "texture"
    print(path_to_name.get_subname(1)) # Prints "resource_name"

 .. code-tab:: csharp

    var pathToName = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(pathToName.GetSubname(0)); // Prints "texture"
    GD.Print(pathToName.GetSubname(1)); // Prints "resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subname_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_subname_count>`

Devuelve el número de nombres de propiedades ("subnombres") en la ruta. Cada subnombre en la ruta del nodo se lista después de un carácter de dos puntos (``:``).

Por ejemplo, ``"Level/RigidBody2D/Sprite2D:texture:resource_name"`` contiene 2 subnombres.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_NodePath_method_hash>`

Devuelve el valor hash de 32 bits que representa el contenido de la ruta del nodo.

\ **Nota:** Las rutas de nodo con valores hash iguales *no* garantizan ser las mismas, como resultado de colisiones de hash. Las rutas de nodo con valores hash diferentes garantizan ser diferentes.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_absolute**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_absolute>`

Devuelve ``true`` si la ruta del nodo es absoluta. A diferencia de una ruta relativa, una ruta absoluta se representa con un carácter de barra inicial (``/``) y siempre comienza desde el :ref:`SceneTree<class_SceneTree>`. Se puede utilizar para acceder de forma fiable a los nodos desde el nodo raíz (por ejemplo, ``"/root/Global"`` si existe una autocarga llamada "Global").

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_empty>`

Devuelve ``true`` si la ruta del nodo ha sido construida a partir de una :ref:`String<class_String>` vacía (``""``).

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_slice:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_NodePath_method_slice>`

Devuelve una porción de la **NodePath**, desde ``begin`` (inclusive) hasta ``end`` (exclusive), como una nueva **NodePath**.

El valor absoluto de ``begin`` y ``end`` se ajustará a la suma de :ref:`get_name_count()<class_NodePath_method_get_name_count>` y :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`, por lo que el valor predeterminado de ``end`` hace que la porción vaya hasta el final de la **NodePath** por defecto (es decir, ``path.slice(1)`` es una abreviatura de ``path.slice(1, path.get_name_count() + path.get_subname_count())``).

Si ``begin`` o ``end`` son negativos, serán relativos al final de la **NodePath** (es decir, ``path.slice(0, -2)`` es una abreviatura de ``path.slice(0, path.get_name_count() + path.get_subname_count() - 2)``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_NodePath_operator_neq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_neq_NodePath>`

Devuelve ``true`` si dos rutas de nodo no son iguales.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_operator_eq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_eq_NodePath>`

Devuelve ``true`` si dos rutas de nodo son iguales, es decir, si están compuestas por los mismos nombres de nodo y subnombres en el mismo orden.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
