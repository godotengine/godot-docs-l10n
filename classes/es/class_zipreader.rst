:github_url: hide

.. _class_ZIPReader:

ZIPReader
=========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Permite leer el contenido de un archivo ZIP.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase implementa un lector que puede extraer el contenido de archivos individuales dentro de un archivo ZIP. Véase también :ref:`ZIPPacker<class_ZIPPacker>`.

::

    # Leer un solo archivo de un archivo ZIP.
    func read_zip_file():
        var reader = ZIPReader.new()
        var err = reader.open("user://archive.zip")
        if err != OK:
            return PackedByteArray()
        var res = reader.read_file("hello.txt")
        reader.close()
        return res

    # Extraer todos los archivos de un archivo ZIP, conservando los directorios dentro de él.
    # Esto actúa como la funcionalidad de "Extraer todo" de la mayoría de los gestores de archivos.
    func extract_all_from_zip():
        var reader = ZIPReader.new()
        reader.open("res://archive.zip")

        # Directorio de destino para los archivos extraídos (esta carpeta debe existir antes de la extracción).
        # No todos los archivos ZIP ponen todo en una sola carpeta raíz,
        # lo que significa que varios archivos/carpetas pueden ser creados en `root_dir` después de la extracción.
        var root_dir = DirAccess.open("user://")

        var files = reader.get_files()
        for file_path in files:
            # Si la entrada actual es un directorio.
            if file_path.ends_with("/"):
                root_dir.make_dir_recursive(file_path)
                continue

            # Escribir el contenido del archivo, creando carpetas automáticamente cuando sea necesario.
            # No todos los archivos ZIP están estrictamente ordenados, así que necesitamos hacer esto en caso de que
            # la entrada del archivo venga antes que la entrada de la carpeta.
            root_dir.make_dir_recursive(root_dir.get_current_dir().path_join(file_path).get_base_dir())
            var file = FileAccess.open(root_dir.get_current_dir().path_join(file_path), FileAccess.WRITE)
            var buffer = reader.read_file(file_path)
            file.store_buffer(buffer)

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`close<class_ZIPReader_method_close>`\ (\ )                                                                                                                      |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_exists<class_ZIPReader_method_file_exists>`\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ )                     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_compression_level<class_ZIPReader_method_get_compression_level>`\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files<class_ZIPReader_method_get_files>`\ (\ )                                                                                                              |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`open<class_ZIPReader_method_open>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`     | :ref:`read_file<class_ZIPReader_method_read_file>`\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ )                         |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ZIPReader_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPReader_method_close>`

Cierra los recursos subyacentes utilizados por esta instancia.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_file_exists>`

Devuelve ``true`` si el archivo existe en el archivo .zip cargado.

Debe llamarse después de :ref:`open()<class_ZIPReader_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_get_compression_level:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_compression_level**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_get_compression_level>`

Devuelve el nivel de compresión del archivo en el archivo .zip cargado. Devuelve ``-1`` si el archivo no existe o se produce algún otro error. Debe llamarse después de :ref:`open()<class_ZIPReader_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_ZIPReader_method_get_files>`

Devuelve la lista de nombres de todos los archivos del archivo cargado.

Debe llamarse después de :ref:`open()<class_ZIPReader_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ZIPReader_method_open>`

Abre el archivo .zip en la ``path`` dada y lee su índice de archivos.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_read_file:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_file**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_read_file>`

Carga en memoria todo el contenido de un archivo .zip cargado y lo devuelve.

Debe llamarse después de :ref:`open()<class_ZIPReader_method_open>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
