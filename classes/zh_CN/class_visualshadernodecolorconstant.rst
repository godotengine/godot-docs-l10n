:github_url: hide

.. _class_VisualShaderNodeColorConstant:

VisualShaderNodeColorConstant
=============================

**继承：** :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Color<class_Color>` 常量，在可视化着色器图中使用。

.. rst-class:: classref-introduction-group

描述
----

有两个输出端口，表示 :ref:`Color<class_Color>` 的 RGB 和 Alpha 通道。

在着色器语言中被转换成 ``vec3 rgb`` 和 ``float alpha``\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`constant<class_VisualShaderNodeColorConstant_property_constant>` | ``Color(1, 1, 1, 1)`` |
   +---------------------------+------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeColorConstant_property_constant:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **constant** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_VisualShaderNodeColorConstant_property_constant>`

.. rst-class:: classref-property-setget

- |void| **set_constant**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_constant**\ (\ )

:ref:`Color<class_Color>` 常量，表示这个节点的状态。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
