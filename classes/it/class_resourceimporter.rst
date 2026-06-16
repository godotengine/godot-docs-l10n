:github_url: hide

.. _class_ResourceImporter:

ResourceImporter
================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`EditorImportPlugin<class_EditorImportPlugin>`, :ref:`ResourceImporterBitMap<class_ResourceImporterBitMap>`, :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>`, :ref:`ResourceImporterCSVTranslation<class_ResourceImporterCSVTranslation>`, :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`, :ref:`ResourceImporterImage<class_ResourceImporterImage>`, :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`, :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`, :ref:`ResourceImporterMP3<class_ResourceImporterMP3>`, :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>`, :ref:`ResourceImporterScene<class_ResourceImporterScene>`, :ref:`ResourceImporterShaderFile<class_ResourceImporterShaderFile>`, :ref:`ResourceImporterSVG<class_ResourceImporterSVG>`, :ref:`ResourceImporterTexture<class_ResourceImporterTexture>`, :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`, :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`

Classe di base per gli importatori di risorse.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa è la classe di base per gli importatori di risorse in Godot. Per implementare i tuoi importatori di risorse usando le estensioni dell'editor, vedi :ref:`EditorImportPlugin<class_EditorImportPlugin>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Estensioni di esportazione <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_build_dependencies<class_ResourceImporter_private_method__get_build_dependencies>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ResourceImporter_ImportOrder:

.. rst-class:: classref-enumeration

enum **ImportOrder**: :ref:`🔗<enum_ResourceImporter_ImportOrder>`

.. _class_ResourceImporter_constant_IMPORT_ORDER_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_DEFAULT** = ``0``

Ordine di importazione predefinito.

.. _class_ResourceImporter_constant_IMPORT_ORDER_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_SCENE** = ``100``

L'ordine di importazione per le scene, che assicura che le scene siano importate *dopo* tutte le altre risorse principali, come le texture. Gli importatori personalizzati dovrebbero in genere avere un ordine di importazione inferiore a ``100`` per evitare problemi quando si importano scene che dipendono da risorse personalizzate.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ResourceImporter_private_method__get_build_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_build_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceImporter_private_method__get_build_dependencies>`

Chiamato quando l'editor del profilo di compilazione del motore desidera verificare quali opzioni di compilazione sono necessarie per una risorsa importata. Ad esempio, :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>` ha una proprietà con il nome :ref:`ResourceImporterDynamicFont.multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`, che dipende dalla compilazione del motore con il modulo "msdfgen". Se tale risorsa fosse personalizzata, verrebbe gestita in questo modo:

::

    func _get_build_dependencies(path):
        var resource = load(path)
        var dependencies = PackedStringArray()

        if resource.multichannel_signed_distance_field:
            dependencies.push_back("module_msdfgen_enabled")

        return dependencies

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
