:github_url: hide

.. meta::
	:keywords: select, dropdown

.. _class_OptionButton:

OptionButton
============

**Наследует:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Кнопка, при нажатии на которую открывается раскрывающийся список с вариантами выбора.

.. rst-class:: classref-introduction-group

Описание
----------------

**OptionButton** — это тип кнопки, при нажатии на которую открывается раскрывающийся список с доступными для выбора элементами. Выбранный элемент становится текущим и отображается в виде текста кнопки.

См. также :ref:`BaseButton<class_BaseButton>`, содержащий общие свойства и методы, связанные с этим узлом.

\ **Примечание:** Идентификаторы элементов ограничены 32-битными целыми числами со знаком, а не полными 64 битами :ref:`int<class_int>`. Диапазон значений — от ``-2^31`` до ``2^31 - 1``, то есть от ``-2147483648`` до ``2147483647``.

\ **Примечание:** Свойства :ref:`Button.text<class_Button_property_text>` и :ref:`Button.icon<class_Button_property_icon>` устанавливаются автоматически в зависимости от выбранного элемента. Их не следует изменять вручную.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Свойства темы
--------------------------

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

Сигналы
--------------

.. _class_OptionButton_signal_item_focused:

.. rst-class:: classref-signal

**item_focused**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_signal_item_focused>`

Генерируется, когда пользователь переходит к элементу, используя действия ввода :ref:`ProjectSettings.input/ui_up<class_ProjectSettings_property_input/ui_up>` или :ref:`ProjectSettings.input/ui_down<class_ProjectSettings_property_input/ui_down>`. В качестве аргумента передается индекс элемента, на котором был установлен фокус.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_signal_item_selected:

.. rst-class:: classref-signal

**item_selected**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_signal_item_selected>`

Вызывается, когда текущий элемент был изменен пользователем. Индекс выбранного элемента передается как аргумент.

\ :ref:`allow_reselect<class_OptionButton_property_allow_reselect>` должен быть включен для повторного выбора элемента.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OptionButton_property_allow_reselect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_reselect** = ``false`` :ref:`🔗<class_OptionButton_property_allow_reselect>`

.. rst-class:: classref-property-setget

- |void| **set_allow_reselect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_allow_reselect**\ (\ )

Если ``true``, текущий выбранный элемент можно выбрать снова.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_fit_to_longest_item:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fit_to_longest_item** = ``true`` :ref:`🔗<class_OptionButton_property_fit_to_longest_item>`

.. rst-class:: classref-property-setget

- |void| **set_fit_to_longest_item**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_fit_to_longest_item**\ (\ )

Если ``true``, минимальный размер будет определяться текстом самого длинного элемента, а не текущего выбранного.

\ **Примечание:** Из соображений производительности минимальный размер не обновляется немедленно при добавлении, удалении или изменении элементов.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **item_count** = ``0`` :ref:`🔗<class_OptionButton_property_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_count**\ (\ )

Количество элементов для выбора.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/disabled** = ``false`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/disabled>`

Если ``true``, элемент по ``index`` отключен.

\ **Примечание:** ``index`` — это значение в диапазоне ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **popup/item_{index}/icon** :ref:`🔗<class_OptionButton_property_popup/item_{index}/icon>`

Значок элемента по адресу ``index``.

\ **Примечание:** ``index`` — это значение в диапазоне ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/id:

.. rst-class:: classref-property

:ref:`int<class_int>` **popup/item_{index}/id** = ``0`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/id>`

ID Идентификатор элемента по адресу ``index``.

\ **Примечание:** ``index`` — это значение в диапазоне от ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/separator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/separator** = ``false`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/separator>`

Если ``true``, то элемент по адресу ``index`` является разделителем.

\ **Примечание:** ``index`` — это значение в диапазоне ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_popup/item_{index}/text:

.. rst-class:: classref-property

:ref:`String<class_String>` **popup/item_{index}/text** = ``""`` :ref:`🔗<class_OptionButton_property_popup/item_{index}/text>`

Текст элемента по адресу ``index``.

\ **Примечание:** ``index`` — это значение в диапазоне ``0 .. item_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **search_bar_enabled** = ``false`` :ref:`🔗<class_OptionButton_property_search_bar_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_search_bar_enabled**\ (\ )

Если ``true``, в верхней части :ref:`PopupMenu<class_PopupMenu>` отображается строка поиска для фильтрации элементов. См. :ref:`search_bar_min_item_count<class_OptionButton_property_search_bar_min_item_count>` для динамического управления ее видимостью в зависимости от количества элементов.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_fuzzy_search_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **search_bar_fuzzy_search_enabled** = ``true`` :ref:`🔗<class_OptionButton_property_search_bar_fuzzy_search_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_fuzzy_search_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_search_bar_fuzzy_search_enabled**\ (\ )

Если ``true``, включается нечеткий поиск в строке поиска :ref:`PopupMenu<class_PopupMenu>`. Это позволяет включать в результаты поиска элементы, которые почти соответствуют поисковому запросу, а также элементы, которые соответствуют отдельным символам поискового запроса, но не по порядку.

Используйте :ref:`search_bar_fuzzy_search_max_misses<class_OptionButton_property_search_bar_fuzzy_search_max_misses>`, чтобы установить максимальное количество несовпадений, допустимых в результатах поиска.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_fuzzy_search_max_misses:

.. rst-class:: classref-property

:ref:`int<class_int>` **search_bar_fuzzy_search_max_misses** = ``2`` :ref:`🔗<class_OptionButton_property_search_bar_fuzzy_search_max_misses>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_fuzzy_search_max_misses**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_search_bar_fuzzy_search_max_misses**\ (\ )

Устанавливает максимальное количество несовпадений, допустимых в каждом результате поиска, когда для поисковой строки :ref:`PopupMenu<class_PopupMenu>` включен нечеткий поиск. Любой элемент с большим количеством несовпадений будет скрыт из результатов поиска.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_search_bar_min_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **search_bar_min_item_count** = ``0`` :ref:`🔗<class_OptionButton_property_search_bar_min_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_search_bar_min_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_search_bar_min_item_count**\ (\ )

Устанавливает минимальное количество элементов, необходимое для отображения поисковой строки :ref:`PopupMenu<class_PopupMenu>`. Для того чтобы это вступило в силу, параметр :ref:`search_bar_enabled<class_OptionButton_property_search_bar_enabled>` должен быть ``true``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_selected:

.. rst-class:: classref-property

:ref:`int<class_int>` **selected** = ``-1`` :ref:`🔗<class_OptionButton_property_selected>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_selected**\ (\ )

Индекс текущего выбранного элемента или ``-1`` , если элемент не выбран.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OptionButton_method_add_icon_item:

.. rst-class:: classref-method

|void| **add_icon_item**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_icon_item>`

Добавляет элемент с иконкой ``texture``, текстом ``label`` и (необязательно) ``id``. Если ``id`` не передан, в качестве идентификатора элемента будет использоваться индекс элемента. Новые элементы добавляются в конец.

\ **Примечание:** Элемент будет выбран, если других элементов нет.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_item:

.. rst-class:: classref-method

|void| **add_item**\ (\ label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_item>`

Добавляет элемент с текстом ``label`` и (необязательно) ``id``. Если ``id`` не передан, в качестве идентификатора элемента будет использоваться индекс элемента. Новые элементы добавляются в конец.

\ **Примечание:** Элемент будет выбран, если других элементов нет.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_separator:

.. rst-class:: classref-method

|void| **add_separator**\ (\ text\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_OptionButton_method_add_separator>`

Добавляет разделитель в список элементов. Разделители помогают группировать элементы и могут быть дополнительно заданы заголовком ``text``. Разделителю также назначается индекс, и он добавляется в конец списка элементов.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_OptionButton_method_clear>`

Очищает все элементы в **OptionButton**.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_auto_translate_mode:

.. rst-class:: classref-method

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_auto_translate_mode>`

Возвращает режим автоматического перевода элемента по индексу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_icon**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_icon>`

Возвращает значок элемента по индексу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_id**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_id>`

Возвращает идентификатор элемента по индексу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_index**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_index>`

Возвращает индекс элемента с указанным ``id``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_item_metadata**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_metadata>`

Извлекает метаданные элемента. Метаданные могут быть любого типа и могут использоваться для хранения дополнительной информации об элементе, например внешнего строкового идентификатора.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_text**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_text>`

Возвращает текст элемента по индексу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_tooltip**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_tooltip>`

Возвращает подсказку элемента с индексом ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_popup**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_popup>`

Возвращает :ref:`PopupMenu<class_PopupMenu>`, содержащийся в этой кнопке.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selectable_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selectable_item**\ (\ from_last\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_OptionButton_method_get_selectable_item>`

Возвращает индекс первого элемента, который не отключен или не помечен как разделитель. Если ``from_last`` равен ``true``, элементы будут искаться в обратном порядке.

Возвращает ``-1``, если элемент не найден.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_id**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_id>`

Возвращает идентификатор выбранного элемента или ``-1``, если ни один элемент не выбран.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_selected_metadata**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_metadata>`

Получает метаданные выбранного элемента. Метаданные для элементов можно задать с помощью :ref:`set_item_metadata()<class_OptionButton_method_set_item_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_has_selectable_items:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selectable_items**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_has_selectable_items>`

Возвращает ``true``, если эта кнопка содержит хотя бы один элемент, который не отключен или не помечен как разделитель.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_disabled**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_disabled>`

Возвращает ``true``, если элемент с индексом ``idx`` отключен.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_separator:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_separator**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_separator>`

Возвращает ``true``, если элемент с индексом ``idx`` помечен как разделитель.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_remove_item>`

Удаляет элемент с индексом ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_select:

.. rst-class:: classref-method

|void| **select**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_select>`

Выбирает элемент по индексу и делает его текущим элементом. Это будет работать, даже если элемент отключен.

Передача ``-1`` в качестве индекса отменяет выбор любого выбранного в данный момент элемента.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_disable_shortcuts>`

Если ``true``, сочетания клавиш отключены и не могут использоваться для активации кнопки.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_auto_translate_mode:

.. rst-class:: classref-method

|void| **set_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`, mode\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ ) :ref:`🔗<class_OptionButton_method_set_item_auto_translate_mode>`

Устанавливает режим автоматического перевода элемента с индексом ``idx``.

Элементы используют :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>` по умолчанию, который использует тот же режим автоматического перевода, что и сам **OptionButton**.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_disabled:

.. rst-class:: classref-method

|void| **set_item_disabled**\ (\ idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_item_disabled>`

Устанавливает, отключен ли элемент с индексом ``idx``.

Отключенные элементы отображаются в раскрывающемся списке по-другому и не могут быть выбраны пользователем. Если текущий выбранный элемент установлен как отключенный, он останется выбранным.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_icon:

.. rst-class:: classref-method

|void| **set_item_icon**\ (\ idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_OptionButton_method_set_item_icon>`

Устанавливает значок элемента по индексу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_id:

.. rst-class:: classref-method

|void| **set_item_id**\ (\ idx\: :ref:`int<class_int>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_set_item_id>`

Устанавливает идентификатор (ID) элемента по индексу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_metadata:

.. rst-class:: classref-method

|void| **set_item_metadata**\ (\ idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OptionButton_method_set_item_metadata>`

Устанавливает метаданные элемента. Метаданные могут быть любого типа и могут использоваться для хранения дополнительной информации об элементе, например внешнего строкового идентификатора.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_text:

.. rst-class:: classref-method

|void| **set_item_text**\ (\ idx\: :ref:`int<class_int>`, text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_text>`

Устанавливает текст элемента по индексу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_tooltip:

.. rst-class:: classref-method

|void| **set_item_tooltip**\ (\ idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_tooltip>`

Устанавливает подсказку для элемента с индексом ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_show_popup:

.. rst-class:: classref-method

|void| **show_popup**\ (\ ) :ref:`🔗<class_OptionButton_method_show_popup>`

Настраивает положение и размер всплывающего окна для **OptionButton**, затем показывает :ref:`PopupMenu<class_PopupMenu>`. Предпочтительнее использовать этот метод, чем ``get_popup().popup()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_OptionButton_theme_constant_arrow_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **arrow_margin** = ``4`` :ref:`🔗<class_OptionButton_theme_constant_arrow_margin>`

Горизонтальное пространство между значком стрелки и правым краем кнопки.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_constant_modulate_arrow:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **modulate_arrow** = ``0`` :ref:`🔗<class_OptionButton_theme_constant_modulate_arrow>`

Если значение отличается от ``0``, значок стрелки будет изменен в соответствии с цветом шрифта.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_icon_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **arrow** :ref:`🔗<class_OptionButton_theme_icon_arrow>`

Значок стрелки, который будет нарисован на правом конце кнопки.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
