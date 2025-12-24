:github_url: hide

.. _class_VisualShaderNodeColorParameter:

VisualShaderNodeColorParameter
==============================

**继承：** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可视化着色器图中使用的 :ref:`Color<class_Color>` 参数。

.. rst-class:: classref-introduction-group

描述
----

翻译为着色器语言中的 ``uniform vec4``\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`default_value<class_VisualShaderNodeColorParameter_property_default_value>`                 | ``Color(1, 1, 1, 1)`` |
   +---------------------------+---------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`default_value_enabled<class_VisualShaderNodeColorParameter_property_default_value_enabled>` | ``false``             |
   +---------------------------+---------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeColorParameter_property_default_value:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **default_value** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_VisualShaderNodeColorParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_default_value**\ (\ )

该着色器内部分配的默认值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeColorParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeColorParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

启用 :ref:`default_value<class_VisualShaderNodeColorParameter_property_default_value>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
