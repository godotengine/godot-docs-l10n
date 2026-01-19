:github_url: hide

.. _class_OpenXRAnalogThresholdModifier:

OpenXRAnalogThresholdModifier
=============================

**繼承：** :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` **<** :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

The analog threshold binding modifier can modify a float input to a boolean input with specified thresholds.

.. rst-class:: classref-introduction-group

說明
----

The analog threshold binding modifier can modify a float input to a boolean input with specified thresholds.

See `XR_VALVE_analog_threshold <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_VALVE_analog_threshold>`__ for in-depth details.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`off_haptic<class_OpenXRAnalogThresholdModifier_property_off_haptic>`       |         |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                       | :ref:`off_threshold<class_OpenXRAnalogThresholdModifier_property_off_threshold>` | ``0.4`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`on_haptic<class_OpenXRAnalogThresholdModifier_property_on_haptic>`         |         |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                       | :ref:`on_threshold<class_OpenXRAnalogThresholdModifier_property_on_threshold>`   | ``0.6`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRAnalogThresholdModifier_property_off_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **off_haptic** :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_off_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_off_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_off_haptic**\ (\ )

Haptic pulse to emit when the user releases the input.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_off_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **off_threshold** = ``0.4`` :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_off_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_off_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_off_threshold**\ (\ )

When our input value falls below this, our output becomes ``false``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_on_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **on_haptic** :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_on_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_on_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_on_haptic**\ (\ )

Haptic pulse to emit when the user presses the input.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_on_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **on_threshold** = ``0.6`` :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_on_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_on_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_on_threshold**\ (\ )

When our input value is equal or larger than this value, our output becomes ``true``. It stays ``true`` until it falls under the :ref:`off_threshold<class_OpenXRAnalogThresholdModifier_property_off_threshold>` value.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
