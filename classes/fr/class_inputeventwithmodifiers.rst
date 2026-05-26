:github_url: hide

.. _class_InputEventWithModifiers:

InputEventWithModifiers
=======================

**Hérite de :** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`InputEventGesture<class_InputEventGesture>`, :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouse<class_InputEventMouse>`

Classe de base abstraite pour les événements d'entrée affectés par des touches de modification comme :kbd:`Maj` et :kbd:`Alt`.

.. rst-class:: classref-introduction-group

Description
-----------

Stocke des informations sur la souris, le clavier et les événements d'entrée de geste. Cela comprend des informations sur les touches de modification appuyées, telles que :kbd:`Maj` ou :kbd:`Alt`. Voir :ref:`Node._input()<class_Node_private_method__input>`.

\ **Note :** Les touches de modification sont considérées comme des modificateurs seulement lorsqu'elles sont utilisées en combinaison avec une autre touche. Par conséquent, leurs variables membres correspondantes, telles que :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>`, renverront ``false`` si la touchée est appuyée seule.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`alt_pressed<class_InputEventWithModifiers_property_alt_pressed>`                                   | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`command_or_control_autoremap<class_InputEventWithModifiers_property_command_or_control_autoremap>` | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>`                                 | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | device                                                                                                   | ``16`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>`                                 | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`shift_pressed<class_InputEventWithModifiers_property_shift_pressed>`                               | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] | :ref:`get_modifiers_mask<class_InputEventWithModifiers_method_get_modifiers_mask>`\ (\ ) |const|                       |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`is_command_or_control_pressed<class_InputEventWithModifiers_method_is_command_or_control_pressed>`\ (\ ) |const| |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventWithModifiers_property_alt_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **alt_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_alt_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_alt_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_alt_pressed**\ (\ )

L'état du modificateur :kbd:`Alt`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_command_or_control_autoremap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **command_or_control_autoremap** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_command_or_control_autoremap>`

.. rst-class:: classref-property-setget

- |void| **set_command_or_control_autoremap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_command_or_control_autoremap**\ (\ )

Utiliser automatiquement :kbd:`Meta` (:kbd:`Cmd`) sur macOS et :kbd:`Ctrl` sur les autres plateformes. Si ``true``, :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>` et :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>` ne peuvent être définis.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_ctrl_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ctrl_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_ctrl_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_ctrl_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ctrl_pressed**\ (\ )

L'état du modificateur :kbd:`Ctrl` (Contrôle).

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_meta_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meta_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_meta_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_meta_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_meta_pressed**\ (\ )

État du modificateur :kbd:`Meta`. Sur Windows et Linux, cela représente la touche Windows (parfois appelée "meta" ou "super" sur Linux). Sur macOS, cela représente la touche Commande.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_shift_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shift_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_shift_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_shift_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shift_pressed**\ (\ )

L'état du modificateur :kbd:`Shift` (Majuscule).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_InputEventWithModifiers_method_get_modifiers_mask:

.. rst-class:: classref-method

|bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] **get_modifiers_mask**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_get_modifiers_mask>`

Returns the keycode combination of modifier keys.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_method_is_command_or_control_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_command_or_control_pressed**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_is_command_or_control_pressed>`

Sur macOS, renvoie ``true`` si :kbd:`Meta` (:kbd:`Cmd`) est appuyé.

Sur les autres plateformes, renvoie ``true`` si :kbd:`Ctrl` est appuyé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
