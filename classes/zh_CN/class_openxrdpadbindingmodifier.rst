:github_url: hide

.. _class_OpenXRDpadBindingModifier:

OpenXRDpadBindingModifier
=========================

**继承：** :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` **<** :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

十字键绑定修改器会将轴输入转换为十字键输出。

.. rst-class:: classref-introduction-group

描述
----

十字键绑定修改器会将轴输入转换为十字键输出，模拟十字键。交互配置中会添加十字键每个方向对应的输入路径，与动作绑定后就会激活十字键模拟。\ **不应该**\ 在同一个控件的同一动作集中将十字键输入与普通输入结合使用，这会导致在绑定提交给 OpenXR 时返回错误。

详见 `XR_EXT_dpad_binding <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_dpad_binding>`__\ 。

\ **注意：**\ 如果启用了十字键绑定修改器扩展，所有十字键绑定路径都将在动作映射中可用。将修改器添加到交互配置可以进一步自定义行为。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_OpenXRDpadBindingModifier_property_action_set:

.. rst-class:: classref-property

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **action_set** :ref:`🔗<class_OpenXRDpadBindingModifier_property_action_set>`

.. rst-class:: classref-property-setget

- |void| **set_action_set**\ (\ value\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )
- :ref:`OpenXRActionSet<class_OpenXRActionSet>` **get_action_set**\ (\ )

十字键绑定修改器激活的动作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_center_region:

.. rst-class:: classref-property

:ref:`float<class_float>` **center_region** = ``0.1`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_center_region>`

.. rst-class:: classref-property-setget

- |void| **set_center_region**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_center_region**\ (\ )

中心区域，十字键的中央位置在该区域中返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_input_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_path** = ``""`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_input_path>`

.. rst-class:: classref-property-setget

- |void| **set_input_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_path**\ (\ )

十字键绑定修改器的输入路径。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_is_sticky:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_sticky** = ``false`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_is_sticky>`

.. rst-class:: classref-property-setget

- |void| **set_is_sticky**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_sticky**\ (\ )

如果为 ``false``\ ，则摇杆进入新的十字键区域时变为 ``true``\ 。

如果为 ``true``\ ，则摇杆保留在活动的十字键区域中时，即使与另一个区域重叠也仍然为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_off_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **off_haptic** :ref:`🔗<class_OpenXRDpadBindingModifier_property_off_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_off_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_off_haptic**\ (\ )

用户松开输入时发出的触觉脉冲。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_on_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **on_haptic** :ref:`🔗<class_OpenXRDpadBindingModifier_property_on_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_on_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_on_haptic**\ (\ )

用户按下输入时发出的触觉脉冲。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.6`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold**\ (\ )

输入值等于或大于该值时，十字键在该方向上变为 ``true``\ 。它会保持为 ``true``\ ，直到输入值低于 :ref:`threshold_released<class_OpenXRDpadBindingModifier_property_threshold_released>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_threshold_released:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold_released** = ``0.4`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_threshold_released>`

.. rst-class:: classref-property-setget

- |void| **set_threshold_released**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold_released**\ (\ )

输入值低于此值时，输出变为 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_wedge_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wedge_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_wedge_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wedge_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wedge_angle**\ (\ )

每个楔形的角度，用于标识模拟十字键的四个方向。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
