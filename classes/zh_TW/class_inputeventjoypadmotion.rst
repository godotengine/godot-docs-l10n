:github_url: hide

.. meta::
	:keywords: gamepad, controller

.. _class_InputEventJoypadMotion:

InputEventJoypadMotion
======================

**繼承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表遊戲手柄的軸運動（例如搖桿和模擬扳機）。

.. rst-class:: classref-introduction-group

說明
----

儲存關於搖桿運動的資訊。一個 **InputEventJoypadMotion** 一次代表一個軸。遊戲手柄按鈕見 :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------+---------------------------------------------------------------------+---------+
   | :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` | :ref:`axis<class_InputEventJoypadMotion_property_axis>`             | ``0``   |
   +-------------------------------------------+---------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                 | :ref:`axis_value<class_InputEventJoypadMotion_property_axis_value>` | ``0.0`` |
   +-------------------------------------------+---------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventJoypadMotion_property_axis:

.. rst-class:: classref-property

:ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` **axis** = ``0`` :ref:`🔗<class_InputEventJoypadMotion_property_axis>`

.. rst-class:: classref-property-setget

- |void| **set_axis**\ (\ value\: :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>`\ )
- :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` **get_axis**\ (\ )

Axis identifier.

.. rst-class:: classref-item-separator

----

.. _class_InputEventJoypadMotion_property_axis_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **axis_value** = ``0.0`` :ref:`🔗<class_InputEventJoypadMotion_property_axis_value>`

.. rst-class:: classref-property-setget

- |void| **set_axis_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_axis_value**\ (\ )

操縱桿在給定軸上的目前位置。該值範圍從 ``-1.0`` 到 ``1.0``\ 。值為 ``0`` 意味著軸處於靜止位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
