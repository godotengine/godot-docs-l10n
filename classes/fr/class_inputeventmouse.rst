:github_url: hide

.. _class_InputEventMouse:

InputEventMouse
===============

**Hérite de :** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`

Type d’événement d’entrée de base pour les événements de la souris.

.. rst-class:: classref-introduction-group

Description
-----------

Stocke des informations générales sur des événements de la souris.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_InputEventMouse_property_button_mask>`         | ``0``                                                                  |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                   | device                                                                 | ``32`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`global_position<class_InputEventMouse_property_global_position>` | ``Vector2(0, 0)``                                                      |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`position<class_InputEventMouse_property_position>`               | ``Vector2(0, 0)``                                                      |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventMouse_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``0`` :ref:`🔗<class_InputEventMouse_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

The mouse button mask identifier, one of or a bitwise combination of the :ref:`MouseButton<enum_@GlobalScope_MouseButton>` button masks.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

Lorsque reçu dans :ref:`Node._input()<class_Node_private_method__input>` ou :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, renvoie la position de la souris dans le :ref:`Viewport<class_Viewport>` racine en utilisant le système de coordonnées du :ref:`Viewport<class_Viewport>` racine.

Lorsque reçu dans :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, renvoie la position de la souris dans le :ref:`CanvasLayer<class_CanvasLayer>` où se trouve le :ref:`Control<class_Control>` en utilisant le système de coordonnées du :ref:`CanvasLayer<class_CanvasLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Lorsque reçu dans :ref:`Node._input()<class_Node_private_method__input>` ou :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, renvoie la position de la souris dans le :ref:`Viewport<class_Viewport>` où se trouve ce :ref:`Node<class_Node>` en utilisant le système de coordonnées de ce :ref:`Viewport<class_Viewport>`.

Lorsque reçu dans :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, renvoie la position de la souris dans le :ref:`Control<class_Control>` en utilisant le système de coordonnées locales du :ref:`Control<class_Control>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
