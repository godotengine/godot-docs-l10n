:github_url: hide

.. _class_ZIPPacker:

ZIPPacker
=========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Позволяет создавать ZIP-файлы.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс реализует модуль записи, который позволяет хранить несколько больших двоичных объектов в ZIP-архиве. Смотрите также :ref:`ZIPReader<class_ZIPReader>` и :ref:`PCKPacker<class_PCKPacker>`.

::

    # Создайте ZIP-архив с одним файлом в корне.
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

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`compression_level<class_ZIPPacker_property_compression_level>` | ``-1`` |
   +-----------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методы
------------

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

Перечисления
------------------------

.. _enum_ZIPPacker_ZipAppend:

.. rst-class:: classref-enumeration

enum **ZipAppend**: :ref:`🔗<enum_ZIPPacker_ZipAppend>`

.. _class_ZIPPacker_constant_APPEND_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATE** = ``0``

Создать новый zip-архив по указанному пути.

.. _class_ZIPPacker_constant_APPEND_CREATEAFTER:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATEAFTER** = ``1``

Добавить новый zip-архив в конец существующего файла по указанному пути.

.. _class_ZIPPacker_constant_APPEND_ADDINZIP:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_ADDINZIP** = ``2``

Добавить новые файлы в существующий zip-архив по указанному пути.

.. rst-class:: classref-item-separator

----

.. _enum_ZIPPacker_CompressionLevel:

.. rst-class:: classref-enumeration

enum **CompressionLevel**: :ref:`🔗<enum_ZIPPacker_CompressionLevel>`

.. _class_ZIPPacker_constant_COMPRESSION_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_DEFAULT** = ``-1``

Запустите файл с уровнем сжатия Deflate по умолчанию (``6``). Это хороший компромисс между скоростью и размером файла.

.. _class_ZIPPacker_constant_COMPRESSION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_NONE** = ``0``

Запустите файл без сжатия. Это также известно как режим сжатия "Store" и является самым быстрым методом упаковки файлов в архив ZIP. Рассмотрите возможность использования этого режима для уже сжатых файлов (например, файлов JPEG, PNG, MP3 или Ogg Vorbis).

.. _class_ZIPPacker_constant_COMPRESSION_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_FAST** = ``1``

Запустите файл с самым быстрым уровнем сжатия Deflate (``1``). Это обеспечивает быстрое сжатие, но приводит к увеличению размера файла по сравнению с :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. Скорость распаковки обычно не зависит от выбранного уровня сжатия.

.. _class_ZIPPacker_constant_COMPRESSION_BEST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_BEST** = ``9``

Создайте файл с оптимальным уровнем сжатия Deflate (``9``). Этот вариант сжатия медленнее, но размер файла меньше, чем у :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. Скорость распаковки, как правило, не зависит от выбранного уровня сжатия.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ZIPPacker_property_compression_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compression_level** = ``-1`` :ref:`🔗<class_ZIPPacker_property_compression_level>`

.. rst-class:: classref-property-setget

- |void| **set_compression_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_compression_level**\ (\ )

Уровень сжатия, используемый при вызове :ref:`start_file()<class_ZIPPacker_method_start_file>`. Используйте :ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` в качестве значений.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

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

Закрывает основные ресурсы, используемые этим экземпляром.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close_file>`

Прекращает запись в файл внутри архива.

Это приведет к сбою, если нет открытого файла.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_open>`

Открывает zip-файл для записи по указанному пути, используя указанный режим записи.

Должен вызываться прежде всего остального.

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

Записать полученный ``data`` в файл.

Должен вызываться после :ref:`start_file()<class_ZIPPacker_method_start_file>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
