:github_url: hide

.. meta::
	:keywords: gamepad, controller

.. _class_InputEventJoypadButton:

InputEventJoypadButton
======================

**繼承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表按下或鬆開的遊戲控制器按鈕。

.. rst-class:: classref-introduction-group

說明
----

遊戲控制器按鈕的輸入事件型別。對於遊戲控制器模擬搖桿和操縱桿，請參閱 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`JoyButton<enum_@GlobalScope_JoyButton>` | :ref:`button_index<class_InputEventJoypadButton_property_button_index>` | ``0``     |
   +-----------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                       | :ref:`pressed<class_InputEventJoypadButton_property_pressed>`           | ``false`` |
   +-----------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                     | :ref:`pressure<class_InputEventJoypadButton_property_pressure>`         | ``0.0``   |
   +-----------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventJoypadButton_property_button_index:

.. rst-class:: classref-property

:ref:`JoyButton<enum_@GlobalScope_JoyButton>` **button_index** = ``0`` :ref:`🔗<class_InputEventJoypadButton_property_button_index>`

.. rst-class:: classref-property-setget

- |void| **set_button_index**\ (\ value\: :ref:`JoyButton<enum_@GlobalScope_JoyButton>`\ )
- :ref:`JoyButton<enum_@GlobalScope_JoyButton>` **get_button_index**\ (\ )

按鈕識別字。\ :ref:`JoyButton<enum_@GlobalScope_JoyButton>` 按鈕常數之一。

.. rst-class:: classref-item-separator

----

.. _class_InputEventJoypadButton_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventJoypadButton_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

如果為 ``true``\ ，按鈕的狀態被按下。如果為 ``false``\ ，按鈕的狀態被釋放。

.. rst-class:: classref-item-separator

----

.. _class_InputEventJoypadButton_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventJoypadButton_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

**已棄用：** This property is never set by the engine and is always ``0``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
