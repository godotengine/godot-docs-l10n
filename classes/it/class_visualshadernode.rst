:github_url: hide

.. _class_VisualShaderNode:

VisualShaderNode
================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShaderNodeBillboard<class_VisualShaderNodeBillboard>`, :ref:`VisualShaderNodeClamp<class_VisualShaderNodeClamp>`, :ref:`VisualShaderNodeColorFunc<class_VisualShaderNodeColorFunc>`, :ref:`VisualShaderNodeColorOp<class_VisualShaderNodeColorOp>`, :ref:`VisualShaderNodeCompare<class_VisualShaderNodeCompare>`, :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>`, :ref:`VisualShaderNodeCubemap<class_VisualShaderNodeCubemap>`, :ref:`VisualShaderNodeCustom<class_VisualShaderNodeCustom>`, :ref:`VisualShaderNodeDerivativeFunc<class_VisualShaderNodeDerivativeFunc>`, :ref:`VisualShaderNodeDeterminant<class_VisualShaderNodeDeterminant>`, :ref:`VisualShaderNodeDistanceFade<class_VisualShaderNodeDistanceFade>`, :ref:`VisualShaderNodeDotProduct<class_VisualShaderNodeDotProduct>`, :ref:`VisualShaderNodeFloatFunc<class_VisualShaderNodeFloatFunc>`, :ref:`VisualShaderNodeFloatOp<class_VisualShaderNodeFloatOp>`, :ref:`VisualShaderNodeFresnel<class_VisualShaderNodeFresnel>`, :ref:`VisualShaderNodeIf<class_VisualShaderNodeIf>`, :ref:`VisualShaderNodeInput<class_VisualShaderNodeInput>`, :ref:`VisualShaderNodeIntFunc<class_VisualShaderNodeIntFunc>`, :ref:`VisualShaderNodeIntOp<class_VisualShaderNodeIntOp>`, :ref:`VisualShaderNodeIs<class_VisualShaderNodeIs>`, :ref:`VisualShaderNodeLinearSceneDepth<class_VisualShaderNodeLinearSceneDepth>`, :ref:`VisualShaderNodeMix<class_VisualShaderNodeMix>`, :ref:`VisualShaderNodeMultiplyAdd<class_VisualShaderNodeMultiplyAdd>`, :ref:`VisualShaderNodeOuterProduct<class_VisualShaderNodeOuterProduct>`, :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>`, :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>`, :ref:`VisualShaderNodeParameterRef<class_VisualShaderNodeParameterRef>`, :ref:`VisualShaderNodeParticleAccelerator<class_VisualShaderNodeParticleAccelerator>`, :ref:`VisualShaderNodeParticleConeVelocity<class_VisualShaderNodeParticleConeVelocity>`, :ref:`VisualShaderNodeParticleEmit<class_VisualShaderNodeParticleEmit>`, :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>`, :ref:`VisualShaderNodeParticleMultiplyByAxisAngle<class_VisualShaderNodeParticleMultiplyByAxisAngle>`, :ref:`VisualShaderNodeParticleRandomness<class_VisualShaderNodeParticleRandomness>`, :ref:`VisualShaderNodeProximityFade<class_VisualShaderNodeProximityFade>`, :ref:`VisualShaderNodeRandomRange<class_VisualShaderNodeRandomRange>`, :ref:`VisualShaderNodeRemap<class_VisualShaderNodeRemap>`, :ref:`VisualShaderNodeReroute<class_VisualShaderNodeReroute>`, :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>`, :ref:`VisualShaderNodeRotationByAxis<class_VisualShaderNodeRotationByAxis>`, :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>`, :ref:`VisualShaderNodeScreenNormalWorldSpace<class_VisualShaderNodeScreenNormalWorldSpace>`, :ref:`VisualShaderNodeScreenUVToSDF<class_VisualShaderNodeScreenUVToSDF>`, :ref:`VisualShaderNodeSDFRaymarch<class_VisualShaderNodeSDFRaymarch>`, :ref:`VisualShaderNodeSDFToScreenUV<class_VisualShaderNodeSDFToScreenUV>`, :ref:`VisualShaderNodeSmoothStep<class_VisualShaderNodeSmoothStep>`, :ref:`VisualShaderNodeStep<class_VisualShaderNodeStep>`, :ref:`VisualShaderNodeSwitch<class_VisualShaderNodeSwitch>`, :ref:`VisualShaderNodeTexture<class_VisualShaderNodeTexture>`, :ref:`VisualShaderNodeTextureSDF<class_VisualShaderNodeTextureSDF>`, :ref:`VisualShaderNodeTextureSDFNormal<class_VisualShaderNodeTextureSDFNormal>`, :ref:`VisualShaderNodeTransformCompose<class_VisualShaderNodeTransformCompose>`, :ref:`VisualShaderNodeTransformDecompose<class_VisualShaderNodeTransformDecompose>`, :ref:`VisualShaderNodeTransformFunc<class_VisualShaderNodeTransformFunc>`, :ref:`VisualShaderNodeTransformOp<class_VisualShaderNodeTransformOp>`, :ref:`VisualShaderNodeTransformVecMult<class_VisualShaderNodeTransformVecMult>`, :ref:`VisualShaderNodeUIntFunc<class_VisualShaderNodeUIntFunc>`, :ref:`VisualShaderNodeUIntOp<class_VisualShaderNodeUIntOp>`, :ref:`VisualShaderNodeUVFunc<class_VisualShaderNodeUVFunc>`, :ref:`VisualShaderNodeUVPolarCoord<class_VisualShaderNodeUVPolarCoord>`, :ref:`VisualShaderNodeVarying<class_VisualShaderNodeVarying>`, :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>`, :ref:`VisualShaderNodeWorldPositionFromDepth<class_VisualShaderNodeWorldPositionFromDepth>`

Classe di base per i nodi :ref:`VisualShader<class_VisualShader>`. Non riguarda i nodi di scena.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I grafici di shader visivi sono costituiti da vari nodi. Ogni nodo nel grafico è un oggetto separato e sono rappresentati come riquadri rettangolari con titolo e un insieme di proprietà. Ogni nodo ha anche porte di connessione che consentono di collegarlo ad altri nodi e controllare il flusso dello shader.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di VisualShader <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`linked_parent_graph_frame<class_VisualShaderNode_property_linked_parent_graph_frame>` | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`output_port_for_preview<class_VisualShaderNode_property_output_port_for_preview>`     | ``-1`` |
   +-----------------------+---------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
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

Enumerazioni
------------------------

.. _enum_VisualShaderNode_PortType:

.. rst-class:: classref-enumeration

enum **PortType**: :ref:`🔗<enum_VisualShaderNode_PortType>`

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR** = ``0``

Scalare in virgola mobile. Tradotto come il tipo ``float`` nel codice di shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_INT** = ``1``

Scalare intero. Tradotto come il tipo ``int`` nel codice di shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SCALAR_UINT** = ``2``

Scalare intero senza segno. Tradotto come il tipo ``uint`` nel codice di shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_2D** = ``3``

Vettore 2D di valori in virgola mobile. Tradotto nel tipo ``vec2`` nel codice di shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_3D** = ``4``

Vettore 3D di valori in virgola mobile. Tradotto nel tipo ``vec3`` nel codice di shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_VECTOR_4D** = ``5``

Vettore 4D di valori in virgola mobile. Tradotto nel tipo ``vec4`` nel codice di shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_BOOLEAN** = ``6``

Scalare booleano. Tradotto come il tipo ``bool`` nel codice di shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_TRANSFORM** = ``7``

Tipo di trasformazione. Tradotto come il tipo ``mat4`` nel codice di shader.

.. _class_VisualShaderNode_constant_PORT_TYPE_SAMPLER:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_SAMPLER** = ``8``

Tipo di campionatore. Tradotto in riferimento di uniforme nel codice shader. Può essere utilizzato solo per porte di ingresso in nodi non uniformi.

.. _class_VisualShaderNode_constant_PORT_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`PortType<enum_VisualShaderNode_PortType>` **PORT_TYPE_MAX** = ``9``

Rappresenta la dimensione dell'enumerazione :ref:`PortType<enum_VisualShaderNode_PortType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNode_property_linked_parent_graph_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **linked_parent_graph_frame** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_linked_parent_graph_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Rappresenta l'indice della cornice a cui questo nodo è collegato. Se impostato su ``-1`` il nodo non è collegato ad alcuna cornice.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_property_output_port_for_preview:

.. rst-class:: classref-property

:ref:`int<class_int>` **output_port_for_preview** = ``-1`` :ref:`🔗<class_VisualShaderNode_property_output_port_for_preview>`

.. rst-class:: classref-property-setget

- |void| **set_output_port_for_preview**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_output_port_for_preview**\ (\ )

Imposta l'indice della porta di uscita che sarà mostrata per l'anteprima. Se impostato su ``-1`` nessuna porta sarà aperta per l'anteprima.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VisualShaderNode_method_clear_default_input_values:

.. rst-class:: classref-method

|void| **clear_default_input_values**\ (\ ) :ref:`🔗<class_VisualShaderNode_method_clear_default_input_values>`

Cancella il valore delle porte di ingresso predefinito.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_port>`

Restituisce la porta di ingresso che dovrebbe essere collegata inizialmente quando questo nodo viene creato trascinando un collegamento da un nodo esistente verso lo spazio vuoto sul grafico.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_default_input_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_default_input_values**\ (\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_default_input_values>`

Restituisce un :ref:`Array<class_Array>` contenente i valori predefiniti per tutte le porte di ingresso del nodo nel formato ``[indice0, valore0, indice1, valore1, ...]``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNode_method_get_input_port_default_value>`

Restituisce il valore predefinito della porta di ingresso ``port``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_remove_input_port_default_value:

.. rst-class:: classref-method

|void| **remove_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNode_method_remove_input_port_default_value>`

Rimuove il valore predefinito della porta di ingresso ``port``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_default_input_values:

.. rst-class:: classref-method

|void| **set_default_input_values**\ (\ values\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_VisualShaderNode_method_set_default_input_values>`

Imposta i valori delle porte di ingresso predefinite attraverso un :ref:`Array<class_Array>` nel formato ``[indice0, valore0, indice1, valore1, ...]``. Ad esempio: ``[0, Vector3(0, 0, 0), 1, Vector3(0, 0, 0)]``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNode_method_set_input_port_default_value:

.. rst-class:: classref-method

|void| **set_input_port_default_value**\ (\ port\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, prev_value\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_VisualShaderNode_method_set_input_port_default_value>`

Imposta il valore predefinito per la porta selezionata di ingresso ``port`` a ``value``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
