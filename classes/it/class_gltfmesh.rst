:github_url: hide

.. _class_GLTFMesh:

GLTFMesh
========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

GLTFMesh rappresenta una mesh glTF.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

GLTFMesh gestisce i dati di mesh 3D importati dai file glTF. Include proprietà per canali di fusione, pesi di fusione, materiali di istanza e la mesh stessa.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`          | :ref:`blend_weights<class_GLTFMesh_property_blend_weights>`           | ``PackedFloat32Array()`` |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] | :ref:`instance_materials<class_GLTFMesh_property_instance_materials>` | ``[]``                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>`                      | :ref:`mesh<class_GLTFMesh_property_mesh>`                             |                          |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`String<class_String>`                                  | :ref:`original_name<class_GLTFMesh_property_original_name>`           | ``""``                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_additional_data<class_GLTFMesh_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_additional_data<class_GLTFMesh_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFMesh_property_blend_weights:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **blend_weights** = ``PackedFloat32Array()`` :ref:`🔗<class_GLTFMesh_property_blend_weights>`

.. rst-class:: classref-property-setget

- |void| **set_blend_weights**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_blend_weights**\ (\ )

Un array di float che rappresentano i pesi di fusione della mesh.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_instance_materials:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **instance_materials** = ``[]`` :ref:`🔗<class_GLTFMesh_property_instance_materials>`

.. rst-class:: classref-property-setget

- |void| **set_instance_materials**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **get_instance_materials**\ (\ )

Un array di oggetti Material che rappresentano i materiali utilizzati nella mesh.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_mesh:

.. rst-class:: classref-property

:ref:`ImporterMesh<class_ImporterMesh>` **mesh** :ref:`🔗<class_GLTFMesh_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`ImporterMesh<class_ImporterMesh>`\ )
- :ref:`ImporterMesh<class_ImporterMesh>` **get_mesh**\ (\ )

L'oggetto :ref:`ImporterMesh<class_ImporterMesh>` che rappresenta la mesh stessa.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFMesh_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

Il nome originale della mesh.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GLTFMesh_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFMesh_method_get_additional_data>`

Ottiene ulteriori dati arbitrari in questa istanza **GLTFMesh**. Può essere utilizzato per mantenere i dati di stato per ogni nodo nelle classi :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, il che è importante perché sono stateless.

L'argomento dovrebbe essere il nome del :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (non deve corrispondere al nome dell'estensione nel file glTF) e il valore restituito può essere qualsiasi cosa tu imposti. Se niente è stato impostato, il valore restituito è ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFMesh_method_set_additional_data>`

Imposta ulteriori dati arbitrari in questa istanza **GLTFMesh**. Può essere utilizzato per mantenere i dati di stato per ogni nodo nelle classi :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, il che è importante perché sono stateless.

Il primo argomento dovrebbe essere il nome del :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (non deve corrispondere al nome dell'estensione nel file glTF) e il secondo argomento può essere qualsiasi cosa tu voglia.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
