:github_url: hide

.. meta::
	:keywords: select, dropdown

.. _class_OptionButton:

OptionButton
============

**Eredita:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un pulsante che, se premuto, apre un menu a tendina con opzioni selezionabili.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**OptionButton** è un tipo di pulsante che apre un menu a tendina con voci selezionabili quando viene premuto. La voce selezionata diventa la voce "attuale" e viene visualizzata come testo del pulsante.

Vedi anche :ref:`BaseButton<class_BaseButton>` che contiene proprietà e metodi comuni associati a questo nodo.

\ **Nota:** Gli ID utilizzati per le voci sono interi a 32 bit, non a 64 bit pieni di :ref:`int<class_int>`. Questi hanno un intervallo di ``-2^32`` a ``2^32 - 1``, ovvero, ``-2147483648`` a ``2147483647``.

\ **Nota:** Le proprietà :ref:`Button.text<class_Button_property_text>` e :ref:`Button.icon<class_Button_property_icon>` sono impostate automaticamente in base alla voce selezionata. Non si dovrebbero cambiare manualmente.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Proprietà del tema
------------------------------------

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

Segnali
--------------

.. _class_OptionButton_signal_item_focused:

.. rst-class:: classref-signal

**item_focused**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_signal_item_focused>`

Emesso quando l'utente passa a una voce utilizzando le azioni di input :ref:`ProjectSettings.input/ui_up<class_ProjectSettings_property_input/ui_up>` o :ref:`ProjectSettings.input/ui_down<class_ProjectSettings_property_input/ui_down>`. L'indice della voce selezionata viene passata come argomento.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_signal_item_selected:

.. rst-class:: classref-signal

**item_selected**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_signal_item_selected>`

Emesso quando la voce attuale è stata cambiata dall'utente. L'indice della voce selezionata viene passato come argomento.

\ :ref:`allow_reselect<class_OptionButton_property_allow_reselect>` deve essere abilitato per selezionare la stessa voce nuovamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OptionButton_property_allow_reselect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_reselect** = ``false`` :ref:`🔗<class_OptionButton_property_allow_reselect>`

.. rst-class:: classref-property-setget

- |void| **set_allow_reselect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_allow_reselect**\ (\ )

Se ``true``, la voce attualmente selezionata può essere selezionata nuovamente.

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

Il numero di voci tra cui selezionare.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/disabled** = ``false`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/disabled>`

Se ``true``, la voce all'indice ``index`` è disabilitata.

\ **Note:** ``index`` è un valore compreso nell'intervallo ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **popup/item_{index}/icon** :ref:`🔗<class_OptionButton_property_popup/item_{index}/icon>`

L'icona della voce all'indice ``index``.

\ **Note:** ``index`` è un valore compreso nell'intervallo ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/id:

.. rst-class:: classref-property

:ref:`int<class_int>` **popup/item_{index}/id** = ``0`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/id>`

L'ID della voce all'indice ``index``.

\ **Note:** ``index`` è un valore compreso nell'intervallo ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/separator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/separator** = ``false`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/separator>`

Se ``true``, la voce all'indice ``index`` è un separatore.

\ **Note:** ``index`` è un valore compreso nell'intervallo ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/text:

.. rst-class:: classref-property

:ref:`String<class_String>` **popup/item_{index}/text** = ``""`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/text>`

Il testo della voce all'indice ``index``.

\ **Note:** ``index`` è un valore compreso nell'intervallo ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **search_bar_enabled** = ``false`` :ref:`🔗<class_OptionButton_property_search_bar_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_search_bar_enabled**\ (\ )

Se ``true``, mostra una barra di ricerca in cima al :ref:`PopupMenu<class_PopupMenu>` per filtrare le voci. Vedi :ref:`search_bar_min_item_count<class_OptionButton_property_search_bar_min_item_count>` per controllare dinamicamente la sua visibilità in base al numero di voci.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_fuzzy_search_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **search_bar_fuzzy_search_enabled** = ``true`` :ref:`🔗<class_OptionButton_property_search_bar_fuzzy_search_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_fuzzy_search_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_search_bar_fuzzy_search_enabled**\ (\ )

Se ``true``, abilita la ricerca approssimata nella barra di ricerca del :ref:`PopupMenu<class_PopupMenu>`. Ciò consente di includere nei risultati di ricerca voci che quasi corrispondono alla query di ricerca, nonché voci che corrispondono ai singoli caratteri della query di ricerca, ma non in sequenza.

Usa :ref:`search_bar_fuzzy_search_max_misses<class_OptionButton_property_search_bar_fuzzy_search_max_misses>` per impostare il numero massimo di corrispondenze errate consentite nei risultati di ricerca.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_fuzzy_search_max_misses:

.. rst-class:: classref-property

:ref:`int<class_int>` **search_bar_fuzzy_search_max_misses** = ``2`` :ref:`🔗<class_OptionButton_property_search_bar_fuzzy_search_max_misses>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_fuzzy_search_max_misses**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_search_bar_fuzzy_search_max_misses**\ (\ )

Imposta il numero massimo di corrispondenze errate consentite in ciascun risultato di ricerca quando la ricerca approssimata è abilitata per la barra di ricerca del :ref:`PopupMenu<class_PopupMenu>`. Qualsiasi voce con un numero di corrispondenze errate maggiore sarà nascosto dai risultati di ricerca.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_min_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **search_bar_min_item_count** = ``0`` :ref:`🔗<class_OptionButton_property_search_bar_min_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_min_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_search_bar_min_item_count**\ (\ )

Imposta il numero minimo di voci richieste affinché la barra di ricerca del :ref:`PopupMenu<class_PopupMenu>` sia visibile. :ref:`search_bar_enabled<class_OptionButton_property_search_bar_enabled>` deve essere ``false`` affinché questo abbia effetto. Le voci separatori non contano.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_selected:

.. rst-class:: classref-property

:ref:`int<class_int>` **selected** = ``-1`` :ref:`🔗<class_OptionButton_property_selected>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_selected**\ (\ )

Indice della voce attualmente selezionata, oppure ``-1`` se nessuna voce è selezionata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OptionButton_method_add_icon_item:

.. rst-class:: classref-method

|void| **add_icon_item**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_icon_item>`

Aggiunge una voce, con un'icona ``texture``, testo ``label`` e (facoltativamente) ``id``. Se nessun ``id`` viene passato, l'indice della voce sarà utilizzato come ID della voce. Le nuove voci vengono aggiunte alla fine.

\ **Nota:** La voce verrà selezionata se non ci sono altre voci.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_item:

.. rst-class:: classref-method

|void| **add_item**\ (\ label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_item>`

Aggiunge una voce, con testo ``label`` e (facoltativamente) ``id``. Se nessun ``id`` viene passato, l'indice della voce sarà utilizzato come ID della voce. Le nuove voci vengono aggiunte alla fine.

\ **Nota:** La voce verrà selezionata se non ci sono altre voci.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_separator:

.. rst-class:: classref-method

|void| **add_separator**\ (\ text\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_OptionButton_method_add_separator>`

Aggiunge un separatore all'elenco delle voci. I separatori aiutano a raggruppare le voci e possono essere facoltativamente dotati di un'intestazione ``text``. A un separatore è anche assegnato un indice e viene aggiunto alla fine dell'elenco delle voci.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_OptionButton_method_clear>`

Cancella tutte le voci nell'**OptionButton**.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_auto_translate_mode:

.. rst-class:: classref-method

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_auto_translate_mode>`

Restituisce la modalità di traduzione automatica della voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_icon**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_icon>`

Restituisce l'icona della voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_id**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_id>`

Restituisce l'ID della voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_index**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_index>`

Restituisce l'indice della voce con l'``id`` specificato.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_item_metadata**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_metadata>`

Recupera i metadati di una voce. I metadati possono essere di qualunque tipo e possono essere utilizzati per memorizzare ulteriori informazioni su una voce, come un ID esterno.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_text**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_text>`

Restituisce il testo della voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_tooltip**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_tooltip>`

Restituisce il tooltip della voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_popup**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_popup>`

Restituisce il :ref:`PopupMenu<class_PopupMenu>` contenuto in questo pulsante.

\ **Warning:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un arresto anomalo. Se desideri nasconderlo o nascondere uno dei suoi figli, usa la loro proprietà :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selectable_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selectable_item**\ (\ from_last\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_OptionButton_method_get_selectable_item>`

Restituisce l'indice della prima voce che non è disabilitata o contrassegnata come separatore. Se ``from_last`` è ``true``, le voci saranno cercate in ordine inverso.

Restituisce ``-1`` se nessuna voce viene trovata.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_id**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_id>`

Restituisce l'ID della voce selezionata oppure ``-1`` se nessuna voce è selezionata.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_selected_metadata**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_metadata>`

Ottiene i metadati della voce selezionata. I metadati per le voci possono essere impostati tramite :ref:`set_item_metadata()<class_OptionButton_method_set_item_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_has_selectable_items:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selectable_items**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_has_selectable_items>`

Restituisce ``true`` se questo pulsante contiene almeno una voce che non è disabilitata, o contrassegnata come separatore.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_disabled**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_disabled>`

Restituisce ``true`` se la voce all'indice ``idx`` è disabilitata.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_separator:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_separator**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_separator>`

Restituisce ``true`` se la voce all'indice ``idx`` è contrassegnata come separatore.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_remove_item>`

Rimuove la voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_select:

.. rst-class:: classref-method

|void| **select**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_select>`

Seleziona una voce per indice e la rende la voce attuale. Funzionerà anche se la voce è disabilitata.

Passando ``-1`` come indice deseleziona qualunque voce attualmente selezionata.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_disable_shortcuts>`

Se ``true``, le scorciatoie sono disabilitate e non possono essere utilizzate per attivare il pulsante.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_auto_translate_mode:

.. rst-class:: classref-method

|void| **set_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`, mode\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ ) :ref:`🔗<class_OptionButton_method_set_item_auto_translate_mode>`

Imposta la modalità di traduzione automatica della voce all'indice ``idx``.

Le voci utilizzano :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>` come predefinito, la quale utilizza la stessa modalità di traduzione automatica dell'**OptionButton** stesso.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_disabled:

.. rst-class:: classref-method

|void| **set_item_disabled**\ (\ idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_item_disabled>`

Imposta se la voce all'indice ``idx`` è disabilitata.

Le voci disabilitate sono disegnate in modo diverso nel menu a tendina e non sono selezionabili dall'utente. Se la voce attualmente selezionata è viene disabilitata, rimarrà comunque selezionata.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_icon:

.. rst-class:: classref-method

|void| **set_item_icon**\ (\ idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_OptionButton_method_set_item_icon>`

Imposta l'icona della voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_id:

.. rst-class:: classref-method

|void| **set_item_id**\ (\ idx\: :ref:`int<class_int>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_set_item_id>`

Imposta l'ID della voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_metadata:

.. rst-class:: classref-method

|void| **set_item_metadata**\ (\ idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OptionButton_method_set_item_metadata>`

Imposta i metadati di una voce. I metadati possono essere di qualunque tipo e possono essere utilizzati per memorizzare ulteriori informazioni su una voce, come un ID esterno.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_text:

.. rst-class:: classref-method

|void| **set_item_text**\ (\ idx\: :ref:`int<class_int>`, text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_text>`

Imposta il testo della voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_tooltip:

.. rst-class:: classref-method

|void| **set_item_tooltip**\ (\ idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_tooltip>`

Imposta il tooltip della voce all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_show_popup:

.. rst-class:: classref-method

|void| **show_popup**\ (\ ) :ref:`🔗<class_OptionButton_method_show_popup>`

Regola la posizione e le dimensioni di popup per **OptionButton**, poi mostra il :ref:`PopupMenu<class_PopupMenu>`. Preferisci usare questo metodo piuttosto che ``get_popup().popup()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_OptionButton_theme_constant_arrow_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **arrow_margin** = ``4`` :ref:`🔗<class_OptionButton_theme_constant_arrow_margin>`

Lo spazio orizzontale tra l'icona della freccia e il bordo destro del pulsante.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_constant_modulate_arrow:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **modulate_arrow** = ``0`` :ref:`🔗<class_OptionButton_theme_constant_modulate_arrow>`

Se diverso da ``0``, l'icona della freccia sarà modulata in base al colore del font.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_icon_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **arrow** :ref:`🔗<class_OptionButton_theme_icon_arrow>`

L'icona della freccia da disegnare all'estremità destra del pulsante.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
