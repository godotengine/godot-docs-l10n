:github_url: hide

.. _class_VisualShaderNodeVec4Constant:

VisualShaderNodeVec4Constant
============================

**继承：** :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

4D 常向量，用于可视化着色器图中。

.. rst-class:: classref-introduction-group

描述
----

4D 常向量，可用作输入节点。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------+----------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`constant<class_VisualShaderNodeVec4Constant_property_constant>` | ``Quaternion(0, 0, 0, 1)`` |
   +-------------------------------------+-----------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeVec4Constant_property_constant:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **constant** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_VisualShaderNodeVec4Constant_property_constant>`

.. rst-class:: classref-property-setget

- |void| **set_constant**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_constant**\ (\ )

4D 常向量（表示为 :ref:`Quaternion<class_Quaternion>`\ ），表示该节点的状态。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
