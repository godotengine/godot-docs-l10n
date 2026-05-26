:github_url: hide

.. _class_Logger:

Logger
======

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

自定义日志记录器，能够从内部错误/警告流接收消息。

.. rst-class:: classref-introduction-group

描述
----

自定义日志记录器，能够从内部错误/警告流接收消息。日志记录器通过 :ref:`OS.add_logger()<class_OS_method_add_logger>` 注册。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`Logging <../tutorials/scripting/logging>`

.. rst-class:: classref-reftable-group

方法
----

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

枚举
----

.. _enum_Logger_ErrorType:

.. rst-class:: classref-enumeration

enum **ErrorType**: :ref:`🔗<enum_Logger_ErrorType>`

.. _class_Logger_constant_ERROR_TYPE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_ERROR** = ``0``

接收到的消息是错误。

.. _class_Logger_constant_ERROR_TYPE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_WARNING** = ``1``

接收到的消息是警告。

.. _class_Logger_constant_ERROR_TYPE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SCRIPT** = ``2``

接收到的消息是脚本错误。

.. _class_Logger_constant_ERROR_TYPE_SHADER:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SHADER** = ``3``

接收到的消息是着色器错误。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Logger_private_method__log_error:

.. rst-class:: classref-method

|void| **_log_error**\ (\ function\: :ref:`String<class_String>`, file\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, code\: :ref:`String<class_String>`, rationale\: :ref:`String<class_String>`, editor_notify\: :ref:`bool<class_bool>`, error_type\: :ref:`int<class_int>`, script_backtraces\: :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\]\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_error>`

Called when an error is logged. The error provides the ``function``, ``file``, and ``line`` that it originated from, as well as either the ``code`` that generated the error or a ``rationale``.

The type of error provided by ``error_type`` is described in the :ref:`ErrorType<enum_Logger_ErrorType>` enumeration.

Additionally, ``script_backtraces`` provides backtraces for each of the script languages. These will only contain stack frames in editor builds and debug builds by default. To enable them for release builds as well, you need to enable :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

\ **Warning:** This method will be called from threads other than the main thread, possibly at the same time, so you will need to have some kind of thread-safety in your implementation of it, like a :ref:`Mutex<class_Mutex>`.

\ **Note:** ``script_backtraces`` will not contain any captured variables, due to its prohibitively high cost. To get those, you will need to capture the backtraces yourself, from within the **Logger** virtual methods, using :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Note:** Logging errors from this method using functions like :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` or :ref:`@GlobalScope.push_warning()<class_@GlobalScope_method_push_warning>` is not supported, as it could cause infinite recursion. These errors will only show up in the console output.

.. rst-class:: classref-item-separator

----

.. _class_Logger_private_method__log_message:

.. rst-class:: classref-method

|void| **_log_message**\ (\ message\: :ref:`String<class_String>`, error\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_message>`

当记录消息时调用。如果 ``error`` 为 ``true``\ ，则该消息应发送到 ``stderr``\ 。

\ **警告：**\ 该方法可能会从主线程以外的其他线程调用，甚至可能同时被多个线程调用，因此需要在实现该方法时确保线程安全，例如使用 :ref:`Mutex<class_Mutex>`\ 。

\ **注意：**\ 不支持在该方法中使用 :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>` 等函数记录其他消息，因为这可能导致无限递归。这些消息只会显示在控制台输出中。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
