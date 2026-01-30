:github_url: hide

.. _class_InputEventGesture:

InputEventGesture
=================

**繼承：** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>`, :ref:`InputEventPanGesture<class_InputEventPanGesture>`

觸摸手勢的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

使用者在觸控式螢幕上執行支援的手勢時會發送 InputEventGesture。無法用滑鼠類比手勢，因為手勢一般都要求多點觸控。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventGesture_property_position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventGesture_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventGesture_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

相對於\ :ref:`Viewport<class_Viewport>`\ 的本地手勢位置。如果在\ :ref:`Control._gui_input()<class_Control_private_method__gui_input>`\ 中使用，位置是相對於目前接收該手勢的控制項\ :ref:`Control<class_Control>`\ 而言的。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
