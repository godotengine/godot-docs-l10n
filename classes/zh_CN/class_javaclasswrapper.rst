:github_url: hide

.. _class_JavaClassWrapper:

JavaClassWrapper
================

**继承：** :ref:`Object<class_Object>`

提供对 Java 原生接口的访问。

.. rst-class:: classref-introduction-group

描述
----

JavaClassWrapper 单例为 Godot 应用程序提供了一种通过 `Java 原生接口 <https://developer.android.com/training/articles/perf-jni>`__\ （JNI）发送和接收数据的方法。

\ **注意：**\ 该单例仅适用于 Android 版本。

::

    var LocalDateTime = JavaClassWrapper.wrap("java.time.LocalDateTime")
    var DateTimeFormatter = JavaClassWrapper.wrap("java.time.format.DateTimeFormatter")

    var datetime = LocalDateTime.now()
    var formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")

    print(datetime.format(formatter))

\ **警告：**\ 调用 Java 方法时，请确保使用 :ref:`get_exception()<class_JavaClassWrapper_method_get_exception>` 检查该方法是否抛出了异常。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`与 Android API 的集成 <../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin>`

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

方法说明
--------

.. _class_JavaClassWrapper_method_create_proxy:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **create_proxy**\ (\ object\: :ref:`Object<class_Object>`, interfaces\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_JavaClassWrapper_method_create_proxy>`

创建一个实现指定 Java 接口的 :ref:`JavaObject<class_JavaObject>`\ ，并使用给定的 :ref:`Object<class_Object>` 作为具体实现。

\ ``object`` 必须包含与传入的 Java ``interfaces`` 中方法签名相匹配的方法签名。调用 Java ``interfaces`` 中的方法时，将路由至对应的 ``object`` 方法。

::

    class PrintProxy:
        func println(content: String) -> void:
            print(content)

    var print_proxy = PrintProxy.new()
    var printer_object = JavaClassWrapper.create_proxy(print_proxy, ["android.util.Printer"])
    printer_object.println("Hello Godot World!")

\ **注意：** 该方法仅适用于 Android 平台。在其他所有平台上，该方法始终返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_create_sam_callback:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **create_sam_callback**\ (\ sam_interface\: :ref:`String<class_String>`, callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaClassWrapper_method_create_sam_callback>`

创建一个实现 Java 单一抽象方法（SAM）接口的 :ref:`JavaObject<class_JavaObject>`\ ，并使用 Godot 的 :ref:`Callable<class_Callable>` 作为具体实现。

\ ``sam_interface`` **必须**\ 是一个 Java SAM 接口，这意味着它必须仅包含一个需要实现的抽象方法。

\ ``callable`` 必须能够处理与 SAM 接口方法相同的参数类型，并提供相同的返回类型。该 ``callable`` 将作为回调被调用，并传入来自 Java SAM 接口方法的参数。

::

    var cb = func (content: String) -> void:
        print(content)
    var callback = JavaClassWrapper.create_sam_callback("android.util.Printer", cb)
    callback.println("Hello Godot World!")

\ **注意：** 该方法仅适用于 Android 平台。在其他所有平台上，该方法始终返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_get_exception:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_exception**\ (\ ) :ref:`🔗<class_JavaClassWrapper_method_get_exception>`

返回最近一次调用 Java 类时产生的 Java 异常。如果没有产生异常则返回 ``null``\ 。

\ **注意：**\ 该方法仅在 Android 上有效。该方法在其他平台上始终返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_wrap:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **wrap**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaClassWrapper_method_wrap>`

包装 Java 中定义的类，返回 Godot 可以与之交互的 :ref:`Object<class_Object>` 类型 :ref:`JavaClass<class_JavaClass>`\ 。

包装内部（嵌套）类时请使用 ``$`` 分隔，不要用 ``.``\ 。例如 **WindowManager.LayoutParams** 类应使用 ``JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")`` 进行包装。

\ **注意：**\ 调用构造函数请调用与类同名的方法。例如：

::

    var Intent = JavaClassWrapper.wrap("android.content.Intent")
    var intent = Intent.Intent()

\ **注意：**\ 该方法仅适用于 Android，在其他所有平台上都不会执行任何操作，返回的是空的 :ref:`JavaClass<class_JavaClass>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
