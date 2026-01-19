:github_url: hide

.. _class_OpenXRAnalogThresholdModifier:

OpenXRAnalogThresholdModifier
=============================

**继承：** :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` **<** :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

模拟阈值绑定修改器能够根据指定的阈值将 float 输入修改为布尔值输入。

.. rst-class:: classref-introduction-group

描述
----

模拟阈值绑定修改器能够根据指定的阈值将 float 输入修改为布尔值输入。

详见 `XR_VALVE_analog_threshold <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_VALVE_analog_threshold>`__\ 。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_OpenXRAnalogThresholdModifier_property_off_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **off_haptic** :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_off_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_off_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_off_haptic**\ (\ )

用户松开输入时发出的触觉脉冲。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_off_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **off_threshold** = ``0.4`` :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_off_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_off_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_off_threshold**\ (\ )

输入值低于此值时，输出变为 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_on_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **on_haptic** :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_on_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_on_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_on_haptic**\ (\ )

用户按下输入时发出的触觉脉冲。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_on_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **on_threshold** = ``0.6`` :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_on_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_on_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_on_threshold**\ (\ )

输入大于等于此值时，输出变为 ``true``\ 。直到低于 :ref:`off_threshold<class_OpenXRAnalogThresholdModifier_property_off_threshold>` 都会保持为 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
