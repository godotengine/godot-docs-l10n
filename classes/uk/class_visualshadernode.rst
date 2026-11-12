:github_url: hide

.. _class_VisualShaderNode:

VisualShaderNode
================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VisualShaderNodeBillboard<class_VisualShaderNodeBillboard>`, :ref:`VisualShaderNodeClamp<class_VisualShaderNodeClamp>`, :ref:`VisualShaderNodeColorFunc<class_VisualShaderNodeColorFunc>`, :ref:`VisualShaderNodeColorOp<class_VisualShaderNodeColorOp>`, :ref:`VisualShaderNodeCompare<class_VisualShaderNodeCompare>`, :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>`, :ref:`VisualShaderNodeCubemap<class_VisualShaderNodeCubemap>`, :ref:`VisualShaderNodeCustom<class_VisualShaderNodeCustom>`, :ref:`VisualShaderNodeDerivativeFunc<class_VisualShaderNodeDerivativeFunc>`, :ref:`VisualShaderNodeDeterminant<class_VisualShaderNodeDeterminant>`, :ref:`VisualShaderNodeDistanceFade<class_VisualShaderNodeDistanceFade>`, :ref:`VisualShaderNodeDotProduct<class_VisualShaderNodeDotProduct>`, :ref:`VisualShaderNodeFloatFunc<class_VisualShaderNodeFloatFunc>`, :ref:`VisualShaderNodeFloatOp<class_VisualShaderNodeFloatOp>`, :ref:`VisualShaderNodeFresnel<class_VisualShaderNodeFresnel>`, :ref:`VisualShaderNodeGroup<class_VisualShaderNodeGroup>`, :ref:`VisualShaderNodeGroupInput<class_VisualShaderNodeGroupInput>`, :ref:`VisualShaderNodeGroupOutput<class_VisualShaderNodeGroupOutput>`, :ref:`VisualShaderNodeIf<class_VisualShaderNodeIf>`, :ref:`VisualShaderNodeInput<class_VisualShaderNodeInput>`, :ref:`VisualShaderNodeIntFunc<class_VisualShaderNodeIntFunc>`, :ref:`VisualShaderNodeIntOp<class_VisualShaderNodeIntOp>`, :ref:`VisualShaderNodeIs<class_VisualShaderNodeIs>`, :ref:`VisualShaderNodeLinearSceneDepth<class_VisualShaderNodeLinearSceneDepth>`, :ref:`VisualShaderNodeMix<class_VisualShaderNodeMix>`, :ref:`VisualShaderNodeMultiplyAdd<class_VisualShaderNodeMultiplyAdd>`, :ref:`VisualShaderNodeOuterProduct<class_VisualShaderNodeOuterProduct>`, :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>`, :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>`, :ref:`VisualShaderNodeParameterRef<class_VisualShaderNodeParameterRef>`, :ref:`VisualShaderNodeParticleAccelerator<class_VisualShaderNodeParticleAccelerator>`, :ref:`VisualShaderNodeParticleConeVelocity<class_VisualShaderNodeParticleConeVelocity>`, :ref:`VisualShaderNodeParticleEmit<class_VisualShaderNodeParticleEmit>`, :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>`, :ref:`VisualShaderNodeParticleMultiplyByAxisAngle<class_VisualShaderNodeParticleMultiplyByAxisAngle>`, :ref:`VisualShaderNodeParticleRandomness<class_VisualShaderNodeParticleRandomness>`, :ref:`VisualShaderNodeProximityFade<class_VisualShaderNodeProximityFade>`, :ref:`VisualShaderNodeRandomRange<class_VisualShaderNodeRandomRange>`, :ref:`VisualShaderNodeRemap<class_VisualShaderNodeRemap>`, :ref:`VisualShaderNodeReroute<class_VisualShaderNodeReroute>`, :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>`, :ref:`VisualShaderNodeRotationByAxis<class_VisualShaderNodeRotationByAxis>`, :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>`, :ref:`VisualShaderNodeScreenNormalWorldSpace<class_VisualShaderNodeScreenNormalWorldSpace>`, :ref:`VisualShaderNodeScreenUVToSDF<class_VisualShaderNodeScreenUVToSDF>`, :ref:`VisualShaderNodeSDFRaymarch<class_VisualShaderNodeSDFRaymarch>`, :ref:`VisualShaderNodeSDFToScreenUV<class_VisualShaderNodeSDFToScreenUV>`, :ref:`VisualShaderNodeSmoothStep<class_VisualShaderNodeSmoothStep>`, :ref:`VisualShaderNodeStep<class_VisualShaderNodeStep>`, :ref:`VisualShaderNodeSwitch<class_VisualShaderNodeSwitch>`, :ref:`VisualShaderNodeTexture<class_VisualShaderNodeTexture>`, :ref:`VisualShaderNodeTextureSDF<class_VisualShaderNodeTextureSDF>`, :ref:`VisualShaderNodeTextureSDFNormal<class_VisualShaderNodeTextureSDFNormal>`, :ref:`VisualShaderNodeTransformCompose<class_VisualShaderNodeTransformCompose>`, :ref:`VisualShaderNodeTransformDecompose<class_VisualShaderNodeTransformDecompose>`, :ref:`VisualShaderNodeTransformFunc<class_VisualShaderNodeTransformFunc>`, :ref:`VisualShaderNodeTransformOp<class_VisualShaderNodeTransformOp>`, :ref:`VisualShaderNodeTransformVecMult<class_VisualShaderNodeTransformVecMult>`, :ref:`VisualShaderNodeUIntFunc<class_VisualShaderNodeUIntFunc>`, :ref:`VisualShaderNodeUIntOp<class_VisualShaderNodeUIntOp>`, :ref:`VisualShaderNodeUVFunc<class_VisualShaderNodeUVFunc>`, :ref:`VisualShaderNodeUVPolarCoord<class_VisualShaderNodeUVPolarCoord>`, :ref:`VisualShaderNodeVarying<class_VisualShaderNodeVarying>`, :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>`, :ref:`VisualShaderNodeWorldPositionFromDepth<class_VisualShaderNodeWorldPositionFromDepth>`

Базовий клас для вузлів :ref:`VisualShader<class_VisualShader>`. Не пов'язані з сценарними вузлами.

.. rst-class:: classref-introduction-group

Опис
--------

A visual shader graph consists of various nodes. Each node in a graph is an individual resource, represented as a rectangular box containing a title and several related properties. Each node can also be connected to other nodes through their connection ports in order to control the shader's flow.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання VisualShaders <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`linked_parent_graph_frame<class_VisualShaderNode_property_linked_parent_graph_frame>` | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`output_port_for_preview<class_VisualShaderNode_property_output_port_for_preview>`     | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

.. _enum_VisualShaderNode_PortType:

.. rst-class:: classref-enumeration

enum **PortType**: :ref:`🔗<enum_VisualShaderNode_PortType>`

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR** = ``0``

Скаляр з плаваючою комою. Перекладається як тип ``float`` у коді шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_INT** = ``1``

Цілочисельний скаляр. Перетворюється на тип ``int`` у коді шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_UINT** = ``2``

Беззнаковий цілочисельний скаляр. Перетворюється на тип ``uint`` у коді шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_2D** = ``3``

2D вектор плавучих значень точки. Translated to ``vec2`` type in shar code.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_3D** = ``4``

3D-вектор значень з плаваючою комою. Перетворено на тип ``vec3`` у коді шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_4D** = ``5``

4D вектор значень з плаваючою комою. Перетворено на тип ``vec4`` у коді шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_BOOLEAN** = ``6``

Булевський тип. Перекладається як тип ``bool`` у коді шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_TRANSFORM** = ``7``

Тип перетворення. Перекладено як тип ``mat4`` у коді шейдера.

.. _class_VisualShaderNode_constant_PORT_TYPE_SAMPLER:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SAMPLER** = ``8``

Тип зразка. Перекладений на посилання пробовідбірника у вигляді шнека коду. Може використовуватися тільки для вхідних портів в неоднорідних вузлах.

.. _class_VisualShaderNode_constant_PORT_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_MAX** = ``9``

Представляємо розмір :ref:`PortType<enum_VisualShaderNode_PortType>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNode_property_linked_parent_graph_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **linked_parent_graph_frame** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_linked_parent_graph_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Представляє індекс каркасу цей вузол пов'язаний з. Якщо встановити до ``-1`` вузол не пов'язаний з будь-яким каркасом.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_property_output_port_for_preview:

.. rst-class:: classref-property

:ref:`int<class_int>` **output_port_for_preview** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_output_port_for_preview>`

.. rst-class:: classref-property-setget

- |void| **set_output_port_for_preview**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_output_port_for_preview**\ (\ )

Встановлює вихідний індекс порту, який буде показаний для попереднього перегляду. Якщо встановити до ``-1`` немає порту буде відкрито для попереднього перегляду.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VisualShaderNode_method_clear_default_input_values:

.. rst-class:: classref-method

|void| **clear_default_input_values**\ (\ ) :ref:`🔗<class_VisualShaderNode_method_clear_default_input_values>`

Очищає значення вхідних портів за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_port>`

Повертає вхідний порт, який повинен бути підключений за замовчуванням, коли цей вузол створюється в результаті перетягування з'єднання з існуючого вузла в порожній простір на графі.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_default_input_values**\ (\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_values>`

Повертає значення :ref:`Array<class_Array>`, що містить значення за замовчуванням для всіх вхідних портів вузла у вигляді ``[index0, значення0, індекс1, значення1, ...]``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_input_port_default_value>`

Повертає значення за замовчуванням входу ``port``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_remove_input_port_default_value:

.. rst-class:: classref-method

|void| **remove_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNode_method_remove_input_port_default_value>`

Видалити значення за замовчуванням входу ``port``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_default_input_values:

.. rst-class:: classref-method

|void| **set_default_input_values**\ (\ values\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_VisualShaderNode_method_set_default_input_values>`

Встановлює значення вхідних портів за замовчуванням за допомогою :ref:`Array<class_Array>` форми ``[index0, значення0, індекс1, значення1, ...]``. Наприклад: ``[0, Vector3(0, 0, 0), 1, Vector3(0, 0, 0)]``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_input_port_default_value:

.. rst-class:: classref-method

|void| **set_input_port_default_value**\ (\ port\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, prev_value\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_VisualShaderNode_method_set_input_port_default_value>`

Налаштовує значення за замовчуванням ``value`` для вибраного входу ``port``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
