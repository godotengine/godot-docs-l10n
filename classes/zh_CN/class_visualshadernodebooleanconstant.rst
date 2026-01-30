:github_url: hide

.. _class_VisualShaderNodeBooleanConstant:

VisualShaderNodeBooleanConstant
===============================

**继承：** :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可视化着色器图中使用的布尔常量。

.. rst-class:: classref-introduction-group

描述
----

只有一个输出端口，没有输入。

在着色器语言中被转换成 ``bool``\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`constant<class_VisualShaderNodeBooleanConstant_property_constant>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeBooleanConstant_property_constant:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **constant** = ``false`` :ref:`🔗<class_VisualShaderNodeBooleanConstant_property_constant>`

.. rst-class:: classref-property-setget

- |void| **set_constant**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_constant**\ (\ )

布尔常量，表示该节点的状态。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
