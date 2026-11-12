:github_url: hide

.. _class_InputEventScreenTouch:

InputEventScreenTouch
=====================

**Hérite de :** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente un évènement d'écran tactile.

.. rst-class:: classref-introduction-group

Description
-----------

Stocke des informations sur des événements d'entrée de appui/relâchement multi-toucher. Supporte l'appui tactile, le relâchement tactile et l':ref:`index<class_InputEventScreenTouch_property_index>` pour le compte et l'ordre du multi-toucher.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`canceled<class_InputEventScreenTouch_property_canceled>`     | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`double_tap<class_InputEventScreenTouch_property_double_tap>` | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`index<class_InputEventScreenTouch_property_index>`           | ``0``             |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`long_press<class_InputEventScreenTouch_property_long_press>` | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventScreenTouch_property_position>`     | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pressed<class_InputEventScreenTouch_property_pressed>`       | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventScreenTouch_property_canceled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **canceled** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_canceled>`

.. rst-class:: classref-property-setget

- |void| **set_canceled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_canceled**\ (\ )

Si ``true``, l'événement tactile a été annulé.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_double_tap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_tap** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_double_tap>`

.. rst-class:: classref-property-setget

- |void| **set_double_tap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_double_tap**\ (\ )

Si ``true``, l'état du toucher est un double appui.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **index** = ``0`` :ref:`🔗<class_InputEventScreenTouch_property_index>`

.. rst-class:: classref-property-setget

- |void| **set_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index**\ (\ )

L'index du touché dans le cas d'un événement de multi-touch. Un index = un doigt (un point de contact).

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_long_press:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **long_press** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_long_press>`

.. rst-class:: classref-property-setget

- |void| **set_long_press**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_long_press**\ (\ )

If ``true``, the touch's state is a long press.

\ **Note:** This is only supported on Android and iOS.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenTouch_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

La position du toucher dans le viewport dans lequel se trouve le nœud, en utilisant le système de coordonnées de ce viewport.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Si ``true``, l'état du toucher est appuyé. Si ``false``, l'état du toucher est relâché.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
