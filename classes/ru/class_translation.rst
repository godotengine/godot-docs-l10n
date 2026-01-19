:github_url: hide

.. _class_Translation:

Translation
===========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`OptimizedTranslation<class_OptimizedTranslation>`

Перевод языка, который сопоставляет набор строк с их индивидуальными переводами.

.. rst-class:: classref-introduction-group

Описание
----------------

**Translation** сопоставляет набор строк с их индивидуальными переводами, а также предоставляет удобные методы для образования множественного числа.

\ **Translation** состоит из сообщений. Сообщение идентифицируется по его контексту и непереведенной строке. В отличие от `gettext <https://www.gnu.org/software/gettext/>`__, использование пустой контекстной строки в Godot означает отсутствие использования какого-либо контекста.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Интернационализация игр <../tutorials/i18n/internationalizing_games>`

- :doc:`Локализация с использованием gettext <../tutorials/i18n/localization_using_gettext>`

- :doc:`Локали <../tutorials/i18n/locales>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`String<class_String>` | :ref:`locale<class_Translation_property_locale>`                               | ``"en"`` |
   +-----------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`String<class_String>` | :ref:`plural_rules_override<class_Translation_property_plural_rules_override>` | ``""``   |
   +-----------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методы
------------

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

Описания свойств
--------------------------------

.. _class_Translation_property_locale:

.. rst-class:: classref-property

:ref:`String<class_String>` **locale** = ``"en"`` :ref:`🔗<class_Translation_property_locale>`

.. rst-class:: classref-property-setget

- |void| **set_locale**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_locale**\ (\ )

Локаль перевода.

.. rst-class:: classref-item-separator

----

.. _class_Translation_property_plural_rules_override:

.. rst-class:: classref-property

:ref:`String<class_String>` **plural_rules_override** = ``""`` :ref:`🔗<class_Translation_property_plural_rules_override>`

.. rst-class:: classref-property-setget

- |void| **set_plural_rules_override**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_plural_rules_override**\ (\ )

Строка правил множественного числа для применения. См. `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__ для примеров и дополнительной информации.

Если строка пустая или недействительная, используются правила множественного числа по умолчанию из :ref:`TranslationServer.get_plural_rules()<class_TranslationServer_method_get_plural_rules>`. В качестве запасного варианта используются правила множественного числа английского языка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Translation_private_method__get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_message>`

Виртуальный метод для переопределения :ref:`get_message()<class_Translation_method_get_message>`.

.. rst-class:: classref-item-separator

----

.. _class_Translation_private_method__get_plural_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_plural_message>`

Виртуальный метод для переопределения :ref:`get_plural_message()<class_Translation_method_get_plural_message>`.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_message>`

Добавляет сообщение, если оно отсутствует, а затем его перевод.

Дополнительный контекст может использоваться для указания контекста перевода или дифференциации многозначных слов.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_plural_message:

.. rst-class:: classref-method

|void| **add_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_messages\: :ref:`PackedStringArray<class_PackedStringArray>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_plural_message>`

Добавляет сообщение, содержащее перевод во множественном числе, если он отсутствует, а затем его перевод.

Дополнительный контекст может использоваться для указания контекста перевода или различения многозначных слов.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_erase_message:

.. rst-class:: classref-method

|void| **erase_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_erase_message>`

Стереть сообщение.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Translation_method_get_message>`

Возвращает перевод сообщения.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_count>`

Возвращает количество существующих сообщений.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_list>`

Возвращает ключи всех сообщений, то есть контекст и непереведенные строки каждого сообщения.

\ **Примечание:** Если сообщение не использует контекст, соответствующим элементом является непереведенная строка. В противном случае соответствующим элементом является контекст и непереведенная строка, разделенные символом EOT (``U+0004``). Это сделано в целях совместимости.

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

Возвращает перевод сообщения, содержащего формы множественного числа.

Число ``n`` — это количество объектов множественного числа. Оно будет использоваться системой перевода для выбора правильной формы множественного числа для выбранного языка.

\ **Примечание:** Множественное число поддерживается только в :doc:`переводах на основе GetText (PO) <../tutorials/i18n/localization_using_gettext>`, но не в CSV-файлах.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_translated_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_translated_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_translated_message_list>`

Возвращает все переведенные строки.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
