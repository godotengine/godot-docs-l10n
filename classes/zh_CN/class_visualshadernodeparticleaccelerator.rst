:github_url: hide

.. _class_VisualShaderNodeParticleAccelerator:

VisualShaderNodeParticleAccelerator
===================================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

对粒子进行加速的可视着色器节点。

.. rst-class:: classref-introduction-group

描述
----

可以在粒子着色器“process”步骤中使用的粒子加速器。会对粒子进行加速。请将其连接至 Velocity 输出端口。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+-------+
   | :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` | :ref:`mode<class_VisualShaderNodeParticleAccelerator_property_mode>` | ``0`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeParticleAccelerator_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_VisualShaderNodeParticleAccelerator_Mode>`

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_LINEAR** = ``0``

粒子会根据速度进行加速。

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_RADIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_RADIAL** = ``1``

粒子会根据朝向中心或远离中心的方向进行加速。

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_TANGENTIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_TANGENTIAL** = ``2``

粒子从中心到它们位置，将被切向加速到的半径向量。

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_MAX** = ``3``

代表 :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeParticleAccelerator_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **mode** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleAccelerator_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>`\ )
- :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **get_mode**\ (\ )

定义粒子将以何种方式被加速。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
