:github_url: hide

.. _class_OpenXRDpadBindingModifier:

OpenXRDpadBindingModifier
=========================

**繼承：** :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` **<** :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

The DPad binding modifier converts an axis input to a dpad output.

.. rst-class:: classref-introduction-group

說明
----

The DPad binding modifier converts an axis input to a dpad output, emulating a DPad. New input paths for each dpad direction will be added to the interaction profile. When bound to actions the DPad emulation will be activated. You should **not** combine dpad inputs with normal inputs in the same action set for the same control, this will result in an error being returned when suggested bindings are submitted to OpenXR.

See `XR_EXT_dpad_binding <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_dpad_binding>`__ for in-depth details.

\ **Note:** If the DPad binding modifier extension is enabled, all dpad binding paths will be available in the action map. Adding the modifier to an interaction profile allows you to further customize the behavior.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`   | :ref:`action_set<class_OpenXRDpadBindingModifier_property_action_set>`                 |               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`center_region<class_OpenXRDpadBindingModifier_property_center_region>`           | ``0.1``       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`String<class_String>`                     | :ref:`input_path<class_OpenXRDpadBindingModifier_property_input_path>`                 | ``""``        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_sticky<class_OpenXRDpadBindingModifier_property_is_sticky>`                   | ``false``     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`off_haptic<class_OpenXRDpadBindingModifier_property_off_haptic>`                 |               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`on_haptic<class_OpenXRDpadBindingModifier_property_on_haptic>`                   |               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`threshold<class_OpenXRDpadBindingModifier_property_threshold>`                   | ``0.6``       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`threshold_released<class_OpenXRDpadBindingModifier_property_threshold_released>` | ``0.4``       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`wedge_angle<class_OpenXRDpadBindingModifier_property_wedge_angle>`               | ``1.5707964`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRDpadBindingModifier_property_action_set:

.. rst-class:: classref-property

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **action_set** :ref:`🔗<class_OpenXRDpadBindingModifier_property_action_set>`

.. rst-class:: classref-property-setget

- |void| **set_action_set**\ (\ value\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )
- :ref:`OpenXRActionSet<class_OpenXRActionSet>` **get_action_set**\ (\ )

Action set for which this dpad binding modifier is active.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_center_region:

.. rst-class:: classref-property

:ref:`float<class_float>` **center_region** = ``0.1`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_center_region>`

.. rst-class:: classref-property-setget

- |void| **set_center_region**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_center_region**\ (\ )

Center region in which our center position of our dpad return ``true``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_input_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_path** = ``""`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_input_path>`

.. rst-class:: classref-property-setget

- |void| **set_input_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_path**\ (\ )

Input path for this dpad binding modifier.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_is_sticky:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_sticky** = ``false`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_is_sticky>`

.. rst-class:: classref-property-setget

- |void| **set_is_sticky**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_sticky**\ (\ )

If ``false``, when the joystick enters a new dpad zone this becomes ``true``.

If ``true``, when the joystick remains in active dpad zone, this remains ``true`` even if we overlap with another zone.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_off_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **off_haptic** :ref:`🔗<class_OpenXRDpadBindingModifier_property_off_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_off_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_off_haptic**\ (\ )

Haptic pulse to emit when the user releases the input.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_on_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **on_haptic** :ref:`🔗<class_OpenXRDpadBindingModifier_property_on_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_on_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_on_haptic**\ (\ )

Haptic pulse to emit when the user presses the input.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.6`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold**\ (\ )

When our input value is equal or larger than this value, our dpad in that direction becomes ``true``. It stays ``true`` until it falls under the :ref:`threshold_released<class_OpenXRDpadBindingModifier_property_threshold_released>` value.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_threshold_released:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold_released** = ``0.4`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_threshold_released>`

.. rst-class:: classref-property-setget

- |void| **set_threshold_released**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold_released**\ (\ )

When our input value falls below this, our output becomes ``false``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_wedge_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wedge_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_wedge_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wedge_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wedge_angle**\ (\ )

The angle of each wedge that identifies the 4 directions of the emulated dpad.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
