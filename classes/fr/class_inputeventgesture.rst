:github_url: hide

.. _class_InputEventGesture:

InputEventGesture
=================

**Hérite de :** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>`, :ref:`InputEventPanGesture<class_InputEventPanGesture>`

Classe de base abstraite pour les gestes tactiles.

.. rst-class:: classref-introduction-group

Description
-----------

InputEventGestures are sent when a user performs a supported gesture on a touch screen. Gestures can't be emulated using mouse, because they typically require multi-touch.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`         | device                                                     | ``0`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventGesture_property_position>` | ``Vector2(0, 0)``                                                     |
   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventGesture_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventGesture_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

La position locale du geste par rapport au :ref:`Viewport<class_Viewport>`. Si utilisé dans :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, la position est relative au :ref:`Control<class_Control>` actuel qui a reçu ce geste.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
