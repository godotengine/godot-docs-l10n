:github_url: hide

.. _class_ScriptBacktrace:

ScriptBacktrace
===============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

捕獲的特定腳本語言的追蹤資訊。

.. rst-class:: classref-introduction-group

說明
----

**ScriptBacktrace** 中包含的是已捕獲的追蹤資訊，針對特定的腳本語言，例如 GDScript、C# 等。捕獲的方法是使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`\ 。

控制該類內容的方法見 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>` 和 :ref:`ProjectSettings.debug/settings/gdscript/always_track_local_variables<class_ProjectSettings_property_debug/settings/gdscript/always_track_local_variables>`\ 。

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

方法說明
--------

.. _class_ScriptBacktrace_method_format:

.. rst-class:: classref-method

:ref:`String<class_String>` **format**\ (\ indent_all\: :ref:`int<class_int>` = 0, indent_frames\: :ref:`int<class_int>` = 4\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_format>`

將捕獲資訊轉換為 :ref:`String<class_String>`\ ，整個字串都會縮進 ``indent_all`` 個空白，各個堆疊影格還會額外縮進 ``indent_frames`` 個空白。

\ **注意：**\ 對 **ScriptBacktrace** 呼叫 :ref:`Object.to_string()<class_Object_method_to_string>` 的輸出和保持所有預設參數呼叫 :ref:`format()<class_ScriptBacktrace_method_format>` 的輸出相同。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_count**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_count>`

回傳追蹤資訊中的堆疊影格數。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_frame_file**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_file>`

回傳位於指定索引處的堆疊影格所代表的呼叫點的檔名。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_function:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_frame_function**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_function>`

回傳位於指定索引處的堆疊影格所呼叫的函式名。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_line**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_line>`

回傳位於指定索引處的堆疊影格所代表的呼叫點的行號。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_global_variable_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_global_variable_count**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_global_variable_count>`

回傳追蹤資訊中的全域變數數（例如自動載入單例）。

\ **注意：**\ 使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>` 捕獲追蹤資訊時如果參數 ``include_variables`` 為 ``true``\ ，則數量非零。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_global_variable_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_global_variable_name**\ (\ variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_global_variable_name>`

回傳位於指定索引處的全域變數名稱。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_global_variable_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_global_variable_value**\ (\ variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_global_variable_value>`

回傳位於指定索引處的全域變數取值。

\ **警告：**\ 在 GDScript 追蹤資訊中，回傳的 :ref:`Variant<class_Variant>` 是變數的實際值，包含物件參照。這意味著儲存回傳的 :ref:`Variant<class_Variant>` 會阻止這類物件的釋放，因此通常不建議這麼做。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_language_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_language_name**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_language_name>`

回傳捕獲資訊所捕獲的腳本語言的名稱。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_local_variable_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_variable_count**\ (\ frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_local_variable_count>`

回傳位於指定索引處的堆疊影格中的區域變數數。

\ **注意：**\ 使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>` 捕獲追蹤資訊時如果參數 ``include_variables`` 為 ``true``\ ，則數量非零。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_local_variable_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_local_variable_name**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_local_variable_name>`

回傳索引為 ``frame_index`` 的堆疊影格中索引為 ``variable_index`` 的區域變數的名稱。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_local_variable_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_local_variable_value**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_local_variable_value>`

回傳索引為 ``frame_index`` 的堆疊影格中索引為 ``variable_index`` 的區域變數的取值。

\ **警告：**\ 在 GDScript 追蹤資訊中，回傳的 :ref:`Variant<class_Variant>` 是變數的實際值，包含物件參照。這意味著儲存回傳的 :ref:`Variant<class_Variant>` 會阻止這類物件的釋放，因此通常不建議這麼做。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_member_variable_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_member_variable_count**\ (\ frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_member_variable_count>`

回傳位於指定索引處的堆疊影格中的成員變數數。

\ **注意：**\ 使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>` 捕獲追蹤資訊時如果參數 ``include_variables`` 為 ``true``\ ，則數量非零。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_member_variable_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_member_variable_name**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_member_variable_name>`

回傳索引為 ``frame_index`` 的堆疊影格中索引為 ``variable_index`` 的成員變數的名稱。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_member_variable_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_member_variable_value**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_member_variable_value>`

回傳索引為 ``frame_index`` 的堆疊影格中索引為 ``variable_index`` 的成員變數的取值。

\ **警告：**\ 在 GDScript 追蹤資訊中，回傳的 :ref:`Variant<class_Variant>` 是變數的實際值，包含物件參照。這意味著儲存回傳的 :ref:`Variant<class_Variant>` 會阻止這類物件的釋放，因此通常不建議這麼做。

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_is_empty>`

如果追蹤資訊中沒有堆疊影格，則回傳 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
