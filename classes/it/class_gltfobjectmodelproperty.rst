:github_url: hide

.. _class_GLTFObjectModelProperty:

GLTFObjectModelProperty
=======================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Descrive come accedere a una proprietà come definito nel modello d'oggetto glTF.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

GLTFObjectModelProperty definisce una mappatura tra una proprietà nel modello d'oggetto glTF e un NodePath nell'albero di scene di Godot. Può essere utilizzato per animare le proprietà in un file glTF attraverso l'estensione ``KHR_animation_pointer`` o per accedervi tramite uno script indipendente dal motore, come un grafico di comportamento definito dall'estensione ``KHR_interactivity``.

La proprietà glTF è identificata da puntatori JSON memorizzati in :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`, mentre la proprietà di Godot a cui è mappata è definita da :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`. Nella maggior parte dei casi :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` e :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` avranno ciascuno un solo elemento, ma in alcuni casi un singolo puntatore JSON glTF sarà mappato a più proprietà Godot, oppure una singola proprietà Godot sarà mappata a più puntatori JSON glTF, oppure potrebbe trattarsi di una relazione molti-a-molti.

È possibile usare gli oggetti :ref:`Expression<class_Expression>` per definire conversioni tra i dati, come quando glTF definisce un angolo in radianti e Godot usa gradi. La proprietà :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` definisce il tipo di dati memorizzati nel file glTF come definito dal modello d'oggetto, vedi :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` per i valori possibili.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Modello d'oggetto GLTF <https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/ObjectModel.adoc>`__

- `Specifiche sull'estensione glTF KHR_animation_pointer <https://github.com/KhronosGroup/glTF/tree/main/extensions/2.0/Khronos/KHR_animation_pointer>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`gltf_to_godot_expression<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`godot_to_gltf_expression<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] | :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`                       | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]                   | :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`                             | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`   | :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>`               | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`                            | :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>`                         | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_node_path<class_GLTFObjectModelProperty_method_append_node_path>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                         |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_path_to_property<class_GLTFObjectModelProperty_method_append_path_to_property>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ )                                          |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` | :ref:`get_accessor_type<class_GLTFObjectModelProperty_method_get_accessor_type>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_json_pointers<class_GLTFObjectModelProperty_method_has_json_pointers>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_node_paths<class_GLTFObjectModelProperty_method_has_node_paths>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_types<class_GLTFObjectModelProperty_method_set_types>`\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_GLTFObjectModelProperty_GLTFObjectModelType:

.. rst-class:: classref-enumeration

enum **GLTFObjectModelType**: :ref:`🔗<enum_GLTFObjectModelProperty_GLTFObjectModelType>`

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_UNKNOWN** = ``0``

Tipo di modello d'oggetto sconosciuto o non impostato. Se il tipo di modello d'oggetto è impostato su questo valore, il tipo reale deve ancora essere determinato.

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_BOOL:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_BOOL** = ``1``

Tipo di modello d'oggetto "bool". Rappresentato nel JSON glTF come un valore booleano e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "SCALAR". Quando codificato in un accessor, un valore di ``0`` è ``false`` e qualsiasi altro valore è ``true``.

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT** = ``2``

Tipo di modello d'oggetto "float". Rappresentato nel JSON glTF come un numero e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "SCALAR".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY** = ``3``

Tipo di modello d'oggetto "float\[\]". Rappresentato nel JSON glTF come un array di numeri e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "SCALAR".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2** = ``4``

Tipo di modello d'oggetto "float2". Rappresentato nel JSON glTF come un array di due numeri e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "VEC2".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3** = ``5``

Tipo di modello d'oggetto "float3". Rappresentato nel JSON glTF come un array di tre numeri e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "VEC3".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4** = ``6``

Tipo di modello d'oggetto "float4". Rappresentato nel JSON glTF come un array di quattro numeri e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "VEC4".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2X2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2X2** = ``7``

Tipo di modello d'oggetto "float2x2". Rappresentato nel JSON glTF come un array di quattro numeri e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "MAT2".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3X3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3X3** = ``8``

Tipo di modello d'oggetto "float3x3". Rappresentato nel JSON glTF come un array di nove numeri e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "MAT3".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4X4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4X4** = ``9``

Tipo di modello d'oggetto "float4x4". Rappresentato nel JSON glTF come un array di sedici numeri e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "MAT4".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_INT** = ``10``

Tipo di modello d'oggetto "int". Rappresentato nel glTF JSON come un numero e codificato in un :ref:`GLTFAccessor<class_GLTFAccessor>` come "SCALAR". L'intervallo di valori è limitato agli interi con segno. Per ``KHR_interactivity``, sono supportati solo gli interi a 32 bit.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFObjectModelProperty_property_gltf_to_godot_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **gltf_to_godot_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>`

.. rst-class:: classref-property-setget

- |void| **set_gltf_to_godot_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_gltf_to_godot_expression**\ (\ )

Se impostata, questa :ref:`Expression<class_Expression>` verrà utilizzata per convertire il valore della proprietà dal modello d'oggetto glTF al valore previsto dalla proprietà di Godot. Ciò è utile quando il modello d'oggetto glTF utilizza un sistema di unità diverso o quando è necessario trasformare i dati in qualche modo. Se ``null``, il valore verrà copiato così com'è.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_godot_to_gltf_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **godot_to_gltf_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>`

.. rst-class:: classref-property-setget

- |void| **set_godot_to_gltf_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_godot_to_gltf_expression**\ (\ )

Se impostata, questa :ref:`Expression<class_Expression>` verrà utilizzata per convertire il valore della proprietà dalla proprietà di Godot al valore previsto dal modello d'oggetto glTF. Ciò è utile quando il modello d'oggetto glTF utilizza un sistema di unità diverso o quando è necessario trasformare i dati in qualche modo. Se ``null``, il valore verrà copiato così com'è.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_json_pointers:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **json_pointers** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_json_pointers>`

.. rst-class:: classref-property-setget

- |void| **set_json_pointers**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **get_json_pointers**\ (\ )

I puntatori JSON del modello d'oggetto glTF utilizzati per identificare la proprietà nel modello d'oggetto glTF. Nella maggior parte dei casi, ci sarà un solo elemento in questo array, ma casi più specifici potrebbero richiedere più puntatori. Gli elementi sono a loro volta array che rappresentano il puntatore JSON suddiviso nei suoi componenti.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_node_paths:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **node_paths** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_node_paths>`

.. rst-class:: classref-property-setget

- |void| **set_node_paths**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_node_paths**\ (\ )

Un array di :ref:`NodePath<class_NodePath>` che puntano a una proprietà, o più proprietà, nell'albero di scene Godot. All'importazione, questo verrà impostato da :ref:`GLTFDocument<class_GLTFDocument>` o da una classe :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`. Per i casi semplici, usa :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` per aggiungere proprietà a questo array.

Nella maggior parte dei casi :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` avrà solo un elemento, ma in alcuni casi un singolo puntatore JSON glTF sarà mappato a più proprietà di Godot. Ad esempio, un :ref:`GLTFCamera<class_GLTFCamera>` o :ref:`GLTFLight<class_GLTFLight>` usato su più nodi glTF sarà rappresentato da più nodi di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_object_model_type:

.. rst-class:: classref-property

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **object_model_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_object_model_type>`

.. rst-class:: classref-property-setget

- |void| **set_object_model_type**\ (\ value\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ )
- :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **get_object_model_type**\ (\ )

Il tipo di dati memorizzato nel file glTF come definito dal modello d'oggetto. Questo è un sovrainsieme dei tipi di accessor disponibili e determina il tipo di accessor.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_variant_type:

.. rst-class:: classref-property

:ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **variant_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_variant_type>`

.. rst-class:: classref-property-setget

- |void| **set_variant_type**\ (\ value\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ )
- :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **get_variant_type**\ (\ )

Il tipo di dati memorizzati nella proprietà di Godot. Questo è il tipo di proprietà a cui puntano i :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GLTFObjectModelProperty_method_append_node_path:

.. rst-class:: classref-method

|void| **append_node_path**\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_node_path>`

Aggiunge un :ref:`NodePath<class_NodePath>` a :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`. Può essere utilizzato dalle classi :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` per definire come una proprietà del modello d'oggetto glTF viene mappata a una proprietà di Godot o a più proprietà Godot. Preferisci usare :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` per i casi semplici. Assicurati di chiamare anche :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>` una volta (l'ordine non ha importanza).

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_append_path_to_property:

.. rst-class:: classref-method

|void| **append_path_to_property**\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_path_to_property>`

Wrapper di alto livello sopra :ref:`append_node_path()<class_GLTFObjectModelProperty_method_append_node_path>` che gestisce i casi più comuni. Costruisce un nuovo :ref:`NodePath<class_NodePath>` usando ``node_path`` come base e aggiunge ``prop_name`` al sotto-percorso. Assicurati di chiamare anche :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>` una volta (l'ordine non ha importanza).

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_get_accessor_type:

.. rst-class:: classref-method

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **get_accessor_type**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_get_accessor_type>`

Il tipo di accessor GLTF associato a :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` di questa proprietà. Vedi :ref:`GLTFAccessor.accessor_type<class_GLTFAccessor_property_accessor_type>` per i valori possibili e vedi :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` per il modo in cui il tipo di modello d'oggetto è mappato ai tipi di accessor.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_json_pointers:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_json_pointers**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_json_pointers>`

Restituisce ``true`` se :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` non è vuoto. È utilizzato durante l'esportazione per determinare se un **GLTFObjectModelProperty** può gestire la conversione di una proprietà di Godot in una proprietà del modello d'oggetto glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_node_paths:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node_paths**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_node_paths>`

Restituisce ``true`` se :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` non è vuoto. È utilizzato durante l'importazione per determinare se un **GLTFObjectModelProperty** può gestire la conversione di una proprietà del modello d'oggetto glTF in una proprietà di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_set_types:

.. rst-class:: classref-method

|void| **set_types**\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_set_types>`

Imposta le proprietà :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>` e :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>`. Questo è un metodo di comodità per impostare entrambe le proprietà contemporaneamente, poiché sono quasi sempre note allo stesso tempo. Questo metodo dovrebbe essere chiamato una volta. Chiamarlo di nuovo con gli stessi valori non avrà alcun effetto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
