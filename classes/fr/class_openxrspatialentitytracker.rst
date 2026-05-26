:github_url: hide

.. _class_OpenXRSpatialEntityTracker:

OpenXRSpatialEntityTracker
==========================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, :ref:`OpenXRMarkerTracker<class_OpenXRMarkerTracker>`, :ref:`OpenXRPlaneTracker<class_OpenXRPlaneTracker>`

Base class for Positional trackers managed by OpenXR's spatial entity extensions.

.. rst-class:: classref-introduction-group

Description
-----------

These are trackers created and managed by OpenXR's spatial entity extensions that give access to specific data related to OpenXR's spatial entities. They will always be of type ``TRACKER_ANCHOR``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                           | :ref:`entity<class_OpenXRSpatialEntityTracker_property_entity>`                                 | ``RID()``                                                         |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` | :ref:`spatial_tracking_state<class_OpenXRSpatialEntityTracker_property_spatial_tracking_state>` | ``2``                                                             |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                                   | type                                                                                            | ``8`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_next<class_OpenXRSpatialEntityTracker_method_add_next>`\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ )       |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` | :ref:`get_next<class_OpenXRSpatialEntityTracker_method_get_next>`\ (\ ) |const|                                                             |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                 | :ref:`get_spatial_context<class_OpenXRSpatialEntityTracker_method_get_spatial_context>`\ (\ ) |const|                                       |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_next<class_OpenXRSpatialEntityTracker_method_remove_next>`\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ ) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_spatial_context<class_OpenXRSpatialEntityTracker_method_set_spatial_context>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ )      |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_OpenXRSpatialEntityTracker_signal_next_changed:

.. rst-class:: classref-signal

**next_changed**\ (\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_signal_next_changed>`

Emitted when the next-chain changes, from either :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` or :ref:`remove_next()<class_OpenXRSpatialEntityTracker_method_remove_next>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_signal_spatial_tracking_state_changed:

.. rst-class:: classref-signal

**spatial_tracking_state_changed**\ (\ spatial_tracking_state\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_signal_spatial_tracking_state_changed>`

.. container:: contribute

	There is currently no description for this signal. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_OpenXRSpatialEntityTracker_EntityTrackingState:

.. rst-class:: classref-enumeration

enum **EntityTrackingState**: :ref:`🔗<enum_OpenXRSpatialEntityTracker_EntityTrackingState>`

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_STOPPED:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_STOPPED** = ``1``

This anchor has stopped tracking.

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_PAUSED** = ``2``

Tracking is currently paused.

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_TRACKING** = ``3``

This anchor is currently being tracked.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRSpatialEntityTracker_property_entity:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **entity** = ``RID()`` :ref:`🔗<class_OpenXRSpatialEntityTracker_property_entity>`

.. rst-class:: classref-property-setget

- |void| **set_entity**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_entity**\ (\ )

The spatial entity associated with this tracker.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_property_spatial_tracking_state:

.. rst-class:: classref-property

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **spatial_tracking_state** = ``2`` :ref:`🔗<class_OpenXRSpatialEntityTracker_property_spatial_tracking_state>`

.. rst-class:: classref-property-setget

- |void| **set_spatial_tracking_state**\ (\ value\: :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>`\ )
- :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **get_spatial_tracking_state**\ (\ )

The spatial tracking state for this tracker.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRSpatialEntityTracker_method_add_next:

.. rst-class:: classref-method

|void| **add_next**\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_method_add_next>`

Adds a new :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` to the next-chain.

\ :ref:`get_next()<class_OpenXRSpatialEntityTracker_method_get_next>` will return this ``next`` until either :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` is called again or it's removed in :ref:`remove_next()<class_OpenXRSpatialEntityTracker_method_remove_next>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_get_next:

.. rst-class:: classref-method

:ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **get_next**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityTracker_method_get_next>`

Gets the head :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` in the next-chain.

See also :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` and :ref:`remove_next()<class_OpenXRSpatialEntityTracker_method_remove_next>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_get_spatial_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_context**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityTracker_method_get_spatial_context>`

Gets the spatial context used to create this **OpenXRSpatialEntityTracker**.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_remove_next:

.. rst-class:: classref-method

|void| **remove_next**\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_method_remove_next>`

Removes a ``next`` object previously added in :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` from the next-chain.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_set_spatial_context:

.. rst-class:: classref-method

|void| **set_spatial_context**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_method_set_spatial_context>`

Sets the spatial context used to create this tracker.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
