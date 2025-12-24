:github_url: hide

.. _class_InputEventMouse:

InputEventMouse
===============

**繼承：** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`

滑鼠事件的基本輸入事件型別。

.. rst-class:: classref-introduction-group

說明
----

儲存與滑鼠事件相關的通用資訊。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_InputEventMouse_property_button_mask>`         | ``0``             |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`global_position<class_InputEventMouse_property_global_position>` | ``Vector2(0, 0)`` |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`position<class_InputEventMouse_property_position>`               | ``Vector2(0, 0)`` |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventMouse_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``0`` :ref:`🔗<class_InputEventMouse_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

滑鼠按鍵遮罩識別字，\ :ref:`MouseButton<enum_@GlobalScope_MouseButton>` 按鈕遮罩或將其按位元組合。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

在 :ref:`Node._input()<class_Node_private_method__input>` 或 :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` 中獲取時，返回根 :ref:`Viewport<class_Viewport>` 中滑鼠的位置，使用根 :ref:`Viewport<class_Viewport>` 的坐標系。

在 :ref:`Control._gui_input()<class_Control_private_method__gui_input>` 中獲取時，返回該 :ref:`Control<class_Control>` 所在的 :ref:`CanvasLayer<class_CanvasLayer>` 中滑鼠的位置，使用該 :ref:`CanvasLayer<class_CanvasLayer>` 的坐標系。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

在 :ref:`Node._input()<class_Node_private_method__input>` 或 :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` 中獲取時，返回該 :ref:`Node<class_Node>` 所在 :ref:`Viewport<class_Viewport>` 中滑鼠的位置，使用該 :ref:`Viewport<class_Viewport>` 的坐標系。

在 :ref:`Control._gui_input()<class_Control_private_method__gui_input>` 中獲取時，返回該 :ref:`Control<class_Control>` 中滑鼠的位置，使用該 :ref:`Control<class_Control>` 的坐標系。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
