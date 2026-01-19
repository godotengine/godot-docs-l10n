:github_url: hide

.. _class_VisualShaderNodeSample3D:

VisualShaderNodeSample3D
========================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisualShaderNodeTexture2DArray<class_VisualShaderNodeTexture2DArray>`, :ref:`VisualShaderNodeTexture3D<class_VisualShaderNodeTexture3D>`

可视化着色器图中，对 3D 纹理进行采样的节点的基础节点。

.. rst-class:: classref-introduction-group

描述
----

虚类，请改用其派生类。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeSample3D_Source>` | :ref:`source<class_VisualShaderNodeSample3D_property_source>` | ``0`` |
   +-----------------------------------------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeSample3D_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeSample3D_Source>`

.. _class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_TEXTURE** = ``0``

创建内部 uniform，提供一种在节点内赋值的方式。

.. _class_VisualShaderNodeSample3D_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_PORT** = ``1``

使用采样器端口的 uniform 纹理。

.. _class_VisualShaderNodeSample3D_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_MAX** = ``2``

代表 :ref:`Source<enum_VisualShaderNodeSample3D_Source>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeSample3D_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeSample3D_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeSample3D_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeSample3D_Source>` **get_source**\ (\ )

输入源的类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
