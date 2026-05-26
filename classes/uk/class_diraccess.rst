:github_url: hide

.. meta::
	:keywords: directory, path, folder

.. _class_DirAccess:

DirAccess
=========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Забезпечує методи управління каталогами та їх змістом.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас використовується для керування каталогами та їхнім вмістом, навіть поза папкою проекту. 

\ **DirAccess** не можна створити екземпляр безпосередньо. Натомість він створюється за допомогою статичного методу, який приймає шлях, для якого його буде відкрито. 

Більшість методів мають статичну альтернативу, яку можна використовувати без створення **DirAccess**. Статичні методи підтримують лише абсолютні шляхи (включаючи ``res://`` і ``user://``). 

::
 
    # Стандарт 
    var dir = DirAccess.open("user://levels") 
    dir.make_dir("world1") 
    # Статичний 
    DirAccess.make_dir_absolute("user://levels/world1")  

\ **Примітка:** Доступ до каталогів проекту ("res://") після експорту може поводитися неочікувано, оскільки деякі файли перетворюються на формати, що відповідають системі, і їхні оригінальні вихідні файли можуть не бути присутніми в очікуваному пакеті PCK. Через це для доступу до ресурсів в експортованому проекті рекомендується використовувати :ref:`ResourceLoader<class_ResourceLoader>` замість :ref:`FileAccess<class_FileAccess>`. 

Ось приклад того, як перебирати файли каталогу: 

::
 
    [gdscript] 
    func dir_contents(path): 
        var dir = DirAccess.open(path) 
        if dir: 
            dir.list_dir_begin() 
            var file_name = dir.get_next() 
            while file_name != "": 
                if dir.current_is_dir(): 
                    print("Знайдено каталог: " + ім'я_файлу) 
                else: 
                    print("Знайдено файл: " + ім'я_файлу) 
                nane_file = dir.get_next() 
        ще: 
            print("Під час спроби отримати доступ до шляху сталася помилка.") 
    [/gdscript] 
    [csharp] 
    public void DirContents (string path) 
    {
        використовуючи var dir = DirAccess.Open(path); 
        if (dir != null) 
        { 
            dir.ListDirBegin(); 
            string fileName = dir.GetNext(); 
            while (fileName != "")
            { 
                if (dir.CurrentIsDir()) 
                { 
                    GD.Print($"Знайдено каталог: {fileName}"); 
                } 
                else 
                { 
                    GD.Print($"Знайдено файл: {fileName}"); 
                } 
                fileName = dir.GetNext(); 
            } 
        } 
        else 
        { 
            GD.Print("Під час спроби отримати доступ до шляху сталася помилка."); 
        } 
    }
    [/csharp] [/codeblocks] 

Майте на увазі, що після експорту імена файлів можуть змінитися або бути повторно призначені. Якщо ви хочете побачити фактичний список файлів ресурсів, як він відображається в редакторі, замість цього використовуйте [method ResourceLoader.list_directory].

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Файлова система <../tutorials/scripting/filesystem>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_hidden<class_DirAccess_property_include_hidden>`             |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_navigational<class_DirAccess_property_include_navigational>` |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
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

Описи властивостей
------------------------------------

.. _class_DirAccess_property_include_hidden:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_hidden** :ref:`🔗<class_DirAccess_property_include_hidden>`

.. rst-class:: classref-property-setget

- |void| **set_include_hidden**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_hidden**\ (\ )

Якщо значення ``true``, приховані файли враховуються під час навігації по каталогу.

Впливає на :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>`, :ref:`get_directories()<class_DirAccess_method_get_directories>` та :ref:`get_files()<class_DirAccess_method_get_files>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_property_include_navigational:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_navigational** :ref:`🔗<class_DirAccess_property_include_navigational>`

.. rst-class:: classref-property-setget

- |void| **set_include_navigational**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_navigational**\ (\ )

Якщо значення ``true``, значення ``.`` та ``.`` включаються під час навігації по каталогу.

Впливає на метод :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` та :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_DirAccess_method_change_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_dir**\ (\ to_dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_change_dir>`

Змінює в даний час відкритий каталог до одного переданого аргументу. Текст може бути відносно поточного каталогу (наприклад, ``newdir`` або ``./newdir``), або абсолютний шлях (наприклад, ``/tmp/newdir`` або ``res://somedir/newdir``).

Повертаємо один з кодових констанцій (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` на успіх).

\ **Примітка:** Новий каталог має бути в межах тієї ж сфери, наприклад, коли ви відкрили каталог всередині ``res://``, ви не можете змінити його на ``user://`` каталог. Якщо вам необхідно відкрити каталог в іншій області доступу, скористайтеся :ref:`open()<class_DirAccess_method_open>` для створення нового екземпляра замість.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_DirAccess_method_copy>`

Скопіює файл ``from`` до ``to`` призначення. Обидва аргументи повинні бути шляхами до файлів, або відносних або абсолютного. Якщо файл призначення існує і не захищений доступ, він буде перезаписати.

Якщо ``chmod_flags`` відрізняється від ``-1``, Унікс дозволів на шлях призначення буде встановлена на задану вартість, якщо доступна на поточній операційній системі.

Повертаємо один з кодових констанцій (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` на успіх).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| :ref:`🔗<class_DirAccess_method_copy_absolute>`

Статична версія :ref:`copy()<class_DirAccess_method_copy>`. Підтримує лише абсолютні шляхи.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_link:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_link**\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_create_link>`

Створення символічного посилання між файлами або папками.

\ **Примітка:** На Windows, цей метод працює тільки якщо додаток працює з підвищеними привілеями або режимом розробника.

\ **Примітка:** Цей метод реалізується на macOS, Linux та Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_temp:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **create_temp**\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_DirAccess_method_create_temp>`

Створює тимчасовий каталог. Цей каталог буде звільнено, коли буде звільнено повернутий **DirAccess**.

Якщо ``prefix`` не порожній, він буде додаватися до назви каталогу, розділеного ``-``.

Якщо ``keep`` має значення ``true``, каталог не видаляється, коли звільняється повернутий **DirAccess**.

Повертає ``null``, якщо не вдалося відкрити каталог. Ви можете використовувати :ref:`get_open_error()<class_DirAccess_method_get_open_error>`, щоб перевірити помилку, яка сталася.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_current_is_dir:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **current_is_dir**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_current_is_dir>`

Повертаємо вашу увагу на те, що поточний елемент, оброблений останнім :ref:`get_next()<class_DirAccess_method_get_next>`, є каталогом (`` і `` та ``. `` вважаються каталогами.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_dir_exists>`

Повертає, чи існує цільовий каталог. Аргумент може бути відносним до поточного каталогу або абсолютним шляхом.

\ **Примітка:** Повернений :ref:`bool<class_bool>` у редакторі та після експорту, коли використовується на шляху в каталозі ``res://``, може відрізнятися. Деякі файли під час експорту перетворюються на формати, специфічні для механізму, потенційно змінюючи структуру каталогів.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_dir_exists_absolute>`

Статична версія :ref:`dir_exists()<class_DirAccess_method_dir_exists>`. Підтримує лише абсолютні шляхи.

\ **Примітка:** Повернений :ref:`bool<class_bool>` у редакторі та після експорту, коли використовується на шляху в каталозі ``res://``, може відрізнятися. Деякі файли під час експорту перетворюються на формати, специфічні для механізму, потенційно змінюючи структуру каталогів.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_file_exists>`

Повертає, чи існує цільовий файл. Аргумент може бути відносним до поточного каталогу або абсолютним шляхом.

Для статичного еквівалента використовуйте :ref:`FileAccess.file_exists()<class_FileAccess_method_file_exists>`.

\ **Примітка:** Імпортується багато типів ресурсів (наприклад, текстури чи звукові файли), і їхні вихідні ресурси не будуть включені в експортовану гру, оскільки використовується лише імпортована версія. Перегляньте :ref:`ResourceLoader.exists()<class_ResourceLoader_method_exists>` для альтернативного підходу, який враховує перевідображення ресурсів.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_dir**\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_DirAccess_method_get_current_dir>`

Повертає абсолютний шлях до відкритого каталогу (наприклад, ``res://folder`` або ``C:\tmp\folder``).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_drive:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_drive**\ (\ ) :ref:`🔗<class_DirAccess_method_get_current_drive>`

Повернення в даний час відкритий індекс передачі каталогу. Див. :ref:`get_drive_name()<class_DirAccess_method_get_drive_name>` для перетворення індексу повертається в ім'я диска.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories**\ (\ ) :ref:`🔗<class_DirAccess_method_get_directories>`

Повертає :ref:`PackedStringArray<class_PackedStringArray>`, що містить імена файлів із вмістом каталогу, за винятком файлів. Масив відсортовано за алфавітом.

Впливають :ref:`include_hidden<class_DirAccess_property_include_hidden>` і :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Примітка:** Повернуті каталоги в редакторі та після експорту в каталозі ``res://`` можуть відрізнятися, оскільки деякі файли під час експорту перетворюються на формати, що відповідають системі.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_directories_at>`

Повертає :ref:`PackedStringArray<class_PackedStringArray>`, що містить імена файлів із вмістом каталогу, за винятком файлів, за заданим ``path``. Масив відсортовано за алфавітом.

Використовуйте :ref:`get_directories()<class_DirAccess_method_get_directories>`, якщо ви хочете більше контролювати те, що буде включено.

\ **Примітка:** Повернуті каталоги в редакторі та після експорту в каталозі ``res://`` можуть відрізнятися, оскільки деякі файли під час експорту перетворюються на формати, що відповідають системі.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_drive_count**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_count>`

У Windows повертає кількість дисків (розділів), підключених до поточної файлової системи.

У macOS та Android повертає кількість підключених томів.

У Linux повертає кількість підключених томів та закладок GTK 3.

На інших платформах метод повертає 0.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_label**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_label>`

On Windows, returns the label of the drive (partition) passed as an argument.

On other platforms, or if the requested drive does not exist, returns an empty String.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_name**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_name>`

On Windows, returns the name of the drive (partition) passed as an argument (e.g. ``C:``).

On macOS, returns the path to the mounted volume passed as an argument.

On Linux, returns the path to the mounted volume or GTK 3 bookmark passed as an argument.

On Android (API level 30+), returns the path to the mounted volume as an argument.

On other platforms, or if the requested drive does not exist, returns an empty String.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_DirAccess_method_get_files>`

Повертає масив :ref:`PackedStringArray<class_PackedStringArray>`, що містить імена файлів вмісту каталогів, за винятком каталогів. Масив відсортовано за алфавітом.

Впливає на :ref:`include_hidden<class_DirAccess_property_include_hidden>`.

\ **Примітка:** При використанні на шляху ``res://`` в експортованому проекті повертаються лише ті файли, які фактично включено до PCK на рівні даної теки. На практиці це означає, що оскільки імпортовані ресурси зберігаються у теці верхнього рівня ``.godot/``, повертаються лише шляхи до файлів ``*.gd`` і ``*.import`` (плюс кілька файлів, таких як ``project.godot`` або ``project.binary`` та піктограма проекту). В експортованому проекті список повернених файлів також буде відрізнятися залежно від того, чи має значення :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_files_at>`

Повертає :ref:`PackedStringArray<class_PackedStringArray>`, що містить імена файлів із вмістом каталогу, за винятком каталогів, за заданим ``path``. Масив відсортовано за алфавітом.

Використовуйте :ref:`get_files()<class_DirAccess_method_get_files>`, якщо ви хочете більше контролювати те, що буде включено.

\ **Примітка:** Якщо використовується на шляху ``res://`` в експортованому проекті, повертаються лише файли, включені до PCK на заданому рівні папки. На практиці це означає, що оскільки імпортовані ресурси зберігаються в папці ``.godot/`` верхнього рівня, повертаються лише шляхи до файлів ``.gd`` і ``.import`` (плюс кілька інших файлів, таких як ``project.godot`` або ``project.binary`` і піктограма проекту). В експортованому проекті список повернутих файлів також буде відрізнятися залежно від :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_filesystem_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filesystem_type**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_get_filesystem_type>`

Повертає назву типу файлової системи диска поточного каталогу. Повертаються значення у верхньому регістрі, наприклад, ``NTFS``, ``FAT32``, ``EXFAT``, ``APFS``, ``EXT4``, ``BTRFS`` тощо.

\ **Примітка:** Цей метод реалізовано в macOS, Linux, Windows та для віртуальної файлової системи PCK.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_next:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_next**\ (\ ) :ref:`🔗<class_DirAccess_method_get_next>`

Повертає наступний елемент (файл або каталог) у поточному каталозі.

Ім'я файлу або каталогу повертається (і не його повний шлях). Після того, як потік був повністю оброблений, метод повертає порожній :ref:`String<class_String>` і закриває потік автоматично (тобто :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>` не обов'язково буде в такому випадку).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_open_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_open_error**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_open_error>`

Повертає результат останнього виклику :ref:`open()<class_DirAccess_method_open>` у поточному потоці.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_space_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_space_left**\ (\ ) :ref:`🔗<class_DirAccess_method_get_space_left>`

Повертає наявний простір на поточному диску каталогу, в байтах. Повертаємо ``0``, якщо конкретний метод платформи для запиту наявного простору не виходить.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_bundle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bundle**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_bundle>`

Повертає ``true``, якщо каталог є пакетом macOS.

\ **Примітка:** Цей метод реалізовано в macOS.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_case_sensitive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_case_sensitive**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_case_sensitive>`

Повертаємо ``true``, якщо файлова система або каталог використовує конфіденційні імена файлів.

\ **Примітка:** Цей метод реалізується на macOS, Linux (для файлових систем EXT4 і F2FS) і Windows. На інших платформах завжди повертається ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_equivalent:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equivalent**\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_equivalent>`

Повертає ``true``, якщо шляхи ``path_a`` та ``path_b`` ведуть до одного й того ж об'єкта файлової системи. Повертає ``false`` в іншому випадку, навіть якщо файли ідентичні побітово (наприклад, ідентичні копії файлу, які не є символічними посиланнями).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_link:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_is_link>`

Повертає ``true``, якщо файл або каталог є символічним посиланням, з'єднання каталогів, або іншим пунктом репарації.

\ **Примітка:** Цей метод реалізується на macOS, Linux та Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **list_dir_begin**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_begin>`

Ініціалізує потік, який використовується для переліку всіх файлів і каталогів за допомогою функції :ref:`get_next()<class_DirAccess_method_get_next>`, закриваючи поточний відкритий потік, якщо це необхідно. Після обробки потоку його зазвичай слід закрити за допомогою :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>`.

Впливає на :ref:`include_hidden<class_DirAccess_property_include_hidden>` та :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Примітка:** Порядок файлів і каталогів, що повертаються цим методом, не є детермінованим і може відрізнятися у різних операційних системах. Якщо вам потрібен список усіх файлів або каталогів, відсортованих за алфавітом, скористайтеся :ref:`get_files()<class_DirAccess_method_get_files>` або :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_end:

.. rst-class:: classref-method

|void| **list_dir_end**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_end>`

Закриває поточний потік, відкритий за допомогою :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` (чи був він повністю оброблений за допомогою :ref:`get_next()<class_DirAccess_method_get_next>`, не має значення).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir>`

Створення каталогу. Привод може бути відносно поточного каталогу або абсолютного шляху. Цільовий каталог повинен бути розміщений в вже існуючому каталозі (для створення повноцінного шляху прямо заразно, див. :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`).

Повертаємо один з кодових констанцій (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` на успіх).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_absolute>`

Статична версія методу ``make_dir``. Підтримує лише абсолютні шляхи.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir_recursive>`

Створює цільовий каталог і всі необхідні проміжні каталоги в своєму шляху, за допомогою виклику :ref:`зробити_dir()<class_DirAccess_method_зробити_dir>` рекурсивно. Привод може бути відносно поточного каталогу або абсолютного шляху.

Повертаємо один з кодових констанцій (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` на успіх).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_recursive_absolute>`

Статична версія :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`. Підтримує лише абсолютні шляхи.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_open:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **open**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_open>`

Створює новий об'єкт **DirAccess** і відкриває існуючий каталог файлової системи. Шлях ``path`` може бути в дереві проєкту (``res://folder``), каталозі користувача (``user://folder``) або бути абсолютним шляхом файлової системи користувача (наприклад, ``/tmp/folder`` або ``C:\tmp\folder``).

Повертає ``null`` при невдачі під час відкриття каталогу. Ви можете використовувати :ref:`get_open_error()<class_DirAccess_method_get_open_error>` для перевірки помилки, яка сталася.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_read_link:

.. rst-class:: classref-method

:ref:`String<class_String>` **read_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_read_link>`

Повертає ціль символічного посилання.

\ **Примітка:** Цей метод реалізується на macOS, Linux та Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_remove>`

Постійно видаляє цільовий файл або порожній каталог. Привод може бути відносно поточного каталогу або абсолютного шляху. Якщо цільовий каталог не порожній, операція не буде.

Якщо ви не хочете видалити файл/спрямування постійно, скористайтеся :ref:`OS.move_to_trash()<class_OS_method_move_to_trash>`.

Повертаємо один з кодових констанцій (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` на успіх).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_remove_absolute>`

Статична версія :ref:`remove()<class_DirAccess_method_remove>`. Підтримує лише абсолютні шляхи.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_rename>`

Перейменування ``from`` файл або каталог до ``to`` призначення. Обидва аргументи повинні бути шляхами до файлів або каталогів, або відносної або абсолютної. Якщо файл призначення або каталог не існує доступу, він буде перезаписати.

Повертаємо один з кодових констанцій (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` на успіх).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_rename_absolute>`

Статична версія :ref:`rename()<class_DirAccess_method_rename>`. Підтримує лише абсолютні шляхи.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
