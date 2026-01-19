:github_url: hide

.. _class_VisualShaderNodeVarying:

VisualShaderNodeVarying
=======================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisualShaderNodeVaryingGetter<class_VisualShaderNodeVaryingGetter>`, :ref:`VisualShaderNodeVaryingSetter<class_VisualShaderNodeVaryingSetter>`

代表“verying”着色器值的可视化着色器节点。

.. rst-class:: classref-introduction-group

描述
----

Varying 值是能够在着色器函数之间传递的着色器变量，例如从 Vertex 着色器传递到 Fragment 着色器。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>`                       | :ref:`varying_name<class_VisualShaderNodeVarying_property_varying_name>` | ``"[None]"`` |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`VaryingType<enum_VisualShader_VaryingType>` | :ref:`varying_type<class_VisualShaderNodeVarying_property_varying_type>` | ``0``        |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeVarying_property_varying_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **varying_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_name>`

.. rst-class:: classref-property-setget

- |void| **set_varying_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_varying_name**\ (\ )

变量的名称。必须唯一。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeVarying_property_varying_type:

.. rst-class:: classref-property

:ref:`VaryingType<enum_VisualShader_VaryingType>` **varying_type** = ``0`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_type>`

.. rst-class:: classref-property-setget

- |void| **set_varying_type**\ (\ value\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ )
- :ref:`VaryingType<enum_VisualShader_VaryingType>` **get_varying_type**\ (\ )

变量的类型。决定该变量可以从哪里访问。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
