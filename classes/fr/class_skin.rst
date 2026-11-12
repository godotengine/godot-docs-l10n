:github_url: hide

.. _class_Skin:

Skin
====

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A list of inverse bind poses and corresponding bones.

.. rst-class:: classref-introduction-group

Description
-----------

**Skin** contains a list of bind pose matrices and a list of either bone names if bones are named, or bone indices if bones are not named. The bind pose matrix, also called offset matrix or inverse bind matrix, is a :ref:`Transform3D<class_Transform3D>` offset that is multiplied with a bone's transform to get from vertex space to bone space.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`add_bind<class_Skin_method_add_bind>`\ (\ bone\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`add_named_bind<class_Skin_method_add_named_bind>`\ (\ name\: :ref:`String<class_String>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear_binds<class_Skin_method_clear_binds>`\ (\ )                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_bind_bone<class_Skin_method_get_bind_bone>`\ (\ bind_index\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_bind_count<class_Skin_method_get_bind_count>`\ (\ ) |const|                                                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`get_bind_name<class_Skin_method_get_bind_name>`\ (\ bind_index\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_bind_pose<class_Skin_method_get_bind_pose>`\ (\ bind_index\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bind_bone<class_Skin_method_set_bind_bone>`\ (\ bind_index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bind_count<class_Skin_method_set_bind_count>`\ (\ bind_count\: :ref:`int<class_int>`\ )                                               |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bind_name<class_Skin_method_set_bind_name>`\ (\ bind_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ )     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bind_pose<class_Skin_method_set_bind_pose>`\ (\ bind_index\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Skin_method_add_bind:

.. rst-class:: classref-method

|void| **add_bind**\ (\ bone\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skin_method_add_bind>`

Adds a bind pose matrix of ``pose`` and associated bone index ``bone`` to the bind pose list and increases the bind count by 1.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_add_named_bind:

.. rst-class:: classref-method

|void| **add_named_bind**\ (\ name\: :ref:`String<class_String>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skin_method_add_named_bind>`

Like :ref:`add_bind()<class_Skin_method_add_bind>` but adds a bone ``name`` instead of a bone index.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_clear_binds:

.. rst-class:: classref-method

|void| **clear_binds**\ (\ ) :ref:`🔗<class_Skin_method_clear_binds>`

Clears the bind pose list.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_get_bind_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bind_bone**\ (\ bind_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skin_method_get_bind_bone>`

Returns the bone index associated with bind pose ``bind_index``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_get_bind_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bind_count**\ (\ ) |const| :ref:`🔗<class_Skin_method_get_bind_count>`

Returns the length of the bind pose list.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_get_bind_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bind_name**\ (\ bind_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skin_method_get_bind_name>`

Returns the bone name associated with bind pose ``bind_index``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_get_bind_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bind_pose**\ (\ bind_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skin_method_get_bind_pose>`

Returns the bind pose matrix at ``bind_index``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_set_bind_bone:

.. rst-class:: classref-method

|void| **set_bind_bone**\ (\ bind_index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skin_method_set_bind_bone>`

Sets the bone index of bind pose ``bind_index`` to the given index ``bone``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_set_bind_count:

.. rst-class:: classref-method

|void| **set_bind_count**\ (\ bind_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skin_method_set_bind_count>`

Resizes the bind pose list to a length of ``bind_count``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_set_bind_name:

.. rst-class:: classref-method

|void| **set_bind_name**\ (\ bind_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Skin_method_set_bind_name>`

Sets the name of the bone in bind pose ``bind_index`` to ``name``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_set_bind_pose:

.. rst-class:: classref-method

|void| **set_bind_pose**\ (\ bind_index\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skin_method_set_bind_pose>`

Sets the bind pose ``bind_index`` with the given offset matrix ``pose``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
