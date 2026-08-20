:github_url: hide

.. _class_VisualShaderNodeParameter:

VisualShaderNodeParameter
=========================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShaderNodeBooleanParameter<class_VisualShaderNodeBooleanParameter>`, :ref:`VisualShaderNodeColorParameter<class_VisualShaderNodeColorParameter>`, :ref:`VisualShaderNodeFloatParameter<class_VisualShaderNodeFloatParameter>`, :ref:`VisualShaderNodeIntParameter<class_VisualShaderNodeIntParameter>`, :ref:`VisualShaderNodeTextureParameter<class_VisualShaderNodeTextureParameter>`, :ref:`VisualShaderNodeTransformParameter<class_VisualShaderNodeTransformParameter>`, :ref:`VisualShaderNodeUIntParameter<class_VisualShaderNodeUIntParameter>`, :ref:`VisualShaderNodeVec2Parameter<class_VisualShaderNodeVec2Parameter>`, :ref:`VisualShaderNodeVec3Parameter<class_VisualShaderNodeVec3Parameter>`, :ref:`VisualShaderNodeVec4Parameter<class_VisualShaderNodeVec4Parameter>`

Un tipo di base per i parametri all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un parametro rappresenta una variabile nello shader che viene impostato esternamente, cioè dal :ref:`ShaderMaterial<class_ShaderMaterial>`. I parametri sono esposti come proprietà nel :ref:`ShaderMaterial<class_ShaderMaterial>` e possono essere assegnati dall'Ispettore o da uno script.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`                                      | :ref:`instance_index<class_VisualShaderNodeParameter_property_instance_index>` | ``0``  |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`parameter_name<class_VisualShaderNodeParameter_property_parameter_name>` | ``""`` |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` | :ref:`qualifier<class_VisualShaderNodeParameter_property_qualifier>`           | ``0``  |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeParameter_Qualifier:

.. rst-class:: classref-enumeration

enum **Qualifier**: :ref:`🔗<enum_VisualShaderNodeParameter_Qualifier>`

.. _class_VisualShaderNodeParameter_constant_QUAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_NONE** = ``0``

Il parametro sarà abbinato al :ref:`ShaderMaterial<class_ShaderMaterial>` che utilizza questo shader.

.. _class_VisualShaderNodeParameter_constant_QUAL_GLOBAL:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_GLOBAL** = ``1``

Il parametro utilizzerà un valore globale, definito nelle Impostazioni del progetto.

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE** = ``2``

Il parametro sarà abbinato al nodo contenente lo :ref:`ShaderMaterial<class_ShaderMaterial>` che utilizza questo shader.

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE_INDEX** = ``3``

Il parametro sarà abbinato al nodo contenente lo :ref:`ShaderMaterial<class_ShaderMaterial>` che utilizza questo shader. Consente di impostare una proprietà :ref:`instance_index<class_VisualShaderNodeParameter_property_instance_index>`.

.. _class_VisualShaderNodeParameter_constant_QUAL_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_MAX** = ``4``

Rappresenta la dimensione dell'enumerazione :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeParameter_property_instance_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **instance_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_instance_index>`

.. rst-class:: classref-property-setget

- |void| **set_instance_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instance_index**\ (\ )

L'indice compreso nell'intervallo 0-15, utilizzato per evitare conflitti quando lo shader è utilizzato su più materiali.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_parameter_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **parameter_name** = ``""`` :ref:`🔗<class_VisualShaderNodeParameter_property_parameter_name>`

.. rst-class:: classref-property-setget

- |void| **set_parameter_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_parameter_name**\ (\ )

Nome del parametro, tramite il quale è possibile accedere attraverso le proprietà da :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_qualifier:

.. rst-class:: classref-property

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **qualifier** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_qualifier>`

.. rst-class:: classref-property-setget

- |void| **set_qualifier**\ (\ value\: :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>`\ )
- :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **get_qualifier**\ (\ )

Definisce la portata del parametro.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
