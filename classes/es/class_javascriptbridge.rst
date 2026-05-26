:github_url: hide

.. _class_JavaScriptBridge:

JavaScriptBridge
================

**Hereda:** :ref:`Object<class_Object>`

Singleton que conecta el motor con el contexto de JavaScript del navegador en la exportación Web.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El singleton JavaScriptBridge solo se implementa en la exportación Web. Se utiliza para acceder al contexto de JavaScript del navegador. Esto permite la interacción con páginas incrustadas o la llamada a APIs de JavaScript de terceros.

\ **Nota:** Este singleton puede desactivarse en tiempo de compilación para mejorar la seguridad. De forma predeterminada, el singleton JavaScriptBridge está activado. Las plantillas de exportación oficiales también tienen el singleton JavaScriptBridge activado. Véase :doc:`Compilar para la Web <../engine_details/development/compiling/compiling_for_web>` en la documentación para obtener más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`El singleton JavaScriptBridge <../tutorials/platform/web/javascript_bridge>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`create_callback<class_JavaScriptBridge_method_create_callback>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`create_object<class_JavaScriptBridge_method_create_object>`\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg|                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`download_buffer<class_JavaScriptBridge_method_download_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`eval<class_JavaScriptBridge_method_eval>`\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ )                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`force_fs_sync<class_JavaScriptBridge_method_force_fs_sync>`\ (\ )                                                                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`get_interface<class_JavaScriptBridge_method_get_interface>`\ (\ interface\: :ref:`String<class_String>`\ )                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_js_buffer<class_JavaScriptBridge_method_is_js_buffer>`\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`js_buffer_to_packed_byte_array<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`pwa_needs_update<class_JavaScriptBridge_method_pwa_needs_update>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`pwa_update<class_JavaScriptBridge_method_pwa_update>`\ (\ )                                                                                                                                                                        |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_JavaScriptBridge_signal_pwa_update_available:

.. rst-class:: classref-signal

**pwa_update_available**\ (\ ) :ref:`🔗<class_JavaScriptBridge_signal_pwa_update_available>`

Emitida cuando se ha detectado una actualización para esta aplicación web progresiva pero está esperando a ser activada porque una versión anterior está activa. Véase :ref:`pwa_update()<class_JavaScriptBridge_method_pwa_update>` para forzar que la actualización se realice inmediatamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_JavaScriptBridge_method_create_callback:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **create_callback**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaScriptBridge_method_create_callback>`

Crea una referencia a un :ref:`Callable<class_Callable>` que puede ser utilizado como un callback por JavaScript. La referencia debe mantenerse hasta que el callback se produzca, o no será llamado en absoluto. Véase :ref:`JavaScriptObject<class_JavaScriptObject>` para su uso.

\ **Nota:** La función de callback debe tomar exactamente un argumento :ref:`Array<class_Array>`, que va a ser el `objeto arguments <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments>`__ de JavaScript convertido en un array.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_create_object:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **create_object**\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_JavaScriptBridge_method_create_object>`

Crea un nuevo objeto de JavaScript usando el constructor ``new``. El ``object`` debe ser una propiedad válida de la ``window`` de JavaScript. Véase :ref:`JavaScriptObject<class_JavaScriptObject>` para su uso.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_download_buffer:

.. rst-class:: classref-method

|void| **download_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) :ref:`🔗<class_JavaScriptBridge_method_download_buffer>`

Solicita al usuario descargar un archivo que contiene el ``buffer`` especificado. El archivo tendrá el ``name`` y el tipo ``mime`` dados.

\ **Nota:** El navegador puede anular el `tipo MIME <https://en.wikipedia.org/wiki/Media_type>`__ proporcionado basándose en la extensión del ``name`` del archivo.

\ **Nota:** Los navegadores podrían bloquear la descarga si :ref:`download_buffer()<class_JavaScriptBridge_method_download_buffer>` no se llama desde una interacción del usuario (por ejemplo, un clic de botón).

\ **Nota:** Los navegadores podrían pedir permiso al usuario o bloquear la descarga si se realizan varias solicitudes de descarga en rápida sucesión.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_eval:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **eval**\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JavaScriptBridge_method_eval>`

Ejecuta la string ``code`` como código de JavaScript dentro de la ventana del navegador. Esta es una llamada a la función global de JavaScript ``eval()``.

Si ``use_global_execution_context`` es ``true``, el código se evaluará en el contexto de ejecución global. De lo contrario, se evaluará en el contexto de ejecución de una función dentro del entorno de tiempo de ejecución del motor.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_force_fs_sync:

.. rst-class:: classref-method

|void| **force_fs_sync**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_force_fs_sync>`

Fuerza la sincronización del sistema de archivos persistente (cuando está habilitado).

\ **Nota: ** Esto sólo es útil para módulos o extensiones que no pueden usar :ref:`FileAccess<class_FileAccess>` para escribir archivos.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_get_interface:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **get_interface**\ (\ interface\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaScriptBridge_method_get_interface>`

Devuelve una interfaz a un objeto de JavaScript que puede ser utilizado por scripts. La ``interface`` debe ser una propiedad válida de la ventana de JavaScript ````. El callback debe aceptar un solo argumento :ref:`Array<class_Array>`, el cual contiene los ``arguments`` de JavaScript. Véase :ref:`JavaScriptObject<class_JavaScriptObject>` para su uso.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_is_js_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_js_buffer**\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_is_js_buffer>`

Devuelve ``true`` si el ``javascript_object`` dado es de tipo `[code]ArrayBuffer[/code] <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer>`__, `[code]DataView[/code] <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView>`__, o uno de los muchos `objetos de tipo array <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray>`__.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_js_buffer_to_packed_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **js_buffer_to_packed_byte_array**\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`

Devuelve una copia del contenido de ``javascript_buffer`` como un :ref:`PackedByteArray<class_PackedByteArray>`. Véase también :ref:`is_js_buffer()<class_JavaScriptBridge_method_is_js_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_needs_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **pwa_needs_update**\ (\ ) |const| :ref:`🔗<class_JavaScriptBridge_method_pwa_needs_update>`

Devuelve ``true`` si una nueva versión de la aplicación web progresiva está esperando ser activada.

\ **Nota:** Solo es relevante cuando se exporta como una Aplicación Web Progresiva.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pwa_update**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_pwa_update>`

Realiza la actualización en vivo de la aplicación web progresiva. Forzando la instalación de la nueva versión y la recarga de la página.

\ **Nota:** Tu aplicación se **recargará en todas las pestañas del navegador**.

\ **Nota:** Solo es relevante cuando se exporta como una Aplicación Web Progresiva y :ref:`pwa_needs_update()<class_JavaScriptBridge_method_pwa_needs_update>` devuelve ``true``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
