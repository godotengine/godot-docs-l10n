:github_url: hide

.. _class_VisualShaderNode:

VisualShaderNode
================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisualShaderNodeBillboard<class_VisualShaderNodeBillboard>`, :ref:`VisualShaderNodeClamp<class_VisualShaderNodeClamp>`, :ref:`VisualShaderNodeColorFunc<class_VisualShaderNodeColorFunc>`, :ref:`VisualShaderNodeColorOp<class_VisualShaderNodeColorOp>`, :ref:`VisualShaderNodeCompare<class_VisualShaderNodeCompare>`, :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>`, :ref:`VisualShaderNodeCubemap<class_VisualShaderNodeCubemap>`, :ref:`VisualShaderNodeCustom<class_VisualShaderNodeCustom>`, :ref:`VisualShaderNodeDerivativeFunc<class_VisualShaderNodeDerivativeFunc>`, :ref:`VisualShaderNodeDeterminant<class_VisualShaderNodeDeterminant>`, :ref:`VisualShaderNodeDistanceFade<class_VisualShaderNodeDistanceFade>`, :ref:`VisualShaderNodeDotProduct<class_VisualShaderNodeDotProduct>`, :ref:`VisualShaderNodeFloatFunc<class_VisualShaderNodeFloatFunc>`, :ref:`VisualShaderNodeFloatOp<class_VisualShaderNodeFloatOp>`, :ref:`VisualShaderNodeFresnel<class_VisualShaderNodeFresnel>`, :ref:`VisualShaderNodeIf<class_VisualShaderNodeIf>`, :ref:`VisualShaderNodeInput<class_VisualShaderNodeInput>`, :ref:`VisualShaderNodeIntFunc<class_VisualShaderNodeIntFunc>`, :ref:`VisualShaderNodeIntOp<class_VisualShaderNodeIntOp>`, :ref:`VisualShaderNodeIs<class_VisualShaderNodeIs>`, :ref:`VisualShaderNodeLinearSceneDepth<class_VisualShaderNodeLinearSceneDepth>`, :ref:`VisualShaderNodeMix<class_VisualShaderNodeMix>`, :ref:`VisualShaderNodeMultiplyAdd<class_VisualShaderNodeMultiplyAdd>`, :ref:`VisualShaderNodeOuterProduct<class_VisualShaderNodeOuterProduct>`, :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>`, :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>`, :ref:`VisualShaderNodeParameterRef<class_VisualShaderNodeParameterRef>`, :ref:`VisualShaderNodeParticleAccelerator<class_VisualShaderNodeParticleAccelerator>`, :ref:`VisualShaderNodeParticleConeVelocity<class_VisualShaderNodeParticleConeVelocity>`, :ref:`VisualShaderNodeParticleEmit<class_VisualShaderNodeParticleEmit>`, :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>`, :ref:`VisualShaderNodeParticleMultiplyByAxisAngle<class_VisualShaderNodeParticleMultiplyByAxisAngle>`, :ref:`VisualShaderNodeParticleRandomness<class_VisualShaderNodeParticleRandomness>`, :ref:`VisualShaderNodeProximityFade<class_VisualShaderNodeProximityFade>`, :ref:`VisualShaderNodeRandomRange<class_VisualShaderNodeRandomRange>`, :ref:`VisualShaderNodeRemap<class_VisualShaderNodeRemap>`, :ref:`VisualShaderNodeReroute<class_VisualShaderNodeReroute>`, :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>`, :ref:`VisualShaderNodeRotationByAxis<class_VisualShaderNodeRotationByAxis>`, :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>`, :ref:`VisualShaderNodeScreenNormalWorldSpace<class_VisualShaderNodeScreenNormalWorldSpace>`, :ref:`VisualShaderNodeScreenUVToSDF<class_VisualShaderNodeScreenUVToSDF>`, :ref:`VisualShaderNodeSDFRaymarch<class_VisualShaderNodeSDFRaymarch>`, :ref:`VisualShaderNodeSDFToScreenUV<class_VisualShaderNodeSDFToScreenUV>`, :ref:`VisualShaderNodeSmoothStep<class_VisualShaderNodeSmoothStep>`, :ref:`VisualShaderNodeStep<class_VisualShaderNodeStep>`, :ref:`VisualShaderNodeSwitch<class_VisualShaderNodeSwitch>`, :ref:`VisualShaderNodeTexture<class_VisualShaderNodeTexture>`, :ref:`VisualShaderNodeTextureSDF<class_VisualShaderNodeTextureSDF>`, :ref:`VisualShaderNodeTextureSDFNormal<class_VisualShaderNodeTextureSDFNormal>`, :ref:`VisualShaderNodeTransformCompose<class_VisualShaderNodeTransformCompose>`, :ref:`VisualShaderNodeTransformDecompose<class_VisualShaderNodeTransformDecompose>`, :ref:`VisualShaderNodeTransformFunc<class_VisualShaderNodeTransformFunc>`, :ref:`VisualShaderNodeTransformOp<class_VisualShaderNodeTransformOp>`, :ref:`VisualShaderNodeTransformVecMult<class_VisualShaderNodeTransformVecMult>`, :ref:`VisualShaderNodeUIntFunc<class_VisualShaderNodeUIntFunc>`, :ref:`VisualShaderNodeUIntOp<class_VisualShaderNodeUIntOp>`, :ref:`VisualShaderNodeUVFunc<class_VisualShaderNodeUVFunc>`, :ref:`VisualShaderNodeUVPolarCoord<class_VisualShaderNodeUVPolarCoord>`, :ref:`VisualShaderNodeVarying<class_VisualShaderNodeVarying>`, :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>`, :ref:`VisualShaderNodeWorldPositionFromDepth<class_VisualShaderNodeWorldPositionFromDepth>`

:ref:`VisualShader<class_VisualShader>` 节点的基类。与场景节点无关。

.. rst-class:: classref-introduction-group

描述
----

可视化着色器图由各种节点组成。图中的每个节点都是一个独立的对象，它们被表示为带有标题和一系列属性的矩形框。每个节点还有连接端口，可以将其连接到另一个节点并控制着色器的流程。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用可视化着色器 <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`linked_parent_graph_frame<class_VisualShaderNode_property_linked_parent_graph_frame>` | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`output_port_for_preview<class_VisualShaderNode_property_output_port_for_preview>`     | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_default_input_values<class_VisualShaderNode_method_clear_default_input_values>`\ (\ )                                                                                                                             |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_default_input_port<class_VisualShaderNode_method_get_default_input_port>`\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |const|                                                                     |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`get_default_input_values<class_VisualShaderNode_method_get_default_input_values>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_input_port_default_value<class_VisualShaderNode_method_get_input_port_default_value>`\ (\ port\: :ref:`int<class_int>`\ ) |const|                                                                                   |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_input_port_default_value<class_VisualShaderNode_method_remove_input_port_default_value>`\ (\ port\: :ref:`int<class_int>`\ )                                                                                     |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_default_input_values<class_VisualShaderNode_method_set_default_input_values>`\ (\ values\: :ref:`Array<class_Array>`\ )                                                                                             |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_input_port_default_value<class_VisualShaderNode_method_set_input_port_default_value>`\ (\ port\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, prev_value\: :ref:`Variant<class_Variant>` = null\ ) |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNode_PortType:

.. rst-class:: classref-enumeration

enum **PortType**: :ref:`🔗<enum_VisualShaderNode_PortType>`

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR** = ``0``

浮点数类型。在着色器代码中，会被翻译为 ``float`` 类型。

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_INT** = ``1``

整数标量。在着色器代码中，会被翻译为 ``int`` 类型。

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_UINT** = ``2``

无符号整数标量。在着色器代码中，会被翻译为 ``uint`` 类型。

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_2D** = ``3``

浮点数 2D 向量。在着色器代码中，会被翻译为 ``vec2`` 类型。

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_3D** = ``4``

浮点数 3D 向量。在着色器代码中，会被翻译为 ``vec3`` 类型。

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_4D** = ``5``

浮点数 4D 向量。在着色器代码中，会被翻译为 ``vec4`` 类型。

.. _class_VisualShaderNode_constant_PORT_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_BOOLEAN** = ``6``

布尔值类型。在着色器代码中，会被翻译为 ``bool`` 类型。

.. _class_VisualShaderNode_constant_PORT_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_TRANSFORM** = ``7``

变换类型。在着色器代码中，会被翻译为 ``mat4`` 类型。

.. _class_VisualShaderNode_constant_PORT_TYPE_SAMPLER:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SAMPLER** = ``8``

采样器类型。在着色器代码中，会被翻译为对采样器 uniform 的引用。只能用于非 uniform 节点的输入端口。

.. _class_VisualShaderNode_constant_PORT_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_MAX** = ``9``

表示 :ref:`PortType<enum_VisualShaderNode_PortType>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNode_property_linked_parent_graph_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **linked_parent_graph_frame** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_linked_parent_graph_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

表示该节点被链接到的框的索引。如果设置为 ``-1``\ ，则表示节点未被链接到任何框。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_property_output_port_for_preview:

.. rst-class:: classref-property

:ref:`int<class_int>` **output_port_for_preview** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_output_port_for_preview>`

.. rst-class:: classref-property-setget

- |void| **set_output_port_for_preview**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_output_port_for_preview**\ (\ )

设置将被显示为预览的输出端口索引。如果设置为\ ``-1``\ ，则没有端口会被打开进行预览。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VisualShaderNode_method_clear_default_input_values:

.. rst-class:: classref-method

|void| **clear_default_input_values**\ (\ ) :ref:`🔗<class_VisualShaderNode_method_clear_default_input_values>`

清除默认输入端口值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_port>`

返回输入端口，当由于将连接从已有节点拖动到图形上的空白区域而创建节点时，默认情况下应连接该输入端口。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_default_input_values**\ (\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_values>`

返回一个包含节点所有输入端口默认值的 :ref:`Array<class_Array>`\ ，形式为 ``[index0, value0, index1, value1, ...]``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_input_port_default_value>`

返回输入端口 ``port`` 的默认值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_remove_input_port_default_value:

.. rst-class:: classref-method

|void| **remove_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNode_method_remove_input_port_default_value>`

移除输入端口 ``port`` 的默认值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_default_input_values:

.. rst-class:: classref-method

|void| **set_default_input_values**\ (\ values\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_VisualShaderNode_method_set_default_input_values>`

使用 ``[index0, value0, index1, value1, ...]`` 形式的 :ref:`Array<class_Array>` 设置默认输入端口值。例如: ``[0, Vector3(0, 0, 0), 1, Vector3(0, 0, 0)]``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_input_port_default_value:

.. rst-class:: classref-method

|void| **set_input_port_default_value**\ (\ port\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, prev_value\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_VisualShaderNode_method_set_input_port_default_value>`

设置输入端口 ``port`` 的默认值 ``value``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
