:github_url: hide

.. _class_ZIPPacker:

ZIPPacker
=========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Дозволяє створювати ZIP-файли.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас реалізує записувач, який дозволяє зберігати кілька blob-файлів у ZIP-архіві. Дивіться також :ref:`ZIPReader<class_ZIPReader>` і :ref:`PCKPacker<class_PCKPacker>`. 

::
 
    # Створіть архів ZIP з одним файлом у корені. 
    func write_zip_file(): 
        var writer = ZIPPacker.new() 
        var err = writer.open("user://archive.zip") 
        if error != ОК: 
            return error 
        writer.start_file("hello.txt") 
        writer.write_file("Hello World".to_utf8_buffer()) 
        writer.close_file() 

        writer.close() 
        return ОК 

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`compression_level<class_ZIPPacker_property_compression_level>` | ``-1`` |
   +-----------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

.. _enum_ZIPPacker_ZipAppend:

.. rst-class:: classref-enumeration

enum **ZipAppend**: :ref:`🔗<enum_ZIPPacker_ZipAppend>`

.. _class_ZIPPacker_constant_APPEND_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATE** = ``0``

Створіть новий zip-архів за вказаним шляхом.

.. _class_ZIPPacker_constant_APPEND_CREATEAFTER:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATEAFTER** = ``1``

Закінчіть новий архів zip до кінця вже існуючого файлу на даній доріці.

.. _class_ZIPPacker_constant_APPEND_ADDINZIP:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_ADDINZIP** = ``2``

Додайте нові файли до існуючого архіву zip на заданому шляху.

.. rst-class:: classref-item-separator

----

.. _enum_ZIPPacker_CompressionLevel:

.. rst-class:: classref-enumeration

enum **CompressionLevel**: :ref:`🔗<enum_ZIPPacker_CompressionLevel>`

.. _class_ZIPPacker_constant_COMPRESSION_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_DEFAULT** = ``-1``

Запустіть файл зі стандартним рівнем стиснення Deflate (``6``). Це хороший компроміс між швидкістю та розміром файлу.

.. _class_ZIPPacker_constant_COMPRESSION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_NONE** = ``0``

Створіть файл без стиснення. Це також відомий як режим стиснення «Збереження» і є найшвидшим методом пакування файлів у ZIP-архів. Рекомендується використовувати цей режим для файлів, які вже стиснуті (наприклад, файли JPEG, PNG, MP3 або Ogg Vorbis).

.. _class_ZIPPacker_constant_COMPRESSION_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_FAST** = ``1``

Розпочніть стиснення файлу з найшвидшим рівнем стиснення Deflate (``1``). Це швидко стискає файли, але призводить до більших розмірів, ніж :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. Швидкість розпакування зазвичай не залежить від вибраного рівня стиснення.

.. _class_ZIPPacker_constant_COMPRESSION_BEST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_BEST** = ``9``

Розпочніть стиснення файлу з найкращим рівнем стиснення Deflate (``9``). Це повільно стискає файл, але призводить до менших розмірів файлів, ніж :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. Швидкість розпакування зазвичай не залежить від вибраного рівня стиснення.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ZIPPacker_property_compression_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compression_level** = ``-1`` :ref:`🔗<class_ZIPPacker_property_compression_level>`

.. rst-class:: classref-property-setget

- |void| **set_compression_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_compression_level**\ (\ )

Рівень стиснення, який використовується під час виклику методу :ref:`start_file()<class_ZIPPacker_method_start_file>`. Використовуйте :ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` як посилання.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ZIPPacker_method_add_directory:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_directory**\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 493, modified_time\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_add_directory>`

Додає каталог до архіву. Якщо для параметра ``modified_time`` встановлено значення ``0``, використовується поточний системний час.

\ **Примітка:** Каталоги створюються автоматично під час виклику функції :ref:`start_file()<class_ZIPPacker_method_start_file>`; скористайтеся цією функцією перед додаванням файлів, щоб створити каталоги з власними правами доступу та часом модифікації.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close>`

Закриває базові ресурси, що використовуються цим екземпляром.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close_file>`

Зупиняє запис до файлу в архіві.

Не вдасться, якщо немає відкритого файлу.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_open>`

Відкриває zip-файл для запису за вказаним шляхом з використанням вказаного режиму запису.

Ця функція має бути викликана перед усіма іншими.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_start_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_file**\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 420, modified_time\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_start_file>`

Починає запис у файл, що міститься в архіві. Одночасно можна записувати лише один файл. Якщо для параметра ``modified_time`` встановлено значення ``0``, використовується поточний системний час.

Повинен викликатися після методу :ref:`open()<class_ZIPPacker_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_write_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_file**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ZIPPacker_method_write_file>`

Записує задані ``data`` у файл.

Має бути викликаний після :ref:`start_file()<class_ZIPPacker_method_start_file>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
