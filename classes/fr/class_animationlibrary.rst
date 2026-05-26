:github_url: hide

.. _class_AnimationLibrary:

AnimationLibrary
================

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Conteneur pour des ressources :ref:`Animation<class_Animation>`.

.. rst-class:: classref-introduction-group

Description
-----------

Une bibliothèque d'animation stocke un ensemble d'animations accessibles par les clés :ref:`StringName<class_StringName>`, pour une utilisation avec les nœuds :ref:`AnimationPlayer<class_AnimationPlayer>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de tutoriel d'animation <../tutorials/animation/index>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation<class_AnimationLibrary_method_add_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ )       |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationLibrary_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_list<class_AnimationLibrary_method_get_animation_list>`\ (\ ) |const|                                                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_animation_list_size<class_AnimationLibrary_method_get_animation_list_size>`\ (\ ) |const|                                                                      |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationLibrary_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation<class_AnimationLibrary_method_remove_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation<class_AnimationLibrary_method_rename_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_AnimationLibrary_signal_animation_added:

.. rst-class:: classref-signal

**animation_added**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_added>`

Emitted when an :ref:`Animation<class_Animation>` is added, under the key ``anim_name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_changed>`

Emitted when there's a change in one of the animations, e.g. tracks are added, moved or have changed paths. ``anim_name`` is the key of the animation that was changed.

See also :ref:`Resource.changed<class_Resource_signal_changed>`, which this acts as a relay for.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_removed:

.. rst-class:: classref-signal

**animation_removed**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_removed>`

Emitted when an :ref:`Animation<class_Animation>` stored with the key ``anim_name`` is removed.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_renamed:

.. rst-class:: classref-signal

**animation_renamed**\ (\ old_name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_renamed>`

Emitted when the key for an :ref:`Animation<class_Animation>` is changed, from ``old_name`` to ``new_name``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AnimationLibrary_method_add_animation:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation**\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ ) :ref:`🔗<class_AnimationLibrary_method_add_animation>`

Ajoute l'``animation`` à la bibliothèque, accessible par la clé ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation>`

Renvoie l':ref:`Animation<class_Animation>` avec la clé ``name``. Si l'animation n'existe pas, ``null`` est renvoyé est une erreur est enregistrée.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list>`

Renvoie les clés pour les :ref:`Animation<class_Animation>`\ s stockées dans la bibliothèque.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_animation_list_size**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list_size>`

Renvoie le compte de clés pour les :ref:`Animation<class_Animation>`\ s stockées dans la bibliothèque.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_has_animation>`

Renvoie ``true`` si la bibliothèque stocke une :ref:`Animation<class_Animation>` avec ``name`` comme clé.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_remove_animation:

.. rst-class:: classref-method

|void| **remove_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_remove_animation>`

Supprime l':ref:`Animation<class_Animation>` avec la clé ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_rename_animation:

.. rst-class:: classref-method

|void| **rename_animation**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_rename_animation>`

Change la clé de l':ref:`Animation<class_Animation>` associée à la clé ``name`` à ``newname``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
