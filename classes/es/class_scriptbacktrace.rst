:github_url: hide

.. _class_ScriptBacktrace:

ScriptBacktrace
===============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un backtrace capturado de un lenguaje de script específico.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**ScriptBacktrace** holds an already captured backtrace of a specific script language, such as GDScript or C#, which are captured using :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

See :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>` and :ref:`ProjectSettings.debug/settings/gdscript/always_track_local_variables<class_ProjectSettings_property_debug/settings/gdscript/always_track_local_variables>` for ways of controlling the contents of this class.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_ScriptBacktrace_method_format:

.. rst-class:: classref-method

:ref:`String<class_String>` **format**\ (\ indent_all\: :ref:`int<class_int>` = 0, indent_frames\: :ref:`int<class_int>` = 4\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_format>`

Converts the backtrace to a :ref:`String<class_String>`, where the entire string will be indented by ``indent_all`` number of spaces, and the individual stack frames will be additionally indented by ``indent_frames`` number of spaces.

\ **Note:** Calling :ref:`Object.to_string()<class_Object_method_to_string>` on a **ScriptBacktrace** will produce the same output as calling :ref:`format()<class_ScriptBacktrace_method_format>` with all parameters left at their default values.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_count**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_count>`

Returns the number of stack frames in the backtrace.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_frame_file**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_file>`

Returns the file name of the call site represented by the stack frame at the specified index.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_function:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_frame_function**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_function>`

Returns the name of the function called at the stack frame at the specified index.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_frame_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_line**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_frame_line>`

Returns the line number of the call site represented by the stack frame at the specified index.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_global_variable_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_global_variable_count**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_global_variable_count>`

Devuelve el número de variables globales (p. ej., singletons de carga automática) en el seguimiento de la pila.

\ **Nota:** El valor será distinto de cero solo si el parámetro ``include_variables`` era ``true`` al capturar el seguimiento de la pila con :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_global_variable_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_global_variable_name**\ (\ variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_global_variable_name>`

Devuelve el nombre de la variable global en el índice especificado.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_global_variable_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_global_variable_value**\ (\ variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_global_variable_value>`

Returns the value of the global variable at the specified index.

\ **Warning:** With GDScript backtraces, the returned :ref:`Variant<class_Variant>` will be the variable's actual value, including any object references. This means that storing the returned :ref:`Variant<class_Variant>` will prevent any such object from being deallocated, so it's generally recommended not to do so.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_language_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_language_name**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_language_name>`

Returns the name of the script language that this backtrace was captured from.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_local_variable_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_variable_count**\ (\ frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_local_variable_count>`

Returns the number of local variables in the stack frame at the specified index.

\ **Note:** This will be non-zero only if the ``include_variables`` parameter was ``true`` when capturing the backtrace with :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_local_variable_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_local_variable_name**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_local_variable_name>`

Returns the name of the local variable at the specified ``variable_index`` in the stack frame at the specified ``frame_index``.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_local_variable_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_local_variable_value**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_local_variable_value>`

Devuelve el valor de la variable local en el ``variable_index`` especificado en el frame de la pila en el ``frame_index`` especificado.

\ **Advertencia:** Con los backtraces de GDScript, el :ref:`Variant<class_Variant>` devuelto será el valor real de la variable, incluyendo cualquier referencia a objetos. Esto significa que almacenar el :ref:`Variant<class_Variant>` devuelto evitará que dicho objeto sea desasignado, por lo que generalmente se recomienda no hacerlo.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_member_variable_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_member_variable_count**\ (\ frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_member_variable_count>`

Devuelve el número de variables miembro en el frame de la pila en el índice especificado.

\ **Nota:** Esto será distinto de cero solo si el parámetro ``include_variables`` era ``true`` al capturar el backtrace con :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_member_variable_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_member_variable_name**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_member_variable_name>`

Devuelve el nombre de la variable miembro en el ``variable_index`` especificado en el frame de la pila en el ``frame_index`` especificado.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_get_member_variable_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_member_variable_value**\ (\ frame_index\: :ref:`int<class_int>`, variable_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_get_member_variable_value>`

Returns the value of the member variable at the specified ``variable_index`` in the stack frame at the specified ``frame_index``.

\ **Warning:** With GDScript backtraces, the returned :ref:`Variant<class_Variant>` will be the variable's actual value, including any object references. This means that storing the returned :ref:`Variant<class_Variant>` will prevent any such object from being deallocated, so it's generally recommended not to do so.

.. rst-class:: classref-item-separator

----

.. _class_ScriptBacktrace_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_ScriptBacktrace_method_is_empty>`

Returns ``true`` if the backtrace has no stack frames.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
