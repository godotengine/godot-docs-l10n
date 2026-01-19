:github_url: hide

.. _class_TranslationDomain:

TranslationDomain
=================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Автономная коллекция ресурсов :ref:`Translation<class_Translation>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**TranslationDomain** — это самостоятельная коллекция ресурсов :ref:`Translation<class_Translation>`. Переводы можно добавлять или удалять из нее.

Если вы работаете с основным доменом перевода, удобнее использовать методы обертывания на :ref:`TranslationServer<class_TranslationServer>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

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

Описания свойств
--------------------------------

.. _class_TranslationDomain_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Если ``true``, перевод включен. В противном случае :ref:`translate()<class_TranslationDomain_method_translate>` и :ref:`translate_plural()<class_TranslationDomain_method_translate_plural>` вернут входящее сообщение без изменений независимо от текущей локали.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_accents_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_accents_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_accents_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_accents_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_accents_enabled**\ (\ )

Замените все символы на их акцентированные варианты во время псевдолокализации.

\ **Примечание:** Обновление этого свойства не приводит к автоматическому обновлению текстов в дереве сцены. Пожалуйста, вручную распространите уведомление :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` после того, как закончите изменять параметры, связанные с псевдолокализацией.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_double_vowels_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_double_vowels_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_double_vowels_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_double_vowels_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_double_vowels_enabled**\ (\ )

Двойные гласные в строках во время псевдолокализации для имитации удлинения текста из-за локализации.

\ **Примечание:** Обновление этого свойства не приводит к автоматическому обновлению текстов в дереве сцены. Пожалуйста, вручную распространите уведомление :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` после того, как закончите изменять параметры, связанные с псевдолокализацией.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_enabled**\ (\ )

Если ``true``, включает псевдолокализацию для проекта. Это можно использовать для обнаружения непереводимых строк или проблем с макетом, которые могут возникнуть после локализации проекта на языки, имеющие более длинные строки, чем исходный язык.

\ **Примечание:** Обновление этого свойства не приводит к автоматическому обновлению текстов в дереве сцены. Пожалуйста, вручную распространите уведомление :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` после того, как вы закончите изменять параметры, связанные с псевдолокализацией.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_expansion_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **pseudolocalization_expansion_ratio** = ``0.0`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_expansion_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_expansion_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pseudolocalization_expansion_ratio**\ (\ )

Коэффициент расширения для использования во время псевдолокализации. Значение ``0.3`` достаточно для большинства практических целей и увеличит длину каждой строки на 30%.

\ **Примечание:** Обновление этого свойства не приводит к автоматическому обновлению текстов в дереве сцены. Пожалуйста, вручную распространите уведомление :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` после того, как закончите изменять параметры, связанные с псевдолокализацией.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_fake_bidi_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_fake_bidi_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_fake_bidi_enabled**\ (\ )

Если ``true``, эмулировать двунаправленный (справа налево) текст при включенной псевдолокализации. Это можно использовать для выявления проблем с макетом RTL и зеркалированием пользовательского интерфейса, которые возникнут, если проект локализован на языки RTL, такие как арабский или иврит.

\ **Примечание:** Обновление этого свойства не приводит к автоматическому обновлению текстов в дереве сцены. Пожалуйста, вручную распространите уведомление :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` после того, как закончите изменять параметры, связанные с псевдолокализацией.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_override_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_override_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_override_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_override_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_override_enabled**\ (\ )

Замените все символы в строке на ``*``. Полезно для поиска нелокализуемых строк.

\ **Примечание:** Обновление этого свойства не приводит к автоматическому обновлению текстов в дереве сцены. Пожалуйста, вручную распространите уведомление :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` после того, как закончите изменять параметры, связанные с псевдолокализацией.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_prefix** = ``"["`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_prefix**\ (\ )

Префикс, который будет добавлен к псевдолокализованной строке.

\ **Примечание:** Обновление этого свойства не приводит к автоматическому обновлению текстов в дереве сцены. Пожалуйста, вручную распространите уведомление :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` после того, как вы закончите изменять параметры, связанные с псевдолокализацией.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_skip_placeholders_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_skip_placeholders_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_skip_placeholders_enabled**\ (\ )

Пропустить заполнители для форматирования строк, например ``%s`` или ``%f`` во время псевдолокализации. Полезно для определения строк, которым требуются дополнительные управляющие символы для правильного отображения.

\ **Примечание:** Обновление этого свойства не приводит к автоматическому обновлению текстов в дереве сцены. Пожалуйста, вручную распространите уведомление :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` после того, как закончите изменять параметры, связанные с псевдолокализацией.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_suffix** = ``"]"`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_suffix**\ (\ )

Суффикс, который будет добавлен к псевдолокализованной строке.

\ **Примечание:** Обновление этого свойства не приводит к автоматическому обновлению текстов в дереве сцены. Пожалуйста, вручную распространите уведомление :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` после того, как вы закончите изменять параметры, связанные с псевдолокализацией.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TranslationDomain_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_add_translation>`

Добавляет перевод.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationDomain_method_clear>`

Удаляет все переводы.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_find_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **find_translations**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_find_translations>`

Возвращает экземпляры :ref:`Translation<class_Translation>`, соответствующие ``locale`` (см. :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`). Если ``exact`` равно ``true``, будут возвращены только экземпляры, локаль которых точно совпадает с ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_locale_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale_override**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_locale_override>`

Возвращает переопределение локали домена. Возвращает пустую строку, если переопределение локали отключено.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translation_object:

.. rst-class:: classref-method

:ref:`Translation<class_Translation>` **get_translation_object**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translation_object>`

**Устарело:** Use :ref:`find_translations()<class_TranslationDomain_method_find_translations>` instead.

Возвращает экземпляр :ref:`Translation<class_Translation>`, который лучше всего соответствует ``locale``. Возвращает ``null``, если совпадений нет.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **get_translations**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translations>`

Возвращает все доступные экземпляры :ref:`Translation<class_Translation>`, добавленные методом :ref:`add_translation()<class_TranslationDomain_method_add_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation>`

Возвращает ``true``, если этот домен перевода содержит заданный ``translation``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation_for_locale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation_for_locale**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation_for_locale>`

Возвращает ``true``, если есть экземпляры :ref:`Translation<class_Translation>`, соответствующие ``locale`` (см. :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`). Если ``exact`` равно ``true``, рассматриваются только экземпляры, локаль которых точно совпадает с ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_pseudolocalize>`

Возвращает псевдолокализованную строку на основе переданного ``message``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_remove_translation>`

Удаляет указанный перевод.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_set_locale_override:

.. rst-class:: classref-method

|void| **set_locale_override**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationDomain_method_set_locale_override>`

Устанавливает переопределение локали домена.

Если ``locale`` — пустая строка, переопределение локали отключено. В противном случае ``locale`` будет стандартизирован для соответствия известным локалям (например, ``en-US`` будет соответствовать ``en_US``).

\ **Примечание:** Вызов этого метода не обновляет автоматически тексты в дереве сцены. Пожалуйста, вручную распространите сигнал :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate>`

Возвращает перевод текущего языка для указанного сообщения и контекста.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, message_plural\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate_plural>`

Возвращает перевод текущей локали для указанного сообщения, сообщения во множественном числе и контекста.

Число ``n`` — это число или количество объекта во множественном числе. Оно будет использоваться для того, чтобы направлять систему перевода для извлечения правильной формы множественного числа для выбранного языка.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
