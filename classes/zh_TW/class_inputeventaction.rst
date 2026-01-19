:github_url: hide

.. _class_InputEventAction:

InputEventAction
================

**繼承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

動作的輸入事件型別。

.. rst-class:: classref-introduction-group

說明
----

包含一個通用動作，該動作可以被多種型別的輸入作為目標。動作及其事件可以在\ **項目 > 專案設定**\ 的\ **輸入對應**\ 分頁中設定，也可以使用 :ref:`InputMap<class_InputMap>` 類設置。

\ **注意：**\ 與對應到唯一物理事件的其他 :ref:`InputEvent<class_InputEvent>` 子類別不同，這個虛擬事件不是由引擎發出的。這個類可以用來使用 :ref:`Input.parse_input_event()<class_Input_method_parse_input_event>` 手動發出動作，這樣就能夠在 :ref:`Node._input()<class_Node_private_method__input>` 中接收到這些動作。要檢查物理事件是否與“輸入對應”中的動作相配對，請使用 :ref:`InputEvent.is_action()<class_InputEvent_method_is_action>` 和 :ref:`InputEvent.is_action_pressed()<class_InputEvent_method_is_action_pressed>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- `使用 InputEvent：動作 <../tutorials/inputs/inputevent.html#actions>`__

- `2D Dodge The Creeps 範例 <https://godotengine.org/asset-library/asset/2712>`__

- `3D 體素示範 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>` | :ref:`action<class_InputEventAction_property_action>`           | ``&""``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`event_index<class_InputEventAction_property_event_index>` | ``-1``    |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`pressed<class_InputEventAction_property_pressed>`         | ``false`` |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`strength<class_InputEventAction_property_strength>`       | ``1.0``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventAction_property_action:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action** = ``&""`` :ref:`🔗<class_InputEventAction_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action**\ (\ )

The action's name. This is usually the name of an existing action in the :ref:`InputMap<class_InputMap>` which you want this custom event to match.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_event_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **event_index** = ``-1`` :ref:`🔗<class_InputEventAction_property_event_index>`

.. rst-class:: classref-property-setget

- |void| **set_event_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_event_index**\ (\ )

The real event index in action this event corresponds to (from events defined for this action in the :ref:`InputMap<class_InputMap>`). If ``-1``, a unique ID will be used and actions pressed with this ID will need to be released with another **InputEventAction**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventAction_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

為 ``true`` 時該動作處於被按下的狀態。為 ``false`` 時該動作處於被釋放狀態。

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_InputEventAction_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

動作的強度，介於 0 和 1 之間。當 pressed 為 ``false`` 時，該值被視為等於 0。通過將事件強度設定為手柄軸的彎曲或按壓強度，可以仿造模擬手柄的移動事件。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
