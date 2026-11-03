:github_url: hide

.. _class_VehicleBody3D:

VehicleBody3D
=============

**Hérite de :** :ref:`RigidBody3D<class_RigidBody3D>` **<** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un corps physique 3D qui simule le comportement d'une voiture.

.. rst-class:: classref-introduction-group

Description
-----------

Ce corps physique implémente toute la logique physique nécessaire pour simuler une voiture. Il est basé sur le système de véhicules à raycast communément présents dans des moteurs de physique. En dehors d'un :ref:`CollisionShape3D<class_CollisionShape3D>` pour le corps principal du véhicule, vous devez également ajouter un nœud :ref:`VehicleWheel3D<class_VehicleWheel3D>` pour chaque roue. Vous devriez également ajouter un :ref:`MeshInstance3D<class_MeshInstance3D>` à ce nœud pour le modèle 3D du véhicule, mais ce modèle ne devrait généralement pas inclure de maillages pour les roues. Vous pouvez contrôler le véhicule en utilisant les propriétés :ref:`brake<class_VehicleBody3D_property_brake>`, :ref:`engine_force<class_VehicleBody3D_property_engine_force>` et :ref:`steering<class_VehicleBody3D_property_steering>`. La position ou l'orientation de ce nœud ne devrait pas être changée directement.

\ **Note :** Le vecteur avant local pour ce nœud est :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`.

\ **Note :** Le point d'origine de votre VehicleBody3D déterminera le centre de gravité de votre véhicule. Pour rendre le véhicule plus proche du sol, le point d'origine est généralement maintenu bas, en déplaçant la :ref:`CollisionShape3D<class_CollisionShape3D>` et le :ref:`MeshInstance3D<class_MeshInstance3D>` vers le haut.

\ **Note :** Cette classe a des problèmes connus et n'est pas conçue pour fournir une physique réaliste pour des véhicules 3D. Si vous voulez de la physique avancée des véhicules, vous devrez peut-être écrire votre propre intégration physique en utilisant :ref:`CharacterBody3D<class_CharacterBody3D>` ou :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la physique <../tutorials/physics/physics_introduction>`

- :doc:`Dépanner des problèmes de physique <../tutorials/physics/troubleshooting_physics_issues>`

- `Démo 3D « Truck Town » <https://store.godotengine.org/asset/godot-foundation/truck-town-demo/>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`brake<class_VehicleBody3D_property_brake>`               | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`engine_force<class_VehicleBody3D_property_engine_force>` | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | mass                                                           | ``40.0`` (overrides :ref:`RigidBody3D<class_RigidBody3D_property_mass>`) |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`steering<class_VehicleBody3D_property_steering>`         | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VehicleBody3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

Ralentit le véhicule en appliquant une force de freinage. Le véhicule n'est ralenti que si les roues sont en contact avec une surface. La force que vous devez appliquer pour ralentir adéquatement votre véhicule dépend de la masse :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` du véhicule. Pour un véhicule dont la masse est fixée à 1000, essayez une valeur dans l'intervalle 25-30 pour un freinage dur.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

Accélère le véhicule en appliquant une force moteur. Le véhicule n'est accéléré que si les roues qui ont :ref:`VehicleWheel3D.use_as_traction<class_VehicleWheel3D_property_use_as_traction>` défini à ``true`` sont en contact avec une surface. La masse :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` du véhicule a un effet sur l'accélération du véhicule. Pour un véhicule avec une masse de 1000, essayez une valeur dans l'intervalle 25-50 pour l'accélération.

\ **Note :** La simulation ne prend pas en compte l'effet des rapports de vitesse, vous devrez ajouter de la logique pour cela si vous souhaitez simuler des rapports de vitesse.

Une valeur négative entraînera la marche arrière du véhicule.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

L'angle de direction du véhicule. Définir cette valeur à une valeur non nulle entraînera le virage du véhicule lorsqu'il se déplace. Les roues qui ont :ref:`VehicleWheel3D.use_as_steering<class_VehicleWheel3D_property_use_as_steering>` défini à ``true`` seront automatiquement tournées.

\ **Note :** Cette propriété est modifiée en degrés dans l'inspecteur. Dans le code, la propriété est définie en radians.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
