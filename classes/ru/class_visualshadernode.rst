:github_url: hide

.. _class_VisualShaderNode:

VisualShaderNode
================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisualShaderNodeBillboard<class_VisualShaderNodeBillboard>`, :ref:`VisualShaderNodeClamp<class_VisualShaderNodeClamp>`, :ref:`VisualShaderNodeColorFunc<class_VisualShaderNodeColorFunc>`, :ref:`VisualShaderNodeColorOp<class_VisualShaderNodeColorOp>`, :ref:`VisualShaderNodeCompare<class_VisualShaderNodeCompare>`, :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>`, :ref:`VisualShaderNodeCubemap<class_VisualShaderNodeCubemap>`, :ref:`VisualShaderNodeCustom<class_VisualShaderNodeCustom>`, :ref:`VisualShaderNodeDerivativeFunc<class_VisualShaderNodeDerivativeFunc>`, :ref:`VisualShaderNodeDeterminant<class_VisualShaderNodeDeterminant>`, :ref:`VisualShaderNodeDistanceFade<class_VisualShaderNodeDistanceFade>`, :ref:`VisualShaderNodeDotProduct<class_VisualShaderNodeDotProduct>`, :ref:`VisualShaderNodeFloatFunc<class_VisualShaderNodeFloatFunc>`, :ref:`VisualShaderNodeFloatOp<class_VisualShaderNodeFloatOp>`, :ref:`VisualShaderNodeFresnel<class_VisualShaderNodeFresnel>`, :ref:`VisualShaderNodeGroup<class_VisualShaderNodeGroup>`, :ref:`VisualShaderNodeGroupInput<class_VisualShaderNodeGroupInput>`, :ref:`VisualShaderNodeGroupOutput<class_VisualShaderNodeGroupOutput>`, :ref:`VisualShaderNodeIf<class_VisualShaderNodeIf>`, :ref:`VisualShaderNodeInput<class_VisualShaderNodeInput>`, :ref:`VisualShaderNodeIntFunc<class_VisualShaderNodeIntFunc>`, :ref:`VisualShaderNodeIntOp<class_VisualShaderNodeIntOp>`, :ref:`VisualShaderNodeIs<class_VisualShaderNodeIs>`, :ref:`VisualShaderNodeLinearSceneDepth<class_VisualShaderNodeLinearSceneDepth>`, :ref:`VisualShaderNodeMix<class_VisualShaderNodeMix>`, :ref:`VisualShaderNodeMultiplyAdd<class_VisualShaderNodeMultiplyAdd>`, :ref:`VisualShaderNodeOuterProduct<class_VisualShaderNodeOuterProduct>`, :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>`, :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>`, :ref:`VisualShaderNodeParameterRef<class_VisualShaderNodeParameterRef>`, :ref:`VisualShaderNodeParticleAccelerator<class_VisualShaderNodeParticleAccelerator>`, :ref:`VisualShaderNodeParticleConeVelocity<class_VisualShaderNodeParticleConeVelocity>`, :ref:`VisualShaderNodeParticleEmit<class_VisualShaderNodeParticleEmit>`, :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>`, :ref:`VisualShaderNodeParticleMultiplyByAxisAngle<class_VisualShaderNodeParticleMultiplyByAxisAngle>`, :ref:`VisualShaderNodeParticleRandomness<class_VisualShaderNodeParticleRandomness>`, :ref:`VisualShaderNodeProximityFade<class_VisualShaderNodeProximityFade>`, :ref:`VisualShaderNodeRandomRange<class_VisualShaderNodeRandomRange>`, :ref:`VisualShaderNodeRemap<class_VisualShaderNodeRemap>`, :ref:`VisualShaderNodeReroute<class_VisualShaderNodeReroute>`, :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>`, :ref:`VisualShaderNodeRotationByAxis<class_VisualShaderNodeRotationByAxis>`, :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>`, :ref:`VisualShaderNodeScreenNormalWorldSpace<class_VisualShaderNodeScreenNormalWorldSpace>`, :ref:`VisualShaderNodeScreenUVToSDF<class_VisualShaderNodeScreenUVToSDF>`, :ref:`VisualShaderNodeSDFRaymarch<class_VisualShaderNodeSDFRaymarch>`, :ref:`VisualShaderNodeSDFToScreenUV<class_VisualShaderNodeSDFToScreenUV>`, :ref:`VisualShaderNodeSmoothStep<class_VisualShaderNodeSmoothStep>`, :ref:`VisualShaderNodeStep<class_VisualShaderNodeStep>`, :ref:`VisualShaderNodeSwitch<class_VisualShaderNodeSwitch>`, :ref:`VisualShaderNodeTexture<class_VisualShaderNodeTexture>`, :ref:`VisualShaderNodeTextureSDF<class_VisualShaderNodeTextureSDF>`, :ref:`VisualShaderNodeTextureSDFNormal<class_VisualShaderNodeTextureSDFNormal>`, :ref:`VisualShaderNodeTransformCompose<class_VisualShaderNodeTransformCompose>`, :ref:`VisualShaderNodeTransformDecompose<class_VisualShaderNodeTransformDecompose>`, :ref:`VisualShaderNodeTransformFunc<class_VisualShaderNodeTransformFunc>`, :ref:`VisualShaderNodeTransformOp<class_VisualShaderNodeTransformOp>`, :ref:`VisualShaderNodeTransformVecMult<class_VisualShaderNodeTransformVecMult>`, :ref:`VisualShaderNodeUIntFunc<class_VisualShaderNodeUIntFunc>`, :ref:`VisualShaderNodeUIntOp<class_VisualShaderNodeUIntOp>`, :ref:`VisualShaderNodeUVFunc<class_VisualShaderNodeUVFunc>`, :ref:`VisualShaderNodeUVPolarCoord<class_VisualShaderNodeUVPolarCoord>`, :ref:`VisualShaderNodeVarying<class_VisualShaderNodeVarying>`, :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>`, :ref:`VisualShaderNodeWorldPositionFromDepth<class_VisualShaderNodeWorldPositionFromDepth>`

Базовый класс для узлов :ref:`VisualShader<class_VisualShader>`. Не относится к узлам сцены.

.. rst-class:: classref-introduction-group

Описание
----------------

A visual shader graph consists of various nodes. Each node in a graph is an individual resource, represented as a rectangular box containing a title and several related properties. Each node can also be connected to other nodes through their connection ports in order to control the shader's flow.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование VisualShaders <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`linked_parent_graph_frame<class_VisualShaderNode_property_linked_parent_graph_frame>` | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`output_port_for_preview<class_VisualShaderNode_property_output_port_for_preview>`     | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методы
------------

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

Перечисления
------------------------

.. _enum_VisualShaderNode_PortType:

.. rst-class:: classref-enumeration

enum **PortType**: :ref:`🔗<enum_VisualShaderNode_PortType>`

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR** = ``0``

Скаляр с плавающей точкой. В коде шейдера преобразуется в тип ``float``.

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_INT** = ``1``

Целочисленный скаляр. В коде шейдера переведен в тип ``int``.

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_UINT** = ``2``

Беззнаковый целочисленный скаляр. Переводится в тип ``uint`` в коде шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_2D** = ``3``

2D вектор значений с плавающей точкой. Переведенный в тип ``vec2`` в коде шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_3D** = ``4``

3D вектор значений с плавающей точкой. Переведенный в тип ``vec3`` в коде шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_4D** = ``5``

4D вектор значений с плавающей точкой. Переведено в тип ``vec4`` в коде шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_BOOLEAN** = ``6``

Тип Boolean. В коде шейдера переведен в тип ``bool``.

.. _class_VisualShaderNode_constant_PORT_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_TRANSFORM** = ``7``

Тип преобразования. Переведено в тип ``mat4`` в коде шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_SAMPLER:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SAMPLER** = ``8``

Тип сэмплера. Транслируется в ссылку на униформу сэмплера в коде шейдера. Может использоваться только для входных портов в не-унформных узлах.

.. _class_VisualShaderNode_constant_PORT_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_MAX** = ``9``

Представляет размер перечисления :ref:`PortType<enum_VisualShaderNode_PortType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNode_property_linked_parent_graph_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **linked_parent_graph_frame** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_linked_parent_graph_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Представляет индекс фрейма, с которым связан этот узел. Если установлено значение ``-1``, узел не связан ни с одним фреймом.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_property_output_port_for_preview:

.. rst-class:: classref-property

:ref:`int<class_int>` **output_port_for_preview** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_output_port_for_preview>`

.. rst-class:: classref-property-setget

- |void| **set_output_port_for_preview**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_output_port_for_preview**\ (\ )

Устанавливает индекс выходного порта, который будет показан для предварительного просмотра. Если установлено значение ``-1``, ни один порт не будет открыт для предварительного просмотра.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VisualShaderNode_method_clear_default_input_values:

.. rst-class:: classref-method

|void| **clear_default_input_values**\ (\ ) :ref:`🔗<class_VisualShaderNode_method_clear_default_input_values>`

Очищает значение входных портов по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_port>`

Возвращает входной порт, который должен быть подключен по умолчанию, когда этот узел создается в результате перетаскивания соединения из существующего узла в пустое место на графике.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_default_input_values**\ (\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_values>`

Возвращает :ref:`Array<class_Array>`, содержащий значения по умолчанию для всех входных портов узла в форме ``[index0, value0, index1, value1, ...]``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_input_port_default_value>`

Возвращает значение по умолчанию для входа ``port``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_remove_input_port_default_value:

.. rst-class:: classref-method

|void| **remove_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNode_method_remove_input_port_default_value>`

Удаляет значение по умолчанию для входа ``port``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_default_input_values:

.. rst-class:: classref-method

|void| **set_default_input_values**\ (\ values\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_VisualShaderNode_method_set_default_input_values>`

Устанавливает значения входных портов по умолчанию с помощью :ref:`Array<class_Array>` в форме ``[index0, value0, index1, value1, ...]``. Например: ``[0, Vector3(0, 0, 0), 1, Vector3(0, 0, 0)]``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_input_port_default_value:

.. rst-class:: classref-method

|void| **set_input_port_default_value**\ (\ port\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, prev_value\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_VisualShaderNode_method_set_input_port_default_value>`

Устанавливает значение параметра по умолчанию ``value`` для выбранного входа ``port``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
