:github_url: hide

.. _class_VisualShaderNodeIntParameter:

VisualShaderNodeIntParameter
============================

**继承：** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`int<class_int>` 类型着色器参数（uniform）的可视化着色器节点。

.. rst-class:: classref-introduction-group

描述
----

:ref:`int<class_int>` 类型的 :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>`\ 。可以自定义能够接受的值的范围。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`default_value<class_VisualShaderNodeIntParameter_property_default_value>`                 | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>` | ``false``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`   | :ref:`enum_names<class_VisualShaderNodeIntParameter_property_enum_names>`                       | ``PackedStringArray()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` | :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>`                                   | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`max<class_VisualShaderNodeIntParameter_property_max>`                                     | ``100``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`min<class_VisualShaderNodeIntParameter_property_min>`                                     | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`step<class_VisualShaderNodeIntParameter_property_step>`                                   | ``1``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeIntParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeIntParameter_Hint>`

.. _class_VisualShaderNodeIntParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_NONE** = ``0``

参数的取值没有约束。

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE** = ``1``

参数的取值必须在指定的 :ref:`min<class_VisualShaderNodeIntParameter_property_min>`/:ref:`max<class_VisualShaderNodeIntParameter_property_max>` 范围内。

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE_STEP** = ``2``

参数的取值必须在指定的范围内，值与值之间的步长为给定的 :ref:`step<class_VisualShaderNodeIntParameter_property_step>`\ 。

.. _class_VisualShaderNodeIntParameter_constant_HINT_ENUM:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_ENUM** = ``3``

参数使用枚举将预设值与编辑器中的名称进行关联。

.. _class_VisualShaderNodeIntParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_MAX** = ``4``

代表 :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeIntParameter_property_default_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **default_value** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_default_value**\ (\ )

这个参数的默认值，外部没有设值时使用。必须启用 :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>`\ ；否则默认为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

如果为 ``true``\ ，则该节点有自定义默认值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_enum_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **enum_names** = ``PackedStringArray()`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_enum_names>`

.. rst-class:: classref-property-setget

- |void| **set_enum_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_enum_names**\ (\ )

用于在编辑器中选择枚举的名称。\ :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` 必须为 :ref:`HINT_ENUM<class_VisualShaderNodeIntParameter_constant_HINT_ENUM>` 才能生效。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **get_hint**\ (\ )

该节点的范围提示。请用它来自定义有效的参数范围。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **max** = ``100`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max**\ (\ )

这个参数所能接受的最大值。\ :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` 必须为 :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>` 或 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` 才会生效。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **min** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min**\ (\ )

这个参数所能接受的最小值。\ :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` 必须为 :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>` 或 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` 才会生效。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_step:

.. rst-class:: classref-property

:ref:`int<class_int>` **step** = ``1`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_step**\ (\ )

参数值之间的步长。迫使参数成为给定值的倍数。\ :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` 必须为 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` 才能生效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
