:github_url: hide

.. _class_OpenXRSpatialContextPersistenceConfig:

OpenXRSpatialContextPersistenceConfig
=====================================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration header for spatial persistence.

.. rst-class:: classref-introduction-group

Description
-----------

Configuration header for spatial persistence. Pass this to :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` as the next parameter to create a spatial context with spatial persistence capabilities.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_persistence_context<class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ )       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`get_persistence_contexts<class_OpenXRSpatialContextPersistenceConfig_method_get_persistence_contexts>`\ (\ ) |const|                                          |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_persistence_context<class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context:

.. rst-class:: classref-method

|void| **add_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context>`

Adds a persistence context to this configuration. You must add at least one persistence context to create a valid configuration. You can create a persistence context by calling :ref:`OpenXRSpatialAnchorCapability.create_persistence_context()<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContextPersistenceConfig_method_get_persistence_contexts:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_persistence_contexts**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialContextPersistenceConfig_method_get_persistence_contexts>`

Gets the persistence context(s) (as :ref:`RID<class_RID>`\ s) received by :ref:`add_persistence_context()<class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context:

.. rst-class:: classref-method

|void| **remove_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context>`

Removes a persistence context.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
