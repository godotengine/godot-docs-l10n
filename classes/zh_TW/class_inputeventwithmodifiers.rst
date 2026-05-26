:github_url: hide

.. _class_InputEventWithModifiers:

InputEventWithModifiers
=======================

**繼承：** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`InputEventGesture<class_InputEventGesture>`, :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouse<class_InputEventMouse>`

受 :kbd:`Shift` 和 :kbd:`Alt` 等修飾鍵影響的輸入事件的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

Stores information about mouse, keyboard, and touch gesture input events. This includes information about which modifier keys are pressed, such as :kbd:`Shift` or :kbd:`Alt`. See :ref:`Node._input()<class_Node_private_method__input>`.

\ **Note:** Modifier keys are considered modifiers only when used in combination with another key. As a result, their corresponding member variables, such as :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>`, will return ``false`` if the key is pressed on its own.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`alt_pressed<class_InputEventWithModifiers_property_alt_pressed>`                                   | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`command_or_control_autoremap<class_InputEventWithModifiers_property_command_or_control_autoremap>` | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>`                                 | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | device                                                                                                   | ``16`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>`                                 | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`shift_pressed<class_InputEventWithModifiers_property_shift_pressed>`                               | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] | :ref:`get_modifiers_mask<class_InputEventWithModifiers_method_get_modifiers_mask>`\ (\ ) |const|                       |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`is_command_or_control_pressed<class_InputEventWithModifiers_method_is_command_or_control_pressed>`\ (\ ) |const| |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventWithModifiers_property_alt_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **alt_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_alt_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_alt_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_alt_pressed**\ (\ )

:kbd:`Alt` 修飾鍵的狀態。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_command_or_control_autoremap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **command_or_control_autoremap** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_command_or_control_autoremap>`

.. rst-class:: classref-property-setget

- |void| **set_command_or_control_autoremap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_command_or_control_autoremap**\ (\ )

自動在 macOS 上使用 :kbd:`Meta`\ （\ :kbd:`Command`\ ），在其他平臺上使用 :kbd:`Ctrl`\ 。如果為 ``true``\ ，則無法設定 :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>` 和 :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_ctrl_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ctrl_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_ctrl_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_ctrl_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ctrl_pressed**\ (\ )

:kbd:`Ctrl` 修飾鍵的狀態。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_meta_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meta_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_meta_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_meta_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_meta_pressed**\ (\ )

:kbd:`Meta` 修飾鍵的狀態。在 Windows 和 Linux 上代表 Windows 鍵（有時在 Linux 上稱為“meta”或“super”鍵）。在 macOS 上代表 Command 鍵。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_shift_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shift_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_shift_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_shift_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shift_pressed**\ (\ )

:kbd:`Shift` 修飾鍵的狀態。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_InputEventWithModifiers_method_get_modifiers_mask:

.. rst-class:: classref-method

|bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] **get_modifiers_mask**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_get_modifiers_mask>`

返回修飾鍵的鍵碼組合。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_method_is_command_or_control_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_command_or_control_pressed**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_is_command_or_control_pressed>`

在 macOS 上，如果 :kbd:`Meta`\ （\ :kbd:`Command`\ ）是按下狀態，則返回 ``true`` 。

在其他平臺上，如果 :kbd:`Ctrl` 是按下狀態，則返回 ``true`` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
