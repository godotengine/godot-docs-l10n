:github_url: hide

.. _class_JavaClassWrapper:

JavaClassWrapper
================

**繼承：** :ref:`Object<class_Object>`

Provides access to the Java Native Interface.

.. rst-class:: classref-introduction-group

說明
----

The JavaClassWrapper singleton provides a way for the Godot application to send and receive data through the `Java Native Interface <https://developer.android.com/training/articles/perf-jni>`__ (JNI).

\ **Note:** This singleton is only available in Android builds.

::

    var LocalDateTime = JavaClassWrapper.wrap("java.time.LocalDateTime")
    var DateTimeFormatter = JavaClassWrapper.wrap("java.time.format.DateTimeFormatter")

    var datetime = LocalDateTime.now()
    var formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")

    print(datetime.format(formatter))

\ **Warning:** When calling Java methods, be sure to check :ref:`get_exception()<class_JavaClassWrapper_method_get_exception>` to check if the method threw an exception.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`Integrating with Android APIs <../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin>`

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

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

Returns the Java exception from the last call into a Java class. If there was no exception, it will return ``null``.

\ **Note:** This method only works on Android. On every other platform, this method will always return ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_wrap:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **wrap**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaClassWrapper_method_wrap>`

Wraps a class defined in Java, and returns it as a :ref:`JavaClass<class_JavaClass>` :ref:`Object<class_Object>` type that Godot can interact with.

When wrapping inner (nested) classes, use ``$`` instead of ``.`` to separate them. For example, ``JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")`` wraps the **WindowManager.LayoutParams** class.

\ **Note:** To invoke a constructor, call a method with the same name as the class. For example:

::

    var Intent = JavaClassWrapper.wrap("android.content.Intent")
    var intent = Intent.Intent()

\ **Note:** This method only works on Android. On every other platform, this method does nothing and returns an empty :ref:`JavaClass<class_JavaClass>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
