:github_url: hide

.. _class_StreamPeer:

StreamPeer
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`StreamPeerBuffer<class_StreamPeerBuffer>`, :ref:`StreamPeerExtension<class_StreamPeerExtension>`, :ref:`StreamPeerGZIP<class_StreamPeerGZIP>`, :ref:`StreamPeerSocket<class_StreamPeerSocket>`, :ref:`StreamPeerTLS<class_StreamPeerTLS>`

Clase base abstracta para interactuar con tranmisiones.

.. rst-class:: classref-introduction-group

Descripción
----------------------

StreamPeer es una clase base abstracta utilizada principalmente para protocolos basados en tranmisiones (como TCP). Proporciona una API para enviar y recibir datos a través de tranmisiones como datos brutos o strings de texto.

\ **Nota:** Al exportar a Android, asegúrate de habilitar el permiso ``INTERNET`` en el preset de exportación de Android antes de exportar el proyecto o usar el despliegue con un solo clic. De lo contrario, la comunicación de red de cualquier tipo será bloqueada por Android.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`big_endian<class_StreamPeer_property_big_endian>` | ``false`` |
   +-------------------------+---------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_8<class_StreamPeer_method_get_8>`\ (\ )                                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_16<class_StreamPeer_method_get_16>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_32<class_StreamPeer_method_get_32>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_64<class_StreamPeer_method_get_64>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_available_bytes<class_StreamPeer_method_get_available_bytes>`\ (\ ) |const|                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_data<class_StreamPeer_method_get_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_double<class_StreamPeer_method_get_double>`\ (\ )                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_float<class_StreamPeer_method_get_float>`\ (\ )                                                                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_half<class_StreamPeer_method_get_half>`\ (\ )                                                                                      |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_partial_data<class_StreamPeer_method_get_partial_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_string<class_StreamPeer_method_get_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                              |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u8<class_StreamPeer_method_get_u8>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u16<class_StreamPeer_method_get_u16>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u32<class_StreamPeer_method_get_u32>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u64<class_StreamPeer_method_get_u64>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_utf8_string<class_StreamPeer_method_get_utf8_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`get_var<class_StreamPeer_method_get_var>`\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_8<class_StreamPeer_method_put_8>`\ (\ value\: :ref:`int<class_int>`\ )                                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_16<class_StreamPeer_method_put_16>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_32<class_StreamPeer_method_put_32>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_64<class_StreamPeer_method_put_64>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`put_data<class_StreamPeer_method_put_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_double<class_StreamPeer_method_put_double>`\ (\ value\: :ref:`float<class_float>`\ )                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_float<class_StreamPeer_method_put_float>`\ (\ value\: :ref:`float<class_float>`\ )                                                 |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_half<class_StreamPeer_method_put_half>`\ (\ value\: :ref:`float<class_float>`\ )                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`put_partial_data<class_StreamPeer_method_put_partial_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_string<class_StreamPeer_method_put_string>`\ (\ value\: :ref:`String<class_String>`\ )                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u8<class_StreamPeer_method_put_u8>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u16<class_StreamPeer_method_put_u16>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u32<class_StreamPeer_method_put_u32>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u64<class_StreamPeer_method_put_u64>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_utf8_string<class_StreamPeer_method_put_utf8_string>`\ (\ value\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_var<class_StreamPeer_method_put_var>`\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_StreamPeer_property_big_endian:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **big_endian** = ``false`` :ref:`🔗<class_StreamPeer_property_big_endian>`

.. rst-class:: classref-property-setget

- |void| **set_big_endian**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_big_endian_enabled**\ (\ )

Si es ``true``, este **StreamPeer** usará el formato big-endian para codificar y decodificar.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_StreamPeer_method_get_8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_8>`

Obtiene un byte con signo del stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_16>`

Obtiene un valor con signo de 16 bits del stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_32>`

Obtiene un valor con signo de 32 bits del stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_64>`

Obtiene un valor con signo de 64 bits del stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_available_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_bytes**\ (\ ) |const| :ref:`🔗<class_StreamPeer_method_get_available_bytes>`

Devuelve la cantidad de bytes que este **StreamPeer** tiene disponible.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_data>`

Returns a chunk data with the received bytes, as an :ref:`Array<class_Array>` containing two elements: an :ref:`Error<enum_@GlobalScope_Error>` constant and a :ref:`PackedByteArray<class_PackedByteArray>`. ``bytes`` is the number of bytes to be received. If not enough bytes are available, the function will block until the desired amount is received.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_double:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_double**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_double>`

Obtiene un float de doble precisión del stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_float>`

Obtiene un float de precisión simple del stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_half:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_half**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_half>`

Obtiene un float de precisión media de la transmisión.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_partial_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_partial_data>`

Returns a chunk data with the received bytes, as an :ref:`Array<class_Array>` containing two elements: an :ref:`Error<enum_@GlobalScope_Error>` constant and a :ref:`PackedByteArray<class_PackedByteArray>`. ``bytes`` is the number of bytes to be received. If not enough bytes are available, the function will return how many were actually received.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_string>`

Obtiene una string ASCII con una longitud de bytes ``bytes`` del flujo. Si ``bytes`` es negativo (por defecto), la longitud se leerá del flujo utilizando el proceso inverso de :ref:`put_string()<class_StreamPeer_method_put_string>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u8>`

Obtiene un byte sin signo del stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u16>`

Obtiene un valor de 16 bits sin signo de la corriente.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u32>`

Obtiene un valor de 32 bits sin signo del stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u64>`

Obtiene un valor de 64 bits sin signo del stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_utf8_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_utf8_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_utf8_string>`

Gets a UTF-8 string with byte-length ``bytes`` from the stream (this decodes the string sent as UTF-8). If ``bytes`` is negative (default) the length will be read from the stream using the reverse process of :ref:`put_utf8_string()<class_StreamPeer_method_put_utf8_string>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_var:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_var**\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_get_var>`

Gets a Variant from the stream. If ``allow_objects`` is ``true``, decoding objects is allowed.

Internally, this uses the same decoding mechanism as the :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>` method.

\ **Warning:** Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_8:

.. rst-class:: classref-method

|void| **put_8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_8>`

Pone un byte con signo en el stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_16:

.. rst-class:: classref-method

|void| **put_16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_16>`

Pone un valor con signo de 16 bits en el stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_32:

.. rst-class:: classref-method

|void| **put_32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_32>`

Pone un valor con signo de 32 bits en el stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_64:

.. rst-class:: classref-method

|void| **put_64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_64>`

Pone un valor con signo de 64 bits en el stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_data>`

Envía un fragmento de datos a través de la conexión, bloqueando si es necesario hasta que se terminen de enviar los datos. Esta función devuelve un código :ref:`Error<enum_@GlobalScope_Error>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_double:

.. rst-class:: classref-method

|void| **put_double**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_double>`

Pone un float de precisión doble en el stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_float:

.. rst-class:: classref-method

|void| **put_float**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_float>`

Pone un float de precisión simple en el stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_half:

.. rst-class:: classref-method

|void| **put_half**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_half>`

Puts a half-precision float into the stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **put_partial_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_partial_data>`

Sends a chunk of data through the connection. If all the data could not be sent at once, only part of it will. This function returns two values, an :ref:`Error<enum_@GlobalScope_Error>` code and an integer, describing how much data was actually sent.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_string:

.. rst-class:: classref-method

|void| **put_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_string>`

Puts a zero-terminated ASCII string into the stream prepended by a 32-bit unsigned integer representing its size.

\ **Note:** To put an ASCII string without prepending its size, you can use :ref:`put_data()<class_StreamPeer_method_put_data>`:


.. tabs::

 .. code-tab:: gdscript

    put_data("Hello world".to_ascii_buffer())

 .. code-tab:: csharp

    PutData("Hello World".ToAsciiBuffer());



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u8:

.. rst-class:: classref-method

|void| **put_u8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u8>`

Pone un byte sin signo en el stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u16:

.. rst-class:: classref-method

|void| **put_u16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u16>`

Pone un valor de 16 bits sin signo en el stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u32:

.. rst-class:: classref-method

|void| **put_u32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u32>`

Pone un valor de 32 bits sin signo en el stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u64:

.. rst-class:: classref-method

|void| **put_u64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u64>`

Pone un valor de 64 bits sin signo en stream.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_utf8_string:

.. rst-class:: classref-method

|void| **put_utf8_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_utf8_string>`

Puts a zero-terminated UTF-8 string into the stream prepended by a 32 bits unsigned integer representing its size.

\ **Note:** To put a UTF-8 string without prepending its size, you can use :ref:`put_data()<class_StreamPeer_method_put_data>`:


.. tabs::

 .. code-tab:: gdscript

    put_data("Hello world".to_utf8_buffer())

 .. code-tab:: csharp

    PutData("Hello World".ToUtf8Buffer());



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_var:

.. rst-class:: classref-method

|void| **put_var**\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_put_var>`

Puts a Variant into the stream. If ``full_objects`` is ``true`` encoding objects is allowed (and can potentially include code).

Internally, this uses the same encoding mechanism as the :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` method.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
