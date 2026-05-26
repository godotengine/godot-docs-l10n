:github_url: hide

.. _class_RDAccelerationStructureInstance:

RDAccelerationStructureInstance
===============================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Acceleration structure instance (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Description
-----------

**RDAccelerationStructureInstance** describes an instance of a Bottom-Level Acceleration Structure (BLAS) used in the :ref:`RenderingDevice.tlas_build()<class_RenderingDevice_method_tlas_build>` method.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`RID<class_RID>`                                                                                                  | :ref:`blas<class_RDAccelerationStructureInstance_property_blas>`                   | ``RID()``                                           |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | |bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\] | :ref:`flags<class_RDAccelerationStructureInstance_property_flags>`                 | ``0``                                               |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`hit_sbt_range<class_RDAccelerationStructureInstance_property_hit_sbt_range>` | ``0``                                               |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`id<class_RDAccelerationStructureInstance_property_id>`                       | ``0``                                               |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`mask<class_RDAccelerationStructureInstance_property_mask>`                   | ``255``                                             |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                                                                  | :ref:`transform<class_RDAccelerationStructureInstance_property_transform>`         | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RDAccelerationStructureInstance_property_blas:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **blas** = ``RID()`` :ref:`🔗<class_RDAccelerationStructureInstance_property_blas>`

.. rst-class:: classref-property-setget

- |void| **set_blas**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_blas**\ (\ )

The BLAS referenced by this instance. If ``null``, the instance is treated as a placeholder but still contributes to ``gl_InstanceIndex`` in GLSL.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\] **flags** = ``0`` :ref:`🔗<class_RDAccelerationStructureInstance_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: |bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\]\ )
- |bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\] **get_flags**\ (\ )

Flags for the instance.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_hit_sbt_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **hit_sbt_range** = ``0`` :ref:`🔗<class_RDAccelerationStructureInstance_property_hit_sbt_range>`

.. rst-class:: classref-property-setget

- |void| **set_hit_sbt_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hit_sbt_range**\ (\ )

Hit shader binding table range used for this instance, allocated using the :ref:`RenderingDevice.hit_sbt_range_alloc()<class_RenderingDevice_method_hit_sbt_range_alloc>` method.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **id** = ``0`` :ref:`🔗<class_RDAccelerationStructureInstance_property_id>`

.. rst-class:: classref-property-setget

- |void| **set_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_id**\ (\ )

Custom instance ID that can be accessed in GLSL using ``gl_InstanceCustomIndexEXT``.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **mask** = ``255`` :ref:`🔗<class_RDAccelerationStructureInstance_property_mask>`

.. rst-class:: classref-property-setget

- |void| **set_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mask**\ (\ )

Visibility mask used to control which rays can intersect this instance.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_RDAccelerationStructureInstance_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

Transform applied to the referenced BLAS for this instance.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
