:github_url: hide

.. _class_Logger:

Logger
======

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Пользовательский журнал для получения сообщений из внутренней ошибки/предупреждения.

.. rst-class:: classref-introduction-group

Описание
----------------

Пользовательский журнал для получения сообщений из внутренних ошибки/предупреждения. Регистраторы регистрируются через :ref:`OS.add_logger()<class_OS_method_add_logger>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Ведение журнала <../tutorials/scripting/logging>`

.. rst-class:: classref-reftable-group

Методы
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

Перечисления
------------------------

.. _enum_Logger_ErrorType:

.. rst-class:: classref-enumeration

enum **ErrorType**: :ref:`🔗<enum_Logger_ErrorType>`

.. _class_Logger_constant_ERROR_TYPE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_ERROR** = ``0``

Полученное сообщение является ошибкой.

.. _class_Logger_constant_ERROR_TYPE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_WARNING** = ``1``

Полученное сообщение является предупреждением.

.. _class_Logger_constant_ERROR_TYPE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SCRIPT** = ``2``

Полученное сообщение является ошибкой скрипта.

.. _class_Logger_constant_ERROR_TYPE_SHADER:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SHADER** = ``3``

Полученное сообщение является ошибкой шейдера.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Logger_private_method__log_error:

.. rst-class:: classref-method

|void| **_log_error**\ (\ function\: :ref:`String<class_String>`, file\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, code\: :ref:`String<class_String>`, rationale\: :ref:`String<class_String>`, editor_notify\: :ref:`bool<class_bool>`, error_type\: :ref:`int<class_int>`, script_backtraces\: :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\]\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_error>`

Вызывается при регистрации ошибки. Ошибка содержит ``function``, ``file`` и ``line``, из которых она возникла, а также либо ``code``, сгенерировавшего ошибку, либо ``rationale``.

Тип ошибки, предоставляемый ``error_type``, описан в перечислении :ref:`ErrorType<enum_Logger_ErrorType>`.

Кроме того, ``script_backtraces`` предоставляет трассировки стека для каждого из языков сценариев. По умолчанию они будут содержать кадры стека только в сборках редактора и отладочных сборках. Чтобы включить их и для релизных сборок, необходимо включить :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

\ **Предупреждение:** Этот метод будет вызываться из потоков, отличных от основного потока, возможно, одновременно, поэтому вам потребуется обеспечить потокобезопасность в его реализации, например, с помощью :ref:`Mutex<class_Mutex>`.

\ **Примечание:** Параметр ``script_backtraces`` не будет содержать никаких захваченных переменных из-за его непомерно высокой стоимости. Чтобы получить их, вам потребуется самостоятельно захватывать трассировки стека из виртуальных методов **Logger**, используя :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Примечание:** Запись ошибок из этого метода с помощью таких функций, как :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` или :ref:`@GlobalScope.push_warning()<class_@GlobalScope_method_push_warning>`, не поддерживается, поскольку это может привести к бесконечной рекурсии. Эти ошибки будут отображаться только в консольном выводе.

.. rst-class:: classref-item-separator

----

.. _class_Logger_private_method__log_message:

.. rst-class:: classref-method

|void| **_log_message**\ (\ message\: :ref:`String<class_String>`, error\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_message>`

Вызывается при записи сообщения в лог. Если ``error`` равно ``true``, то это сообщение предназначалось для отправки в ``stderr``.

\ **Предупреждение:** Этот метод будет вызываться из потоков, отличных от основного потока, возможно, одновременно, поэтому вам потребуется обеспечить потокобезопасность в его реализации, например, с помощью :ref:`Mutex<class_Mutex>`.

\ **Примечание:** Запись другого сообщения из этого метода с использованием таких функций, как :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`, не поддерживается, так как это может привести к бесконечной рекурсии. Эти сообщения будут отображаться только в консольном выводе.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
