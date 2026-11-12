:github_url: hide

.. _class_VisualShaderNodeGroup:

VisualShaderNodeGroup
=====================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A visual shader node that instances a :ref:`VisualShaderGroup<class_VisualShaderGroup>`.

.. rst-class:: classref-introduction-group

描述
----

Represents a :ref:`VisualShaderGroup<class_VisualShaderGroup>` inside a :ref:`VisualShader<class_VisualShader>` or another :ref:`VisualShaderGroup<class_VisualShaderGroup>`. Its input and output ports are defined by the assigned :ref:`group<class_VisualShaderNodeGroup_property_group>` resource.

If the group contains nodes incompatible with the current shader context, the outputs will use default values and a warning will be shown.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------+
   | :ref:`VisualShaderGroup<class_VisualShaderGroup>` | :ref:`group<class_VisualShaderNodeGroup_property_group>` |
   +---------------------------------------------------+----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeGroup_property_group:

.. rst-class:: classref-property

:ref:`VisualShaderGroup<class_VisualShaderGroup>` **group** :ref:`🔗<class_VisualShaderNodeGroup_property_group>`

.. rst-class:: classref-property-setget

- |void| **set_group**\ (\ value\: :ref:`VisualShaderGroup<class_VisualShaderGroup>`\ )
- :ref:`VisualShaderGroup<class_VisualShaderGroup>` **get_group**\ (\ )

The :ref:`VisualShaderGroup<class_VisualShaderGroup>` resource instanced by this node.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
