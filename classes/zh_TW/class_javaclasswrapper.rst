:github_url: hide

.. _class_JavaClassWrapper:

JavaClassWrapper
================

**繼承：** :ref:`Object<class_Object>`

提供對 Java 原生介面的存取。

.. rst-class:: classref-introduction-group

說明
----

JavaClassWrapper 單例為 Godot 應用程式提供了一種通過 `Java 原生介面 <https://developer.android.com/training/articles/perf-jni>`__\ （JNI）發送和接收資料的方法。

\ **注意：**\ 該單例僅適用於 Android 版本。

::

    var LocalDateTime = JavaClassWrapper.wrap("java.time.LocalDateTime")
    var DateTimeFormatter = JavaClassWrapper.wrap("java.time.format.DateTimeFormatter")

    var datetime = LocalDateTime.now()
    var formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")

    print(datetime.format(formatter))

\ **警告：**\ 呼叫 Java 方法時，請確保使用 :ref:`get_exception()<class_JavaClassWrapper_method_get_exception>` 檢查該方法是否拋出了異常。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`與 Android API 的集成 <../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin>`

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

建立一個實作指定 Java 介面的 :ref:`JavaObject<class_JavaObject>`\ ，並使用給定的 :ref:`Object<class_Object>` 作為具體實作。

\ ``object`` 必須包含與傳入的 Java ``interfaces`` 中方法簽名相匹配的方法簽名。呼叫 Java ``interfaces`` 中的方法時，將路由至對應的 ``object`` 方法。

::

    class PrintProxy:
        func println(content: String) -> void:
            print(content)

    var print_proxy = PrintProxy.new()
    var printer_object = JavaClassWrapper.create_proxy(print_proxy, ["android.util.Printer"])
    printer_object.println("Hello Godot World!")

\ **注意：** 該方法僅適用於 Android 平台。在其他所有平台上，該方法始終回傳 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_create_sam_callback:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **create_sam_callback**\ (\ sam_interface\: :ref:`String<class_String>`, callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaClassWrapper_method_create_sam_callback>`

建立一個實作 Java 單一抽象方法（SAM）介面的 :ref:`JavaObject<class_JavaObject>`\ ，並使用 Godot 的 :ref:`Callable<class_Callable>` 作為具體實作。

\ ``sam_interface`` **必須**\ 是一個 Java SAM 介面，這意味著它必須僅包含一個需要實作的抽象方法。

\ ``callable`` 必須能夠處理與 SAM 介面方法相同的參數型別，並提供相同的回傳型別。該 ``callable`` 將作為回呼被呼叫，並傳入來自 Java SAM 介面方法的參數。

::

    var cb = func (content: String) -> void:
        print(content)
    var callback = JavaClassWrapper.create_sam_callback("android.util.Printer", cb)
    callback.println("Hello Godot World!")

\ **注意：** 該方法僅適用於 Android 平台。在其他所有平台上，該方法始終回傳 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_get_exception:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_exception**\ (\ ) :ref:`🔗<class_JavaClassWrapper_method_get_exception>`

回傳最近一次呼叫 Java 類時產生的 Java 異常。如果沒有產生異常則回傳 ``null``\ 。

\ **注意：**\ 該方法僅在 Android 上有效。該方法在其他平台上始終回傳 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_wrap:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **wrap**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaClassWrapper_method_wrap>`

包裝 Java 中定義的類，回傳 Godot 可以與之互動的 :ref:`Object<class_Object>` 型別 :ref:`JavaClass<class_JavaClass>`\ 。

包裝內部（巢狀）類時請使用 ``$`` 分隔，不要用 ``.``\ 。例如 **WindowManager.LayoutParams** 類應使用 ``JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")`` 進行包裝。

\ **注意：**\ 呼叫建構函式請呼叫與類同名的方法。例如：

::

    var Intent = JavaClassWrapper.wrap("android.content.Intent")
    var intent = Intent.Intent()

\ **注意：**\ 該方法僅適用於 Android，在其他所有平台上都不會執行任何操作，回傳的是空的 :ref:`JavaClass<class_JavaClass>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
