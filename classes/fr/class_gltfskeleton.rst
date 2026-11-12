:github_url: hide

.. _class_GLTFSkeleton:

GLTFSkeleton
============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Chargement et sauvegarde de fichiers durant l’exécution <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`joints<class_GLTFSkeleton_property_joints>` | ``PackedInt32Array()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`roots<class_GLTFSkeleton_property_roots>`   | ``PackedInt32Array()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneAttachment3D<class_BoneAttachment3D>`          | :ref:`get_bone_attachment<class_GLTFSkeleton_method_get_bone_attachment>`\ (\ idx\: :ref:`int<class_int>`\ )                                       |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_bone_attachment_count<class_GLTFSkeleton_method_get_bone_attachment_count>`\ (\ )                                                        |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                      | :ref:`get_godot_bone_node<class_GLTFSkeleton_method_get_godot_bone_node>`\ (\ )                                                                    |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>`                      | :ref:`get_godot_skeleton<class_GLTFSkeleton_method_get_godot_skeleton>`\ (\ )                                                                      |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`String<class_String>`\] | :ref:`get_unique_names<class_GLTFSkeleton_method_get_unique_names>`\ (\ )                                                                          |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_godot_bone_node<class_GLTFSkeleton_method_set_godot_bone_node>`\ (\ godot_bone_node\: :ref:`Dictionary<class_Dictionary>`\ )             |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_unique_names<class_GLTFSkeleton_method_set_unique_names>`\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GLTFSkeleton_property_joints:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **joints** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkeleton_property_joints>`

.. rst-class:: classref-property-setget

- |void| **set_joints**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_joints**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_property_roots:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **roots** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkeleton_property_roots>`

.. rst-class:: classref-property-setget

- |void| **set_roots**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_roots**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GLTFSkeleton_method_get_bone_attachment:

.. rst-class:: classref-method

:ref:`BoneAttachment3D<class_BoneAttachment3D>` **get_bone_attachment**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFSkeleton_method_get_bone_attachment>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_bone_attachment_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_attachment_count**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_bone_attachment_count>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_godot_bone_node:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_godot_bone_node**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_godot_bone_node>`

Renvoie un :ref:`Dictionary<class_Dictionary>` qui associe les indices d'os du squelette aux indices des nœuds glTF. Cette propriété est inutilisée lors de l'import, et seulement définie pendant l'export. Dans un fichier glTF, un os est un nœud, ainsi Godot convertit les os du squelette en nœuds glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_godot_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_godot_skeleton**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_godot_skeleton>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_unique_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_names**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_unique_names>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_set_godot_bone_node:

.. rst-class:: classref-method

|void| **set_godot_bone_node**\ (\ godot_bone_node\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GLTFSkeleton_method_set_godot_bone_node>`

Définit un :ref:`Dictionary<class_Dictionary>` qui associe les indices d'os du squelette aux indices des nœuds glTF. Cette propriété est inutilisée lors de l'import, et seulement définie pendant l'export. Dans un fichier glTF, un os est un nœuds, ainsi, Godot convertit les os du squelette en nœuds glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_set_unique_names:

.. rst-class:: classref-method

|void| **set_unique_names**\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFSkeleton_method_set_unique_names>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
