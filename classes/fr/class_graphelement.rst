:github_url: hide

.. _class_GraphElement:

GraphElement
============

**Hérite de :** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`GraphFrame<class_GraphFrame>`, :ref:`GraphNode<class_GraphNode>`

A container that represents a basic element that can be placed inside a :ref:`GraphEdit<class_GraphEdit>` control.

.. rst-class:: classref-introduction-group

Description
-----------

**GraphElement** allows to create custom elements for a :ref:`GraphEdit<class_GraphEdit>` graph. By default such elements can be selected, resized, and repositioned, but they cannot be connected. For a graph element that allows for connections see :ref:`GraphNode<class_GraphNode>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`draggable<class_GraphElement_property_draggable>`             | ``true``          |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position_offset<class_GraphElement_property_position_offset>` | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`resizable<class_GraphElement_property_resizable>`             | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`scaling_menus<class_GraphElement_property_scaling_menus>`     | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`selectable<class_GraphElement_property_selectable>`           | ``true``          |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`selected<class_GraphElement_property_selected>`               | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`resizer<class_GraphElement_theme_icon_resizer>` |
   +-----------------------------------+-------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_GraphElement_signal_delete_request:

.. rst-class:: classref-signal

**delete_request**\ (\ ) :ref:`🔗<class_GraphElement_signal_delete_request>`

Emitted when removing the GraphElement is requested.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_dragged>`

Emitted when the GraphElement is dragged.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_node_deselected:

.. rst-class:: classref-signal

**node_deselected**\ (\ ) :ref:`🔗<class_GraphElement_signal_node_deselected>`

Emitted when the GraphElement is deselected.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_node_selected:

.. rst-class:: classref-signal

**node_selected**\ (\ ) :ref:`🔗<class_GraphElement_signal_node_selected>`

Emitted when the GraphElement is selected.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_position_offset_changed:

.. rst-class:: classref-signal

**position_offset_changed**\ (\ ) :ref:`🔗<class_GraphElement_signal_position_offset_changed>`

Emitted when the GraphElement is moved.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_raise_request:

.. rst-class:: classref-signal

**raise_request**\ (\ ) :ref:`🔗<class_GraphElement_signal_raise_request>`

Emitted when displaying the GraphElement over other ones is requested. Happens on focusing (clicking into) the GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_resize_end:

.. rst-class:: classref-signal

**resize_end**\ (\ new_size\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_resize_end>`

Emitted when releasing the mouse button after dragging the resizer handle (see :ref:`resizable<class_GraphElement_property_resizable>`).

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_resize_request:

.. rst-class:: classref-signal

**resize_request**\ (\ new_size\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_resize_request>`

Emitted when resizing the GraphElement is requested. Happens on dragging the resizer handle (see :ref:`resizable<class_GraphElement_property_resizable>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GraphElement_property_draggable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draggable** = ``true`` :ref:`🔗<class_GraphElement_property_draggable>`

.. rst-class:: classref-property-setget

- |void| **set_draggable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draggable**\ (\ )

If ``true``, the user can drag the GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_GraphElement_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position_offset**\ (\ )

The offset of the GraphElement, relative to the scroll offset of the :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_resizable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resizable** = ``false`` :ref:`🔗<class_GraphElement_property_resizable>`

.. rst-class:: classref-property-setget

- |void| **set_resizable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_resizable**\ (\ )

Si ``true``, l'utilisateur peut redimensionner le GraphElement.

\ **Note :** Faire glisser la poignée n'émettra que les signaux :ref:`resize_request<class_GraphElement_signal_resize_request>` et :ref:`resize_end<class_GraphElement_signal_resize_end>`, le GraphElement doit être redimensionné manuellement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_scaling_menus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scaling_menus** = ``false`` :ref:`🔗<class_GraphElement_property_scaling_menus>`

.. rst-class:: classref-property-setget

- |void| **set_scaling_menus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scaling_menus**\ (\ )

If ``true``, :ref:`PopupMenu<class_PopupMenu>`\ s that are descendants of the GraphElement are scaled with the :ref:`GraphEdit<class_GraphEdit>` zoom.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_selectable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selectable** = ``true`` :ref:`🔗<class_GraphElement_property_selectable>`

.. rst-class:: classref-property-setget

- |void| **set_selectable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selectable**\ (\ )

Si ``true``, l'utilisateur peut sélectionner le GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selected** = ``false`` :ref:`🔗<class_GraphElement_property_selected>`

.. rst-class:: classref-property-setget

- |void| **set_selected**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selected**\ (\ )

If ``true``, the GraphElement is selected.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_GraphElement_theme_icon_resizer:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **resizer** :ref:`🔗<class_GraphElement_theme_icon_resizer>`

The icon used for the resizer, visible when :ref:`resizable<class_GraphElement_property_resizable>` is enabled.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
