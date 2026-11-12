:github_url: hide

.. _class_PhysicsCastMotionResult2D:

PhysicsCastMotionResult2D
=========================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the result of a shape motion cast query.

.. rst-class:: classref-introduction-group

Description
-----------

This class contains the safe and unsafe fractions computed by :ref:`PhysicsDirectSpaceState2D.cast_motion_into()<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`safe_fraction<class_PhysicsCastMotionResult2D_property_safe_fraction>`     | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`unsafe_fraction<class_PhysicsCastMotionResult2D_property_unsafe_fraction>` | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PhysicsCastMotionResult2D_property_safe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_safe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_safe_fraction**\ (\ )

The maximum fraction of the motion that can be made without a collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsCastMotionResult2D_property_unsafe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **unsafe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_unsafe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_unsafe_fraction**\ (\ )

The minimum fraction of the distance that must be moved for a collision.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
