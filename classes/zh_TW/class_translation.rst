:github_url: hide

.. _class_Translation:

Translation
===========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`OptimizedTranslation<class_OptimizedTranslation>`

語言翻譯，能夠將一組字串對應到對應的翻譯。

.. rst-class:: classref-introduction-group

說明
----

**Translation** maps a collection of strings to their individual translations, and also provides convenience methods for pluralization.

A **Translation** consists of messages. A message is identified by its context and untranslated string. Unlike `gettext <https://www.gnu.org/software/gettext/>`__, using an empty context string in Godot means not using any context.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`將遊戲國際化 <../tutorials/i18n/internationalizing_games>`

- :doc:`Localization using gettext <../tutorials/i18n/localization_using_gettext>`

- :doc:`區域設定 <../tutorials/i18n/locales>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`String<class_String>` | :ref:`locale<class_Translation_property_locale>`                               | ``"en"`` |
   +-----------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`String<class_String>` | :ref:`plural_rules_override<class_Translation_property_plural_rules_override>` | ``""``   |
   +-----------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`_get_message<class_Translation_private_method__get_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`_get_plural_message<class_Translation_private_method__get_plural_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_message<class_Translation_method_add_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ )                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_plural_message<class_Translation_method_add_plural_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_messages\: :ref:`PackedStringArray<class_PackedStringArray>`, context\: :ref:`StringName<class_StringName>` = &""\ )                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_message<class_Translation_method_erase_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ )                                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_message<class_Translation_method_get_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_message_count<class_Translation_method_get_message_count>`\ (\ ) |const|                                                                                                                                                                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_message_list<class_Translation_method_get_message_list>`\ (\ ) |const|                                                                                                                                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_plural_message<class_Translation_method_get_plural_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_translated_message_list<class_Translation_method_get_translated_message_list>`\ (\ ) |const|                                                                                                                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Translation_property_locale:

.. rst-class:: classref-property

:ref:`String<class_String>` **locale** = ``"en"`` :ref:`🔗<class_Translation_property_locale>`

.. rst-class:: classref-property-setget

- |void| **set_locale**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_locale**\ (\ )

翻譯的區域設定。

.. rst-class:: classref-item-separator

----

.. _class_Translation_property_plural_rules_override:

.. rst-class:: classref-property

:ref:`String<class_String>` **plural_rules_override** = ``""`` :ref:`🔗<class_Translation_property_plural_rules_override>`

.. rst-class:: classref-property-setget

- |void| **set_plural_rules_override**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_plural_rules_override**\ (\ )

The plural rules string to enforce. See `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__ for examples and more info.

If empty or invalid, default plural rules from :ref:`TranslationServer.get_plural_rules()<class_TranslationServer_method_get_plural_rules>` are used. The English plural rules are used as a fallback.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Translation_private_method__get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_message>`

覆蓋 :ref:`get_message()<class_Translation_method_get_message>` 的虛方法。

.. rst-class:: classref-item-separator

----

.. _class_Translation_private_method__get_plural_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_plural_message>`

覆蓋 :ref:`get_plural_message()<class_Translation_method_get_plural_message>` 的虛方法。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_message>`

如果不存在，則新增一條消息，後跟其翻譯。

可以使用一個額外的本文，來指定翻譯本文或區分多義詞。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_plural_message:

.. rst-class:: classref-method

|void| **add_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_messages\: :ref:`PackedStringArray<class_PackedStringArray>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_plural_message>`

Adds a message involving plural translation if nonexistent, followed by its translation.

An additional context could be used to specify the translation context or differentiate polysemic words.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_erase_message:

.. rst-class:: classref-method

|void| **erase_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_erase_message>`

刪除資訊。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Translation_method_get_message>`

返回資訊的翻譯。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_count>`

返回現有資訊的數量。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_list>`

Returns the keys of all messages, that is, the context and untranslated strings of each message.

\ **Note:** If a message does not use a context, the corresponding element is the untranslated string. Otherwise, the corresponding element is the context and untranslated string separated by the EOT character (``U+0004``). This is done for compatibility purposes.

::

    for key in translation.get_message_list():
        var p = key.find("\u0004")
        if p == -1:
            var untranslated = key
            print("Message %s" % untranslated)
        else:
            var context = key.substr(0, p)
            var untranslated = key.substr(p + 1)
            print("Message %s with context %s" % [untranslated, context])

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_plural_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Translation_method_get_plural_message>`

Returns a message's translation involving plurals.

The number ``n`` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.

\ **Note:** Plurals are only supported in :doc:`gettext-based translations (PO) <../tutorials/i18n/localization_using_gettext>`, not CSV.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_translated_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_translated_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_translated_message_list>`

Returns all the translated strings.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
