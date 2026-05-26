:github_url: hide

.. _class_XRServer:

XRServer
========

**Hérite de :** :ref:`Object<class_Object>`

Serveur pour les fonctionnalités AR et VR.

.. rst-class:: classref-introduction-group

Description
-----------

Les serveurs AR/VR sont au cœur de nos solutions avancées de réalité virtuelle, traitant tous les processus.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`camera_locked_to_origin<class_XRServer_property_camera_locked_to_origin>` | ``false``                                           |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>` | :ref:`primary_interface<class_XRServer_property_primary_interface>`             |                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`world_origin<class_XRServer_property_world_origin>`                       | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`world_scale<class_XRServer_property_world_scale>`                         | ``1.0``                                             |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_interface<class_XRServer_method_add_interface>`\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ )                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_tracker<class_XRServer_method_add_tracker>`\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ )                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`center_on_hmd<class_XRServer_method_center_on_hmd>`\ (\ rotation_mode\: :ref:`RotationMode<enum_XRServer_RotationMode>`, keep_height\: :ref:`bool<class_bool>`\ ) |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_reference_frame<class_XRServer_method_clear_reference_frame>`\ (\ )                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>`                            | :ref:`find_interface<class_XRServer_method_find_interface>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                           |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_hmd_transform<class_XRServer_method_get_hmd_transform>`\ (\ )                                                                                                 |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>`                            | :ref:`get_interface<class_XRServer_method_get_interface>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_interface_count<class_XRServer_method_get_interface_count>`\ (\ ) |const|                                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_interfaces<class_XRServer_method_get_interfaces>`\ (\ ) |const|                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_reference_frame<class_XRServer_method_get_reference_frame>`\ (\ ) |const|                                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRTracker<class_XRTracker>`                                | :ref:`get_tracker<class_XRServer_method_get_tracker>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                 |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_trackers<class_XRServer_method_get_trackers>`\ (\ tracker_types\: :ref:`int<class_int>`\ )                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_interface<class_XRServer_method_remove_interface>`\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ )                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_tracker<class_XRServer_method_remove_tracker>`\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ )                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_XRServer_signal_interface_added:

.. rst-class:: classref-signal

**interface_added**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRServer_signal_interface_added>`

Émis lorsqu'une nouvelle interface a été ajoutée.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_interface_removed:

.. rst-class:: classref-signal

**interface_removed**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRServer_signal_interface_removed>`

Émis lorsqu'une interface est supprimée.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_reference_frame_changed:

.. rst-class:: classref-signal

**reference_frame_changed**\ (\ ) :ref:`🔗<class_XRServer_signal_reference_frame_changed>`

Émis lorsque la transformation du cadre de référence change.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_added:

.. rst-class:: classref-signal

**tracker_added**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_added>`

Émis quand un nouveau tracker a été ajouté. Si vous n'utilisez pas un nombre fixe de contrôleurs ou si vous utilisez :ref:`XRAnchor3D<class_XRAnchor3D>` pour une solution AR, il est important de réagir à ce signal pour ajouter les nœuds :ref:`XRController3D<class_XRController3D>` ou :ref:`XRAnchor3D<class_XRAnchor3D>` appropriés liés à ce nouveau tracker.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_removed:

.. rst-class:: classref-signal

**tracker_removed**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_removed>`

Émis quand un tracker est retiré. Vous devez supprimer tout :ref:`XRController3D<class_XRController3D>` ou :ref:`XRAnchor3D<class_XRAnchor3D>` si nécessaire. Ce n'est pas obligatoire, les nœuds deviennent tout simplement inactifs et seront de nouveau actifs lorsqu'un nouveau tracker sera disponible (quand un nouveau contrôleur activé prendra la place du précédent).

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_updated:

.. rst-class:: classref-signal

**tracker_updated**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_updated>`

Émis lorsqu'un tracker existant a été mis à jour. Cela peut se produire si l'utilisateur change de contrôleurs.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_world_origin_changed:

.. rst-class:: classref-signal

**world_origin_changed**\ (\ ) :ref:`🔗<class_XRServer_signal_world_origin_changed>`

Emitted when the world origin transform changes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_XRServer_TrackerType:

.. rst-class:: classref-enumeration

enum **TrackerType**: :ref:`🔗<enum_XRServer_TrackerType>`

.. _class_XRServer_constant_TRACKER_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_HEAD** = ``1``

Le tracker suit l'emplacement de la tête du joueur. Il s'agit généralement d'un emplacement centré entre les yeux du joueur. Notez que pour les appareils AR portatifs, cela peut être l'emplacement actuel de l'appareil.

.. _class_XRServer_constant_TRACKER_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_CONTROLLER** = ``2``

Le traqueur permet de suivre la localisation d'un contrôleur.

.. _class_XRServer_constant_TRACKER_BASESTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_BASESTATION** = ``4``

Le tracker permet de suivre l'emplacement d'une station de base.

.. _class_XRServer_constant_TRACKER_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANCHOR** = ``8``

Le tracker permet de suivre l'emplacement et la taille d'une ancre en réalité augmentée.

.. _class_XRServer_constant_TRACKER_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_HAND** = ``16``

Le tracker suit l'emplacement et les articulations d'une main.

.. _class_XRServer_constant_TRACKER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_BODY** = ``32``

Le tracker suit l'emplacement et les articulations d'un corps.

.. _class_XRServer_constant_TRACKER_FACE:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_FACE** = ``64``

Le tracker suit les expressions d'un visage.

.. _class_XRServer_constant_TRACKER_ANY_KNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANY_KNOWN** = ``127``

Utilisé en interne pour filtrer les trackers de n’importe quel type connu.

.. _class_XRServer_constant_TRACKER_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_UNKNOWN** = ``128``

Utilisé en interne si nous n'avons pas encore défini le type de tracker.

.. _class_XRServer_constant_TRACKER_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANY** = ``255``

Utilisé en interne pour sélectionner tous les traqueurs.

.. rst-class:: classref-item-separator

----

.. _enum_XRServer_RotationMode:

.. rst-class:: classref-enumeration

enum **RotationMode**: :ref:`🔗<enum_XRServer_RotationMode>`

.. _class_XRServer_constant_RESET_FULL_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **RESET_FULL_ROTATION** = ``0``

Réinitialise complètement l'orientation du visiocasque. Indépendamment de la direction que l'utilisateur regarde dans le monde réel. L'utilisateur regardera droit devant dans le monde virtuel.

.. _class_XRServer_constant_RESET_BUT_KEEP_TILT:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **RESET_BUT_KEEP_TILT** = ``1``

Réinitialise l'orientation mais conserve l'inclinaison du dispositif. Donc si nous regardons en bas, nous continuons de regarder en bas mais le titre sera réinitialisé.

.. _class_XRServer_constant_DONT_RESET_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **DONT_RESET_ROTATION** = ``2``

Ne réinitialise pas l'orientation du visiocasque, centre seulement la position du joueur.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_XRServer_property_camera_locked_to_origin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **camera_locked_to_origin** = ``false`` :ref:`🔗<class_XRServer_property_camera_locked_to_origin>`

.. rst-class:: classref-property-setget

- |void| **set_camera_locked_to_origin**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_camera_locked_to_origin**\ (\ )

Si défini à ``true``, la scène sera rendue comme si la caméra était verrouillée au :ref:`XROrigin3D<class_XROrigin3D>`.

\ **Note :** Cela ne fournit pas une expérience très confortable pour les utilisateurs. Ce paramètre existe pour faire des tests de référence ou automatisés, où vous voulez contrôler ce qui est rendu via le code.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_primary_interface:

.. rst-class:: classref-property

:ref:`XRInterface<class_XRInterface>` **primary_interface** :ref:`🔗<class_XRServer_property_primary_interface>`

.. rst-class:: classref-property-setget

- |void| **set_primary_interface**\ (\ value\: :ref:`XRInterface<class_XRInterface>`\ )
- :ref:`XRInterface<class_XRInterface>` **get_primary_interface**\ (\ )

La :ref:`XRInterface<class_XRInterface>` principale actuellement connectée à ce **XRServer**.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_world_origin:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **world_origin** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_XRServer_property_world_origin>`

.. rst-class:: classref-property-setget

- |void| **set_world_origin**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_world_origin**\ (\ )

L'origine actuelle de notre espace de suivi dans le monde virtuel. Ceci est utilisé par le moteur de rendu pour positionner correctement la caméra avec de nouvelles données de suivi.

\ **Note :** Cette propriété est gérée par le nœud :ref:`XROrigin3D<class_XROrigin3D>` courant. Il est exposé pour y accéder depuis des GDExtensions.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_world_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **world_scale** = ``1.0`` :ref:`🔗<class_XRServer_property_world_scale>`

.. rst-class:: classref-property-setget

- |void| **set_world_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_world_scale**\ (\ )

L'échelle du monde du jeu par rapport au monde réel. Par défaut, la plupart des plateformes AR/VR supposent que 1 unité de jeu correspond à 1 mètre du monde réel.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_XRServer_method_add_interface:

.. rst-class:: classref-method

|void| **add_interface**\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ ) :ref:`🔗<class_XRServer_method_add_interface>`

Enregistre un objet :ref:`XRInterface<class_XRInterface>`.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_add_tracker:

.. rst-class:: classref-method

|void| **add_tracker**\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ ) :ref:`🔗<class_XRServer_method_add_tracker>`

Enregistre un nouveau :ref:`XRTracker<class_XRTracker>` qui suit un objet physique.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_center_on_hmd:

.. rst-class:: classref-method

|void| **center_on_hmd**\ (\ rotation_mode\: :ref:`RotationMode<enum_XRServer_RotationMode>`, keep_height\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_XRServer_method_center_on_hmd>`

Il s'agit d'une fonction importante qu'il faut comprendre correctement. Les plates-formes AR et VR gèrent les positions légèrement différemment.

Pour les plateformes qui n'offrent pas de suivi spatial, notre point d'origine ``(0,0,0)`` est l'emplacement de notre HMD, mais vous avez peu de contrôle sur la direction que le joueur fait face dans le monde réel.

Pour les plateformes qui offrent un suivi spatial, notre point d'origine dépend beaucoup du système. Pour OpenVR, notre point d'origine est généralement le centre de l'espace de suivi, au sol. Pour d'autres plates-formes, il s'agit souvent de l'emplacement de la caméra de suivi.

Cette méthode vous permet de centrer votre tracker sur l'emplacement du HMD. Il prendra l'emplacement actuel de l'HMD et l'utilisera pour ajuster toutes vos données de suivi ; c'est-à-dire réaligner le monde réel à la position actuelle de votre joueur dans le monde du jeu.

Pour que cette méthode produise des résultats utilisables, des informations de suivi doivent être disponibles. Cela prend souvent quelques trames après le démarrage de votre jeu.

Vous devriez appeler cette méthode après quelques secondes. Par exemple, lorsque l'utilisateur demande un réalignement de l'écran en maintenant un bouton désigné sur un contrôleur pendant une courte période, ou lors de l'implémentation d'un mécanisme de téléportation.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_clear_reference_frame:

.. rst-class:: classref-method

|void| **clear_reference_frame**\ (\ ) :ref:`🔗<class_XRServer_method_clear_reference_frame>`

Clears the reference frame that was set by previous calls to :ref:`center_on_hmd()<class_XRServer_method_center_on_hmd>`.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_find_interface:

.. rst-class:: classref-method

:ref:`XRInterface<class_XRInterface>` **find_interface**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XRServer_method_find_interface>`

Trouve une interface par son nom ``name``. Par exemple, si votre projet utilise des capacités d'une plateforme AR/VR, vous pouvez trouver l'interface pour cette plateforme par son nom et l'initialiser.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_hmd_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_hmd_transform**\ (\ ) :ref:`🔗<class_XRServer_method_get_hmd_transform>`

Renvoie la transformation de l'interface primaire.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interface:

.. rst-class:: classref-method

:ref:`XRInterface<class_XRInterface>` **get_interface**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XRServer_method_get_interface>`

Renvoie l'interface enregistrée à l'index ``idx`` donné dans la liste des interfaces.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interface_count**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_interface_count>`

Renvoie le nombre d'interfaces actuellement enregistrées avec le serveur AR/VR. Si votre projet prend en charge plusieurs plateformes AR/VR, vous pouvez lister les interfaces disponibles, et présenter à l'utilisateur une sélection ou simplement essayer d'initialiser chaque interface et utiliser la première interface qui renvoie ``true``.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_interfaces**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_interfaces>`

Renvoie une liste des interfaces disponibles avec l'identifiant et le nom de chaque interface.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_reference_frame:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_reference_frame**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_reference_frame>`

Returns the reference frame transform. Mostly used internally and exposed for GDExtension build interfaces.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_tracker:

.. rst-class:: classref-method

:ref:`XRTracker<class_XRTracker>` **get_tracker**\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRServer_method_get_tracker>`

Renvoie le tracker positionnel avec le nom ``tracker_name`` donné.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_trackers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_trackers**\ (\ tracker_types\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_method_get_trackers>`

Renvoie un dictionnaire de trackers pour ``tracker_types``.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_remove_interface:

.. rst-class:: classref-method

|void| **remove_interface**\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ ) :ref:`🔗<class_XRServer_method_remove_interface>`

Supprime cette ``interface``.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_remove_tracker:

.. rst-class:: classref-method

|void| **remove_tracker**\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ ) :ref:`🔗<class_XRServer_method_remove_tracker>`

Supprime ce ``tracker``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
