:github_url: hide

.. meta::
	:keywords: dropdown

.. _class_MenuButton:

MenuButton
==========

**Hereda:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un botón que abre un :ref:`PopupMenu<class_PopupMenu>` cuando se hace clic en él.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A button that brings up a :ref:`PopupMenu<class_PopupMenu>` when clicked. To create new items inside this :ref:`PopupMenu<class_PopupMenu>`, use ``get_popup().add_item("My Item Name")``. You can also create them directly from Godot editor's inspector.

See also :ref:`BaseButton<class_BaseButton>` which contains common properties and methods associated with this node.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_MenuButton_signal_about_to_popup:

.. rst-class:: classref-signal

**about_to_popup**\ (\ ) :ref:`🔗<class_MenuButton_signal_about_to_popup>`

Emitida cuando el :ref:`PopupMenu<class_PopupMenu>` de este MenuButton está a punto de aparecer.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_MenuButton_property_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **item_count** = ``0`` :ref:`🔗<class_MenuButton_property_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_count**\ (\ )

El número de elementos que hay actualmente en la lista.

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

Si es ``true``, cuando el cursor se sitúa sobre otro **MenuButton** dentro del mismo padre que también tenga :ref:`switch_on_hover<class_MenuButton_property_switch_on_hover>` activado, cerrará el **MenuButton** actual y abrirá el otro.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_MenuButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_popup**\ (\ ) |const| :ref:`🔗<class_MenuButton_method_get_popup>`

Devuelve el :ref:`PopupMenu<class_PopupMenu>` contenido en este botón.

\ **Advertencia:** Este es un nodo interno requerido, eliminarlo y liberarlo puede causar un fallo. Si deseas ocultarlo o alguno de sus hijos, usa su propiedad :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuButton_method_set_disable_shortcuts>`

Si es ``true``, los atajos están desactivados y no se pueden utilizar para activar el botón.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_method_show_popup:

.. rst-class:: classref-method

|void| **show_popup**\ (\ ) :ref:`🔗<class_MenuButton_method_show_popup>`

Ajusta la posición y el tamaño del popup para el **MenuButton**, luego muestra el :ref:`PopupMenu<class_PopupMenu>`. Es preferible usar esto en lugar de ``get_popup().popup()``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
