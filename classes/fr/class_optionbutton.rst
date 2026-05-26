:github_url: hide

.. meta::
	:keywords: select, dropdown

.. _class_OptionButton:

OptionButton
============

**Hérite de :** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un bouton qui affiche un menu déroulant avec des options sélectionnables lors qu’appuyé.

.. rst-class:: classref-introduction-group

Description
-----------

**OptionButton** est un type de bouton qui affiche un menu déroulant avec des éléments sélectionnables lors qu’appuyé. L'élément sélectionné devient l'élément "actuel" et s'affiche comme le texte du bouton.

Voir aussi :ref:`BaseButton<class_BaseButton>` qui contient des propriétés et des méthodes communes associées à ce nœud.

\ **Note :** Les identifiants utilisés pour les éléments sont limités à des entiers de 32 bits signés, pas aux 64 bits complets de :ref:`int<class_int>`. Ils ont une plage de ``-2^31`` à ``2^31 - 1``, c'est-à-dire ``-2147483648`` à ``2147483647``.

\ **Note :** Les propriétés :ref:`Button.text<class_Button_property_text>` et :ref:`Button.icon<class_Button_property_icon>` sont définies automatiquement en fonction de l'élément sélectionné. Elles ne devraient pas être changées manuellement.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Méthodes
----------------

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

Propriétés du thème
--------------------------------------

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

Signaux
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

Émis lorsque l'élément actuel a été changé par l'utilisateur. L'index de l'élément sélectionné est passé en tant qu'argument.

\ :ref:`allow_reselect<class_OptionButton_property_allow_reselect>` doit être activé pour ré-sélectionner un article.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OptionButton_property_allow_reselect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_reselect** = ``false`` :ref:`🔗<class_OptionButton_property_allow_reselect>`

.. rst-class:: classref-property-setget

- |void| **set_allow_reselect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_allow_reselect**\ (\ )

Si ``true``, l'élément actuellement sélectionné peut être sélectionné à nouveau.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_fit_to_longest_item:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fit_to_longest_item** = ``true`` :ref:`🔗<class_OptionButton_property_fit_to_longest_item>`

.. rst-class:: classref-property-setget

- |void| **set_fit_to_longest_item**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_fit_to_longest_item**\ (\ )

Si ``true``, la taille minimale sera déterminée par le texte de l'élément le plus long, au lieu de celui de l'élément actuellement sélectionné.

\ **Note :** Pour des raisons de performances, la taille minimale ne se met pas immédiatement à jour lorsque vous ajoutez, supprimez ou modifiez des éléments.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **item_count** = ``0`` :ref:`🔗<class_OptionButton_property_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_count**\ (\ )

Le nombre d'éléments sélectionnables.

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

L'index de l'élément actuellement sélectionné, ou ``-1`` si aucun élément n'est sélectionné.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OptionButton_method_add_icon_item:

.. rst-class:: classref-method

|void| **add_icon_item**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_icon_item>`

Ajoute un élément, avec une icône ``texture``, un texte ``label`` et (en option) un ``id``. Si aucun ``id`` n'est spécifié, l'index de l'élément sera utilisé comme identifiant de l'élément.Les nouveaux éléments sont placés à la fin de la liste.

\ **Note :** L'élément sera sélectionné s'il n'y a pas d'autres éléments.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_item:

.. rst-class:: classref-method

|void| **add_item**\ (\ label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_item>`

Ajoute un élément, avec le texte ``label``] et (en option) un ``id``. Si aucun ``id`` n'est spécifié, l'index de l'élément sera utilisé comme identifiant de l'élément. Les nouveaux éléments sont placés à la fin de la liste.

\ **Note :** L'élément sera sélectionné s'il n'y a pas d'autres éléments.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_separator:

.. rst-class:: classref-method

|void| **add_separator**\ (\ text\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_OptionButton_method_add_separator>`

Ajoute un séparateur à la liste des éléments. Les séparateurs aident à regrouper les éléments, et peuvent en option recevoir un en-tête ``text``. Un séparateur se voit également assigné un index, et est ajouté à la fin de la liste d'éléments.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_OptionButton_method_clear>`

Retire tous les éléments du **OptionButton**.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_auto_translate_mode:

.. rst-class:: classref-method

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_auto_translate_mode>`

Renvoie le mode de traduction automatique de l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_icon**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_icon>`

Renvoie l'icône de l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_id**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_id>`

Renvoie l'identifiant de l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_index**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_index>`

Renvoie l'index de l'élément avec l'identifiant ``id`` donné.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_item_metadata**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_metadata>`

Récupère les méta-données d'un élément. Les méta-données peuvent être de n'importe quel type et peuvent être utilisées pour enregistrer des informations additionnelles sur un élément, comme un identifiant externe.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_text**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_text>`

Renvoie le texte de l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_tooltip**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_tooltip>`

Renvoie l'infobulle de l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_popup**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_popup>`

Renvoie le :ref:`PopupMenu<class_PopupMenu>` contenu dans ce bouton.

\ **Avertissement :** Il s'agit d'un nœud interne nécessaire, le retirer et le libérer peut causer un plantage. Si vous voulez le cacher lui ou l'un de ses enfants, utilisez plutôt la propriété :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selectable_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selectable_item**\ (\ from_last\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_OptionButton_method_get_selectable_item>`

Renvoie l'index du premier élément qui n'est pas désactivé, ou marqué comme séparateur. Si ``from_last`` vaut ``true``, les éléments seront recherchés en ordre inverse.

Renvoie ``-1`` si aucun élément n'est trouvé.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_id**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_id>`

Renvoie l'identifiant de l’élément sélectionné, ou ``-1`` si aucun n'est sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_selected_metadata**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_metadata>`

Obtient les métadonnées de l'élément sélectionné. Les métadonnées peuvent être définies en utilisant :ref:`set_item_metadata()<class_OptionButton_method_set_item_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_has_selectable_items:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selectable_items**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_has_selectable_items>`

Renvoie ``true`` si ce bouton contient au moins un élément qui n'est pas désactivé ou marqué comme séparateur.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_disabled**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_disabled>`

Renvoie ``true`` si l'élément à l'index ``idx`` est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_separator:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_separator**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_separator>`

Renvoie ``true`` si l'élément à l'index ``idx`` est marqué comme séparateur.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_remove_item>`

Retire l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_select:

.. rst-class:: classref-method

|void| **select**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_select>`

Sélectionne un élément par son index et en fait l'élément actuel. Cela fonctionnera même si l'élément est désactivé.

Passer ``-1`` en index désélectionne tout élément actuellement sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_disable_shortcuts>`

Si ``true``, les raccourcis sont désactivés et ne peuvent pas être utilisés pour déclencher le bouton.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_auto_translate_mode:

.. rst-class:: classref-method

|void| **set_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`, mode\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ ) :ref:`🔗<class_OptionButton_method_set_item_auto_translate_mode>`

Définit le mode de traduction automatique de l'élément à l'index ``idx``.

Les éléments utilisent :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>` par défaut, qui utilise le même mode de traduction automatique que l'**OptionButton** lui-même.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_disabled:

.. rst-class:: classref-method

|void| **set_item_disabled**\ (\ idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_item_disabled>`

Définit si l'élément à l'index ``idx`` est désactivé.

Les éléments désactivés sont dessinés différemment dans le menu déroulant et ne peuvent pas être sélectionnés par l'utilisateur. Si l'élément sélectionné actuel est défini comme désactivé, il restera sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_icon:

.. rst-class:: classref-method

|void| **set_item_icon**\ (\ idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_OptionButton_method_set_item_icon>`

Définit l'icône pour l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_id:

.. rst-class:: classref-method

|void| **set_item_id**\ (\ idx\: :ref:`int<class_int>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_set_item_id>`

Définit l'identifiant pour l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_metadata:

.. rst-class:: classref-method

|void| **set_item_metadata**\ (\ idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OptionButton_method_set_item_metadata>`

Définit les métadonnées d'un élément. Les métadonnées peuvent être de n'importe quel type et peuvent être utilisées pour stocker des informations supplémentaires sur un élément, comme un identifiant de chaîne externe.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_text:

.. rst-class:: classref-method

|void| **set_item_text**\ (\ idx\: :ref:`int<class_int>`, text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_text>`

Définit le texte pour l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_tooltip:

.. rst-class:: classref-method

|void| **set_item_tooltip**\ (\ idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_tooltip>`

Définit l'infobulle pour l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_show_popup:

.. rst-class:: classref-method

|void| **show_popup**\ (\ ) :ref:`🔗<class_OptionButton_method_show_popup>`

Ajuste la position et la taille de la popup pour l'**OptionButton**, puis affiche le :ref:`PopupMenu<class_PopupMenu>`. Préférez ceci plutôt qu'utiliser ``get_popup().popup()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_OptionButton_theme_constant_arrow_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **arrow_margin** = ``4`` :ref:`🔗<class_OptionButton_theme_constant_arrow_margin>`

L'espace horizontal entre l'icône de la flèche et le bord droit du bouton.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_constant_modulate_arrow:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **modulate_arrow** = ``0`` :ref:`🔗<class_OptionButton_theme_constant_modulate_arrow>`

Si différent de ``0``, l'icône de la flèche sera modulée à la couleur de la police.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_icon_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **arrow** :ref:`🔗<class_OptionButton_theme_icon_arrow>`

L'icône de la flèche qui est affichée au bord droit du bouton.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
