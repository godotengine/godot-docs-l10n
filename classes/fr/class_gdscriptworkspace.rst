:github_url: hide

.. _class_GDScriptWorkspace:

GDScriptWorkspace
=================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Workspace related language server functionality.

.. rst-class:: classref-introduction-group

Description
-----------

Provides language server functionality related to the workspace.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_new_signal<class_GDScriptWorkspace_method_apply_new_signal>`\ (\ obj\: :ref:`Object<class_Object>`, function\: :ref:`String<class_String>`, args\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`didDeleteFiles<class_GDScriptWorkspace_method_didDeleteFiles>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`generate_script_api<class_GDScriptWorkspace_method_generate_script_api>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_file_path<class_GDScriptWorkspace_method_get_file_path>`\ (\ uri\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_file_uri<class_GDScriptWorkspace_method_get_file_uri>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse_local_script<class_GDScriptWorkspace_method_parse_local_script>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse_script<class_GDScriptWorkspace_method_parse_script>`\ (\ path\: :ref:`String<class_String>`, content\: :ref:`String<class_String>`\ )                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`publish_diagnostics<class_GDScriptWorkspace_method_publish_diagnostics>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GDScriptWorkspace_method_apply_new_signal:

.. rst-class:: classref-method

|void| **apply_new_signal**\ (\ obj\: :ref:`Object<class_Object>`, function\: :ref:`String<class_String>`, args\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_apply_new_signal>`

**Obsolète :** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_didDeleteFiles:

.. rst-class:: classref-method

|void| **didDeleteFiles**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_didDeleteFiles>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_generate_script_api:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **generate_script_api**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_generate_script_api>`

Returns the interface of the script in a machine-readable format.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_get_file_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_path**\ (\ uri\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_get_file_path>`

Converts a URI to a file path.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_get_file_uri:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_uri**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_GDScriptWorkspace_method_get_file_uri>`

Converts a file path to a URI.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_parse_local_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse_local_script**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_parse_local_script>`

**Obsolète :** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_parse_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse_script**\ (\ path\: :ref:`String<class_String>`, content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_parse_script>`

**Obsolète :** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_publish_diagnostics:

.. rst-class:: classref-method

|void| **publish_diagnostics**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_publish_diagnostics>`

**Obsolète :** Might result in unwanted side effects for connected clients.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
