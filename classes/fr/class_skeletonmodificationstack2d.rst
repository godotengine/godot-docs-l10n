:github_url: hide

.. _class_SkeletonModificationStack2D:

SkeletonModificationStack2D
===========================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une ressource qui contient une pile de :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

Cette ressource est utilisée par le Skeleton et possède une pile de :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ s.

Cela contrôle l'ordre des modifications et comment elles sont appliquées. L'ordre des modifications est particulièrement important pour les configurations d'IK sur le corps entier, car vous devez exécuter les modifications dans le bon ordre pour obtenir les résultats souhaités. Par exemple, vous voulez exécuter une modification sur la colonne vertébrale *avant* les bras sur un squelette humanoïde.

Cette ressource contrôle la force avec laquelle toutes les modifications sont appliquées au :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`enabled<class_SkeletonModificationStack2D_property_enabled>`                       | ``false`` |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>` | ``0``     |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`strength<class_SkeletonModificationStack2D_property_strength>`                     | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`add_modification<class_SkeletonModificationStack2D_method_add_modification>`\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ )                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`delete_modification<class_SkeletonModificationStack2D_method_delete_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ )                                                                       |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`enable_all_modifications<class_SkeletonModificationStack2D_method_enable_all_modifications>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`execute<class_SkeletonModificationStack2D_method_execute>`\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ )                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`get_is_setup<class_SkeletonModificationStack2D_method_get_is_setup>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModification2D<class_SkeletonModification2D>` | :ref:`get_modification<class_SkeletonModificationStack2D_method_get_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton2D<class_Skeleton2D>`                         | :ref:`get_skeleton<class_SkeletonModificationStack2D_method_get_skeleton>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_modification<class_SkeletonModificationStack2D_method_set_modification>`\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`setup<class_SkeletonModificationStack2D_method_setup>`\ (\ )                                                                                                                                    |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SkeletonModificationStack2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``false`` :ref:`🔗<class_SkeletonModificationStack2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

If ``true``, the modifications in the stack will be called. This is handled automatically through the :ref:`Skeleton2D<class_Skeleton2D>` node.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_modification_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **modification_count** = ``0`` :ref:`🔗<class_SkeletonModificationStack2D_property_modification_count>`

.. rst-class:: classref-property-setget

- |void| **set_modification_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_modification_count**\ (\ )

Le nombre de modifications dans la pile.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_SkeletonModificationStack2D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

La force d'interpolation des modifications dans la pile. Une valeur de ``0`` fera que les modifications ne seront pas appliquées, une force de ``0.5`` fera qu'elles seront appliquées à moitié, et une force de ``1`` permettra d'appliquer pleinement les modifications et de redéfinir les poses des :ref:`Bone2D<class_Bone2D>` du :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonModificationStack2D_method_add_modification:

.. rst-class:: classref-method

|void| **add_modification**\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_add_modification>`

Ajoute à la pile le :ref:`SkeletonModification2D<class_SkeletonModification2D>` donné.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_delete_modification:

.. rst-class:: classref-method

|void| **delete_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_delete_modification>`

Supprime la :ref:`SkeletonModification2D<class_SkeletonModification2D>` à la position d'index ``mod_idx``, si elle existe.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_enable_all_modifications:

.. rst-class:: classref-method

|void| **enable_all_modifications**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_enable_all_modifications>`

Active toutes les :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ s dans la pile.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_execute:

.. rst-class:: classref-method

|void| **execute**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_execute>`

Exécute tous les :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ s dans la pile qui utilisent le même mode d'exécution que le mode passé ``execution_mode``, à partir de l'index ``0`` jusqu'à l'index :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>`.

\ **Note :** L'ordre des modifications peut être important en fonction des modifications. Par exemple, les modifications sur une colonne vertébrale doivent s'opérer avant les modifications sur les bras afin d'obtenir des résultats appropriés.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_is_setup>`

Renvoie un booléen indiquant si la pile de modifications est installée et peut être exécutée.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_modification:

.. rst-class:: classref-method

:ref:`SkeletonModification2D<class_SkeletonModification2D>` **get_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_modification>`

Renvoie la :ref:`SkeletonModification2D<class_SkeletonModification2D>` à l'index transmis, ``mod_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton2D<class_Skeleton2D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_skeleton>`

Renvoie le nœud :ref:`Skeleton2D<class_Skeleton2D>` auquel la SkeletonModificationStack2D est liée.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_set_modification:

.. rst-class:: classref-method

|void| **set_modification**\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_set_modification>`

Définit la modification à l'index ``mod_idx`` à la modification transmise, ``modification``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_setup>`

Met en place la pile de modifications pour qu'elle puisse exécuter. Cette fonction devrait être appelée par :ref:`Skeleton2D<class_Skeleton2D>` et ne devrait pas être appelée manuellement à moins que vous ne sachiez ce que vous faites.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
