:github_url: hide

.. _class_VisualShaderNodeParameterRef:

VisualShaderNodeParameterRef
============================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

对现有 :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` 的引用。

.. rst-class:: classref-introduction-group

描述
----

创建对 :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` 的引用，可以让你在不同的着色器或着色阶段轻松地重复使用这个参数。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>` | :ref:`parameter_name<class_VisualShaderNodeParameterRef_property_parameter_name>` | ``"[None]"`` |
   +-----------------------------+-----------------------------------------------------------------------------------+--------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeParameterRef_property_parameter_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **parameter_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeParameterRef_property_parameter_name>`

.. rst-class:: classref-property-setget

- |void| **set_parameter_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_parameter_name**\ (\ )

这个引用所指向的参数的名称。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
