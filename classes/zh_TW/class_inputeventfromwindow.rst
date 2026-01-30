:github_url: hide

.. _class_InputEventFromWindow:

InputEventFromWindow
====================

**繼承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`

基於 :ref:`Viewport<class_Viewport>` 的輸入事件的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

InputEventFromWindow 代表明確由視窗接收的事件。包括滑鼠事件、聚焦視窗中的鍵盤事件或觸屏動作。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`window_id<class_InputEventFromWindow_property_window_id>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventFromWindow_property_window_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **window_id** = ``0`` :ref:`🔗<class_InputEventFromWindow_property_window_id>`

.. rst-class:: classref-property-setget

- |void| **set_window_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_window_id**\ (\ )

接收這個事件的 :ref:`Window<class_Window>` 的 ID。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
