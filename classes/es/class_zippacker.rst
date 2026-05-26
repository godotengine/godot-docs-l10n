:github_url: hide

.. _class_ZIPPacker:

ZIPPacker
=========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Permite la creación de archivos ZIP.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase implementa un escritor que permite almacenar múltiples blobs en un archivo ZIP. Véase también :ref:`ZIPReader<class_ZIPReader>` y :ref:`PCKPacker<class_PCKPacker>`.

::

    # Crea un archivo ZIP con un solo archivo en su raíz.
    func write_zip_file():
        var writer = ZIPPacker.new()
        var err = writer.open("user://archive.zip")
        if err != OK:
            return err
        writer.start_file("hello.txt")
        writer.write_file("Hello World".to_utf8_buffer())
        writer.close_file()

        writer.close()
        return OK

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`compression_level<class_ZIPPacker_property_compression_level>` | ``-1`` |
   +-----------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_directory<class_ZIPPacker_method_add_directory>`\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 493, modified_time\: :ref:`int<class_int>` = 0\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close<class_ZIPPacker_method_close>`\ (\ )                                                                                                                                                                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close_file<class_ZIPPacker_method_close_file>`\ (\ )                                                                                                                                                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`open<class_ZIPPacker_method_open>`\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ )                                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_file<class_ZIPPacker_method_start_file>`\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 420, modified_time\: :ref:`int<class_int>` = 0\ )       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`write_file<class_ZIPPacker_method_write_file>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_ZIPPacker_ZipAppend:

.. rst-class:: classref-enumeration

enum **ZipAppend**: :ref:`🔗<enum_ZIPPacker_ZipAppend>`

.. _class_ZIPPacker_constant_APPEND_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATE** = ``0``

Crea un nuevo archivo .zip en la ruta dada.

.. _class_ZIPPacker_constant_APPEND_CREATEAFTER:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATEAFTER** = ``1``

Añade un nuevo archivo .zip al final del archivo ya existente en la ruta indicada.

.. _class_ZIPPacker_constant_APPEND_ADDINZIP:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_ADDINZIP** = ``2``

Añade nuevos archivos al archivo .zip existente en la ruta indicada.

.. rst-class:: classref-item-separator

----

.. _enum_ZIPPacker_CompressionLevel:

.. rst-class:: classref-enumeration

enum **CompressionLevel**: :ref:`🔗<enum_ZIPPacker_CompressionLevel>`

.. _class_ZIPPacker_constant_COMPRESSION_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_DEFAULT** = ``-1``

Inicia un archivo con el nivel de compresión predeterminado de Deflate (``6``). Este es un buen equilibrio entre velocidad y tamaño de archivo.

.. _class_ZIPPacker_constant_COMPRESSION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_NONE** = ``0``

Inicia un archivo sin compresión. Este modo de compresión, también conocido como "Almacenar", es el más rápido para comprimir archivos en un archivo ZIP. Considera usar este modo para archivos ya comprimidos (como JPEG, PNG, MP3 u Ogg Vorbis).

.. _class_ZIPPacker_constant_COMPRESSION_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_FAST** = ``1``

Inicia un archivo con el nivel de compresión Deflate más rápido (``1``). Esto permite una compresión rápida, pero resulta en archivos de mayor tamaño que :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. La velocidad de descompresión generalmente no se ve afectada por el nivel de compresión seleccionado.

.. _class_ZIPPacker_constant_COMPRESSION_BEST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_BEST** = ``9``

Inicia un archivo con el mejor nivel de compresión de Deflate (``9``). Esto es lento de comprimir, pero resulta en archivos más pequeños que :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. La velocidad de descompresión generalmente no se ve afectada por el nivel de compresión seleccionado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ZIPPacker_property_compression_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compression_level** = ``-1`` :ref:`🔗<class_ZIPPacker_property_compression_level>`

.. rst-class:: classref-property-setget

- |void| **set_compression_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_compression_level**\ (\ )

El nivel de compresión utilizado al llamar a :ref:`start_file()<class_ZIPPacker_method_start_file>`. Usa :ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` como referencia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ZIPPacker_method_add_directory:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_directory**\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 493, modified_time\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_add_directory>`

Adds directory to the archive. If ``modified_time`` is set to ``0``, current system time is used.

\ **Note:** Directories are automatically created when :ref:`start_file()<class_ZIPPacker_method_start_file>` is called, use this function before adding files to create directories with custom permissions and modification time.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close>`

Cierra los recursos subyacentes utilizados por esta instancia.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close_file>`

Detiene la escritura en un archivo dentro del archivo comprimido.

Fallará si no hay ningún archivo abierto.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_open>`

Abre un archivo .zip para escribir en la ruta indicada utilizando el modo de escritura especificado.

Debe llamarse antes que cualquier otra función.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_start_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_file**\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 420, modified_time\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_start_file>`

Starts writing to a file within the archive. Only one file can be written at the same time. If ``modified_time`` is set to ``0``, current system time is used.

Must be called after :ref:`open()<class_ZIPPacker_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_write_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_file**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ZIPPacker_method_write_file>`

Escribe los datos del parámetro en el archivo.

Debe llamarse después de :ref:`start_file()<class_ZIPPacker_method_start_file>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
