:github_url: hide

.. _class_VisualShaderNodeComment:

VisualShaderNodeComment
=======================

**已弃用：** This class has no function anymore and only exists for compatibility.

**继承：** :ref:`VisualShaderNodeFrame<class_VisualShaderNodeFrame>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

只是为了兼容性而存在。使用 :ref:`VisualShaderNodeFrame<class_VisualShaderNodeFrame>` 作为替代品。

.. rst-class:: classref-introduction-group

描述
----

该节点已被 :ref:`VisualShaderNodeFrame<class_VisualShaderNodeFrame>` 取代，仅用于保持兼容性。在 :ref:`VisualShader<class_VisualShader>` 编辑器中，它的行为与 :ref:`VisualShaderNodeFrame<class_VisualShaderNodeFrame>` 完全相同。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`description<class_VisualShaderNodeComment_property_description>` | ``""`` |
   +-----------------------------+------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeComment_property_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **description** = ``""`` :ref:`🔗<class_VisualShaderNodeComment_property_description>`

.. rst-class:: classref-property-setget

- |void| **set_description**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_description**\ (\ )

该属性仅用于保存在早期版本的 Godot 中编写的数据。它目前没有任何作用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
