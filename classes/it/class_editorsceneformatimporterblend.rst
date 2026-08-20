:github_url: hide

.. _class_EditorSceneFormatImporterBlend:

EditorSceneFormatImporterBlend
==============================

**Eredita:** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importatore per il formato di file di scena ``.blend`` di Blender.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Importa scene di Blender nel formato di file ``.blend`` tramite la pipeline di importazione 3D glTF 2.0. Questo importatore richiede che Blender sia installato dall'utente, in modo da utilizzarlo per esportare la scena come glTF 2.0.

La posizione dell'eseguibile di Blender è impostata tramite l'impostazione :ref:`EditorSettings.filesystem/import/blender/blender_path<class_EditorSettings_property_filesystem/import/blender/blender_path>`.

Questo importatore è utilizzato solo se :ref:`ProjectSettings.filesystem/import/blender/enabled<class_ProjectSettings_property_filesystem/import/blender/enabled>` è abilitato, altrimenti i file ``.blend`` presenti nella cartella del progetto non vengono importati.

L'importazione di Blender richiede Blender 3.0.

Internamente, EditorSceneFormatImporterBlend utilizza la modalità di glTF "Usa originale" di Blender per fare riferimento a texture esterne.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
