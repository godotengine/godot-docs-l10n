:github_url: hide

.. _class_Logger:

Logger
======

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Користувацький реєстратор для отримання повідомлень із внутрішнього потоку помилок/попереджень.

.. rst-class:: classref-introduction-group

Опис
--------

Користувацький логер для отримання повідомлень із внутрішнього потоку помилок/попереджень. Логери реєструються через :ref:`OS.add_logger()<class_OS_method_add_logger>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_log_error<class_Logger_private_method__log_error>`\ (\ function\: :ref:`String<class_String>`, file\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, code\: :ref:`String<class_String>`, rationale\: :ref:`String<class_String>`, editor_notify\: :ref:`bool<class_bool>`, error_type\: :ref:`int<class_int>`, script_backtraces\: :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\]\ ) |virtual| |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_log_message<class_Logger_private_method__log_message>`\ (\ message\: :ref:`String<class_String>`, error\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                                                                                                                                                                                         |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Logger_ErrorType:

.. rst-class:: classref-enumeration

enum **ErrorType**: :ref:`🔗<enum_Logger_ErrorType>`

.. _class_Logger_constant_ERROR_TYPE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_ERROR** = ``0``

Отримане повідомлення є помилкою.

.. _class_Logger_constant_ERROR_TYPE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_WARNING** = ``1``

Отримане повідомлення є попередженням.

.. _class_Logger_constant_ERROR_TYPE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SCRIPT** = ``2``

Отримане повідомлення є помилкою скрипта.

.. _class_Logger_constant_ERROR_TYPE_SHADER:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SHADER** = ``3``

Отримане повідомлення є помилкою шейдера.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Logger_private_method__log_error:

.. rst-class:: classref-method

|void| **_log_error**\ (\ function\: :ref:`String<class_String>`, file\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, code\: :ref:`String<class_String>`, rationale\: :ref:`String<class_String>`, editor_notify\: :ref:`bool<class_bool>`, error_type\: :ref:`int<class_int>`, script_backtraces\: :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\]\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_error>`

Викликається, коли реєструється помилка. Помилка містить ``function``, ``file`` та ``line``, з яких вона виникла, а також або ``code``, який спричинив помилку, або ``rationale``.

Тип помилки, що надається ``error_type``, описано у переліку :ref:`ErrorType<enum_Logger_ErrorType>`.

Крім того, ``script_backtraces`` надає зворотні трасування для кожної з мов сценаріїв. За замовчуванням вони міститимуть стекові фрейми лише в збірках редактора та налагодження. Щоб увімкнути їх також для релізних збірок, потрібно ввімкнути :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

\ **Попередження:** Цей метод буде викликано з потоків, відмінних від основного, можливо, одночасно, тому вам знадобиться певний тип потокобезпечності у вашій реалізації, наприклад, :ref:`Mutex<class_Mutex>`.

\ **Примітка:** ``script_backtraces`` не міститиме жодних захоплених змінних через свою надмірно високу вартість. Щоб отримати їх, вам потрібно буде самостійно захопити зворотні трасування з віртуальних методів **Logger**, використовуючи :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Примітка:** Реєстрація помилок з цього методу за допомогою таких функцій, як :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` або :ref:`@GlobalScope.push_warning()<class_@GlobalScope_method_push_warning>`, не підтримується, оскільки це може призвести до нескінченної рекурсії. Ці помилки відображатимуться лише у виводі консолі.

.. rst-class:: classref-item-separator

----

.. _class_Logger_private_method__log_message:

.. rst-class:: classref-method

|void| **_log_message**\ (\ message\: :ref:`String<class_String>`, error\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_message>`

Викликається, коли реєструється повідомлення. Якщо ``error`` має значення ``true``, то це повідомлення мало бути надіслане до ``stderr``.

\ **Попередження:** Цей метод буде викликано з потоків, відмінних від основного потоку, можливо, одночасно, тому вам знадобиться певний захист від потоків у вашій реалізації, наприклад, :ref:`Mutex<class_Mutex>`.

\ **Примітка:** Реєстрація іншого повідомлення з цього методу за допомогою функцій, таких як :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`, не підтримується, оскільки це може призвести до нескінченної рекурсії. Ці повідомлення відображатимуться лише у виводі консолі.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
