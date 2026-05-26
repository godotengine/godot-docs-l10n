:github_url: hide

.. _class_XRPositionalTracker:

XRPositionalTracker
===================

**Hérite de :** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>`, :ref:`XRBodyTracker<class_XRBodyTracker>`, :ref:`XRControllerTracker<class_XRControllerTracker>`, :ref:`XRHandTracker<class_XRHandTracker>`

Un objet suivi.

.. rst-class:: classref-introduction-group

Description
-----------

Une instance de cet objet représente un dispositif qui est suivi, comme un contrôleur ou un point d'ancrage. Les casques ne sont pas représentés ici car ils sont gérés en interne.

Quand les contrôleurs sont activés et que :ref:`XRInterface<class_XRInterface>` les détecte, les instances de cet objet sont automatiquement ajoutées à cette liste d'objets suivis actifs accessibles par le :ref:`XRServer<class_XRServer>`.

Les :ref:`XRNode3D<class_XRNode3D>` et :ref:`XRAnchor3D<class_XRAnchor3D>` consomment tous les deux des objets de ce type et doivent être utilisés dans votre projet. Les trackers positionnels sont juste des objets sous le capot qui font fonctionner tout ça. Ceux-ci sont généralement exposés de sorte que les interfaces basées sur GDExtension peuvent interagir avec eux.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+------------------------------------------------------------+--------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`hand<class_XRPositionalTracker_property_hand>`       | ``0``  |
   +----------------------------------------------------------+------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                              | :ref:`profile<class_XRPositionalTracker_property_profile>` | ``""`` |
   +----------------------------------------------------------+------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_input<class_XRPositionalTracker_method_get_input>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRPose<class_XRPose>`   | :ref:`get_pose<class_XRPositionalTracker_method_get_pose>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_pose<class_XRPositionalTracker_method_has_pose>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`invalidate_pose<class_XRPositionalTracker_method_invalidate_pose>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_input<class_XRPositionalTracker_method_set_input>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_pose<class_XRPositionalTracker_method_set_pose>`\ (\ name\: :ref:`StringName<class_StringName>`, transform\: :ref:`Transform3D<class_Transform3D>`, linear_velocity\: :ref:`Vector3<class_Vector3>`, angular_velocity\: :ref:`Vector3<class_Vector3>`, tracking_confidence\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_XRPositionalTracker_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_button_pressed>`

Émis quand un bouton sur ce tracker est pressé. Notez que de nombreux environnements d'exécution XR permettent de mapper d'autres entrées sur des boutons.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_button_released>`

Émis lorsqu'un bouton sur ce tracker est relâché.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_input_float_changed>`

Émis lorsqu'une gâchette ou une entrée similaire sur ce tracker change de valeur.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ action_name\: :ref:`String<class_String>`, vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_input_vector2_changed>`

Émis lorsqu'un joystick ou un pavé directionnel sur ce tracker bouge.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_pose_changed:

.. rst-class:: classref-signal

**pose_changed**\ (\ pose\: :ref:`XRPose<class_XRPose>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_pose_changed>`

Émis lorsque l'état d'une pose suivie par ce tracker change.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_pose_lost_tracking:

.. rst-class:: classref-signal

**pose_lost_tracking**\ (\ pose\: :ref:`XRPose<class_XRPose>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_pose_lost_tracking>`

Émis quand une pose suivie par ce tracker cesse de recevoir des données de suivi à jour.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_profile_changed>`

Émis lorsque le profil de notre tracker change.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_XRPositionalTracker_TrackerHand:

.. rst-class:: classref-enumeration

enum **TrackerHand**: :ref:`🔗<enum_XRPositionalTracker_TrackerHand>`

.. _class_XRPositionalTracker_constant_TRACKER_HAND_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_UNKNOWN** = ``0``

La main de ce traqueur est inconnue ou sa valeur est invalide.

.. _class_XRPositionalTracker_constant_TRACKER_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_LEFT** = ``1``

Ce tracker est la manette de la main gauche.

.. _class_XRPositionalTracker_constant_TRACKER_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_RIGHT** = ``2``

Ce tracker est la manette de la main droite.

.. _class_XRPositionalTracker_constant_TRACKER_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_MAX** = ``3``

Représente la taille de l'énumération :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_XRPositionalTracker_property_hand:

.. rst-class:: classref-property

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **hand** = ``0`` :ref:`🔗<class_XRPositionalTracker_property_hand>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_hand**\ (\ value\: :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`\ )
- :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ )

Définit à quelle main correspond ce tracker.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_property_profile:

.. rst-class:: classref-property

:ref:`String<class_String>` **profile** = ``""`` :ref:`🔗<class_XRPositionalTracker_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_profile**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tracker_profile**\ (\ )

Le profil associé à ce tracker, dépendant de l'interface mais indiquera le type du contrôleur suivi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_XRPositionalTracker_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_get_input>`

**Obsolète :** Use through :ref:`XRControllerTracker<class_XRControllerTracker>`.

Renvoie une entrée pour ce tracker. Peut renvoyer une valeur booléenne, flottante ou :ref:`Vector2<class_Vector2>` selon que l'entrée soit un bouton, une gâchette ou un joystick/pavé directionnel.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_get_pose:

.. rst-class:: classref-method

:ref:`XRPose<class_XRPose>` **get_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_get_pose>`

Renvoie l'objet d'état :ref:`XRPose<class_XRPose>` actuel pour la pose ``name`` liée.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_has_pose:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_has_pose>`

Renvoie ``true`` si le tracker est disponible et suit actuellement la pose nommée ``name`` liée.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_invalidate_pose:

.. rst-class:: classref-method

|void| **invalidate_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRPositionalTracker_method_invalidate_pose>`

Marque cette pose comme invalide, nous ne vidons pas le dernier état rapporté, mais cela permet aux utilisateurs de décider si les trackers doivent être cachés si nous perdons le suivi ou doivent rester à leur dernière position connue.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_set_input:

.. rst-class:: classref-method

|void| **set_input**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_XRPositionalTracker_method_set_input>`

**Obsolète :** Use through :ref:`XRControllerTracker<class_XRControllerTracker>`.

Change la valeur pour l'entrée donnée. Cette méthode est appelée par une implémentation d':ref:`XRInterface<class_XRInterface>` et ne devrait pas être utilisée directement.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_set_pose:

.. rst-class:: classref-method

|void| **set_pose**\ (\ name\: :ref:`StringName<class_StringName>`, transform\: :ref:`Transform3D<class_Transform3D>`, linear_velocity\: :ref:`Vector3<class_Vector3>`, angular_velocity\: :ref:`Vector3<class_Vector3>`, tracking_confidence\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ ) :ref:`🔗<class_XRPositionalTracker_method_set_pose>`

Définit la transformation, la vitesse linéaire, la vitesse angulaire et la confiance du suivi pour la pose donnée. Cette méthode est appelée par une implémentation de :ref:`XRInterface<class_XRInterface>` et ne devrait pas être utilisée directement.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
