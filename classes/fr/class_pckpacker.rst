:github_url: hide

.. _class_PCKPacker:

PCKPacker
=========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Crée des paquets qui peuvent être chargés dans un projet lancé.

.. rst-class:: classref-introduction-group

Description
-----------

**PCKPacker** est utilisé pour créer des paquets qui peuvent être chargés dans un projet en cours d'exécution en utilisant :ref:`ProjectSettings.load_resource_pack()<class_ProjectSettings_method_load_resource_pack>`.


.. tabs::

 .. code-tab:: gdscript

    var packer = PCKPacker.new()
    packer.pck_start("test.pck")
    packer.add_file("res://text.txt", "text.txt")
    packer.flush()

 .. code-tab:: csharp

    var packer = new PckPacker();
    packer.PckStart("test.pck");
    packer.AddFile("res://text.txt", "text.txt");
    packer.Flush();



Le **PCKPacker** ci-dessus crée le paquet ``test.pck``, puis ajoute un fichier nommé ``text.txt`` à la racine du paquet.

\ **Note :** PCK est le format de fichier de paquet propre à Godot. Pour créer des archives ZIP qui peuvent être lues par n'importe quel programme, utilisez plutôt :ref:`ZIPPacker<class_ZIPPacker>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file<class_PCKPacker_method_add_file>`\ (\ target_path\: :ref:`String<class_String>`, source_path\: :ref:`String<class_String>`, encrypt\: :ref:`bool<class_bool>` = false\ )                                                                                                               |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file_from_buffer<class_PCKPacker_method_add_file_from_buffer>`\ (\ target_path\: :ref:`String<class_String>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`, encrypt\: :ref:`bool<class_bool>` = false\ )                                                                            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file_removal<class_PCKPacker_method_add_file_removal>`\ (\ target_path\: :ref:`String<class_String>`\ )                                                                                                                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`flush<class_PCKPacker_method_flush>`\ (\ verbose\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pck_start<class_PCKPacker_method_pck_start>`\ (\ pck_path\: :ref:`String<class_String>`, alignment\: :ref:`int<class_int>` = 32, key\: :ref:`String<class_String>` = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PCKPacker_method_add_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file**\ (\ target_path\: :ref:`String<class_String>`, source_path\: :ref:`String<class_String>`, encrypt\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_add_file>`

Ajoute le fichier ``source_path`` au paquet PCK actuel au chemin interne ``target_path``. Le préfixe ``res://`` pour ``target_path`` est facultatif et retiré en interne. Le contenu du fichier est immédiatement écrit au PCK.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_add_file_from_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file_from_buffer**\ (\ target_path\: :ref:`String<class_String>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`, encrypt\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_add_file_from_buffer>`

Adds the ``data`` to the current PCK package at the ``target_path`` internal path. The ``res://`` prefix for ``target_path`` is optional and stripped internally. File content is immediately written to the PCK.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_add_file_removal:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file_removal**\ (\ target_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PCKPacker_method_add_file_removal>`

Enregistre une suppression de fichier au chemin interne ``target_path`` vers le PCK. Ceci est principalement utilisé pour les patches. Si le fichier de ce chemin a été chargé d'un PCK précédent, il sera supprimé. Le préfixe ``res://`` pour ``target_path`` est facultatif et retiré en interne.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_flush:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **flush**\ (\ verbose\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_flush>`

Écrit le répertoire du fichier et ferme le PCK. Si ``verbose`` vaut ``true``, une liste des fichiers ajoutés sera affichée à la console pour faciliter le débogage.

\ **Note :** **PCKPacker** appellera automatiquement cette méthode lorsqu'il sera libéré, ce qui se produit quand il sort de la portée ou quand ``null`` lui est affecté. En C#, la référence doit être éliminée après utilisation, soit avec l'instruction ``using``, soit en appelant la méthode ``Dispose`` directement.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_pck_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pck_start**\ (\ pck_path\: :ref:`String<class_String>`, alignment\: :ref:`int<class_int>` = 32, key\: :ref:`String<class_String>` = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_pck_start>`

Crée un nouveau fichier PCK avec le chemin de fichier ``pck_path``. L'extension de fichier ``.pck`` n'est pas ajoutée automatiquement, elle doit donc être présente dans ``pck_path`` (mais cela n'est pas indispensable).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
