:github_url: hide

.. _class_JavaClassWrapper:

JavaClassWrapper
================

**Hereda:** :ref:`Object<class_Object>`

Proporciona acceso a la Interfaz Nativa de Java.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El singleton JavaClassWrapper proporciona una forma para que la aplicación de Godot envíe y reciba datos a través de la `Interfaz Nativa de Java <https://developer.android.com/training/articles/perf-jni>`__ (JNI).

\ **Nota:** Este singleton solo está disponible en compilaciones de Android.

::

    var LocalDateTime = JavaClassWrapper.wrap("java.time.LocalDateTime")
    var DateTimeFormatter = JavaClassWrapper.wrap("java.time.format.DateTimeFormatter")

    var datetime = LocalDateTime.now()
    var formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")

    print(datetime.format(formatter))

\ **Advertencia:** Al llamar a métodos Java, asegúrate de verificar :ref:`get_exception()<class_JavaClassWrapper_method_get_exception>` para comprobar si el método lanzó una excepción.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Integración con las API de Android <../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaObject<class_JavaObject>` | :ref:`create_proxy<class_JavaClassWrapper_method_create_proxy>`\ (\ object\: :ref:`Object<class_Object>`, interfaces\: :ref:`PackedStringArray<class_PackedStringArray>`\ )  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaObject<class_JavaObject>` | :ref:`create_sam_callback<class_JavaClassWrapper_method_create_sam_callback>`\ (\ sam_interface\: :ref:`String<class_String>`, callable\: :ref:`Callable<class_Callable>`\ ) |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaObject<class_JavaObject>` | :ref:`get_exception<class_JavaClassWrapper_method_get_exception>`\ (\ )                                                                                                      |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>`   | :ref:`wrap<class_JavaClassWrapper_method_wrap>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                    |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_JavaClassWrapper_method_create_proxy:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **create_proxy**\ (\ object\: :ref:`Object<class_Object>`, interfaces\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_JavaClassWrapper_method_create_proxy>`

Creates a :ref:`JavaObject<class_JavaObject>` implementing the given Java interfaces using the given :ref:`Object<class_Object>` as the implementation.

The ``object`` must contain methods signatures matching the methods signatures from the passed Java ``interfaces``. Invoking methods from the Java ``interfaces`` will route to the matching ``object`` method.

::

    class PrintProxy:
        func println(content: String) -> void:
            print(content)

    var print_proxy = PrintProxy.new()
    var printer_object = JavaClassWrapper.create_proxy(print_proxy, ["android.util.Printer"])
    printer_object.println("Hello Godot World!")

\ **Note:** This method only works on Android. On every other platform, this method will always return ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_create_sam_callback:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **create_sam_callback**\ (\ sam_interface\: :ref:`String<class_String>`, callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaClassWrapper_method_create_sam_callback>`

Creates a :ref:`JavaObject<class_JavaObject>` implementing the Java Single Abstract Method (SAM) interface using the Godot :ref:`Callable<class_Callable>` as the implementation.

The ``sam_interface`` **must be** a Java SAM interface, meaning it must only have a single abstract method to implement.

The ``callable`` must be able to handle the same parameter types as the SAM interface method, and must provide the same return type. The ``callable`` will be invoked as a callback, passing the arguments from the Java SAM interface method.

::

    var cb = func (content: String) -> void:
        print(content)
    var callback = JavaClassWrapper.create_sam_callback("android.util.Printer", cb)
    callback.println("Hello Godot World!")

\ **Note:** This method only works on Android. On every other platform, this method will always return ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_get_exception:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_exception**\ (\ ) :ref:`🔗<class_JavaClassWrapper_method_get_exception>`

Devuelve la excepción Java de la última llamada a una clase Java. Si no hubo ninguna excepción, devolverá ``null``.

\ **Nota:** Este método solo funciona en Android. En cualquier otra plataforma, este método siempre devolverá ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_wrap:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **wrap**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaClassWrapper_method_wrap>`

Envuelve una clase definida en Java y la devuelve como un tipo :ref:`Object<class_Object>` :ref:`JavaClass<class_JavaClass>` con el que Godot puede interactuar.

Al envolver clases internas (anidadas), utiliza ``$`` en lugar de ``.`` para separarlas. Por ejemplo, ``JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")`` envuelve la clase **WindowManager.LayoutParams**.

\ **Nota:** Para invocar un constructor, llama a un método con el mismo nombre que la clase. Por ejemplo:

::

    var Intent = JavaClassWrapper.wrap("android.content.Intent")
    var intent = Intent.Intent()

\ **Nota:** Este método solo funciona en Android. En cualquier otra plataforma, este método no hace nada y devuelve una :ref:`JavaClass<class_JavaClass>` vacía.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
