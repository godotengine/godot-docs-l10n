:github_url: hide

.. _class_Logger:

Logger
======

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Logger personalizado para recibir mensajes del flujo interno de errores/advertencias.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Logger personalizado para recibir mensajes del flujo interno de errores/advertencias. Los loggers se registran a través de :ref:`OS.add_logger()<class_OS_method_add_logger>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_Logger_ErrorType:

.. rst-class:: classref-enumeration

enum **ErrorType**: :ref:`🔗<enum_Logger_ErrorType>`

.. _class_Logger_constant_ERROR_TYPE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_ERROR** = ``0``

El mensaje recibido es un error.

.. _class_Logger_constant_ERROR_TYPE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_WARNING** = ``1``

El mensaje recibido es una advertencia.

.. _class_Logger_constant_ERROR_TYPE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SCRIPT** = ``2``

El mensaje recibido es un error de script.

.. _class_Logger_constant_ERROR_TYPE_SHADER:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SHADER** = ``3``

El mensaje recibido es un error de shader.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Logger_private_method__log_error:

.. rst-class:: classref-method

|void| **_log_error**\ (\ function\: :ref:`String<class_String>`, file\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, code\: :ref:`String<class_String>`, rationale\: :ref:`String<class_String>`, editor_notify\: :ref:`bool<class_bool>`, error_type\: :ref:`int<class_int>`, script_backtraces\: :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\]\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_error>`

Llamado cuando se registra un error. El error proporciona la ``function``, el ``file`` y la ``line`` de donde se originó, así como el ``code`` que generó el error o una ``rationale``.

El tipo de error proporcionado por ``error_type`` se describe en la enumeración :ref:`ErrorType<enum_Logger_ErrorType>`.

Además, ``script_backtraces`` proporciona rastreos de pila para cada uno de los lenguajes de script. Estos solo contendrán marcos de pila en las compilaciones del editor y las compilaciones de depuración por defecto. Para habilitarlos también para las compilaciones de lanzamiento, debes habilitar :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

\ **Advertencia:** Este método será llamado desde hilos distintos al hilo principal, posiblemente al mismo tiempo, por lo que necesitarás tener algún tipo de seguridad de hilos en tu implementación, como un :ref:`Mutex<class_Mutex>`.

\ **Nota:** ``script_backtraces`` no contendrá ninguna variable capturada, debido a su costo prohibitivo. Para obtenerlas, deberás capturar los rastreos de pila tú mismo, desde dentro de los métodos virtuales de **Logger**, usando :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Nota:** No se admite el registro de errores desde este método usando funciones como :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` o :ref:`@GlobalScope.push_warning()<class_@GlobalScope_method_push_warning>`, ya que podría causar una recursión infinita. Estos errores solo aparecerán en la salida de la consola.

.. rst-class:: classref-item-separator

----

.. _class_Logger_private_method__log_message:

.. rst-class:: classref-method

|void| **_log_message**\ (\ message\: :ref:`String<class_String>`, error\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_message>`

Llamado cuando se registra un mensaje. Si ``error`` es ``true``, entonces este mensaje estaba destinado a ser enviado a ``stderr``.

\ **Advertencia:** Este método será llamado desde hilos distintos al hilo principal, posiblemente al mismo tiempo, por lo que necesitarás tener algún tipo de seguridad de hilos en tu implementación, como un :ref:`Mutex<class_Mutex>`.

\ **Nota:** No se admite el registro de otro mensaje desde este método usando funciones como :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`, ya que podría causar una recursión infinita. Estos mensajes solo aparecerán en la salida de la consola.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
