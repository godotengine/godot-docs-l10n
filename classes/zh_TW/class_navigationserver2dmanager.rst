:github_url: hide

.. _class_NavigationServer2DManager:

NavigationServer2DManager
=========================

**繼承：** :ref:`Object<class_Object>`

用於管理 :ref:`NavigationServer2D<class_NavigationServer2D>` 實作的單例。

.. rst-class:: classref-introduction-group

說明
----

**NavigationServer2DManager** 是用於注冊 :ref:`NavigationServer2D<class_NavigationServer2D>` 實作並設定預設實作的 API。

\ **注意：**\ 無法在執行時中切換伺服器。該類僅在啟動時在伺服器初始化階段使用。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_server<class_NavigationServer2DManager_method_register_server>`\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_default_server<class_NavigationServer2DManager_method_set_default_server>`\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ )            |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NavigationServer2DManager_method_register_server:

.. rst-class:: classref-method

|void| **register_server**\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_NavigationServer2DManager_method_register_server>`

通過傳遞 ``name`` 和一個回傳 :ref:`NavigationServer2D<class_NavigationServer2D>` 物件的 :ref:`Callable<class_Callable>`\ ，注冊一個 :ref:`NavigationServer2D<class_NavigationServer2D>` 實作。

.. rst-class:: classref-item-separator

----

.. _class_NavigationServer2DManager_method_set_default_server:

.. rst-class:: classref-method

|void| **set_default_server**\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationServer2DManager_method_set_default_server>`

如果 ``priority`` 的值大於目前預設實作的優先級，則將預設的 :ref:`NavigationServer2D<class_NavigationServer2D>` 實作設定為由 ``name`` 指定的實作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
