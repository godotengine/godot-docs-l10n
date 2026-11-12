:github_url: hide

.. _class_ConfigFile:

ConfigFile
==========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вспомогательный класс для обработки файлов в стиле INI.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот вспомогательный класс может использоваться для хранения значений :ref:`Variant<class_Variant>` в файловой системе с использованием форматирования в стиле INI. Сохраненные значения идентифицируются разделом и ключом:

.. code:: text

    [section]
    some_key=42
    string_example="Hello World3D!"
    a_vector=Vector3(1, 0, 2)

Сохраненные данные можно сохранить в файл или проанализировать из него, хотя объекты ConfigFile также можно использовать напрямую, без доступа к файловой системе.

В следующем примере показано, как создать простой **ConfigFile** и сохранить его на диске:


.. tabs::

 .. code-tab:: gdscript

    # Создайте новый объект ConfigFile.
    var config = ConfigFile.new()

    # Сохраните некоторые значения.
    config.set_value("Player1", "player_name", "Steve")
    config.set_value("Player1", "best_score", 10)
    config.set_value("Player2", "player_name", "V3geta")
    config.set_value("Player2", "best_score", 9001)

    # Сохраните его в файле (перезапишите, если он уже существует).
    config.save("user://scores.cfg")

 .. code-tab:: csharp

    // Создайте новый объект ConfigFile.
    var config = new ConfigFile();

    // Сохраните некоторые значения.
    config.SetValue("Player1", "player_name", "Steve");
    config.SetValue("Player1", "best_score", 10);
    config.SetValue("Player2", "player_name", "V3geta");
    config.SetValue("Player2", "best_score", 9001);

    // Сохраните его в файле (перезапишите, если он уже существует).
    config.Save("user://scores.cfg");



В этом примере показано, как можно загрузить указанный выше файл:


.. tabs::

 .. code-tab:: gdscript

    var score_data = {}
    var config = ConfigFile.new()

    # Загрузить данные из файла.
    var err = config.load("user://scores.cfg")

    # Если файл не загрузился, игнорируйте его.
    if err != OK:
        return

    # Повторите все разделы.
    for player in config.get_sections():
        # Получите данные для каждого раздела.
        var player_name = config.get_value(player, "player_name")
        var player_score = config.get_value(player, "best_score")
        score_data[player_name] = player_score

 .. code-tab:: csharp

    var score_data = new Godot.Collections.Dictionary();
    var config = new ConfigFile();

    // Загрузить данные из файла.
    Error err = config.Load("user://scores.cfg");

    // Если файл не загрузился, игнорируйте его.
    if (err != Error.Ok)
    {
        return;
    }

    // Повторите все разделы.
    foreach (String player in config.GetSections())
    {
        // Получите данные для каждого раздела.
        var player_name = (String)config.GetValue(player, "player_name");
        var player_score = (int)config.GetValue(player, "best_score");
        score_data[player_name] = player_score;
    }



Любая операция, которая изменяет ConfigFile, например :ref:`set_value()<class_ConfigFile_method_set_value>`, :ref:`clear()<class_ConfigFile_method_clear>` или :ref:`erasure_section()<class_ConfigFile_method_erasure_section>`, изменяет только то, что загружено в память. Если вы хотите записать изменение в файл, вам нужно сохранить изменения с помощью :ref:`save()<class_ConfigFile_method_save>`, :ref:`save_encrypted()<class_ConfigFile_method_save_encrypted>` или :ref:`save_encrypted_pass()<class_ConfigFile_method_save_encrypted_pass>`.

Помните, что имена разделов и свойств не могут содержать пробелы. Все, что находится после пробела, будет проигнорировано при сохранении и загрузке.

Файлы конфигурации также могут содержать вручную написанные строки комментариев, начинающиеся с точки с запятой (\ ``;``). Эти строки будут проигнорированы при разборе файла. Обратите внимание, что комментарии будут потеряны при сохранении файла конфигурации. Это может быть полезно для выделенных файлов конфигурации сервера, которые обычно никогда не перезаписываются без явного действия пользователя.

\ **Примечание:** Расширение файла, присвоенное ConfigFile, не влияет на его форматирование или поведение. По соглашению здесь используется расширение ``.cfg``, но любое другое расширение, например ``.ini``, также допустимо. Поскольку ни ``.cfg``, ни ``.ini`` не стандартизированы, форматирование ConfigFile Godot может отличаться от файлов, написанных другими программами.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_ConfigFile_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ConfigFile_method_clear>`

Удаляет все содержимое конфигурации.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_encode_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **encode_to_text**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_encode_to_text>`

Получите текстовую версию этого файла конфигурации (тот же текст, который будет записан в файл).

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section:

.. rst-class:: classref-method

|void| **erase_section**\ (\ section\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section>`

Удаляет указанный раздел вместе со всеми парами ключ-значение внутри. Выдает ошибку, если раздел не существует.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section_key:

.. rst-class:: classref-method

|void| **erase_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section_key>`

Удаляет указанный ключ в разделе. Выдает ошибку, если раздел или ключ не существуют.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_section_keys:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_section_keys**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_get_section_keys>`

Возвращает массив всех определенных идентификаторов ключей в указанном разделе. Вызывает ошибку и возвращает пустой массив, если раздел не существует.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_sections:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_sections**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_get_sections>`

Возвращает массив всех определенных идентификаторов разделов.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_ConfigFile_method_get_value>`

Возвращает текущее значение для указанного раздела и ключа. Если раздел или ключ не существуют, метод возвращает резервное значение ``default``. Если ``default`` не указан или установлен в ``null``, также возникает ошибка.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section>`

Возвращает ``true``, если указанный раздел существует.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section_key>`

Возвращает ``true``, если указанная пара раздел-ключ существует.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load>`

Загружает файл конфигурации, указанный в качестве параметра. Содержимое файла анализируется и загружается в объект **ConfigFile**, для которого был вызван метод. 

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одно из других значений :ref:`Error<enum_@GlobalScope_Error>`, если операция завершилась неудачей.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted>`

Загружает зашифрованный файл конфигурации, указанный в качестве параметра, используя предоставленный ``key`` для его расшифровки. Содержимое файла анализируется и загружается в объект **ConfigFile**, для которого был вызван метод. 

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одно из других значений :ref:`Error<enum_@GlobalScope_Error>`, если операция не удалась.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted_pass>`

Загружает зашифрованный файл конфигурации, указанный в качестве параметра, используя предоставленный ``password`` для его расшифровки. Содержимое файла анализируется и загружается в объект **ConfigFile**, для которого был вызван метод. 

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одно из других значений :ref:`Error<enum_@GlobalScope_Error>`, если операция не удалась.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ data\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_parse>`

Анализирует переданную строку как содержимое файла конфигурации. Строка анализируется и загружается в объект ConfigFile, для которого был вызван метод. 

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одно из других значений :ref:`Error<enum_@GlobalScope_Error>`, если операция не удалась.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save>`

Сохраняет содержимое объекта **ConfigFile** в файл, указанный в качестве параметра. Выходной файл использует структуру в стиле INI.

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одно из других значений :ref:`Error<enum_@GlobalScope_Error>`, если операция не удалась.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted>`

Сохраняет содержимое объекта **ConfigFile** в зашифрованном файле AES-256, указанном в качестве параметра, используя предоставленный ``key`` для его шифрования. Выходной файл использует структуру в стиле INI.

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одно из других значений :ref:`Error<enum_@GlobalScope_Error>`, если операция не удалась.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted_pass>`

Сохраняет содержимое объекта **ConfigFile** в зашифрованном файле AES-256, указанном в качестве параметра, используя предоставленный ``password`` для его шифрования. Выходной файл использует структуру в стиле INI.

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одно из других значений :ref:`Error<enum_@GlobalScope_Error>`, если операция не удалась.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_set_value:

.. rst-class:: classref-method

|void| **set_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ConfigFile_method_set_value>`

Присваивает значение указанному ключу указанного раздела. Если раздел или ключ не существуют, они создаются. Передача значения ``null`` удаляет указанный ключ, если он существует, и удаляет раздел, если он оказывается пустым после удаления ключа.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
