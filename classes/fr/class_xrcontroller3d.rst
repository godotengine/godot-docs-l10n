:github_url: hide

.. _class_XRController3D:

XRController3D
==============

**Hérite de :** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud 3D représentant un contrôleur suivi spatialement.

.. rst-class:: classref-introduction-group

Description
-----------

This is a helper 3D node that is linked to the tracking of controllers. It also offers several handy passthroughs to the state of buttons and such on the controllers.

Controllers are linked by their ID. You can create controller nodes before the controllers are available. If your game always uses two controllers (one for each hand), you can predefine the controllers with ID 1 and 2; they will become active as soon as the controllers are identified. If you expect additional controllers to be used, you should react to the signals and add XRController3D nodes to your scene.

The position of the controller node is automatically updated by the :ref:`XRServer<class_XRServer>`. This makes this node ideal to add child nodes to visualize the controller.

The current :ref:`XRInterface<class_XRInterface>` defines the names of inputs. In the case of OpenXR, these are the names of actions in the current action set from the OpenXR action map.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                | :ref:`get_float<class_XRController3D_method_get_float>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                            | :ref:`get_input<class_XRController3D_method_get_input>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`get_tracker_hand<class_XRController3D_method_get_tracker_hand>`\ (\ ) |const|                                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_vector2<class_XRController3D_method_get_vector2>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|             |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_button_pressed<class_XRController3D_method_is_button_pressed>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_XRController3D_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_pressed>`

Émis lorsqu’un bouton de ce contrôleur est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_released>`

Émis lorsqu'un bouton de ce contrôleur est relâché.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRController3D_signal_input_float_changed>`

Émis lorsqu'une gâchette ou une entrée similaire sur ce contrôleur modifie la valeur.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRController3D_signal_input_vector2_changed>`

Emitted when a thumbstick or thumbpad on this controller is moved.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_profile_changed>`

Émis lorsque le profil d'interaction sur ce contrôleur est modifié.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_XRController3D_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_float>`

Renvoie une valeur numérique pour l'entrée avec le nom ``name`` donné. Ceci est utilisé pour les gâchettes et les capteurs de préhension.

\ **Note :** La :ref:`XRInterface<class_XRInterface>` actuelle définit le nom ``name`` pour chaque entrée. Dans le cas d'OpenXR, ce sont les noms des actions dans l'ensemble d'actions actuel.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_input>`

Renvoie un :ref:`Variant<class_Variant>` pour l'entrée avec le nom ``name`` donné. Cela fonctionne pour tout type d'entrée, la variante sera typée selon la configuration des actions.

\ **Note :** La :ref:`XRInterface<class_XRInterface>` actuelle définit le nom ``name`` pour chaque entrée. Dans le cas d'OpenXR, ce sont les noms des actions dans l'ensemble d'actions actuel.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_tracker_hand:

.. rst-class:: classref-method

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ ) |const| :ref:`🔗<class_XRController3D_method_get_tracker_hand>`

Renvoie la main tenant ce contrôleur, si connue.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_vector2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vector2**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_vector2>`

Returns a :ref:`Vector2<class_Vector2>` for the input with the given ``name``. This is used for thumbsticks and thumbpads found on many controllers.

\ **Note:** The current :ref:`XRInterface<class_XRInterface>` defines the ``name`` for each input. In the case of OpenXR, these are the names of actions in the current action set.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_is_button_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_button_pressed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_is_button_pressed>`

Renvoie ``true`` si le bouton avec le nom ``name`` donné est appuyé.

\ **Note :** La :ref:`XRInterface<class_XRInterface>` actuelle définit le nom ``name`` pour chaque entrée. Dans le cas d'OpenXR, ce sont les noms des actions dans l'ensemble d'actions actuel.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
