:github_url: hide

.. _class_Translation:

Translation
===========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`OptimizedTranslation<class_OptimizedTranslation>`

语言翻译，能够将一组字符串映射到对应的翻译。

.. rst-class:: classref-introduction-group

描述
----

**Translation** 将一组字符串映射到其各自的翻译，并提供一些方便的复数形式处理方法。

\ **Translation** 包含多条消息。消息通过其上下文和未翻译的字符串来识别。与 `gettext <https://www.gnu.org/software/gettext/>`__ 不同，在 Godot 中使用空上下文字符串意味着不使用任何上下文。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`将游戏国际化 <../tutorials/i18n/internationalizing_games>`

- :doc:`使用 gettext 进行本地化 <../tutorials/i18n/localization_using_gettext>`

- :doc:`区域设置 <../tutorials/i18n/locales>`

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_Translation_property_locale:

.. rst-class:: classref-property

:ref:`String<class_String>` **locale** = ``"en"`` :ref:`🔗<class_Translation_property_locale>`

.. rst-class:: classref-property-setget

- |void| **set_locale**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_locale**\ (\ )

翻译的区域设置。

.. rst-class:: classref-item-separator

----

.. _class_Translation_property_plural_rules_override:

.. rst-class:: classref-property

:ref:`String<class_String>` **plural_rules_override** = ``""`` :ref:`🔗<class_Translation_property_plural_rules_override>`

.. rst-class:: classref-property-setget

- |void| **set_plural_rules_override**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_plural_rules_override**\ (\ )

要强制执行的复数规则字符串。有关示例和更多信息，请参阅 `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__\ 。

如果为空或无效，则使用 :ref:`TranslationServer.get_plural_rules()<class_TranslationServer_method_get_plural_rules>` 中的默认复数规则。英文复数规则被用作回退方案。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Translation_private_method__get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_message>`

覆盖 :ref:`get_message()<class_Translation_method_get_message>` 的虚方法。

.. rst-class:: classref-item-separator

----

.. _class_Translation_private_method__get_plural_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_plural_message>`

覆盖 :ref:`get_plural_message()<class_Translation_method_get_plural_message>` 的虚方法。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_message>`

如果不存在，则添加一条消息，后跟其翻译。

可以使用一个额外的上下文，来指定翻译上下文或区分多义词。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_plural_message:

.. rst-class:: classref-method

|void| **add_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_messages\: :ref:`PackedStringArray<class_PackedStringArray>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_plural_message>`

如果不存在相应的复数形式翻译，则添加一条，后跟其翻译。

可以使用额外的上下文来指定翻译上下文或区分多义词。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_erase_message:

.. rst-class:: classref-method

|void| **erase_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_erase_message>`

删除信息。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Translation_method_get_message>`

返回信息的翻译。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_count>`

返回现有信息的数量。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_list>`

返回所有消息的键，即每条消息的上下文和未翻译的字符串。

\ **注意：**\ 如果消息不使用上下文，则对应的元素为未翻译的字符串。否则，相应的元素是上下文和未翻译的字符串，以 EOT 字符（\ ``U+0004``\ ）分隔。这样做是为了保持兼容性。

::

    for key in translation.get_message_list():
        var p = key.find("\u0004")
        if p == -1:
            var untranslated = key
            print("消息 %s" % untranslated)
        else:
            var context = key.substr(0, p)
            var untranslated = key.substr(p + 1)
            print("消息 %s 其上下文 %s" % [untranslated, context])

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_plural_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Translation_method_get_plural_message>`

返回一条消息涉及复数的翻译。

数字 ``n`` 是复数对象的数目或数量。它将被用于指导翻译系统为所选语言获取正确的复数形式。

\ **注意：**\ 仅\ :doc:`基于 gettext 的翻译（PO） <../tutorials/i18n/localization_using_gettext>`\ 支持复数，CSV 不支持。

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_translated_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_translated_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_translated_message_list>`

返回所有已翻译的字符串。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
