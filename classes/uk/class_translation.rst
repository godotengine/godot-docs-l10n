:github_url: hide

.. _class_Translation:

Translation
===========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`OptimizedTranslation<class_OptimizedTranslation>`

Переклад мови, що відображає збір рядків до окремих перекладів.

.. rst-class:: classref-introduction-group

Опис
--------

**Translation** зіставляє колекцію рядків з їхніми окремими перекладами, а також надає зручні методи для множини.

\ **Translation** складається з повідомлень. Повідомлення ідентифікується за контекстом та неперекладеним рядком. На відміну від `gettext <https://www.gnu.org/software/gettext/>`__, використання порожнього контекстного рядка в Godot означає невикористання жодного контексту.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Інтернаціоналізація ігор <../tutorials/i18n/internationalizing_games>`

- :doc:`Локалізація за допомогою gettext <../tutorials/i18n/localization_using_gettext>`

- :doc:`Локальні <../tutorials/i18n/locales>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`String<class_String>` | :ref:`locale<class_Translation_property_locale>`                               | ``"en"`` |
   +-----------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`String<class_String>` | :ref:`plural_rules_override<class_Translation_property_plural_rules_override>` | ``""``   |
   +-----------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методи
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

Описи властивостей
------------------------------------

.. _class_Translation_property_locale:

.. rst-class:: classref-property

:ref:`String<class_String>` **locale** = ``"en"`` :ref:`🔗<class_Translation_property_locale>`

.. rst-class:: classref-property-setget

- |void| **set_locale**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_locale**\ (\ )

Місце перекладу.

.. rst-class:: classref-item-separator

----

.. _class_Translation_property_plural_rules_override:

.. rst-class:: classref-property

:ref:`String<class_String>` **plural_rules_override** = ``""`` :ref:`🔗<class_Translation_property_plural_rules_override>`

.. rst-class:: classref-property-setget

- |void| **set_plural_rules_override**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_plural_rules_override**\ (\ )

Рядок правил множини, які потрібно застосувати. Див. приклади та додаткову інформацію за посиланням `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__.

Якщо поле порожнє або недійсне, використовуються правила множини за замовчуванням з методу :ref:`TranslationServer.get_plural_rules()<class_TranslationServer_method_get_plural_rules>`. Англійські правила множини використовуються як резервний варіант.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Translation_private_method__get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_message>`

Віртуальний метод для перевизначення :ref:`get_message()<class_Translation_method_get_message>`.

.. rst-class:: classref-item-separator

----

.. _class_Translation_private_method__get_plural_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_plural_message>`

Віртуальний метод перевизначення :ref:`get_plural_message()<class_Translation_method_get_plural_message>`.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_message>`

Додає повідомлення, якщо не існує, слідуючи його перекладом.

Додатковий контекст може бути використаний для визначення контексту перекладу або диференціації полісемічних слів.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_plural_message:

.. rst-class:: classref-method

|void| **add_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_messages\: :ref:`PackedStringArray<class_PackedStringArray>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_plural_message>`

Додає повідомлення, що містить переклад у множині, якщо він відсутній, а потім його переклад.

Додатковий контекст може бути використаний для уточнення контексту перекладу або розрізнення полісемічних слів.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_erase_message:

.. rst-class:: classref-method

|void| **erase_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_erase_message>`

Здає повідомлення.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Translation_method_get_message>`

Повернення перекладу повідомлення.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_count>`

Повертає кількість наявних повідомлень.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_list>`

Повертає ключі всіх повідомлень, тобто контекст та неперекладені рядки кожного повідомлення.

\ **Примітка:** Якщо повідомлення не використовує контекст, відповідним елементом є неперекладений рядок. В іншому випадку відповідним елементом є контекст та неперекладений рядок, розділені символом EOT (``U+0004``). Це зроблено для цілей сумісності.

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

Повертає переклад повідомлення, що містить форми множини.

Число ``n`` – це номер або кількість об'єкта множини. Воно використовуватиметься для того, щоб система перекладу знайшла правильну форму множини для вибраної мови.

\ **Примітка:** Форми множини підтримуються лише в :doc:`перекладах на основі gettext (PO) <../tutorials/i18n/localization_using_gettext>`, а не в CSV.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_translated_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_translated_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_translated_message_list>`

Повертає всі перекладені рядки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
