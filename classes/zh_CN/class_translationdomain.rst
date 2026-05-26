:github_url: hide

.. _class_TranslationDomain:

TranslationDomain
=================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

独立的 :ref:`Translation<class_Translation>` 资源合集。

.. rst-class:: classref-introduction-group

描述
----

**TranslationDomain** 即翻译域，是一种独立的 :ref:`Translation<class_Translation>` 资源合集。可以向其中添加和删除翻译。

如果你想处理的是主翻译域，使用 :ref:`TranslationServer<class_TranslationServer>` 上的封装方法更方便。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_TranslationDomain_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果为 ``true``\ ，则启用翻译。否则 :ref:`translate()<class_TranslationDomain_method_translate>` 和 :ref:`translate_plural()<class_TranslationDomain_method_translate_plural>` 会返回未经修改的输入消息，忽略当前区域设置。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_accents_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_accents_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_accents_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_accents_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_accents_enabled**\ (\ )

伪本地化时将所有字符替换为对应的带重音的版本。

\ **注意：**\ 更新该属性不会自动更新场景树中的文本。请在完成修改伪本地化相关选项后，手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_double_vowels_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_double_vowels_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_double_vowels_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_double_vowels_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_double_vowels_enabled**\ (\ )

伪本地化时重复元音字母，用于模拟因本地化导致文本变长的效果。

\ **注意：**\ 更新该属性不会自动更新场景树中的文本。请在完成修改伪本地化相关选项后，手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_enabled**\ (\ )

如果为 ``true``\ ，则为项目启用伪本地化。可以用来发现未翻译的字符串，也可以用来发现将项目本地化为字符串比源语言更长的语言时可能出现的布局问题。

\ **注意：**\ 更新该属性不会自动更新场景树中的文本。请在完成修改伪本地化相关选项后，手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_expansion_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **pseudolocalization_expansion_ratio** = ``0.0`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_expansion_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_expansion_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pseudolocalization_expansion_ratio**\ (\ )

伪本地化时使用的扩展率。\ ``0.3`` 会将字符串的长度增加 30%，对于大多数实际情况而言足够了。

\ **注意：**\ 更新该属性不会自动更新场景树中的文本。请在完成修改伪本地化相关选项后，手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_fake_bidi_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_fake_bidi_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_fake_bidi_enabled**\ (\ )

如果为 ``true``\ ，则在启用伪本地化时模拟双向（从右至左）文本。可以用来发现将项目本地化为阿拉伯语和希伯来语等 RTL 语言时可能出现的 RTL 布局和 UI 镜像问题。

\ **注意：**\ 更新该属性不会自动更新场景树中的文本。请在完成修改伪本地化相关选项后，手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_override_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_override_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_override_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_override_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_override_enabled**\ (\ )

将字符串中的所有字符都替换为 ``*``\ 。可用于发现无法本地化的字符串。

\ **注意：**\ 更新该属性不会自动更新场景树中的文本。请在完成修改伪本地化相关选项后，手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_prefix** = ``"["`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_prefix**\ (\ )

在伪本地化字符串前添加的前缀。

\ **注意：**\ 更新该属性不会自动更新场景树中的文本。请在完成修改伪本地化相关选项后，手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_skip_placeholders_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_skip_placeholders_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_skip_placeholders_enabled**\ (\ )

伪本地化时跳过 ``%s`` 或 ``%f`` 等用于字符串格式化的占位符。可用于识别需要额外的控制字符才能正确显示的字符串。

\ **注意：**\ 更新该属性不会自动更新场景树中的文本。请在完成修改伪本地化相关选项后，手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_suffix** = ``"]"`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_suffix**\ (\ )

在伪本地化字符串后添加的后缀。

\ **注意：**\ 更新该属性不会自动更新场景树中的文本。请在完成修改伪本地化相关选项后，手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 通知。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TranslationDomain_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_add_translation>`

添加翻译。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationDomain_method_clear>`

移除所有翻译。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_find_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **find_translations**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_find_translations>`

返回与 ``locale`` 匹配的 :ref:`Translation<class_Translation>` 实例（见 :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`\ ）。如果 ``exact`` 为 ``true``\ ，则仅返回其区域设置与 ``locale`` 完全相等的实例。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_locale_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale_override**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_locale_override>`

返回翻译域的区域设置覆盖项。如果禁用区域设置覆盖则返回空字符串。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translation_object:

.. rst-class:: classref-method

:ref:`Translation<class_Translation>` **get_translation_object**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translation_object>`

**已弃用：** Use :ref:`find_translations()<class_TranslationDomain_method_find_translations>` instead.

返回与 ``locale`` 最为匹配的 :ref:`Translation<class_Translation>` 实例。如果没有能够匹配的翻译则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **get_translations**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translations>`

返回通过 :ref:`add_translation()<class_TranslationDomain_method_add_translation>` 添加的所有可用 :ref:`Translation<class_Translation>` 实例。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation>`

如果该翻译域包含给定的 ``translation``\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation_for_locale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation_for_locale**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation_for_locale>`

如果存在任何与 ``locale`` 匹配（见 :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`\ ）的 :ref:`Translation<class_Translation>` 实例，则返回 ``true``\ 。如果 ``exact`` 为 ``true``\ ，则仅考虑其区域设置与 ``locale`` 完全相等的实例。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_pseudolocalize>`

根据传入的 ``message`` 返回伪本地化字符串。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_remove_translation>`

移除给定的翻译。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_set_locale_override:

.. rst-class:: classref-method

|void| **set_locale_override**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationDomain_method_set_locale_override>`

设置翻译域的区域设置覆盖项。

如果 ``locale`` 为空字符串则禁用区域设置覆盖。否则会将 ``locale`` 进行标准化，匹配已知区域设置（例如 ``en-US`` 会与 ``en_US`` 匹配）。

\ **注意：**\ 调用该方法不会自动更新场景树中的文本。请手动传播 :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` 信号。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate>`

返回当前区域设置下，与给定消息和上下文对应的翻译。

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, message_plural\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate_plural>`

返回当前区域设置下，与给定消息、复数消息和上下文对应的翻译。

数字 ``n`` 是复数对象的数量。翻译系统会根据这个数字来针对所选语言获取正确的复数形式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
