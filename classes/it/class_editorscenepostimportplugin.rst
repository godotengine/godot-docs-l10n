:github_url: hide

.. _class_EditorScenePostImportPlugin:

EditorScenePostImportPlugin
===========================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Estensione per controllare e modificare il processo di importazione di una scena.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo tipo di estensione esiste per modificare il processo di importazione delle scene, consentendo di cambiare il contenuto e di aggiungere opzioni di importazione in ogni fase del processo.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_get_import_options<class_EditorScenePostImportPlugin_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                 |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_get_internal_import_options<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`\ (\ category\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                                                                                                                                                 |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_internal_option_update_view_required<class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required>`\ (\ category\: :ref:`int<class_int>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                         |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_internal_option_visibility<class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility>`\ (\ category\: :ref:`int<class_int>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                    |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_option_visibility<class_EditorScenePostImportPlugin_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                    |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_internal_process<class_EditorScenePostImportPlugin_private_method__internal_process>`\ (\ category\: :ref:`int<class_int>`, base_node\: :ref:`Node<class_Node>`, node\: :ref:`Node<class_Node>`, resource\: :ref:`Resource<class_Resource>`\ ) |virtual|                                                                                                                                                      |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_post_process<class_EditorScenePostImportPlugin_private_method__post_process>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                                                                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_pre_process<class_EditorScenePostImportPlugin_private_method__pre_process>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_import_option<class_EditorScenePostImportPlugin_method_add_import_option>`\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_import_option_advanced<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_option_value<class_EditorScenePostImportPlugin_method_get_option_value>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                         |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_EditorScenePostImportPlugin_InternalImportCategory:

.. rst-class:: classref-enumeration

enum **InternalImportCategory**: :ref:`🔗<enum_EditorScenePostImportPlugin_InternalImportCategory>`

.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_NODE** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MESH** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MATERIAL:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MATERIAL** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_ANIMATION** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE** = ``5``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE** = ``6``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MAX** = ``7``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorScenePostImportPlugin_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_import_options>`

Sovrascrivi per aggiungere opzioni di importazione generali. Queste appariranno nel pannello principale di importazione nell'editor. Aggiungi opzioni tramite :ref:`add_import_option()<class_EditorScenePostImportPlugin_method_add_import_option>` e :ref:`add_import_option_advanced()<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_import_options:

.. rst-class:: classref-method

|void| **_get_internal_import_options**\ (\ category\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`

Sovrascrivi per aggiungere opzioni di importazione interne. Queste appariranno nella finestra di dialogo di importazione della scena 3D. Aggiungi opzioni tramite :ref:`add_import_option()<class_EditorScenePostImportPlugin_method_add_import_option>` e :ref:`add_import_option_advanced()<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_internal_option_update_view_required**\ (\ category\: :ref:`int<class_int>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required>`

Dovrebbe restituire ``true`` se è necessario aggiornare la vista 3D della finestra di dialogo di importazione quando viene modificata l'opzione fornita.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_internal_option_visibility**\ (\ category\: :ref:`int<class_int>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility>`

Dovrebbe restituire ``true`` per mostrare l'opzione specificata, ``false`` per nascondere l'opzione specificata o ``null`` per ignorarla.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_option_visibility>`

Dovrebbe restituire ``true`` per mostrare l'opzione specificata, ``false`` per nascondere l'opzione specificata o ``null`` per ignorarla.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__internal_process:

.. rst-class:: classref-method

|void| **_internal_process**\ (\ category\: :ref:`int<class_int>`, base_node\: :ref:`Node<class_Node>`, node\: :ref:`Node<class_Node>`, resource\: :ref:`Resource<class_Resource>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__internal_process>`

Elaborare un nodo o una risorsa specifica per una determinata categoria.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__post_process:

.. rst-class:: classref-method

|void| **_post_process**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__post_process>`

Post-elabora la scena. Questa funzione viene chiamata dopo che la scena finale è stata configurata.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__pre_process:

.. rst-class:: classref-method

|void| **_pre_process**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__pre_process>`

Pre-elabora la scena. Questa funzione viene chiamata subito dopo che il caricatore di formato della scena ha caricato la scena e non sono state apportate modifiche.

La pre-elaborazione può servire per regolare le opzioni di importazione interne nelle chiavi ``"nodes"``, ``"meshes"``, ``"animations"`` o ``"materials"`` all'interno di ``get_option_value("_subresources")``.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorScenePostImportPlugin_method_add_import_option>`

Aggiunge un'opzione di importazione specifica (solo il nome e il valore predefinito). Questa funzione può essere chiamata solo da :ref:`_get_import_options()<class_EditorScenePostImportPlugin_private_method__get_import_options>` e :ref:`_get_internal_import_options()<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`

Aggiunge un'opzione di importazione specifica. Questa funzione può essere chiamata solo da :ref:`_get_import_options()<class_EditorScenePostImportPlugin_private_method__get_import_options>` e :ref:`_get_internal_import_options()<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_get_option_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_option_value**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorScenePostImportPlugin_method_get_option_value>`

Interroga il valore di un'opzione. Questa funzione può essere chiamata solo da coloro che interrogano la visibilità o l'elaborazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
