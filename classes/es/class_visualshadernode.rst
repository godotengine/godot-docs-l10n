:github_url: hide

.. _class_VisualShaderNode:

VisualShaderNode
================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`VisualShaderNodeBillboard<class_VisualShaderNodeBillboard>`, :ref:`VisualShaderNodeClamp<class_VisualShaderNodeClamp>`, :ref:`VisualShaderNodeColorFunc<class_VisualShaderNodeColorFunc>`, :ref:`VisualShaderNodeColorOp<class_VisualShaderNodeColorOp>`, :ref:`VisualShaderNodeCompare<class_VisualShaderNodeCompare>`, :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>`, :ref:`VisualShaderNodeCubemap<class_VisualShaderNodeCubemap>`, :ref:`VisualShaderNodeCustom<class_VisualShaderNodeCustom>`, :ref:`VisualShaderNodeDerivativeFunc<class_VisualShaderNodeDerivativeFunc>`, :ref:`VisualShaderNodeDeterminant<class_VisualShaderNodeDeterminant>`, :ref:`VisualShaderNodeDistanceFade<class_VisualShaderNodeDistanceFade>`, :ref:`VisualShaderNodeDotProduct<class_VisualShaderNodeDotProduct>`, :ref:`VisualShaderNodeFloatFunc<class_VisualShaderNodeFloatFunc>`, :ref:`VisualShaderNodeFloatOp<class_VisualShaderNodeFloatOp>`, :ref:`VisualShaderNodeFresnel<class_VisualShaderNodeFresnel>`, :ref:`VisualShaderNodeIf<class_VisualShaderNodeIf>`, :ref:`VisualShaderNodeInput<class_VisualShaderNodeInput>`, :ref:`VisualShaderNodeIntFunc<class_VisualShaderNodeIntFunc>`, :ref:`VisualShaderNodeIntOp<class_VisualShaderNodeIntOp>`, :ref:`VisualShaderNodeIs<class_VisualShaderNodeIs>`, :ref:`VisualShaderNodeLinearSceneDepth<class_VisualShaderNodeLinearSceneDepth>`, :ref:`VisualShaderNodeMix<class_VisualShaderNodeMix>`, :ref:`VisualShaderNodeMultiplyAdd<class_VisualShaderNodeMultiplyAdd>`, :ref:`VisualShaderNodeOuterProduct<class_VisualShaderNodeOuterProduct>`, :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>`, :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>`, :ref:`VisualShaderNodeParameterRef<class_VisualShaderNodeParameterRef>`, :ref:`VisualShaderNodeParticleAccelerator<class_VisualShaderNodeParticleAccelerator>`, :ref:`VisualShaderNodeParticleConeVelocity<class_VisualShaderNodeParticleConeVelocity>`, :ref:`VisualShaderNodeParticleEmit<class_VisualShaderNodeParticleEmit>`, :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>`, :ref:`VisualShaderNodeParticleMultiplyByAxisAngle<class_VisualShaderNodeParticleMultiplyByAxisAngle>`, :ref:`VisualShaderNodeParticleRandomness<class_VisualShaderNodeParticleRandomness>`, :ref:`VisualShaderNodeProximityFade<class_VisualShaderNodeProximityFade>`, :ref:`VisualShaderNodeRandomRange<class_VisualShaderNodeRandomRange>`, :ref:`VisualShaderNodeRemap<class_VisualShaderNodeRemap>`, :ref:`VisualShaderNodeReroute<class_VisualShaderNodeReroute>`, :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>`, :ref:`VisualShaderNodeRotationByAxis<class_VisualShaderNodeRotationByAxis>`, :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>`, :ref:`VisualShaderNodeScreenNormalWorldSpace<class_VisualShaderNodeScreenNormalWorldSpace>`, :ref:`VisualShaderNodeScreenUVToSDF<class_VisualShaderNodeScreenUVToSDF>`, :ref:`VisualShaderNodeSDFRaymarch<class_VisualShaderNodeSDFRaymarch>`, :ref:`VisualShaderNodeSDFToScreenUV<class_VisualShaderNodeSDFToScreenUV>`, :ref:`VisualShaderNodeSmoothStep<class_VisualShaderNodeSmoothStep>`, :ref:`VisualShaderNodeStep<class_VisualShaderNodeStep>`, :ref:`VisualShaderNodeSwitch<class_VisualShaderNodeSwitch>`, :ref:`VisualShaderNodeTexture<class_VisualShaderNodeTexture>`, :ref:`VisualShaderNodeTextureSDF<class_VisualShaderNodeTextureSDF>`, :ref:`VisualShaderNodeTextureSDFNormal<class_VisualShaderNodeTextureSDFNormal>`, :ref:`VisualShaderNodeTransformCompose<class_VisualShaderNodeTransformCompose>`, :ref:`VisualShaderNodeTransformDecompose<class_VisualShaderNodeTransformDecompose>`, :ref:`VisualShaderNodeTransformFunc<class_VisualShaderNodeTransformFunc>`, :ref:`VisualShaderNodeTransformOp<class_VisualShaderNodeTransformOp>`, :ref:`VisualShaderNodeTransformVecMult<class_VisualShaderNodeTransformVecMult>`, :ref:`VisualShaderNodeUIntFunc<class_VisualShaderNodeUIntFunc>`, :ref:`VisualShaderNodeUIntOp<class_VisualShaderNodeUIntOp>`, :ref:`VisualShaderNodeUVFunc<class_VisualShaderNodeUVFunc>`, :ref:`VisualShaderNodeUVPolarCoord<class_VisualShaderNodeUVPolarCoord>`, :ref:`VisualShaderNodeVarying<class_VisualShaderNodeVarying>`, :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>`, :ref:`VisualShaderNodeWorldPositionFromDepth<class_VisualShaderNodeWorldPositionFromDepth>`

Clase base para los nodos :ref:`VisualShader<class_VisualShader>`. No relacionada con los nodos de escena.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los grafos de shader visuales consisten en varios nodos. Cada nodo en el grafo es un objeto separado y están representados como cajas rectangulares con título y un conjunto de propiedades. Cada nodo también tiene puertos de conexión que permiten conectarlo a otros nodos y controlar el flujo del shader.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar VisualShaders <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`linked_parent_graph_frame<class_VisualShaderNode_property_linked_parent_graph_frame>` | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`output_port_for_preview<class_VisualShaderNode_property_output_port_for_preview>`     | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_VisualShaderNode_PortType:

.. rst-class:: classref-enumeration

enum **PortType**: :ref:`🔗<enum_VisualShaderNode_PortType>`

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR** = ``0``

Escalar de punto flotante. Se traduce al tipo ``float`` en el código del shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_INT** = ``1``

Escalar entero. Se traduce al tipo ``int`` en el código del shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_UINT** = ``2``

Escalar entero sin signo. Se traduce al tipo ``uint`` en el código del shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_2D** = ``3``

Vector 2D de valores de punto flotante. Se traduce al tipo ``vec2`` en el código del shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_3D** = ``4``

Vector 3D de valores de punto flotante. Se traduce al tipo ``vec3`` en el código del shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_4D** = ``5``

Vector 4D de valores de punto flotante. Se traduce al tipo ``vec4`` en el código del shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_BOOLEAN** = ``6``

Tipo booleano. Se traduce al tipo ``bool`` en el código del shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_TRANSFORM** = ``7``

El tipo de transformación. Se traduce al tipo ``mat4`` en el código del shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_SAMPLER:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SAMPLER** = ``8``

Tipo Sampler. Traducido a referencia del uniforme del muestras en el código shader. Solo puede utilizarse para puertos de entrada en nodos no uniformes.

.. _class_VisualShaderNode_constant_PORT_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_MAX** = ``9``

Representa el tamaño del enum :ref:`PortType<enum_VisualShaderNode_PortType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNode_property_linked_parent_graph_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **linked_parent_graph_frame** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_linked_parent_graph_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Representa el índice del fotograma al que está enlazado este nodo. Si se establece en ``-1``, el nodo no está enlazado a ningún fotograma.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_property_output_port_for_preview:

.. rst-class:: classref-property

:ref:`int<class_int>` **output_port_for_preview** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_output_port_for_preview>`

.. rst-class:: classref-property-setget

- |void| **set_output_port_for_preview**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_output_port_for_preview**\ (\ )

Establece el índice del puerto de salida que se mostrará para la vista previa. Si se establece en ``-1`` no se abrirá ningún puerto para la vista previa.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VisualShaderNode_method_clear_default_input_values:

.. rst-class:: classref-method

|void| **clear_default_input_values**\ (\ ) :ref:`🔗<class_VisualShaderNode_method_clear_default_input_values>`

Limpia el valor de los puertos de entrada predeterminados.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_port>`

Devuelve el puerto de entrada que debe conectarse por defecto cuando este nodo se crea como resultado de arrastrar una conexión desde un nodo existente al espacio vacío en el gráfico.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_default_input_values**\ (\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_values>`

Devuelve un :ref:`Array<class_Array>` que contiene valores por defecto para todos los puertos de entrada del nodo en la forma ``[index0, value0, index1, value1, ...]``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_input_port_default_value>`

Devuelve el valor predeterminado de la entrada ``port``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_remove_input_port_default_value:

.. rst-class:: classref-method

|void| **remove_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNode_method_remove_input_port_default_value>`

Elimina el valor predeterminado de la entrada ``port``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_default_input_values:

.. rst-class:: classref-method

|void| **set_default_input_values**\ (\ values\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_VisualShaderNode_method_set_default_input_values>`

Establece los valores de los puertos de entrada por defecto utilizando una :ref:`Array<class_Array>` de la forma ``[index0, value0, index1, value1, ...]``. Por ejemplo: ``[0, Vector3(0, 0, 0), 1, Vector3(0, 0, 0)]``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_input_port_default_value:

.. rst-class:: classref-method

|void| **set_input_port_default_value**\ (\ port\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, prev_value\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_VisualShaderNode_method_set_input_port_default_value>`

Establece el ``value`` por defecto para el ``port`` de entrada seleccionado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
