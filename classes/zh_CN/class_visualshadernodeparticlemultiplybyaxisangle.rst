:github_url: hide

.. _class_VisualShaderNodeParticleMultiplyByAxisAngle:

VisualShaderNodeParticleMultiplyByAxisAngle
===========================================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于将粒子的位置与旋转相乘的可视化着色器辅助节点。

.. rst-class:: classref-introduction-group

描述
----

这个节点会帮助将位置输入向量与指定轴的旋转相乘。针对发射器使用而设计。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`degrees_mode<class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **degrees_mode** = ``true`` :ref:`🔗<class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode>`

.. rst-class:: classref-property-setget

- |void| **set_degrees_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_degrees_mode**\ (\ )

如果为 ``true``\ ，夹角会被解释为度数，而不是弧度数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
