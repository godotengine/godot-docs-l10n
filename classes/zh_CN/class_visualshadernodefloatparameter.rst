:github_url: hide

.. _class_VisualShaderNodeFloatParameter:

VisualShaderNodeFloatParameter
==============================

**继承：** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

标量浮点数参数，在可视化着色器图中使用。

.. rst-class:: classref-introduction-group

描述
----

翻译为着色器语言中的 ``uniform float``\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`                 | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`default_value_enabled<class_VisualShaderNodeFloatParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` | :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>`                                   | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`                                     | ``1.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`min<class_VisualShaderNodeFloatParameter_property_min>`                                     | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`                                   | ``0.1``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeFloatParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeFloatParameter_Hint>`

.. _class_VisualShaderNodeFloatParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_NONE** = ``0``

不使用提示。

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE** = ``1``

标量值的范围提示，会将可能的输入限制在 :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` 和 :ref:`max<class_VisualShaderNodeFloatParameter_property_max>` 之间。会被翻译为着色器代码中的 ``hint_range(min, max)``\ 。

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE_STEP** = ``2``

标量值的范围提示，带步长，会将可能的输入限制在 :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` 和 :ref:`max<class_VisualShaderNodeFloatParameter_property_max>` 之间，步长（增量）为 :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`\ 。会被翻译为着色器代码中的 ``hint_range(min, max, step)``\ 。

.. _class_VisualShaderNodeFloatParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_MAX** = ``3``

代表 :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeFloatParameter_property_default_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **default_value** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_default_value**\ (\ )

该着色器内部分配的默认值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

启用 :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **get_hint**\ (\ )

对 uniform 应用的提示，控制通过检查器所能设置的值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **max** = ``1.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

范围提示的最小值。会在 :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` 为 :ref:`HINT_RANGE<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE>` 或 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>` 时使用。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **min** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

范围提示的最大值。会在 :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` 为 :ref:`HINT_RANGE<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE>` 或 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>` 时使用。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.1`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

带步长（增量）的范围提示的步长值。会在 :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` 为 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>` 时使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
