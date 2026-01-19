:github_url: hide

.. _class_TranslationServer:

TranslationServer
=================

**Наследует:** :ref:`Object<class_Object>`

Сервер, отвечающий за языковые переводы.

.. rst-class:: classref-introduction-group

Описание
----------------

Сервер переводов — это API-бэкэнд, который управляет всеми языковыми переводами.

Переводы хранятся в :ref:`TranslationDomain<class_TranslationDomain>`, к которым можно получить доступ по имени. Наиболее часто используемый домен перевода — это основной домен перевода. Он всегда существует и к нему можно получить доступ с помощью пустого :ref:`StringName<class_StringName>`. Сервер переводов предоставляет методы-обертки для прямого доступа к основному домену перевода без необходимости предварительного извлечения домена перевода. Пользовательские домены перевода в основном предназначены для расширенных применений, таких как плагины редактора. Имена, начинающиеся с ``godot.``, зарезервированы для внутренних компонентов движка.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Интернационализация игр <../tutorials/i18n/internationalizing_games>`

- :doc:`Локали <../tutorials/i18n/locales>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`pseudolocalization_enabled<class_TranslationServer_property_pseudolocalization_enabled>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`add_translation<class_TranslationServer_method_add_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear<class_TranslationServer_method_clear>`\ (\ )                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                              | :ref:`compare_locales<class_TranslationServer_method_compare_locales>`\ (\ locale_a\: :ref:`String<class_String>`, locale_b\: :ref:`String<class_String>`\ ) |const|                                                                                                        |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] | :ref:`find_translations<class_TranslationServer_method_find_translations>`\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const|                                                                                                             |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`format_number<class_TranslationServer_method_format_number>`\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                  | :ref:`get_all_countries<class_TranslationServer_method_get_all_countries>`\ (\ ) |const|                                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                  | :ref:`get_all_languages<class_TranslationServer_method_get_all_languages>`\ (\ ) |const|                                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                  | :ref:`get_all_scripts<class_TranslationServer_method_get_all_scripts>`\ (\ ) |const|                                                                                                                                                                                        |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_country_name<class_TranslationServer_method_get_country_name>`\ (\ country\: :ref:`String<class_String>`\ ) |const|                                                                                                                                               |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_language_name<class_TranslationServer_method_get_language_name>`\ (\ language\: :ref:`String<class_String>`\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                  | :ref:`get_loaded_locales<class_TranslationServer_method_get_loaded_locales>`\ (\ ) |const|                                                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_locale<class_TranslationServer_method_get_locale>`\ (\ ) |const|                                                                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_locale_name<class_TranslationServer_method_get_locale_name>`\ (\ locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TranslationDomain<class_TranslationDomain>`                  | :ref:`get_or_add_domain<class_TranslationServer_method_get_or_add_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ )                                                                                                                                              |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_percent_sign<class_TranslationServer_method_get_percent_sign>`\ (\ locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_plural_rules<class_TranslationServer_method_get_plural_rules>`\ (\ locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_script_name<class_TranslationServer_method_get_script_name>`\ (\ script\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_tool_locale<class_TranslationServer_method_get_tool_locale>`\ (\ )                                                                                                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Translation<class_Translation>`                              | :ref:`get_translation_object<class_TranslationServer_method_get_translation_object>`\ (\ locale\: :ref:`String<class_String>`\ )                                                                                                                                            |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] | :ref:`get_translations<class_TranslationServer_method_get_translations>`\ (\ ) |const|                                                                                                                                                                                      |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_domain<class_TranslationServer_method_has_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_translation<class_TranslationServer_method_has_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const|                                                                                                                                   |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_translation_for_locale<class_TranslationServer_method_has_translation_for_locale>`\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const|                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`parse_number<class_TranslationServer_method_parse_number>`\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`pseudolocalize<class_TranslationServer_method_pseudolocalize>`\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`reload_pseudolocalization<class_TranslationServer_method_reload_pseudolocalization>`\ (\ )                                                                                                                                                                            |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`remove_domain<class_TranslationServer_method_remove_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                      |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`remove_translation<class_TranslationServer_method_remove_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                     |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_locale<class_TranslationServer_method_set_locale>`\ (\ locale\: :ref:`String<class_String>`\ )                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`standardize_locale<class_TranslationServer_method_standardize_locale>`\ (\ locale\: :ref:`String<class_String>`, add_defaults\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                            |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`translate<class_TranslationServer_method_translate>`\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`translate_plural<class_TranslationServer_method_translate_plural>`\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TranslationServer_property_pseudolocalization_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_enabled** = ``false`` :ref:`🔗<class_TranslationServer_property_pseudolocalization_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_enabled**\ (\ )

Если ``true``, включает использование псевдолокализации на основном домене перевода. Подробности см. в :ref:`ProjectSettings.internationalization/pseudolocalization/use_pseudolocalization<class_ProjectSettings_property_internationalization/pseudolocalization/use_pseudolocalization>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TranslationServer_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_add_translation>`

Добавляет перевод в основной домен перевода.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationServer_method_clear>`

Удаляет все переводы из основного домена перевода.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_compare_locales:

.. rst-class:: classref-method

:ref:`int<class_int>` **compare_locales**\ (\ locale_a\: :ref:`String<class_String>`, locale_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_compare_locales>`

Сравнивает две локализации и возвращает оценку сходства между ``0`` (нет совпадения) и ``10`` (полное совпадение).

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_find_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **find_translations**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationServer_method_find_translations>`

Возвращает экземпляры :ref:`Translation<class_Translation>` в основной области перевода, которые соответствуют ``locale`` (см. :ref:`compare_locales()<class_TranslationServer_method_compare_locales>`). Если ``exact`` равно ``true``, будут возвращены только экземпляры, локаль которых точно совпадает с ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_format_number:

.. rst-class:: classref-method

:ref:`String<class_String>` **format_number**\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_format_number>`

Преобразует число из западного арабского (0..9) в систему счисления, используемую в заданной ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_countries:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_countries**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_countries>`

Возвращает массив известных кодов стран.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_languages:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_languages**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_languages>`

Возвращает массив известных кодов языков.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_scripts:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_scripts**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_scripts>`

Возвращает массив известных кодов скриптов.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_country_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_country_name**\ (\ country\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_country_name>`

Возвращает читаемое название страны для кода ``country``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_language_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_language_name**\ (\ language\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_language_name>`

Возвращает читаемое название языка для кода ``language``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_loaded_locales:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_loaded_locales**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_loaded_locales>`

Возвращает массив всех загруженных локалей проекта.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_locale>`

Возвращает текущую локаль проекта.

См. также :ref:`OS.get_locale()<class_OS_method_get_locale>` и :ref:`OF.get_locale language()<class_OF_method_get_locale language>` для запроса локали пользовательской системы.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_locale_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale_name**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_locale_name>`

Возвращает язык локали и его вариант (например, ``"en_US"`` вернет ``"Английский (США)"``).

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_or_add_domain:

.. rst-class:: classref-method

:ref:`TranslationDomain<class_TranslationDomain>` **get_or_add_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TranslationServer_method_get_or_add_domain>`

Возвращает домен перевода с указанным именем. Пустой домен перевода будет создан и добавлен, если он не существует.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_percent_sign:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_percent_sign**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_percent_sign>`

Возвращает знак процента, используемый в заданной локали ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_plural_rules:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_plural_rules**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_plural_rules>`

Возвращает правила множественного числа по умолчанию для ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_script_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_script_name**\ (\ script\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_script_name>`

Возвращает читаемое имя скрипта для кода ``script``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_tool_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tool_locale**\ (\ ) :ref:`🔗<class_TranslationServer_method_get_tool_locale>`

Возвращает текущую локаль редактора.

\ **Примечание:** При вызове из экспортированного проекта возвращает то же значение, что и :ref:`get_locale()<class_TranslationServer_method_get_locale>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_translation_object:

.. rst-class:: classref-method

:ref:`Translation<class_Translation>` **get_translation_object**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationServer_method_get_translation_object>`

**Устарело:** Use :ref:`find_translations()<class_TranslationServer_method_find_translations>` instead.

Возвращает экземпляр :ref:`Translation<class_Translation>`, который лучше всего соответствует ``locale`` в основном домене перевода. Возвращает ``null``, если совпадений нет.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **get_translations**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_translations>`

Возвращает все доступные экземпляры :ref:`Translation<class_Translation>` в основной области перевода, добавленные методом :ref:`add_translation()<class_TranslationServer_method_add_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_domain:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_domain>`

Возвращает ``true``, если домен перевода с указанным именем существует.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_translation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_translation>`

Возвращает ``true``, если основной домен перевода содержит заданный ``translation``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_translation_for_locale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation_for_locale**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_translation_for_locale>`

Возвращает ``true``, если в основной области перевода есть экземпляры :ref:`Translation<class_Translation>`, соответствующие ``locale`` (см. :ref:`compare_locales()<class_TranslationServer_method_compare_locales>`). Если ``exact`` равно ``true``, рассматриваются только экземпляры, локаль которых точно равна ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_parse_number:

.. rst-class:: classref-method

:ref:`String<class_String>` **parse_number**\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_parse_number>`

Преобразует ``number`` из системы счисления, используемой в заданной ``locale``, в западный арабский язык (0..9).

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_pseudolocalize>`

Возвращает псевдолокализованную строку на основе переданного ``message``.

\ **Примечание:** Этот метод всегда использует основной домен перевода.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_reload_pseudolocalization:

.. rst-class:: classref-method

|void| **reload_pseudolocalization**\ (\ ) :ref:`🔗<class_TranslationServer_method_reload_pseudolocalization>`

Повторно анализирует параметры псевдолокализации и перезагружает перевод для основного домена перевода.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_domain:

.. rst-class:: classref-method

|void| **remove_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TranslationServer_method_remove_domain>`

Удаляет домен перевода с указанным именем.

\ **Примечание:** Попытка удалить основной домен перевода является ошибкой.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_remove_translation>`

Удаляет указанный перевод из основного домена перевода.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_set_locale:

.. rst-class:: classref-method

|void| **set_locale**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationServer_method_set_locale>`

Устанавливает локаль проекта. Строка ``locale`` будет стандартизирована для соответствия известным локалям (например, ``en-US`` будет соответствовать ``en_US``).

Если переводы были загружены заранее для новой локали, они будут применены.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_standardize_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **standardize_locale**\ (\ locale\: :ref:`String<class_String>`, add_defaults\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TranslationServer_method_standardize_locale>`

Возвращает строку ``locale``, стандартизированную для соответствия известным локалям (например, ``en-US`` будет соответствовать ``en_US``). Если ``add_defaults`` равно ``true``, локаль может иметь добавленный сценарий или страну по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate>`

Возвращает перевод текущего языка для указанного сообщения и контекста.

\ **Примечание:** Этот метод всегда использует основной домен перевода.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate_plural>`

Возвращает перевод текущего языка для указанного сообщения, сообщения во множественном числе и контекста.

Число ``n`` — это число или количество объектов во множественном числе. Оно будет использоваться для того, чтобы система перевода выбрала правильную форму множественного числа для выбранного языка.

\ **Примечание:** Этот метод всегда использует основной домен перевода.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
