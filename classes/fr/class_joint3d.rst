:github_url: hide

.. _class_Joint3D:

Joint3D
=======

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`ConeTwistJoint3D<class_ConeTwistJoint3D>`, :ref:`Generic6DOFJoint3D<class_Generic6DOFJoint3D>`, :ref:`HingeJoint3D<class_HingeJoint3D>`, :ref:`PinJoint3D<class_PinJoint3D>`, :ref:`SliderJoint3D<class_SliderJoint3D>`

Classe de base abstraite pour toutes les liaisons physiques 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Classe de base abstraite pour toutes les liaisons physiques 3D. Les liaisons 3D lient ensemble deux corps physiques (:ref:`node_a<class_Joint3D_property_node_a>` et :ref:`node_b<class_Joint3D_property_node_b>`) et appliquent une contrainte. Si un seul corps est défini, il est fixé à un :ref:`StaticBody3D<class_StaticBody3D>` fixe sans forme de collision.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo 3D « Truck Town » <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`exclude_nodes_from_collision<class_Joint3D_property_exclude_nodes_from_collision>` | ``true``         |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_a<class_Joint3D_property_node_a>`                                             | ``NodePath("")`` |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_b<class_Joint3D_property_node_b>`                                             | ``NodePath("")`` |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`solver_priority<class_Joint3D_property_solver_priority>`                           | ``1``            |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_rid<class_Joint3D_method_get_rid>`\ (\ ) |const| |
   +-----------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Joint3D_property_exclude_nodes_from_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_nodes_from_collision** = ``true`` :ref:`🔗<class_Joint3D_property_exclude_nodes_from_collision>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_nodes_from_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_nodes_from_collision**\ (\ )

Si ``true``, les deux corps liés ensemble n'entrent pas en collision l'un avec l'autre.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_a:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_a** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_a>`

.. rst-class:: classref-property-setget

- |void| **set_node_a**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_a**\ (\ )

Chemin vers le premier corps (A) attaché à la liaison. Le nœud doit hériter de :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Si laissé vide et :ref:`node_b<class_Joint3D_property_node_b>` est défini, le corps est attaché à un :ref:`StaticBody3D<class_StaticBody3D>` fixe sans forme de collision.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_b:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_b** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_b>`

.. rst-class:: classref-property-setget

- |void| **set_node_b**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_b**\ (\ )

Chemin vers le second corps (B) attaché à la liaison. Le nœud doit hériter de :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Si laissé vide et :ref:`node_a<class_Joint3D_property_node_a>` est défini, le corps est attaché à un :ref:`StaticBody3D<class_StaticBody3D>` fixe sans forme de collision.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_solver_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **solver_priority** = ``1`` :ref:`🔗<class_Joint3D_property_solver_priority>`

.. rst-class:: classref-property-setget

- |void| **set_solver_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_solver_priority**\ (\ )

The priority used to define which solver is executed first for multiple joints. The lower the value, the higher the priority.

\ **Note:** Only supported when using GodotPhysics3D. This property is ignored when using Jolt Physics.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Joint3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Joint3D_method_get_rid>`

Renvoie le :ref:`RID<class_RID>` interne de la liaison depuis le :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
