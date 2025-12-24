:github_url: hide

.. _class_TranslationServer:

TranslationServer
=================

**继承：** :ref:`Object<class_Object>`

负责语言翻译的服务器。

.. rst-class:: classref-introduction-group

描述
----

翻译服务器是负责管理所有语言翻译的 API 后端。

翻译存储在翻译域 :ref:`TranslationDomain<class_TranslationDomain>` 中，可以通过名称访问。最常用的翻译域是主翻译域。主翻译域始终存在，可以通过空 :ref:`StringName<class_StringName>` 访问。翻译服务器为直接访问主翻译域提供了封装方法，无需先获取翻译域。自定义翻译域主要用于编辑器插件等高阶用法。以 ``godot.`` 开头的名称是引擎内部保留名称。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`将游戏国际化 <../tutorials/i18n/internationalizing_games>`

- :doc:`区域设置 <../tutorials/i18n/locales>`

.. rst-class:: classref-reftable-group

属性
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

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_translation<class_TranslationServer_method_add_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_TranslationServer_method_clear>`\ (\ )                                                                                                                                                                                                                    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`compare_locales<class_TranslationServer_method_compare_locales>`\ (\ locale_a\: :ref:`String<class_String>`, locale_b\: :ref:`String<class_String>`\ ) |const|                                                                                                        |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_all_countries<class_TranslationServer_method_get_all_countries>`\ (\ ) |const|                                                                                                                                                                                    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_all_languages<class_TranslationServer_method_get_all_languages>`\ (\ ) |const|                                                                                                                                                                                    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_all_scripts<class_TranslationServer_method_get_all_scripts>`\ (\ ) |const|                                                                                                                                                                                        |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_country_name<class_TranslationServer_method_get_country_name>`\ (\ country\: :ref:`String<class_String>`\ ) |const|                                                                                                                                               |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_language_name<class_TranslationServer_method_get_language_name>`\ (\ language\: :ref:`String<class_String>`\ ) |const|                                                                                                                                            |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_loaded_locales<class_TranslationServer_method_get_loaded_locales>`\ (\ ) |const|                                                                                                                                                                                  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_locale<class_TranslationServer_method_get_locale>`\ (\ ) |const|                                                                                                                                                                                                  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_locale_name<class_TranslationServer_method_get_locale_name>`\ (\ locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TranslationDomain<class_TranslationDomain>` | :ref:`get_or_add_domain<class_TranslationServer_method_get_or_add_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ )                                                                                                                                              |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_script_name<class_TranslationServer_method_get_script_name>`\ (\ script\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_tool_locale<class_TranslationServer_method_get_tool_locale>`\ (\ )                                                                                                                                                                                                |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Translation<class_Translation>`             | :ref:`get_translation_object<class_TranslationServer_method_get_translation_object>`\ (\ locale\: :ref:`String<class_String>`\ )                                                                                                                                            |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_domain<class_TranslationServer_method_has_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`pseudolocalize<class_TranslationServer_method_pseudolocalize>`\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`reload_pseudolocalization<class_TranslationServer_method_reload_pseudolocalization>`\ (\ )                                                                                                                                                                            |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_domain<class_TranslationServer_method_remove_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                      |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_translation<class_TranslationServer_method_remove_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_locale<class_TranslationServer_method_set_locale>`\ (\ locale\: :ref:`String<class_String>`\ )                                                                                                                                                                    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`standardize_locale<class_TranslationServer_method_standardize_locale>`\ (\ locale\: :ref:`String<class_String>`, add_defaults\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                            |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`translate<class_TranslationServer_method_translate>`\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                                |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`translate_plural<class_TranslationServer_method_translate_plural>`\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TranslationServer_property_pseudolocalization_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_enabled** = ``false`` :ref:`🔗<class_TranslationServer_property_pseudolocalization_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_enabled**\ (\ )

如果为 ``true``\ ，则在主翻译域中启用伪本地化。详见 :ref:`ProjectSettings.internationalization/pseudolocalization/use_pseudolocalization<class_ProjectSettings_property_internationalization/pseudolocalization/use_pseudolocalization>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TranslationServer_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_add_translation>`

在主翻译域中添加翻译。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationServer_method_clear>`

在主翻译域中移除所有翻译。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_compare_locales:

.. rst-class:: classref-method

:ref:`int<class_int>` **compare_locales**\ (\ locale_a\: :ref:`String<class_String>`, locale_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_compare_locales>`

比较两个区域设置，返回 ``0``\ （不匹配）和 ``10``\ （完全匹配）之间的相似度得分。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_countries:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_countries**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_countries>`

返回已知地区代码的数组。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_languages:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_languages**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_languages>`

返回已知语言代码的数组。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_scripts:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_scripts**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_scripts>`

返回已知文字代码的数组。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_country_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_country_name**\ (\ country\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_country_name>`

返回地区代码 ``country`` 的可读地区名称。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_language_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_language_name**\ (\ language\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_language_name>`

返回语言代码 ``language`` 的可读语言名称。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_loaded_locales:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_loaded_locales**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_loaded_locales>`

返回项目中所有已加载的区域设置的数组。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_locale>`

返回项目的当前区域设置。

查询用户系统的区域设置请参阅 :ref:`OS.get_locale()<class_OS_method_get_locale>` 和 :ref:`OS.get_locale_language()<class_OS_method_get_locale_language>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_locale_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale_name**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_locale_name>`

返回区域设置的语言及其变体。例如，\ ``"en_US"`` 将返回 ``"English (United States)"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_or_add_domain:

.. rst-class:: classref-method

:ref:`TranslationDomain<class_TranslationDomain>` **get_or_add_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TranslationServer_method_get_or_add_domain>`

返回给定名称对应的翻译域。如果不存在使用该名称的翻译域，则会创建并添加一个空的翻译域。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_script_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_script_name**\ (\ script\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_script_name>`

返回文字代码 ``script`` 的可读文字名称。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_tool_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tool_locale**\ (\ ) :ref:`🔗<class_TranslationServer_method_get_tool_locale>`

返回编辑器的当前区域设置。

\ **注意：**\ 从导出后的项目中调用时，返回值与 :ref:`get_locale()<class_TranslationServer_method_get_locale>` 相同。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_translation_object:

.. rst-class:: classref-method

:ref:`Translation<class_Translation>` **get_translation_object**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationServer_method_get_translation_object>`

返回主翻译域中与 ``locale`` 最为匹配的 :ref:`Translation<class_Translation>` 实例。如果没有能够匹配的翻译则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_domain:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_domain>`

如果存在指定名称的翻译域，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_pseudolocalize>`

根据传入的 ``message`` 返回伪本地化字符串。

\ **注意：**\ 该方法始终使用主翻译域。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_reload_pseudolocalization:

.. rst-class:: classref-method

|void| **reload_pseudolocalization**\ (\ ) :ref:`🔗<class_TranslationServer_method_reload_pseudolocalization>`

重新解析伪本地化选项，并为主翻译域重新加载翻译。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_domain:

.. rst-class:: classref-method

|void| **remove_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TranslationServer_method_remove_domain>`

移除指定名称的翻译域。

\ **注意：**\ 尝试移除主翻译域会发生错误。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_remove_translation>`

在主翻译域中移除给定的翻译。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_set_locale:

.. rst-class:: classref-method

|void| **set_locale**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationServer_method_set_locale>`

设置项目的区域设置。\ ``locale`` 字符串将被标准化，以匹配已知的区域设置（例如 ``en-US`` 将与 ``en_US`` 匹配）。

如果已经为新区域设置预先加载了翻译，则它们将被应用。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_standardize_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **standardize_locale**\ (\ locale\: :ref:`String<class_String>`, add_defaults\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TranslationServer_method_standardize_locale>`

返回标准化后的 ``locale`` 字符串，与已知的区域设置匹配（例如 ``en-US`` 将与 ``en_US`` 匹配）。如果 ``add_defaults`` 为 ``true``\ ，则可以为区域设置添加默认文字和地区。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate>`

返回当前区域设置下，给定消息和上下文对应的翻译。

\ **注意：**\ 该方法始终使用主翻译域。

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate_plural>`

返回当前区域设置下，与给定消息、复数消息和上下文对应的翻译。

数字 ``n`` 是复数对象的数量。翻译系统会根据这个数字来针对所选语言获取正确的复数形式。

\ **注意：**\ 该方法始终使用主翻译域。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
