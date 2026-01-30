:github_url: hide

.. _class_ScriptBacktrace:

ScriptBacktrace
===============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

捕获的特定脚本语言的追踪信息。

.. rst-class:: classref-introduction-group

描述
----

**ScriptBacktrace** 中包含的是已捕获的追踪信息，针对特定的脚本语言，例如 GDScript、C# 等。捕获的方法是使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`\ 。

控制该类内容的方法见 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>` 和 :ref:`ProjectSettings.debug/settings/gdscript/always_track_local_variables<class_ProjectSettings_property_debug/settings/gdscript/always_track_local_variables>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`   | :ref:`format<class_ScriptBacktrace_method_format>`\ (\ indent_all\: :ref:`int<class_int>` = 0, indent_frames\: :ref:`int<class_int>` = 4\ ) |const|                                 |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_frame_count<class_ScriptBacktrace_method_get_frame_count>`\ (\ ) |const|                                                                                                  |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`   | :ref:`get_frame_file<class_ScriptBacktrace_method_get_frame_file>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`   | :ref:`get_frame_function<class_ScriptBacktrace_method_get_frame_function>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                             |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_frame_line<class_ScriptBacktrace_method_get_frame_line>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_global_variable_count<class_ScriptBacktrace_method_get_global_variable_count>`\ (\ ) |const|                                                                              |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`   | :ref:`get_global_variable_name<class_ScriptBacktrace_method_get_global_variable_name>`\ (\ variable_index\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_global_variable_value<class_ScriptBacktrace_method_get_global_variable_value>`\ (\ variable_index\: :ref:`int<class_int>`\ ) |const|                                      |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`   | :ref:`get_language_name<class_ScriptBacktrace_method_get_language_name>`\ (\ ) |const|                                                                                              |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_local_variable_count<class_ScriptBacktrace_method_get_local_variable_count>`\ (\ frame_index\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`   | :ref:`get_local_variable_name<class_ScriptBacktrace_method_get_local_variable_name>`\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const|     |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_local_variable_value<class_ScriptBacktrace_method_get_local_variable_value>`\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const|   |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_member_variable_count<class_ScriptBacktrace_method_get_member_variable_count>`\ (\ frame_index\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`   | :ref:`get_member_variable_name<class_ScriptBacktrace_method_get_member_variable_name>`\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const|   |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_member_variable_value<class_ScriptBacktrace_method_get_member_variable_value>`\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_empty<class_ScriptBacktrace_method_is_empty>`\ (\ ) |const|                                                                                                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ScriptBacktrace_method_format:

.. rst-class:: classref-method

:ref:`String<class_String>` **format**\ (\ indent_all\: :ref:`int<class_int>` = 0, indent_frames\: :ref:`int<class_int>` = 4\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_format>`

将捕获信息转换为 :ref:`String<class_String>`\ ，整个字符串都会缩进 ``indent_all`` 个空格，各个栈帧还会额外缩进 ``indent_frames`` 个空格。

\ **注意：**\ 对 **ScriptBacktrace** 调用 :ref:`Object.to_string()<class_Object_method_to_string>` 的输出和保持所有默认参数调用 :ref:`format()<class_ScriptBacktrace_method_format>` 的输出相同。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_count**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_count>`

返回追踪信息中的栈帧数。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_frame_file**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_file>`

返回位于指定索引处的栈帧所代表的调用点的文件名。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_function:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_frame_function**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_function>`

返回位于指定索引处的栈帧所调用的函数名。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_line**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_line>`

返回位于指定索引处的栈帧所代表的调用点的行号。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_global_variable_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_global_variable_count**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_global_variable_count>`

返回追踪信息中的全局变量数（例如自动加载单例）。

\ **注意：**\ 使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>` 捕获追踪信息时如果参数 ``include_variables`` 为 ``true``\ ，则数量非零。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_global_variable_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_global_variable_name**\ (\ variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_global_variable_name>`

返回位于指定索引处的全局变量名称。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_global_variable_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_global_variable_value**\ (\ variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_global_variable_value>`

返回位于指定索引处的全局变量取值。

\ **警告：**\ 在 GDScript 追踪信息中，返回的 :ref:`Variant<class_Variant>` 是变量的实际值，包含对象引用。这意味着存储返回的 :ref:`Variant<class_Variant>` 会阻止这类对象的释放，因此通常不建议这么做。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_language_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_language_name**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_language_name>`

返回捕获信息所捕获的脚本语言的名称。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_local_variable_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_variable_count**\ (\ frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_local_variable_count>`

返回位于指定索引处的栈帧中的局部变量数。

\ **注意：**\ 使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>` 捕获追踪信息时如果参数 ``include_variables`` 为 ``true``\ ，则数量非零。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_local_variable_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_local_variable_name**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_local_variable_name>`

返回索引为 ``frame_index`` 的栈帧中索引为 ``variable_index`` 的局部变量的名称。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_local_variable_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_local_variable_value**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_local_variable_value>`

返回索引为 ``frame_index`` 的栈帧中索引为 ``variable_index`` 的局部变量的取值。

\ **警告：**\ 在 GDScript 追踪信息中，返回的 :ref:`Variant<class_Variant>` 是变量的实际值，包含对象引用。这意味着存储返回的 :ref:`Variant<class_Variant>` 会阻止这类对象的释放，因此通常不建议这么做。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_member_variable_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_member_variable_count**\ (\ frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_member_variable_count>`

返回位于指定索引处的栈帧中的成员变量数。

\ **注意：**\ 使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>` 捕获追踪信息时如果参数 ``include_variables`` 为 ``true``\ ，则数量非零。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_member_variable_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_member_variable_name**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_member_variable_name>`

返回索引为 ``frame_index`` 的栈帧中索引为 ``variable_index`` 的成员变量的名称。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_member_variable_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_member_variable_value**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_member_variable_value>`

返回索引为 ``frame_index`` 的栈帧中索引为 ``variable_index`` 的成员变量的取值。

\ **警告：**\ 在 GDScript 追踪信息中，返回的 :ref:`Variant<class_Variant>` 是变量的实际值，包含对象引用。这意味着存储返回的 :ref:`Variant<class_Variant>` 会阻止这类对象的释放，因此通常不建议这么做。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_is_empty>`

如果追踪信息中没有栈帧，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
