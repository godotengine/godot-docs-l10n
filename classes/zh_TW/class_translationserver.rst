:github_url: hide

.. _class_TranslationServer:

TranslationServer
=================

**繼承：** :ref:`Object<class_Object>`

負責語言翻譯的伺服器。

.. rst-class:: classref-introduction-group

說明
----

翻譯伺服器是負責管理所有語言翻譯的 API 後端。

翻譯儲存在翻譯域 :ref:`TranslationDomain<class_TranslationDomain>` 中，可以通過名稱存取。最常用的翻譯域是主翻譯域。主翻譯域始終存在，可以通過空 :ref:`StringName<class_StringName>` 存取。翻譯伺服器為直接存取主翻譯域提供了封裝方法，無需先取得翻譯域。自訂翻譯域主要用於編輯器外掛等高階用法。以 ``godot.`` 開頭的名稱是引擎內部保留名稱。

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

如果為 ``true``\ ，則在主翻譯域中啟用偽在地化。詳見 :ref:`ProjectSettings.internationalization/pseudolocalization/use_pseudolocalization<class_ProjectSettings_property_internationalization/pseudolocalization/use_pseudolocalization>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TranslationServer_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_add_translation>`

在主翻譯域中新增翻譯。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationServer_method_clear>`

在主翻譯域中移除所有翻譯。

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

回傳主翻譯域中與 ``locale`` 匹配（見 :ref:`compare_locales()<class_TranslationServer_method_compare_locales>`\ ）的 :ref:`Translation<class_Translation>` 實例。如果 ``exact`` 為 ``true``\ ，則僅回傳其區域設定與 ``locale`` 完全匹配的實例。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_format_number:

.. rst-class:: classref-method

:ref:`String<class_String>` **format_number**\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_format_number>`

將數字從阿拉伯數字（0..9）轉換為給定 ``locale`` 中使用的記數系統。

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

回傳給定名稱對應的翻譯域。如果不存在使用該名稱的翻譯域，則會建立並新增一個空的翻譯域。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_percent_sign:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_percent_sign**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_percent_sign>`

回傳給定 ``locale`` 中使用的百分號。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_plural_rules:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_plural_rules**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_plural_rules>`

回傳 ``locale`` 的預設複數規則。

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

回傳主翻譯域中與 ``locale`` 最為匹配的 :ref:`Translation<class_Translation>` 實例。如果沒有能夠匹配的翻譯則回傳 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **get_translations**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_translations>`

回傳通過 :ref:`add_translation()<class_TranslationServer_method_add_translation>` 新增的主翻譯域中所有可用的 :ref:`Translation<class_Translation>` 實例。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_domain:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_domain>`

如果存在指定名稱的翻譯域，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_translation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_translation>`

如果主翻譯域包含給定的 ``translation``\ ，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_translation_for_locale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation_for_locale**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_translation_for_locale>`

如果主翻譯域中存在與 ``locale`` 匹配（見 :ref:`compare_locales()<class_TranslationServer_method_compare_locales>`\ ）的 :ref:`Translation<class_Translation>` 實例，則回傳 ``true``\ 。如果 ``exact`` 為 ``true``\ ，則僅考慮其區域設定與 ``locale`` 完全相等的實例。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_parse_number:

.. rst-class:: classref-method

:ref:`String<class_String>` **parse_number**\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_parse_number>`

將數字 ``number`` 從給定 ``locale`` 中使用的記數系統轉換為西阿拉伯數字（0..9）。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_pseudolocalize>`

根據傳入的 ``message`` 回傳偽在地化字串。

\ **注意：**\ 該方法始終使用主翻譯域。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_reload_pseudolocalization:

.. rst-class:: classref-method

|void| **reload_pseudolocalization**\ (\ ) :ref:`🔗<class_TranslationServer_method_reload_pseudolocalization>`

重新解析偽在地化選項，並為主翻譯域重新載入翻譯。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_domain:

.. rst-class:: classref-method

|void| **remove_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TranslationServer_method_remove_domain>`

移除指定名稱的翻譯域。

\ **注意：**\ 嘗試移除主翻譯域會發生錯誤。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_remove_translation>`

在主翻譯域中移除給定的翻譯。

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

回傳標準化後的 ``locale`` 字串，與已知的區域設定匹配（例如 ``en-US`` 將與 ``en_US`` 匹配）。如果 ``add_defaults`` 為 ``true``\ ，則可以為區域設定新增預設文字和地區。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate>`

回傳目前區域設定下，給定訊息和情境對應的翻譯。

\ **注意：**\ 該方法始終使用主翻譯域。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate_plural>`

回傳目前區域設定下，與給定訊息、複數訊息和情境對應的翻譯。

數字 ``n`` 是複數物件的數量。翻譯系統會根據這個數字來針對所選語言取得正確的複數形式。

\ **注意：**\ 該方法始終使用主翻譯域。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
