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

记录错误时调用。错误会提供对应的函数 ``function``\ 、文件 ``file``\ 、行号 ``line`` 等信息，以及错误码 ``code`` 或者解释信息 ``rationale``\ 。

错误类型由 ``error_type`` 提供，描述见 :ref:`ErrorType<enum_Logger_ErrorType>` 枚举。

此外，\ ``script_backtraces`` 还提供了各个脚本语言的追踪信息。默认情况下，只有在编辑器构建和调试构建中才会包含栈帧。如果在发布构建中也需要启用栈帧信息，请启用 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`\ 。

\ **警告：**\ 该方法将从主线程以外的线程调用，可能会同时调用，因此需要在实现中提供某种线程安全机制，例如 :ref:`Mutex<class_Mutex>`\ 。

\ **注意：**\ 由于开销过大，\ ``script_backtraces`` 中不包含捕获变量。如果要获取变量，就需要使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>` 在 **Logger** 的虚函数中自行捕获追踪。

\ **注意：**\ 不支持使用 :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` 或 :ref:`@GlobalScope.push_warning()<class_@GlobalScope_method_push_warning>` 等函数记录该方法的错误，因为这可能会导致无限递归。这些错误只会显示在控制台输出中。

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
