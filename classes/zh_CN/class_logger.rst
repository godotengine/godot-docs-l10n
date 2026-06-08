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

- :doc:`日志 <../tutorials/scripting/logging>`

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

当有错误被记录时会调用此方法。该错误会提供其来源的 ``function``\ （函数名）、\ ``file``\ （文件名）和 ``line``\ （行号），以及生成该错误的 ``code``\ （错误代码）或一段 ``rationale``\ （原因说明）。

\ ``error_type`` 所提供的错误类型在 :ref:`ErrorType<enum_Logger_ErrorType>` 枚举中有具体描述。

此外，\ ``script_backtraces`` 会为每种脚本语言提供对应的回溯信息。默认情况下，这些信息仅在编辑器构建（editor builds）和调试构建（debug builds）中包含堆栈帧。如果你希望在发布构建（release builds）中也启用它们，需要开启 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`\ 。

\ **警告：** 此方法可能会被主线程以外的其他线程调用，甚至可能同时被调用。因此，在实现该方法时，你需要采取某种线程安全措施，比如使用 :ref:`Mutex<class_Mutex>`\ （互斥锁）。

\ **注意：** ``script_backtraces`` 不会包含任何被捕获的变量，因为这样做的性能开销极高。如果你需要获取这些变量，需要在 **Logger** 的虚方法内部，使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>` 自行捕获回溯信息。

\ **注意：** 不支持在此方法内部使用类似 :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` 或 :ref:`@GlobalScope.push_warning()<class_@GlobalScope_method_push_warning>` 这样的函数来记录错误，因为这可能会导致无限递归。这些错误只会显示在控制台输出中。

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
