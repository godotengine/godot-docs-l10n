:github_url: hide

.. _class_TranslationServer:

TranslationServer
=================

**繼承：** :ref:`Object<class_Object>`

負責語言翻譯的伺服器。

.. rst-class:: classref-introduction-group

說明
----

The translation server is the API backend that manages all language translations.

Translations are stored in :ref:`TranslationDomain<class_TranslationDomain>`\ s, which can be accessed by name. The most commonly used translation domain is the main translation domain. It always exists and can be accessed using an empty :ref:`StringName<class_StringName>`. The translation server provides wrapper methods for accessing the main translation domain directly, without having to fetch the translation domain first. Custom translation domains are mainly for advanced usages like editor plugins. Names starting with ``godot.`` are reserved for engine internals.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`將遊戲國際化 <../tutorials/i18n/internationalizing_games>`

- :doc:`區域設定 <../tutorials/i18n/locales>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`pseudolocalization_enabled<class_TranslationServer_property_pseudolocalization_enabled>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

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

屬性說明
--------

.. _class_TranslationServer_property_pseudolocalization_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_enabled** = ``false`` :ref:`🔗<class_TranslationServer_property_pseudolocalization_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_enabled**\ (\ )

If ``true``, enables the use of pseudolocalization on the main translation domain. See :ref:`ProjectSettings.internationalization/pseudolocalization/use_pseudolocalization<class_ProjectSettings_property_internationalization/pseudolocalization/use_pseudolocalization>` for details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TranslationServer_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_add_translation>`

Adds a translation to the main translation domain.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationServer_method_clear>`

Removes all translations from the main translation domain.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_compare_locales:

.. rst-class:: classref-method

:ref:`int<class_int>` **compare_locales**\ (\ locale_a\: :ref:`String<class_String>`, locale_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_compare_locales>`

比較兩個區域設定，返回 ``0``\ （不配對）和 ``10``\ （完全配對）之間的相似度得分。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_find_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **find_translations**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationServer_method_find_translations>`

Returns the :ref:`Translation<class_Translation>` instances in the main translation domain that match ``locale`` (see :ref:`compare_locales()<class_TranslationServer_method_compare_locales>`). If ``exact`` is ``true``, only instances whose locale exactly equals ``locale`` will be returned.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_format_number:

.. rst-class:: classref-method

:ref:`String<class_String>` **format_number**\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_format_number>`

Converts a number from Western Arabic (0..9) to the numeral system used in the given ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_countries:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_countries**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_countries>`

返回已知地區程式碼的陣列。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_languages:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_languages**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_languages>`

返回已知語言程式碼的陣列。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_scripts:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_scripts**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_scripts>`

返回已知文字程式碼的陣列。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_country_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_country_name**\ (\ country\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_country_name>`

返回地區程式碼 ``country`` 的可讀地區名稱。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_language_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_language_name**\ (\ language\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_language_name>`

返回語言程式碼 ``language`` 的可讀語言名稱。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_loaded_locales:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_loaded_locales**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_loaded_locales>`

返回專案中所有已載入的區域設定的陣列。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_locale>`

返回專案的目前區域設定。

查詢使用者系統的區域設定請參閱 :ref:`OS.get_locale()<class_OS_method_get_locale>` 和 :ref:`OS.get_locale_language()<class_OS_method_get_locale_language>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_locale_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale_name**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_locale_name>`

返回區域設定的語言及其變體。例如，\ ``"en_US"`` 將返回 ``"English (United States)"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_or_add_domain:

.. rst-class:: classref-method

:ref:`TranslationDomain<class_TranslationDomain>` **get_or_add_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TranslationServer_method_get_or_add_domain>`

Returns the translation domain with the specified name. An empty translation domain will be created and added if it does not exist.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_percent_sign:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_percent_sign**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_percent_sign>`

Returns the percent sign used in the given ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_plural_rules:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_plural_rules**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_plural_rules>`

Returns the default plural rules for the ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_script_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_script_name**\ (\ script\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_script_name>`

返回文字程式碼 ``script`` 的可讀文字名稱。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_tool_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tool_locale**\ (\ ) :ref:`🔗<class_TranslationServer_method_get_tool_locale>`

返回編輯器的目前區域設定。

\ **注意：**\ 從匯出後的專案中呼叫時，返回值與 :ref:`get_locale()<class_TranslationServer_method_get_locale>` 相同。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_translation_object:

.. rst-class:: classref-method

:ref:`Translation<class_Translation>` **get_translation_object**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationServer_method_get_translation_object>`

**已棄用：** Use :ref:`find_translations()<class_TranslationServer_method_find_translations>` instead.

Returns the :ref:`Translation<class_Translation>` instance that best matches ``locale`` in the main translation domain. Returns ``null`` if there are no matches.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **get_translations**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_translations>`

Returns all available :ref:`Translation<class_Translation>` instances in the main translation domain as added by :ref:`add_translation()<class_TranslationServer_method_add_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_domain:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_domain>`

Returns ``true`` if a translation domain with the specified name exists.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_translation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_translation>`

Returns ``true`` if the main translation domain contains the given ``translation``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_translation_for_locale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation_for_locale**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_translation_for_locale>`

Returns ``true`` if there are any :ref:`Translation<class_Translation>` instances in the main translation domain that match ``locale`` (see :ref:`compare_locales()<class_TranslationServer_method_compare_locales>`). If ``exact`` is ``true``, only instances whose locale exactly equals ``locale`` are considered.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_parse_number:

.. rst-class:: classref-method

:ref:`String<class_String>` **parse_number**\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_parse_number>`

Converts ``number`` from the numeral system used in the given ``locale`` to Western Arabic (0..9).

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_pseudolocalize>`

Returns the pseudolocalized string based on the ``message`` passed in.

\ **Note:** This method always uses the main translation domain.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_reload_pseudolocalization:

.. rst-class:: classref-method

|void| **reload_pseudolocalization**\ (\ ) :ref:`🔗<class_TranslationServer_method_reload_pseudolocalization>`

Reparses the pseudolocalization options and reloads the translation for the main translation domain.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_domain:

.. rst-class:: classref-method

|void| **remove_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TranslationServer_method_remove_domain>`

Removes the translation domain with the specified name.

\ **Note:** Trying to remove the main translation domain is an error.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_remove_translation>`

Removes the given translation from the main translation domain.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_set_locale:

.. rst-class:: classref-method

|void| **set_locale**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationServer_method_set_locale>`

設定專案的區域設定。\ ``locale`` 字串將被標準化，以配對已知的區域設定（例如 ``en-US`` 將與 ``en_US`` 配對）。

如果已經為新區域設定預先載入了翻譯，則它們將被套用。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_standardize_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **standardize_locale**\ (\ locale\: :ref:`String<class_String>`, add_defaults\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TranslationServer_method_standardize_locale>`

Returns a ``locale`` string standardized to match known locales (e.g. ``en-US`` would be matched to ``en_US``). If ``add_defaults`` is ``true``, the locale may have a default script or country added.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate>`

Returns the current locale's translation for the given message and context.

\ **Note:** This method always uses the main translation domain.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate_plural>`

Returns the current locale's translation for the given message, plural message and context.

The number ``n`` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.

\ **Note:** This method always uses the main translation domain.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
