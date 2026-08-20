:github_url: hide

.. _class_EditorSceneFormatImporter:

EditorSceneFormatImporter
=========================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`EditorSceneFormatImporterBlend<class_EditorSceneFormatImporterBlend>`, :ref:`EditorSceneFormatImporterFBX2GLTF<class_EditorSceneFormatImporterFBX2GLTF>`, :ref:`EditorSceneFormatImporterGLTF<class_EditorSceneFormatImporterGLTF>`, :ref:`EditorSceneFormatImporterUFBX<class_EditorSceneFormatImporterUFBX>`

Importa scene da file 3D di terze parti.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**EditorSceneFormatImporter** consente di definire uno script di importazione per un formato 3D di terze parti.

Per utilizzare **EditorSceneFormatImporter**, registrarlo prima attraverso il metodo :ref:`EditorPlugin.add_scene_format_importer_plugin()<class_EditorPlugin_method_add_scene_format_importer_plugin>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_extensions<class_EditorSceneFormatImporter_private_method__get_extensions>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_get_import_options<class_EditorSceneFormatImporter_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_option_visibility<class_EditorSceneFormatImporter_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                       | :ref:`_import_scene<class_EditorSceneFormatImporter_private_method__import_scene>`\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required|                                                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option<class_EditorSceneFormatImporter_method_add_import_option>`\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option_advanced<class_EditorSceneFormatImporter_method_add_import_option_advanced>`\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_EditorSceneFormatImporter_ImportFlags:

.. rst-class:: classref-enumeration

flags **ImportFlags**: :ref:`🔗<enum_EditorSceneFormatImporter_ImportFlags>`

.. _class_EditorSceneFormatImporter_constant_IMPORT_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_SCENE** = ``1``

Flag non utilizzato (non ha alcun effetto quando abilitato).

.. _class_EditorSceneFormatImporter_constant_IMPORT_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_ANIMATION** = ``2``

Importa le animazioni dalla scena 3D. Quando si importa una scena come :ref:`AnimationLibrary<class_AnimationLibrary>`, questo flag è sempre abilitato.

.. _class_EditorSceneFormatImporter_constant_IMPORT_FAIL_ON_MISSING_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FAIL_ON_MISSING_DEPENDENCIES** = ``4``

Flag non utilizzato (non ha alcun effetto quando abilitato).

.. _class_EditorSceneFormatImporter_constant_IMPORT_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_GENERATE_TANGENT_ARRAYS** = ``8``

Se ``true``, genera le tangenti dei vertici usando `Mikktspace <http://www.mikktspace.com/>`__ se le mesh sorgenti non hanno dati per le tangenti. Quando possibile, si consiglia di lasciare che il software di modellazione 3D generi le tangenti durante l'esportazione invece di affidarsi a questa opzione. Le tangenti sono necessarie per visualizzare correttamente le mappe di normali e heightmap, insieme a qualsiasi funzionalità di un materiale o shader che le richiede.

Se non c'è bisogno di funzionalità che richiedono le tangenti, disabilitando questa opzione potrebbe ridurre le dimensioni del file risultante e velocizzare l'importazione se il file 3D sorgente non contiene tangenti.

.. _class_EditorSceneFormatImporter_constant_IMPORT_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_USE_NAMED_SKIN_BINDS** = ``16``

Se spuntato, usa :ref:`Skin<class_Skin>` denominate per l'animazione. Il nodo :ref:`MeshInstance3D<class_MeshInstance3D>` contiene 3 proprietà qui rilevanti: un :ref:`NodePath<class_NodePath>` che punta al nodo :ref:`Skeleton3D<class_Skeleton3D>` (solitamente ``..``), una mesh e una skin:

- Il nodo :ref:`Skeleton3D<class_Skeleton3D>` contiene una lista di ossa con nomi, la loro posa e il loro riposo, un nome e un osso padre.

- La mesh è composta da tutti i dati grezzi dei vertici necessari per visualizzare una mesh. In termini di mesh, sa come i vertici sono dipinti con peso e usa una numerazione interna spesso importata dal software di modellazione 3D.

- La skin contiene le informazioni necessarie per associare questa mesh a questo Skeleton3D. Per ognuno degli ID delle ossa interne scelti dal software di modellazione 3D, contiene due cose. Innanzitutto, una matrice nota come Bind Pose Matrix, Inverse Bind Matrix o IBM in breve. Inoltre, la :ref:`Skin<class_Skin>` contiene il nome di ogni osso (se questo flag è abilitato), o l'indice dell'osso all'interno della lista dello :ref:`Skeleton3D<class_Skeleton3D>` (se questo flag è disabilitato).

Insieme, queste informazioni sono sufficienti per dire a Godot come usare le pose dell'osso nel nodo :ref:`Skeleton3D<class_Skeleton3D>` per renderizzare la mesh da ogni :ref:`MeshInstance3D<class_MeshInstance3D>`. Nota che ogni :ref:`MeshInstance3D<class_MeshInstance3D>` può condividere i bind, come è comune nei modelli esportati da Blender, oppure ogni :ref:`MeshInstance3D<class_MeshInstance3D>` può usare un oggetto :ref:`Skin<class_Skin>` separato, come è comune nei modelli esportati da altri strumenti come Maya.

.. _class_EditorSceneFormatImporter_constant_IMPORT_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_DISCARD_MESHES_AND_MATERIALS** = ``32``

Ignora mesh e materiali durante l'importazione. Importando una scena come :ref:`AnimationLibrary<class_AnimationLibrary>`, questo flag è sempre abilitato.

.. _class_EditorSceneFormatImporter_constant_IMPORT_FORCE_DISABLE_MESH_COMPRESSION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FORCE_DISABLE_MESH_COMPRESSION** = ``64``

Se ``true``, la compressione della mesh non sarà utilizzata. Considera di abilitarla se noti artefatti a blocchi nelle normali o UV della mesh, o se hai mesh più grandi di qualche migliaio di metri in ogni direzione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorSceneFormatImporter_private_method__get_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_extensions>`

Restituite le estensioni di file supportate per questo importatore di scene.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_import_options>`

Sostituisci per aggiungere opzioni generali di importazione. Queste appariranno nel pannello principale di importazione nell'editor. Aggiungi opzioni tramite :ref:`add_import_option()<class_EditorSceneFormatImporter_method_add_import_option>` e :ref:`add_import_option_advanced()<class_EditorSceneFormatImporter_method_add_import_option_advanced>`.

\ **Nota:** Tutte le istanze di **EditorSceneFormatImporter** e :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>` aggiungeranno opzioni per tutti i file. È buona norma verificare l'estensione del file quando ``path`` non è vuoto.

Quando l'utente modifica le impostazioni del progetto, ``path`` sarà vuoto. Si consiglia di aggiungere tutte le opzioni quando ``path`` è vuoto per consentire all'utente di personalizzare i predefiniti di importazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_option_visibility>`

Dovrebbe restituire ``true`` per mostrare l'opzione specificata, ``false`` per nascondere l'opzione specificata o ``null`` per ignorarla.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__import_scene:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_import_scene**\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| :ref:`🔗<class_EditorSceneFormatImporter_private_method__import_scene>`

Esegui qui la maggior parte della logica di importazione della scena, ad esempio tramite :ref:`GLTFDocument<class_GLTFDocument>` o :ref:`FBXDocument<class_FBXDocument>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option>`

Aggiunge un'opzione di importazione specifica (solo il nome e il valore predefinito). Questa funzione può essere chiamata solo da :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option_advanced>`

Aggiunge un'opzione di importazione specifica. Questa funzione può essere chiamata solo da :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
