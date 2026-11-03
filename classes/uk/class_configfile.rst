:github_url: hide

.. _class_ConfigFile:

ConfigFile
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Помічник класу для обробки файлів INI-style.

.. rst-class:: classref-introduction-group

Опис
--------

Цей допоміжний клас можна використовувати для зберігання значень :ref:`Variant<class_Variant>` у файловій системі за допомогою форматування у стилі INI. Збережені значення ідентифікуються розділом і ключем:

.. code:: text

    [section]
    some_key=42
    string_example="Привіт, світ 3D!"
    a_vector=Вектор3(1, 0, 2)

Збережені дані можна зберегти або проаналізувати з файлу, хоча об’єкти ConfigFile також можна використовувати безпосередньо без доступу до файлової системи.

У наступному прикладі показано, як створити простий файл **ConfigFile** і зберегти його на диску:


.. tabs::

 .. code-tab:: gdscript

    # Створіть новий об'єкт ConfigFile.
    var config = ConfigFile.new()

    # Зберігати деякі значення.
    config.set_value("Гравець1", "ім'я_гравця", "Стів")
    config.set_value("Гравець1", "найкращий_результат", 10)
    config.set_value("Гравець2", "ім'я_гравця", "V3geta")
    config.set_value("Гравець2", "найкращий_результат", 9001)

    # Збережіть його у файл (перезапишіть, якщо він уже існує).
    config.save("user://scores.cfg")

 .. code-tab:: csharp

    // Створення нового об'єкта ConfigFile.
    var config = new ConfigFile();

    // Зберігати деякі значення.
    config.SetValue("Гравець1", "ім'я_гравця", "Стів");
    config.SetValue("Гравець1", "найкращий_результат", 10);
    config.SetValue("Гравець2", "ім'я_гравця", "V3geta");
    config.SetValue("Гравець2", "найкращий_результат", 9001);

    // Збережіть його у файл (перезапишіть, якщо він уже існує).
    config.Save("user://scores.cfg");



У цьому прикладі показано, як можна завантажити файл вище:


.. tabs::

 .. code-tab:: gdscript

    var score_data = {}
    var config = ConfigFile.new()

    # Завантажити дані з файлу.
    var err = config.load("user://scores.cfg")

    # Якщо файл не завантажився, проігноруйте його.
    якщо помилка != ОК:
        return

    # Ітерація по всіх розділах.
    для гравця в config.get_sections():
        # Отримати дані для кожного розділу.
        var player_name = config.get_value(player, "player_name")
        var player_score = config.get_value(player, "best_score")
        score_data[player_name] = player_score

 .. code-tab:: csharp

    var score_data = new Godot.Collections.Dictionary();
    var config = new ConfigFile();

    // Завантажити дані з файлу.
    Помилка err = config.Load("user://scores.cfg");

    // Якщо файл не завантажився, проігноруйте його.
    if (err != Error.Ok)
    {
        return;
    }

    // Ітерація по всіх розділах.
    foreach (Програвач рядків у config.GetSections())
    {
        // Отримання даних для кожного розділу.
        var player_name = (String)config.GetValue(player, "player_name");
        var player_score = (int)config.GetValue(player, "best_score");
        score_data[player_name] = player_score;
    }



Будь-яка операція, яка змінює ConfigFile, наприклад :ref:`set_value()<class_ConfigFile_method_set_value>`, :ref:`clear()<class_ConfigFile_method_clear>` або :ref:`erase_section()<class_ConfigFile_method_erase_section>`, змінює лише те, що завантажено в пам’ять. Якщо ви хочете записати зміни у файл, ви повинні зберегти зміни за допомогою :ref:`save()<class_ConfigFile_method_save>`, :ref:`save_encrypted()<class_ConfigFile_method_save_encrypted>` або :ref:`save_encrypted_pass()<class_ConfigFile_method_save_encrypted_pass>`.

Пам’ятайте, що назви розділів і властивостей не можуть містити пробіли. Усе, що стоїть після пробілу, ігноруватиметься під час збереження та завантаження.

Файли конфігурацій також можуть містити написані вручну рядки коментарів, які починаються з крапки з комою (``;``). Ці рядки будуть проігноровані під час аналізу файлу. Зауважте, що коментарі буде втрачено під час збереження файлу конфігурації. Це може бути корисним для файлів конфігурації виділеного сервера, які зазвичай ніколи не перезаписуються без явної дії користувача.

\ **Примітка:** Розширення файлу, надане ConfigFile, не впливає на його форматування чи поведінку. За домовленістю тут використовується розширення ``.cfg``, але будь-яке інше розширення, наприклад ``.ini``, також є дійсним. Оскільки ані ``.cfg``, ані ``.ini`` не стандартизовані, форматування файлу конфігурації Godot може відрізнятися від файлів, написаних іншими програмами.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_ConfigFile_method_clear>`\ (\ )                                                                                                                                           |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`encode_to_text<class_ConfigFile_method_encode_to_text>`\ (\ ) |const|                                                                                                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section<class_ConfigFile_method_erase_section>`\ (\ section\: :ref:`String<class_String>`\ )                                                                                    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section_key<class_ConfigFile_method_erase_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ )                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_section_keys<class_ConfigFile_method_get_section_keys>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_sections<class_ConfigFile_method_get_sections>`\ (\ ) |const|                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`get_value<class_ConfigFile_method_get_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section<class_ConfigFile_method_has_section>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section_key<class_ConfigFile_method_has_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const|                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load<class_ConfigFile_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted<class_ConfigFile_method_load_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted_pass<class_ConfigFile_method_load_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`parse<class_ConfigFile_method_parse>`\ (\ data\: :ref:`String<class_String>`\ )                                                                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save<class_ConfigFile_method_save>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted<class_ConfigFile_method_save_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted_pass<class_ConfigFile_method_save_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_value<class_ConfigFile_method_set_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ConfigFile_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ConfigFile_method_clear>`

Видаліть весь вміст конфігурації.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_encode_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **encode_to_text**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_encode_to_text>`

Зберігайте текстову версію цього файла налаштування (так само, що буде записано до файлу).

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section:

.. rst-class:: classref-method

|void| **erase_section**\ (\ section\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section>`

Видаліть зазначену секцію разом з усіма парами ключового значення всередині. Знімає помилку, якщо розділ не існує.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section_key:

.. rst-class:: classref-method

|void| **erase_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section_key>`

Видалити зазначений ключ в розділі. Знімає помилку, якщо не існує профілю або ключ.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_section_keys:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_section_keys**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_get_section_keys>`

Повертає масив всіх визначених ідентифікаторів ключів у зазначеному розділі. Знімає помилку і повертає порожній масив, якщо розділ не існує.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_sections:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_sections**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_get_sections>`

Повертає масив всіх ідентифікаторів розділу.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_ConfigFile_method_get_value>`

Повернення поточного значення для вказаного розділу та ключа. Якщо в розділі або ключі не існує, метод повертає значення ``default``. Якщо ``default`` не вказаний або встановлений на ``null``, також піднято помилку.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section>`

Повертає ``true``, якщо зазначений розділ існує.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section_key>`

Повертає ``true``, якщо вказана пара під ключ.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load>`

Завантажує файл конфігурації, зазначений як параметр. Вміст файлу знаходиться парований і завантажений в об'єкті **ConfigFile**.

Повертаємо вашу увагу на успіх, або один з інших значень :ref:`Error<enum_@GlobalScope_Error>`, якщо операція не була виконана.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted>`

Завантажує зашифрований файл config, вказаний як параметр, за допомогою наданої ``key`` для розшифрування його. Вміст файлу знаходиться парований і завантажений в об'єкті **ConfigFile**.

Повертаємо вашу увагу на успіх, або один з інших значень :ref:`Error<enum_@GlobalScope_Error>`, якщо операція не була виконана.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted_pass>`

Завантажує зашифрований файл config, вказаний як параметр, за допомогою наданої ``password`` для розшифрування його. Вміст файлу знаходиться парований і завантажений в об'єкті **ConfigFile**.

Повертаємо вашу увагу на успіх, або один з інших значень :ref:`Error<enum_@GlobalScope_Error>`, якщо операція не була виконана.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ data\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_parse>`

Придбання пропущеного рядка як вміст файлу конфігурації. string is parsed і loaded в the ConfigFile об'єкт, який метод був викликаний.

Повертаємо вашу увагу на успіх, або один з інших значень :ref:`Error<enum_@GlobalScope_Error>`, якщо операція не була виконана.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save>`

Заощаджує вміст об'єкта **ConfigFile** до файлу, зазначеного як параметр. Вихідний файл використовує структуру стилю INI.

Повертаємо вашу увагу на успіх, або один з інших значень :ref:`Error<enum_@GlobalScope_Error>`, якщо операція не була виконана.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted>`

Заощаджує вміст об'єкта **ConfigFile** до зашифрованого файлу AES-256, зазначеного в параметрі, за допомогою наданої ``key``, щоб зашифрувати його. Вихідний файл використовує структуру стилю INI.

Повертаємо вашу увагу на успіх, або один з інших значень :ref:`Error<enum_@GlobalScope_Error>`, якщо операція не була виконана.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted_pass>`

Заощаджує вміст об'єкта **ConfigFile** до зашифрованого файлу AES-256, зазначеного в параметрі, за допомогою наданої ``password``, щоб зашифрувати його. Вихідний файл використовує структуру стилю INI.

Повертаємо вашу увагу на успіх, або один з інших значень :ref:`Error<enum_@GlobalScope_Error>`, якщо операція не була виконана.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_set_value:

.. rst-class:: classref-method

|void| **set_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ConfigFile_method_set_value>`

Призначає значення до вказаного ключа вказаного розділу. Якщо не існує, то вони створюються. Передача значення ``null`` видаляє зазначений ключ, якщо він існує, і видаляє розділ, якщо він закінчується порожнім, як тільки ключ був видалений.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
