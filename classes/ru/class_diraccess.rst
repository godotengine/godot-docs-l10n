:github_url: hide

.. meta::
	:keywords: directory, path, folder

.. _class_DirAccess:

DirAccess
=========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет методы управления каталогами и их содержимым.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс используется для управления каталогами и их содержимым, даже за пределами папки проекта.

\ **DirAccess** нельзя создать напрямую. Вместо этого он создается с помощью статического метода, который принимает путь, по которому он будет открыт.

Большинство методов имеют статическую альтернативу, которую можно использовать без создания **DirAccess**. Статические методы поддерживают только абсолютные пути (включая ``res://`` и ``user://``).

::

    # Стандарт
    var dir = DirAccess.open("user://levels")
    dir.make_dir("world1")
    # Статичный
    DirAccess.make_dir_absolute("user://levels/world1")

\ **Примечание:** Доступ к каталогам проекта ("res://") после экспорта может вести себя непредсказуемо, поскольку некоторые файлы преобразуются в форматы, специфичные для движка, и их исходные файлы могут отсутствовать в ожидаемом пакете PCK. Из-за этого для доступа к ресурсам в экспортированном проекте рекомендуется использовать :ref:`ResourceLoader<class_ResourceLoader>` вместо :ref:`FileAccess<class_FileAccess>`.

Вот пример того, как перебирать файлы каталога:


.. tabs::

 .. code-tab:: gdscript

    func dir_contents(path):
        var dir = DirAccess.open(path)
        if dir:
            dir.list_dir_begin()
            var file_name = dir.get_next()
            while file_name != "":
                if dir.current_is_dir():
                    print("Found directory: " + file_name)
                else:
                    print("Found file: " + file_name)
                file_name = dir.get_next()
        else:
            print("An error occurred when trying to access the path.")

 .. code-tab:: csharp

    public void DirContents(string path)
    {
        using var dir = DirAccess.Open(path);
        if (dir != null)
        {
            dir.ListDirBegin();
            string fileName = dir.GetNext();
            while (fileName != "")
            {
                if (dir.CurrentIsDir())
                {
                    GD.Print($"Found directory: {fileName}");
                }
                else
                {
                    GD.Print($"Found file: {fileName}");
                }
                fileName = dir.GetNext();
            }
        }
        else
        {
            GD.Print("An error occurred when trying to access the path.");
        }
    }



Имейте в виду, что имена файлов могут измениться или быть переназначены после экспорта. Если вы хотите увидеть фактический список файлов ресурсов, как он отображается в редакторе, используйте вместо этого :ref:`ResourceLoader.list_directory()<class_ResourceLoader_method_list_directory>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Файловая система <../tutorials/scripting/filesystem>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_hidden<class_DirAccess_property_include_hidden>`             |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_navigational<class_DirAccess_property_include_navigational>` |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`change_dir<class_DirAccess_method_change_dir>`\ (\ to_dir\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy<class_DirAccess_method_copy>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ )                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy_absolute<class_DirAccess_method_copy_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`create_link<class_DirAccess_method_create_link>`\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ )                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`create_temp<class_DirAccess_method_create_temp>`\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static|                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`current_is_dir<class_DirAccess_method_current_is_dir>`\ (\ ) |const|                                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists<class_DirAccess_method_dir_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists_absolute<class_DirAccess_method_dir_exists_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_exists<class_DirAccess_method_file_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_current_dir<class_DirAccess_method_get_current_dir>`\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const|                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_current_drive<class_DirAccess_method_get_current_drive>`\ (\ )                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories<class_DirAccess_method_get_directories>`\ (\ )                                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories_at<class_DirAccess_method_get_directories_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_drive_count<class_DirAccess_method_get_drive_count>`\ (\ ) |static|                                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_label<class_DirAccess_method_get_drive_label>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_name<class_DirAccess_method_get_drive_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files<class_DirAccess_method_get_files>`\ (\ )                                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files_at<class_DirAccess_method_get_files_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_filesystem_type<class_DirAccess_method_get_filesystem_type>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_next<class_DirAccess_method_get_next>`\ (\ )                                                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`get_open_error<class_DirAccess_method_get_open_error>`\ (\ ) |static|                                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_space_left<class_DirAccess_method_get_space_left>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_bundle<class_DirAccess_method_is_bundle>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_case_sensitive<class_DirAccess_method_is_case_sensitive>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_equivalent<class_DirAccess_method_is_equivalent>`\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const|                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_link<class_DirAccess_method_is_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`list_dir_begin<class_DirAccess_method_list_dir_begin>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`list_dir_end<class_DirAccess_method_list_dir_end>`\ (\ )                                                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir<class_DirAccess_method_make_dir>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_absolute<class_DirAccess_method_make_dir_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive<class_DirAccess_method_make_dir_recursive>`\ (\ path\: :ref:`String<class_String>`\ )                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive_absolute<class_DirAccess_method_make_dir_recursive_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`open<class_DirAccess_method_open>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`read_link<class_DirAccess_method_read_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove<class_DirAccess_method_remove>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove_absolute<class_DirAccess_method_remove_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename<class_DirAccess_method_rename>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ )                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename_absolute<class_DirAccess_method_rename_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static|                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_DirAccess_property_include_hidden:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_hidden** :ref:`🔗<class_DirAccess_property_include_hidden>`

.. rst-class:: classref-property-setget

- |void| **set_include_hidden**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_hidden**\ (\ )

Если ``true``, скрытые файлы включаются при навигации по каталогу.

Влияет на :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>`, :ref:`get_directories()<class_DirAccess_method_get_directories>` и :ref:`get_files()<class_DirAccess_method_get_files>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_property_include_navigational:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_navigational** :ref:`🔗<class_DirAccess_property_include_navigational>`

.. rst-class:: classref-property-setget

- |void| **set_include_navigational**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_navigational**\ (\ )

Если ``true``, ``.`` и ``..`` включены при навигации по каталогу.

Влияет на :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` и :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_DirAccess_method_change_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_dir**\ (\ to_dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_change_dir>`

Изменяет текущий открытый каталог на тот, который передан в качестве аргумента. Аргумент может быть относительным к текущему каталогу (например, ``newdir`` или ``../newdir``) или абсолютным путем (например, ``/tmp/newdir`` или ``res://somedir/newdir``).

Возвращает одну из констант кода :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` при успешном выполнении).

\ **Примечание:** Новый каталог должен находиться в той же области, например, если вы открыли каталог внутри ``res://``, вы не можете изменить его на каталог ``user://``. Если вам нужно открыть каталог в другой области доступа, используйте :ref:`open()<class_DirAccess_method_open>` для создания нового экземпляра.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_DirAccess_method_copy>`

Копирует файл ``from`` в место назначения ``to``. Оба аргумента должны быть путями к файлам, относительными или абсолютными. Если файл назначения существует и не защищен от доступа, он будет перезаписан.

Если ``chmod_flags`` отличается от ``-1``, разрешения Unix для пути назначения будут установлены на указанное значение, если оно доступно в текущей операционной системе.

Возвращает одну из констант кода :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` при успешном выполнении).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| :ref:`🔗<class_DirAccess_method_copy_absolute>`

Статическая версия :ref:`copy()<class_DirAccess_method_copy>`. Поддерживает только абсолютные пути.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_link:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_link**\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_create_link>`

Создает символическую ссылку между файлами или папками.

\ **Примечание:** В Windows этот метод работает только если приложение запущено с повышенными привилегиями или включен режим разработчика.

\ **Примечание:** Этот метод реализован в macOS, Linux и Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_temp:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **create_temp**\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_DirAccess_method_create_temp>`

Создает временный каталог. Этот каталог будет освобожден при освобождении возвращенного **DirAccess**.

Если ``prefix`` не пуст, он будет добавлен к имени каталога, разделенному ``-``.

Если ``keep`` равен ``true``, каталог не удаляется при освобождении возвращенного **DirAccess**.

Возвращает ``null``, если открытие каталога не удалось. Вы можете использовать :ref:`get_open_error()<class_DirAccess_method_get_open_error>`, чтобы проверить возникшую ошибку.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_current_is_dir:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **current_is_dir**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_current_is_dir>`

Возвращает, является ли текущий элемент, обработанный последним вызовом :ref:`get_next()<class_DirAccess_method_get_next>`, каталогом (``.`` и ``..`` считаются каталогами).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_dir_exists>`

Возвращает, существует ли целевой каталог. Аргумент может быть относительным к текущему каталогу или абсолютным путем.

\ **Примечание:** Возвращаемый :ref:`bool<class_bool>` в редакторе и после экспорта при использовании в пути в каталоге ``res://`` может отличаться. Некоторые файлы при экспорте преобразуются в форматы, специфичные для движка, что может изменить структуру каталога.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_dir_exists_absolute>`

Статическая версия :ref:`dir_exists()<class_DirAccess_method_dir_exists>`. Поддерживает только абсолютные пути.

\ **Примечание:** Возвращаемый :ref:`bool<class_bool>` в редакторе и после экспорта при использовании в пути в каталоге ``res://`` может отличаться. Некоторые файлы при экспорте преобразуются в форматы, специфичные для движка, что может изменить структуру каталога.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_file_exists>`

Возвращает, существует ли целевой файл. Аргумент может быть относительным к текущему каталогу или абсолютным путем.

Для статического эквивалента используйте :ref:`FileAccess.file_exists()<class_FileAccess_method_file_exists>`.

\ **Примечание:** Многие типы ресурсов импортируются (например, текстуры или звуковые файлы), и их исходный ресурс не будет включен в экспортированную игру, поскольку используется только импортированная версия. См. :ref:`ResourceLoader.exists()<class_ResourceLoader_method_exists>` для альтернативного подхода, который учитывает переназначение ресурсов.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_dir**\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_DirAccess_method_get_current_dir>`

Возвращает абсолютный путь к текущему открытому каталогу (например, ``res://folder`` или ``C:\tmp\folder``).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_drive:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_drive**\ (\ ) :ref:`🔗<class_DirAccess_method_get_current_drive>`

Возвращает индекс диска текущего открытого каталога. См. :ref:`get_drive_name()<class_DirAccess_method_get_drive_name>` для преобразования возвращаемого индекса в имя диска.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories**\ (\ ) :ref:`🔗<class_DirAccess_method_get_directories>`

Возвращает :ref:`PackedStringArray<class_PackedStringArray>`, содержащий имена файлов содержимого каталога, за исключением файлов. Массив сортируется в алфавитном порядке.

Влияет на :ref:`include_hidden<class_DirAccess_property_include_hidden>` и :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Примечание:** Возвращаемые каталоги в редакторе и после экспорта в каталог ``res://`` могут отличаться, так как некоторые файлы при экспорте преобразуются в форматы, специфичные для движка.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_directories_at>`

Возвращает :ref:`PackedStringArray<class_PackedStringArray>`, содержащий имена файлов содержимого каталога, за исключением файлов, по указанному ``path``. Массив сортируется в алфавитном порядке.

Используйте :ref:`get_directories()<class_DirAccess_method_get_directories>`, если вам нужен больший контроль над тем, что будет включено.

\ **Примечание:** Возвращаемые каталоги в редакторе и после экспорта в каталог ``res://`` могут отличаться, поскольку некоторые файлы при экспорте преобразуются в форматы, специфичные для движка.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_drive_count**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_count>`

В Windows возвращает количество дисков (разделов), смонтированных в текущей файловой системе.

В macOS и Android возвращает количество смонтированных томов.

В Linux возвращает количество смонтированных томов и закладок GTK 3.

На других платформах метод возвращает 0.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_label**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_label>`

В Windows возвращается метка диска (раздела), переданная в качестве аргумента.

На других платформах или если запрошенный диск не существует, возвращается пустая строка.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_name**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_name>`

В Windows возвращает имя диска (раздела), переданное в качестве аргумента (например, ``C:``).

В macOS возвращает путь к смонтированному тому, переданному в качестве аргумента.

В Linux возвращает путь к смонтированному тому или закладке GTK 3, переданной в качестве аргумента.

В Android (API уровня 30+) возвращает путь к смонтированному тому в качестве аргумента.

На других платформах или если запрошенный диск не существует, возвращает пустую строку.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_DirAccess_method_get_files>`

Возвращает :ref:`PackedStringArray<class_PackedStringArray>`, содержащий имена файлов содержимого каталога, за исключением каталогов. Массив сортируется в алфавитном порядке.

Влияет на :ref:`include_hidden<class_DirAccess_property_include_hidden>`.

\ **Примечание:** При использовании в пути ``res://`` в экспортированном проекте возвращаются только файлы, фактически включенные в PCK на заданном уровне папки. На практике это означает, что поскольку импортированные ресурсы хранятся в папке верхнего уровня ``.godot/``, возвращаются только пути к файлам ``*.gd`` и ``*.import`` (плюс несколько файлов, таких как ``project.godot`` или ``project.binary`` и значок проекта). В экспортированном проекте список возвращаемых файлов также будет различаться в зависимости от того, является ли :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_files_at>`

Возвращает :ref:`PackedStringArray<class_PackedStringArray>`, содержащий имена файлов содержимого каталога, за исключением каталогов, по указанному ``path``. Массив сортируется в алфавитном порядке.

Используйте :ref:`get_files()<class_DirAccess_method_get_files>`, если вам нужен больший контроль над тем, что будет включено.

\ **Примечание:** При использовании в пути ``res://`` в экспортированном проекте возвращаются только файлы, включенные в PCK на указанном уровне папки. На практике это означает, что поскольку импортированные ресурсы хранятся в папке верхнего уровня ``.godot/``, возвращаются только пути к файлам ``.gd`` и ``.import`` (плюс несколько других файлов, таких как ``project.godot`` или ``project.binary`` и значок проекта). В экспортированном проекте список возвращаемых файлов также будет различаться в зависимости от :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_filesystem_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filesystem_type**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_get_filesystem_type>`

Возвращает имя типа файловой системы диска текущего каталога. Возвращаемые значения представляют собой строки в верхнем регистре, например ``NTFS``, ``FAT32``, ``EXFAT``, ``APFS``, ``EXT4``, ``BTRFS`` и т. д.

\ **Примечание:** Этот метод реализован в macOS, Linux, Windows и для виртуальной файловой системы PCK.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_next:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_next**\ (\ ) :ref:`🔗<class_DirAccess_method_get_next>`

Возвращает следующий элемент (файл или каталог) в текущем каталоге.

Возвращается имя файла или каталога (а не его полный путь). После полной обработки потока метод возвращает пустую :ref:`String<class_String>` и автоматически закрывает поток (т. е. :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>` не будет обязательным в таком случае).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_open_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_open_error**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_open_error>`

Возвращает результат последнего вызова :ref:`open()<class_DirAccess_method_open>` в текущем потоке.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_space_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_space_left**\ (\ ) :ref:`🔗<class_DirAccess_method_get_space_left>`

Возвращает доступное пространство на диске текущего каталога в байтах. Возвращает ``0``, если платформенно-зависимый метод запроса доступного пространства не срабатывает.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_bundle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bundle**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_bundle>`

Возвращает ``true``, если каталог является пакетом macOS.

\ **Примечание:** Этот метод реализован в macOS.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_case_sensitive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_case_sensitive**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_case_sensitive>`

Возвращает ``true``, если файловая система или каталог используют имена файлов, чувствительные к регистру.

\ **Примечание:** Этот метод реализован в macOS, Linux (только для файловых систем EXT4 и F2FS) и Windows. На других платформах он всегда возвращает ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_equivalent:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equivalent**\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_equivalent>`

Возвращает ``true``, если пути ``path_a`` и ``path_b`` разрешаются в один и тот же объект файловой системы. Возвращает ``false`` в противном случае, даже если файлы идентичны побитно (например, идентичные копии файла, которые не являются символическими ссылками).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_link:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_is_link>`

Возвращает ``true``, если файл или каталог является символической ссылкой, соединением каталогов или другой точкой повторной обработки.

\ **Примечание:** Этот метод реализован в macOS, Linux и Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **list_dir_begin**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_begin>`

Инициализирует поток, используемый для перечисления всех файлов и каталогов с помощью функции :ref:`get_next()<class_DirAccess_method_get_next>`, закрывая текущий открытый поток, если необходимо. После обработки потока его обычно следует закрыть с помощью :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>`.

Затрагивается :ref:`include_hidden<class_DirAccess_property_include_hidden>` и :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Примечание:** Порядок файлов и каталогов, возвращаемых этим методом, не является детерминированным и может различаться в зависимости от операционной системы. Если вам нужен список всех файлов или папок, отсортированный в алфавитном порядке, используйте :ref:`get_files()<class_DirAccess_method_get_files>` или :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_end:

.. rst-class:: classref-method

|void| **list_dir_end**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_end>`

Закрывает текущий поток, открытый с помощью :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` (не имеет значения, был ли он полностью обработан с помощью :ref:`get_next()<class_DirAccess_method_get_next>`).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir>`

Создает каталог. Аргумент может быть относительным к текущему каталогу или абсолютным путем. Целевой каталог должен быть помещен в уже существующий каталог (чтобы создать полный путь рекурсивно, см. :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`).

Возвращает одну из констант кода :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` при успешном выполнении).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_absolute>`

Статическая версия :ref:`make_dir()<class_DirAccess_method_make_dir>`. Поддерживает только абсолютные пути.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir_recursive>`

Создает целевой каталог и все необходимые промежуточные каталоги в его пути, вызывая :ref:`make_dir()<class_DirAccess_method_make_dir>` рекурсивно. Аргумент может быть относительным к текущему каталогу или абсолютным путем. 

Возвращает одну из констант кода :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` при успешном выполнении).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_recursive_absolute>`

Статическая версия :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`. Поддерживает только абсолютные пути.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_open:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **open**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_open>`

Создает новый объект **DirAccess** и открывает существующий каталог файловой системы. Аргумент ``path`` может находиться в дереве проекта (``res://folder``), пользовательском каталоге (``user://folder``) или в абсолютном пути пользовательской файловой системы (например, ``/tmp/folder`` или ``C:\tmp\folder``).

Возвращает ``null``, если открытие каталога не удалось. Вы можете использовать :ref:`get_open_error()<class_DirAccess_method_get_open_error>` для проверки возникшей ошибки.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_read_link:

.. rst-class:: classref-method

:ref:`String<class_String>` **read_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_read_link>`

Возвращает цель символической ссылки.

\ **Примечание:** Этот метод реализован в macOS, Linux и Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_remove>`

Окончательно удаляет целевой файл или пустой каталог. Аргумент может быть относительным к текущему каталогу или абсолютным путем. Если целевой каталог не пустой, операция завершится неудачей.

Если вы не хотите удалять файл/каталог навсегда, используйте вместо этого :ref:`OS.move_to_trash()<class_OS_method_move_to_trash>`.

Возвращает одну из констант кода :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` при успешном выполнении).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_remove_absolute>`

Статическая версия :ref:`remove()<class_DirAccess_method_remove>`. Поддерживает только абсолютные пути.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_rename>`

Переименовывает (перемещает) файл или каталог ``from`` в место назначения ``to``. Оба аргумента должны быть путями к файлам или каталогам, относительными или абсолютными. Если файл или каталог назначения существует и не защищен от доступа, он будет перезаписан.

Возвращает одну из констант кода :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` при успешном выполнении).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_rename_absolute>`

Статическая версия :ref:`rename()<class_DirAccess_method_rename>`. Поддерживает только абсолютные пути.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
