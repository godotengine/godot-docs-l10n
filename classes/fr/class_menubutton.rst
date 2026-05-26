:github_url: hide

.. meta::
	:keywords: dropdown

.. _class_MenuButton:

MenuButton
==========

**Hérite de :** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un bouton qui fait apparaître un :ref:`PopupMenu<class_PopupMenu>` quand il est cliqué.

.. rst-class:: classref-introduction-group

Description
-----------

Un bouton qui fait apparaître un :ref:`PopupMenu<class_PopupMenu>` quand il est cliqué. Pour créer de nouveaux éléments dans ce :ref:`PopupMenu<class_PopupMenu>`, utilisez ``get_popup().add_item("Mon nom d'élément")``. Vous pouvez aussi les créer directement auprès de l'inspecteur de l'éditeur Godot.

Voir aussi :ref:`BaseButton<class_BaseButton>` qui contient des propriétés et des méthodes communes associées à ce nœud.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ActionMode<enum_BaseButton_ActionMode>` | action_mode                                                                                 | ``0`` (overrides :ref:`BaseButton<class_BaseButton_property_action_mode>`)    |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | flat                                                                                        | ``true`` (overrides :ref:`Button<class_Button_property_flat>`)                |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`      | focus_mode                                                                                  | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`)           |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`item_count<class_MenuButton_property_item_count>`                                     | ``0``                                                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`popup/item_{index}/checkable<class_MenuButton_property_popup/item_{index}/checkable>` | ``0``                                                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`popup/item_{index}/checked<class_MenuButton_property_popup/item_{index}/checked>`     | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`popup/item_{index}/disabled<class_MenuButton_property_popup/item_{index}/disabled>`   | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`             | :ref:`popup/item_{index}/icon<class_MenuButton_property_popup/item_{index}/icon>`           |                                                                               |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`popup/item_{index}/id<class_MenuButton_property_popup/item_{index}/id>`               | ``0``                                                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`popup/item_{index}/separator<class_MenuButton_property_popup/item_{index}/separator>` | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`popup/item_{index}/text<class_MenuButton_property_popup/item_{index}/text>`           | ``""``                                                                        |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`switch_on_hover<class_MenuButton_property_switch_on_hover>`                           | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | toggle_mode                                                                                 | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`PopupMenu<class_PopupMenu>` | :ref:`get_popup<class_MenuButton_method_get_popup>`\ (\ ) |const|                                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_disable_shortcuts<class_MenuButton_method_set_disable_shortcuts>`\ (\ disabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`show_popup<class_MenuButton_method_show_popup>`\ (\ )                                                           |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_MenuButton_signal_about_to_popup:

.. rst-class:: classref-signal

**about_to_popup**\ (\ ) :ref:`🔗<class_MenuButton_signal_about_to_popup>`

Émis lorsque le :ref:`PopupMenu<class_PopupMenu>` de ce MenuButton est sur le point d'être affiché.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_MenuButton_property_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **item_count** = ``0`` :ref:`🔗<class_MenuButton_property_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_count**\ (\ )

Le nombre d'éléments actuellement dans la liste.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/checkable:

.. rst-class:: classref-property

:ref:`int<class_int>` **popup/item_{index}/checkable** = ``0`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/checkable>`

The checkable item type of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/checked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/checked** = ``false`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/checked>`

If ``true``, the item at ``index`` is checked.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/disabled** = ``false`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/disabled>`

If ``true``, the item at ``index`` is disabled.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **popup/item_{index}/icon** :ref:`🔗<class_MenuButton_property_popup/item_{index}/icon>`

The icon of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/id:

.. rst-class:: classref-property

:ref:`int<class_int>` **popup/item_{index}/id** = ``0`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/id>`

The ID of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/separator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/separator** = ``false`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/separator>`

If ``true``, the item at ``index`` is a separator.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/text:

.. rst-class:: classref-property

:ref:`String<class_String>` **popup/item_{index}/text** = ``""`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/text>`

The text of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_switch_on_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_hover** = ``false`` :ref:`🔗<class_MenuButton_property_switch_on_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_switch_on_hover**\ (\ )

Si ``true``, lorsque le curseur survole un autre **MenuButton** au sein du même parent qui a également :ref:`switch_on_hover<class_MenuButton_property_switch_on_hover>` activé, il fermera le **MenuButton** actuel et ouvrira l'autre bouton.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_MenuButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_popup**\ (\ ) |const| :ref:`🔗<class_MenuButton_method_get_popup>`

Renvoie le :ref:`PopupMenu<class_PopupMenu>` contenu dans ce bouton.

\ **Avertissement :** Il s'agit d'un nœud interne nécessaire, le retirer et le libérer peut causer un plantage. Si vous voulez le cacher lui ou l'un de ses enfants, utilisez plutôt la propriété :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuButton_method_set_disable_shortcuts>`

Si ``true``, les raccourcis sont désactivés et ne peuvent pas être utilisés pour déclencher le bouton.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_method_show_popup:

.. rst-class:: classref-method

|void| **show_popup**\ (\ ) :ref:`🔗<class_MenuButton_method_show_popup>`

Ajuste la position et la taille de la popup pour le **MenuButton**, puis affiche le :ref:`PopupMenu<class_PopupMenu>`. Préférez ceci plutôt que ``get_popup().popup()``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
