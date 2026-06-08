:github_url: hide

.. _class_RDPipelineShader:

RDPipelineShader
================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管线着色器（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

封装一个着色器资源，并允许在管线创建时应用特化常量。

该对象由 :ref:`RenderingDevice.raytracing_pipeline_create()<class_RenderingDevice_method_raytracing_pipeline_create>` 用于光线生成、未命中及命中着色器。管线会自动选择所需的着色器阶段。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`RID<class_RID>`                                                                                        | :ref:`shader<class_RDPipelineShader_property_shader>`                                     | ``RID()`` |
   +--------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\] | :ref:`specialization_constants<class_RDPipelineShader_property_specialization_constants>` | ``[]``    |
   +--------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDPipelineShader_property_shader:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **shader** = ``RID()`` :ref:`🔗<class_RDPipelineShader_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_shader**\ (\ )

着色器资源。管线会自动选择所需的着色器阶段。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineShader_property_specialization_constants:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\] **specialization_constants** = ``[]`` :ref:`🔗<class_RDPipelineShader_property_specialization_constants>`

.. rst-class:: classref-property-setget

- |void| **set_specialization_constants**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\] **get_specialization_constants**\ (\ )

在管线创建时，应用于所选着色器阶段的特化常量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
