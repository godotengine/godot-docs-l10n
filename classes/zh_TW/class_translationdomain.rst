:github_url: hide

.. _class_TranslationDomain:

TranslationDomain
=================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

獨立的 :ref:`Translation<class_Translation>` 資源合集。

.. rst-class:: classref-introduction-group

說明
----

**TranslationDomain** 即翻譯域，是一種獨立的 :ref:`Translation<class_Translation>` 資源合集。可以向其中新增和刪除翻譯。

如果你想處理的是主翻譯域，使用 :ref:`TranslationServer<class_TranslationServer>` 上的封裝方法更方便。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`enabled<class_TranslationDomain_property_enabled>`                                                                           | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_accents_enabled<class_TranslationDomain_property_pseudolocalization_accents_enabled>`                     | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_double_vowels_enabled<class_TranslationDomain_property_pseudolocalization_double_vowels_enabled>`         | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_enabled<class_TranslationDomain_property_pseudolocalization_enabled>`                                     | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`pseudolocalization_expansion_ratio<class_TranslationDomain_property_pseudolocalization_expansion_ratio>`                     | ``0.0``   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_fake_bidi_enabled<class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled>`                 | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_override_enabled<class_TranslationDomain_property_pseudolocalization_override_enabled>`                   | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`pseudolocalization_prefix<class_TranslationDomain_property_pseudolocalization_prefix>`                                       | ``"["``   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_skip_placeholders_enabled<class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled>` | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`pseudolocalization_suffix<class_TranslationDomain_property_pseudolocalization_suffix>`                                       | ``"]"``   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`add_translation<class_TranslationDomain_method_add_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear<class_TranslationDomain_method_clear>`\ (\ )                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] | :ref:`find_translations<class_TranslationDomain_method_find_translations>`\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const|                                                                                                             |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_locale_override<class_TranslationDomain_method_get_locale_override>`\ (\ ) |const|                                                                                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Translation<class_Translation>`                              | :ref:`get_translation_object<class_TranslationDomain_method_get_translation_object>`\ (\ locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] | :ref:`get_translations<class_TranslationDomain_method_get_translations>`\ (\ ) |const|                                                                                                                                                                                      |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_translation<class_TranslationDomain_method_has_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const|                                                                                                                                   |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_translation_for_locale<class_TranslationDomain_method_has_translation_for_locale>`\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const|                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`pseudolocalize<class_TranslationDomain_method_pseudolocalize>`\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`remove_translation<class_TranslationDomain_method_remove_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                     |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_locale_override<class_TranslationDomain_method_set_locale_override>`\ (\ locale\: :ref:`String<class_String>`\ )                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`translate<class_TranslationDomain_method_translate>`\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`translate_plural<class_TranslationDomain_method_translate_plural>`\ (\ message\: :ref:`StringName<class_StringName>`, message_plural\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TranslationDomain_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果為 ``true``\ ，則啟用翻譯。否則 :ref:`translate()<class_TranslationDomain_method_translate>` 和 :ref:`translate_plural()<class_TranslationDomain_method_translate_plural>` 會回傳未經修改的輸入訊息，忽略目前區域設定。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_accents_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_accents_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_accents_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_accents_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_accents_enabled**\ (\ )

偽在地化時將所有字元替換為對應的帶重音的版本。

\ **注意：**\ 更新該屬性不會自動更新場景樹中的文字。請在完成修改偽在地化相關選項後，手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_double_vowels_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_double_vowels_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_double_vowels_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_double_vowels_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_double_vowels_enabled**\ (\ )

偽在地化時重複元音字母，用於模擬因在地化導致文字變長的效果。

\ **注意：**\ 更新該屬性不會自動更新場景樹中的文字。請在完成修改偽在地化相關選項後，手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_enabled**\ (\ )

如果為 ``true``\ ，則為專案啟用偽在地化。可以用來發現未翻譯的字串，也可以用來發現將專案在地化為字串比源語言更長的語言時可能出現的版面配置問題。

\ **注意：**\ 更新該屬性不會自動更新場景樹中的文字。請在完成修改偽在地化相關選項後，手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_expansion_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **pseudolocalization_expansion_ratio** = ``0.0`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_expansion_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_expansion_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pseudolocalization_expansion_ratio**\ (\ )

偽在地化時使用的擴充率。\ ``0.3`` 會將字串的長度增加 30%，對於大多數實際情況而言足夠了。

\ **注意：**\ 更新該屬性不會自動更新場景樹中的文字。請在完成修改偽在地化相關選項後，手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_fake_bidi_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_fake_bidi_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_fake_bidi_enabled**\ (\ )

如果為 ``true``\ ，則在啟用偽在地化時模擬雙向（從右至左）文字。可以用來發現將專案在地化為阿拉伯語和希伯來語等 RTL 語言時可能出現的 RTL 版面配置和 UI 鏡像問題。

\ **注意：**\ 更新該屬性不會自動更新場景樹中的文字。請在完成修改偽在地化相關選項後，手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_override_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_override_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_override_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_override_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_override_enabled**\ (\ )

將字串中的所有字元都替換為 ``*``\ 。可用於發現無法在地化的字串。

\ **注意：**\ 更新該屬性不會自動更新場景樹中的文字。請在完成修改偽在地化相關選項後，手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_prefix** = ``"["`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_prefix**\ (\ )

在偽在地化字串前新增的前綴。

\ **注意：**\ 更新該屬性不會自動更新場景樹中的文字。請在完成修改偽在地化相關選項後，手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_skip_placeholders_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_skip_placeholders_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_skip_placeholders_enabled**\ (\ )

偽在地化時跳過 ``%s`` 或 ``%f`` 等用於字串格式化的佔位符。可用於識別需要額外的控制字元才能正確顯示的字串。

\ **注意：**\ 更新該屬性不會自動更新場景樹中的文字。請在完成修改偽在地化相關選項後，手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_suffix** = ``"]"`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_suffix**\ (\ )

在偽在地化字串後新增的後綴。

\ **注意：**\ 更新該屬性不會自動更新場景樹中的文字。請在完成修改偽在地化相關選項後，手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TranslationDomain_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_add_translation>`

新增翻譯。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationDomain_method_clear>`

移除所有翻譯。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_find_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **find_translations**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_find_translations>`

回傳與 ``locale`` 匹配的 :ref:`Translation<class_Translation>` 實例（見 :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`\ ）。如果 ``exact`` 為 ``true``\ ，則僅回傳其區域設定與 ``locale`` 完全相等的實例。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_locale_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale_override**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_locale_override>`

回傳翻譯域的區域設定覆蓋項。如果停用區域設定覆蓋則回傳空字串。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translation_object:

.. rst-class:: classref-method

:ref:`Translation<class_Translation>` **get_translation_object**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translation_object>`

**已棄用：** Use :ref:`find_translations()<class_TranslationDomain_method_find_translations>` instead.

回傳與 ``locale`` 最為匹配的 :ref:`Translation<class_Translation>` 實例。如果沒有能夠匹配的翻譯則回傳 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **get_translations**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translations>`

回傳通過 :ref:`add_translation()<class_TranslationDomain_method_add_translation>` 新增的所有可用 :ref:`Translation<class_Translation>` 實例。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation>`

如果該翻譯域包含給定的 ``translation``\ ，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation_for_locale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation_for_locale**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation_for_locale>`

如果存在任何與 ``locale`` 匹配（見 :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`\ ）的 :ref:`Translation<class_Translation>` 實例，則回傳 ``true``\ 。如果 ``exact`` 為 ``true``\ ，則僅考慮其區域設定與 ``locale`` 完全相等的實例。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_pseudolocalize>`

根據傳入的 ``message`` 返回偽當地語系化字串。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_remove_translation>`

移除給定的翻譯。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_set_locale_override:

.. rst-class:: classref-method

|void| **set_locale_override**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationDomain_method_set_locale_override>`

設定翻譯域的區域設定覆蓋項。

如果 ``locale`` 為空字串則停用區域設定覆蓋。否則會將 ``locale`` 進行標準化，匹配已知區域設定（例如 ``en-US`` 會與 ``en_US`` 匹配）。

\ **注意：**\ 呼叫該方法不會自動更新場景樹中的文字。請手動傳播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 訊號。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate>`

回傳目前區域設定下，與給定訊息和情境對應的翻譯。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, message_plural\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate_plural>`

回傳目前區域設定下，與給定訊息、複數訊息和情境對應的翻譯。

數字 ``n`` 是複數物件的數量。翻譯系統會根據這個數字來針對所選語言取得正確的複數形式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
