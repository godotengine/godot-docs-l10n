:github_url: hide

.. meta::
	:keywords: select, dropdown

.. _class_OptionButton:

OptionButton
============

**Hereda:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un botón que muestra un menú desplegable con opciones seleccionables cuando se pulsa.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**OptionButton** es un tipo de botón que muestra un menú desplegable con ítems seleccionables cuando se pulsa. El ítem seleccionado se convierte en el ítem "actual" y se muestra como el texto del botón.

Véase también :ref:`BaseButton<class_BaseButton>` que contiene propiedades y métodos comunes asociados a este nodo.

\ **Nota:** Los ID utilizados para los ítems están limitados a enteros de 32 bits con signo, no a los 64 bits completos de :ref:`int<class_int>`. Estos tienen un rango de ``-2^31`` a ``2^31 - 1``, es decir, ``-2147483648`` a ``2147483647``.

\ **Nota:** Las propiedades :ref:`Button.text<class_Button_property_text>` y :ref:`Button.icon<class_Button_property_icon>` se establecen automáticamente en función del ítem seleccionado. No deben modificarse manualmente.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ActionMode<enum_BaseButton_ActionMode>`                     | action_mode                                                                                               | ``0`` (overrides :ref:`BaseButton<class_BaseButton_property_action_mode>`)    |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | alignment                                                                                                 | ``0`` (overrides :ref:`Button<class_Button_property_alignment>`)              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`allow_reselect<class_OptionButton_property_allow_reselect>`                                         | ``false``                                                                     |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`fit_to_longest_item<class_OptionButton_property_fit_to_longest_item>`                               | ``true``                                                                      |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`item_count<class_OptionButton_property_item_count>`                                                 | ``0``                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`popup/item_{index}/disabled<class_OptionButton_property_popup/item_{index}/disabled>`               | ``false``                                                                     |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                 | :ref:`popup/item_{index}/icon<class_OptionButton_property_popup/item_{index}/icon>`                       |                                                                               |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`popup/item_{index}/id<class_OptionButton_property_popup/item_{index}/id>`                           | ``0``                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`popup/item_{index}/separator<class_OptionButton_property_popup/item_{index}/separator>`             | ``false``                                                                     |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`popup/item_{index}/text<class_OptionButton_property_popup/item_{index}/text>`                       | ``""``                                                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`search_bar_enabled<class_OptionButton_property_search_bar_enabled>`                                 | ``false``                                                                     |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`search_bar_fuzzy_search_enabled<class_OptionButton_property_search_bar_fuzzy_search_enabled>`       | ``true``                                                                      |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`search_bar_fuzzy_search_max_misses<class_OptionButton_property_search_bar_fuzzy_search_max_misses>` | ``2``                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`search_bar_min_item_count<class_OptionButton_property_search_bar_min_item_count>`                   | ``0``                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`selected<class_OptionButton_property_selected>`                                                     | ``-1``                                                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | toggle_mode                                                                                               | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_icon_item<class_OptionButton_method_add_icon_item>`\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ )       |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_item<class_OptionButton_method_add_item>`\ (\ label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ )                                                              |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_separator<class_OptionButton_method_add_separator>`\ (\ text\: :ref:`String<class_String>` = ""\ )                                                                                 |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`clear<class_OptionButton_method_clear>`\ (\ )                                                                                                                                          |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` | :ref:`get_item_auto_translate_mode<class_OptionButton_method_get_item_auto_translate_mode>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                     | :ref:`get_item_icon<class_OptionButton_method_get_item_icon>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_item_id<class_OptionButton_method_get_item_id>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_item_index<class_OptionButton_method_get_item_index>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                    |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                         | :ref:`get_item_metadata<class_OptionButton_method_get_item_metadata>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_item_text<class_OptionButton_method_get_item_text>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_item_tooltip<class_OptionButton_method_get_item_tooltip>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PopupMenu<class_PopupMenu>`                     | :ref:`get_popup<class_OptionButton_method_get_popup>`\ (\ ) |const|                                                                                                                          |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_selectable_item<class_OptionButton_method_get_selectable_item>`\ (\ from_last\: :ref:`bool<class_bool>` = false\ ) |const|                                                         |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_selected_id<class_OptionButton_method_get_selected_id>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                         | :ref:`get_selected_metadata<class_OptionButton_method_get_selected_metadata>`\ (\ ) |const|                                                                                                  |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_selectable_items<class_OptionButton_method_has_selectable_items>`\ (\ ) |const|                                                                                                    |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_item_disabled<class_OptionButton_method_is_item_disabled>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_item_separator<class_OptionButton_method_is_item_separator>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_item<class_OptionButton_method_remove_item>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                 |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`select<class_OptionButton_method_select>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                           |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_disable_shortcuts<class_OptionButton_method_set_disable_shortcuts>`\ (\ disabled\: :ref:`bool<class_bool>`\ )                                                                      |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_auto_translate_mode<class_OptionButton_method_set_item_auto_translate_mode>`\ (\ idx\: :ref:`int<class_int>`, mode\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ ) |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_disabled<class_OptionButton_method_set_item_disabled>`\ (\ idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )                                                 |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_icon<class_OptionButton_method_set_item_icon>`\ (\ idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                                |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_id<class_OptionButton_method_set_item_id>`\ (\ idx\: :ref:`int<class_int>`, id\: :ref:`int<class_int>`\ )                                                                     |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_metadata<class_OptionButton_method_set_item_metadata>`\ (\ idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ )                                           |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_text<class_OptionButton_method_set_item_text>`\ (\ idx\: :ref:`int<class_int>`, text\: :ref:`String<class_String>`\ )                                                         |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_tooltip<class_OptionButton_method_set_item_tooltip>`\ (\ idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ )                                                |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`show_popup<class_OptionButton_method_show_popup>`\ (\ )                                                                                                                                |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`             | :ref:`arrow_margin<class_OptionButton_theme_constant_arrow_margin>`     | ``4`` |
   +-----------------------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`             | :ref:`modulate_arrow<class_OptionButton_theme_constant_modulate_arrow>` | ``0`` |
   +-----------------------------------+-------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`arrow<class_OptionButton_theme_icon_arrow>`                       |       |
   +-----------------------------------+-------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_OptionButton_signal_item_focused:

.. rst-class:: classref-signal

**item_focused**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_signal_item_focused>`

Emitted when the user navigates to an item using the :ref:`ProjectSettings.input/ui_up<class_ProjectSettings_property_input/ui_up>` or :ref:`ProjectSettings.input/ui_down<class_ProjectSettings_property_input/ui_down>` input actions. The index of the item focused is passed as argument.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_signal_item_selected:

.. rst-class:: classref-signal

**item_selected**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_signal_item_selected>`

Emitida cuando el elemento actual ha sido cambiado por el usuario. El índice del elemento seleccionado se pasa como argumento.

\ :ref:`allow_reselect<class_OptionButton_property_allow_reselect>` debe estar activado para volver a seleccionar un elemento.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OptionButton_property_allow_reselect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_reselect** = ``false`` :ref:`🔗<class_OptionButton_property_allow_reselect>`

.. rst-class:: classref-property-setget

- |void| **set_allow_reselect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_allow_reselect**\ (\ )

Si es ``true``, el elemento actualmente seleccionado puede ser seleccionado de nuevo.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_fit_to_longest_item:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fit_to_longest_item** = ``true`` :ref:`🔗<class_OptionButton_property_fit_to_longest_item>`

.. rst-class:: classref-property-setget

- |void| **set_fit_to_longest_item**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_fit_to_longest_item**\ (\ )

If ``true``, minimum size will be determined by the longest item's width, instead of the currently selected one's. It will also take the popup's margins into account, making the button match its total width.

\ **Note:** For performance reasons, the minimum size doesn't update immediately when adding, removing or modifying items.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **item_count** = ``0`` :ref:`🔗<class_OptionButton_property_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_count**\ (\ )

El número de elementos para seleccionar.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/disabled** = ``false`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/disabled>`

If ``true``, the item at ``index`` is disabled.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **popup/item_{index}/icon** :ref:`🔗<class_OptionButton_property_popup/item_{index}/icon>`

The icon of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/id:

.. rst-class:: classref-property

:ref:`int<class_int>` **popup/item_{index}/id** = ``0`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/id>`

The ID of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/separator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/separator** = ``false`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/separator>`

If ``true``, the item at ``index`` is a separator.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/text:

.. rst-class:: classref-property

:ref:`String<class_String>` **popup/item_{index}/text** = ``""`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/text>`

The text of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **search_bar_enabled** = ``false`` :ref:`🔗<class_OptionButton_property_search_bar_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_search_bar_enabled**\ (\ )

If ``true``, shows a search bar at the top of the :ref:`PopupMenu<class_PopupMenu>` for filtering items. See :ref:`search_bar_min_item_count<class_OptionButton_property_search_bar_min_item_count>` for dynamically controlling its visibility based on the number of items.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_fuzzy_search_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **search_bar_fuzzy_search_enabled** = ``true`` :ref:`🔗<class_OptionButton_property_search_bar_fuzzy_search_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_fuzzy_search_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_search_bar_fuzzy_search_enabled**\ (\ )

If ``true``, enables fuzzy searching in the :ref:`PopupMenu<class_PopupMenu>` search bar. This allows the search results to include items that almost match the search query, as well items that match the individual characters of the search query, but not in sequence.

Use :ref:`search_bar_fuzzy_search_max_misses<class_OptionButton_property_search_bar_fuzzy_search_max_misses>` to set the maximum number of mismatches allowed in the search results.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_fuzzy_search_max_misses:

.. rst-class:: classref-property

:ref:`int<class_int>` **search_bar_fuzzy_search_max_misses** = ``2`` :ref:`🔗<class_OptionButton_property_search_bar_fuzzy_search_max_misses>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_fuzzy_search_max_misses**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_search_bar_fuzzy_search_max_misses**\ (\ )

Sets the maximum number of mismatches allowed in each search result when fuzzy searching is enabled for the :ref:`PopupMenu<class_PopupMenu>` search bar. Any item with more mismatches will be hidden from the search results.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_min_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **search_bar_min_item_count** = ``0`` :ref:`🔗<class_OptionButton_property_search_bar_min_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_min_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_search_bar_min_item_count**\ (\ )

Sets the minimum number of items required for the :ref:`PopupMenu<class_PopupMenu>` search bar to be visible. :ref:`search_bar_enabled<class_OptionButton_property_search_bar_enabled>` must be ``true`` for this to have any effect.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_selected:

.. rst-class:: classref-property

:ref:`int<class_int>` **selected** = ``-1`` :ref:`🔗<class_OptionButton_property_selected>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_selected**\ (\ )

El índice del artículo actualmente seleccionado, o ``-1`` si no hay ningún artículo seleccionado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OptionButton_method_add_icon_item:

.. rst-class:: classref-method

|void| **add_icon_item**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_icon_item>`

Añade un ítem, con un icono ``texture``, texto ``label`` y (opcionalmente) ``id``. Si no se pasa ``id``, el índice del ítem se usará como ID del mismo. Los nuevos ítems se añaden al final.

\ **Nota:** El ítem se seleccionará si no hay otros ítems.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_item:

.. rst-class:: classref-method

|void| **add_item**\ (\ label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_item>`

Añade un ítem, con texto ``label`` y (opcionalmente) ``id``. Si no se pasa ``id``, el índice del ítem se usará como ID del mismo. Los nuevos ítems se añaden al final.

\ **Nota:** El ítem se seleccionará si no hay otros ítems.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_separator:

.. rst-class:: classref-method

|void| **add_separator**\ (\ text\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_OptionButton_method_add_separator>`

Añade un separador a la lista de ítems. Los separadores ayudan a agrupar los ítems y, opcionalmente, se les puede dar una cabecera ``text``. A un separador también se le asigna un índice, y se añade al final de la lista de ítems.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_OptionButton_method_clear>`

Borra todos los elementos del **OptionButton**.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_auto_translate_mode:

.. rst-class:: classref-method

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_auto_translate_mode>`

Devuelve el modo de traducción automática del ítem en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_icon**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_icon>`

Devuelve el icono del ítem en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_id**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_id>`

Devuelve el ID del ítem en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_index**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_index>`

Devuelve el índice del ítem con el ``id`` dado.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_item_metadata**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_metadata>`

Recupera los metadatos de un elemento. Los metadatos pueden ser de cualquier tipo y pueden utilizarse para almacenar información adicional sobre un elemento, como un ID de string externa.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_text**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_text>`

Devuelve el texto del ítem en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_tooltip**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_tooltip>`

Devuelve el tooltip del ítem en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_popup**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_popup>`

Devuelve el :ref:`PopupMenu<class_PopupMenu>` contenido en este botón.

\ **Advertencia:** Este es un nodo interno requerido, eliminarlo y liberarlo puede causar un fallo. Si deseas ocultarlo o alguno de sus hijos, usa su propiedad :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selectable_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selectable_item**\ (\ from_last\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_OptionButton_method_get_selectable_item>`

Devuelve el índice del primer ítem que no está desactivado o marcado como un separador. Si ``from_last`` es ``true``, los ítems se buscarán en orden inverso.

Devuelve ``-1`` si no se encuentra ningún ítem.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_id**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_id>`

Devuelve el ID del ítem seleccionado, o ``-1`` si no hay ningún ítem seleccionado.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_selected_metadata**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_metadata>`

Obtiene los metadatos del elemento seleccionado. Los metadatos de los elementos pueden establecerse utilizando :ref:`set_item_metadata()<class_OptionButton_method_set_item_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_has_selectable_items:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selectable_items**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_has_selectable_items>`

Devuelve ``true`` si este botón contiene al menos un ítem que no está desactivado o marcado como un separador.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_disabled**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_disabled>`

Devuelve ``true`` si el ítem en el índice ``idx`` está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_separator:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_separator**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_separator>`

Devuelve ``true`` si el ítem en el índice ``idx`` está marcado como un separador.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_remove_item>`

Elimina el ítem en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_select:

.. rst-class:: classref-method

|void| **select**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_select>`

Selecciona un ítem por índice y lo convierte en el ítem actual. Esto funcionará incluso si el ítem está desactivado.

Pasar ``-1`` como índice deselecciona cualquier ítem actualmente seleccionado.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_disable_shortcuts>`

Si es ``true``, los atajos están desactivados y no se pueden utilizar para activar el botón.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_auto_translate_mode:

.. rst-class:: classref-method

|void| **set_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`, mode\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ ) :ref:`🔗<class_OptionButton_method_set_item_auto_translate_mode>`

Establece el modo de traducción automática del ítem en el índice ``idx``.

Los ítems usan :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>` por defecto, que usa el mismo modo de traducción automática que el propio **OptionButton**.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_disabled:

.. rst-class:: classref-method

|void| **set_item_disabled**\ (\ idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_item_disabled>`

Establece si el ítem en el índice ``idx`` está desactivado.

Los ítems desactivados se dibujan de forma diferente en el desplegable y no son seleccionables por el usuario. Si el ítem seleccionado actual se establece como desactivado, permanecerá seleccionado.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_icon:

.. rst-class:: classref-method

|void| **set_item_icon**\ (\ idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_OptionButton_method_set_item_icon>`

Establece el icono del elemento en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_id:

.. rst-class:: classref-method

|void| **set_item_id**\ (\ idx\: :ref:`int<class_int>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_set_item_id>`

Establece el ID del elemento en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_metadata:

.. rst-class:: classref-method

|void| **set_item_metadata**\ (\ idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OptionButton_method_set_item_metadata>`

Establece los metadatos de un elemento. Los metadatos pueden ser de cualquier tipo y pueden utilizarse para almacenar información adicional sobre un elemento, como una string externa con un ID.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_text:

.. rst-class:: classref-method

|void| **set_item_text**\ (\ idx\: :ref:`int<class_int>`, text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_text>`

Establece el texto del elemento en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_tooltip:

.. rst-class:: classref-method

|void| **set_item_tooltip**\ (\ idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_tooltip>`

Establece el tooltip del elemento en el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_show_popup:

.. rst-class:: classref-method

|void| **show_popup**\ (\ ) :ref:`🔗<class_OptionButton_method_show_popup>`

Ajusta la posición y el tamaño del popup para el **OptionButton** y, a continuación, muestra el :ref:`PopupMenu<class_PopupMenu>`. Es preferible utilizar esto en lugar de ``get_popup().popup()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_OptionButton_theme_constant_arrow_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **arrow_margin** = ``4`` :ref:`🔗<class_OptionButton_theme_constant_arrow_margin>`

El espacio horizontal entre el icono de la flecha y el borde derecho del botón.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_constant_modulate_arrow:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **modulate_arrow** = ``0`` :ref:`🔗<class_OptionButton_theme_constant_modulate_arrow>`

Si es diferente a ``0``, el icono de flecha se modulará al color de la fuente.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_icon_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **arrow** :ref:`🔗<class_OptionButton_theme_icon_arrow>`

El icono de la flecha que se dibujará en el extremo derecho del botón.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
