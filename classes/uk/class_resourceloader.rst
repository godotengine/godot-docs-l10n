:github_url: hide

.. _class_ResourceLoader:

ResourceLoader
==============

**Успадковує:** :ref:`Object<class_Object>`

Однотон для завантаження ресурсних файлів.

.. rst-class:: classref-introduction-group

Опис
--------

Синглтон, який використовується для завантаження файлів ресурсів із файлової системи. 

Він використовує багато класів :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, зареєстрованих у механізмі (вбудованих або з плагіна), щоб завантажувати файли в пам’ять і перетворювати їх у формат, який може використовувати механізм. 

\ **Примітка:** Ви повинні спочатку імпортувати файли в механізм, щоб завантажити їх за допомогою :ref:`load()<class_ResourceLoader_method_load>`. Якщо ви хочете завантажити :ref:`Image<class_Image>` під час виконання, ви можете використовувати :ref:`Image.load()<class_Image_method_load>`. Якщо ви хочете імпортувати аудіофайли, ви можете використати фрагмент, описаний у :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`. 

\ **Примітка: ** Нересурсні файли, наприклад файли звичайного тексту, не можна читати за допомогою **ResourceLoader**. Замість цього використовуйте :ref:`FileAccess<class_FileAccess>` для цих файлів і майте на увазі, що нересурсні файли не експортуються за замовчуванням (див. примітки в описі класу :ref:`FileAccess<class_FileAccess>`, щоб отримати інструкції щодо їх експорту).

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація потокового завантаження <https://godotengine.org/asset-library/asset/2778>`__

- `Демонстрація тестування операційної системи <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_resource_format_loader<class_ResourceLoader_method_add_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ )                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`exists<class_ResourceLoader_method_exists>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ )                                                                                                                                                    |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`get_cached_ref<class_ResourceLoader_method_get_cached_ref>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                  |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_dependencies<class_ResourceLoader_method_get_dependencies>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_recognized_extensions_for_type<class_ResourceLoader_method_get_recognized_extensions_for_type>`\ (\ type\: :ref:`String<class_String>`\ )                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_resource_uid<class_ResourceLoader_method_get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`has_cached<class_ResourceLoader_method_has_cached>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`list_directory<class_ResourceLoader_method_list_directory>`\ (\ directory_path\: :ref:`String<class_String>`\ )                                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load<class_ResourceLoader_method_load>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ )                                                                                      |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load_threaded_get<class_ResourceLoader_method_load_threaded_get>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` | :ref:`load_threaded_get_status<class_ResourceLoader_method_load_threaded_get_status>`\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ )                                                                                                                   |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`load_threaded_request<class_ResourceLoader_method_load_threaded_request>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`remove_resource_format_loader<class_ResourceLoader_method_remove_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ )                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_abort_on_missing_resources<class_ResourceLoader_method_set_abort_on_missing_resources>`\ (\ abort\: :ref:`bool<class_bool>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_ResourceLoader_ThreadLoadStatus:

.. rst-class:: classref-enumeration

enum **ThreadLoadStatus**: :ref:`🔗<enum_ResourceLoader_ThreadLoadStatus>`

.. _class_ResourceLoader_constant_THREAD_LOAD_INVALID_RESOURCE:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_INVALID_RESOURCE** = ``0``

Ресурс недійсний або не був завантажений :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

.. _class_ResourceLoader_constant_THREAD_LOAD_IN_PROGRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_IN_PROGRESS** = ``1``

Ресурс все ще завантажується.

.. _class_ResourceLoader_constant_THREAD_LOAD_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_FAILED** = ``2``

При навантаженні і її не вдалося.

.. _class_ResourceLoader_constant_THREAD_LOAD_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_LOADED** = ``3``

Ресурс успішно завантажено, і до нього можна отримати доступ через :ref:`load_threaded_get()<class_ResourceLoader_method_load_threaded_get>`.

.. rst-class:: classref-item-separator

----

.. _enum_ResourceLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceLoader_CacheMode>`

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Не виходячи з основного ресурсу (за запитом, який буде завантажений) або будь-який його субресурси отримують з кешу, а не зберігаються в ньому. Залежності (зовнішні ресурси) навантажуються :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

Основним ресурсом (за запитом, який буде завантажений), його субресурси та його залежності (зовнішні ресурси) отримуються з кешу, якщо присутні, замість завантажених. Ті, які не завантажуються, а потім зберігаються в кеші. Ці ж правила пропагуються прямо на дерево залежностей (зовнішні ресурси).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Як :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`, але кеш перевіряється на основний ресурс (за запитом, який буде завантажений) і для кожного його субресурсів. Тим не менш, у кеш-пам'яті з’являються дані, які оцінюються від зберігання в вже існуючі екземпляри. В іншому випадку вони відтворюються як абсолютно нові об'єкти.

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Як :ref:`CACHE_MODE_IGNORE<class_ResourceLoader_constant_CACHE_MODE_IGNORE>`, але пропагований рекурсивно вниз дерево залежностей (зовнішні ресурси).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Як :ref:`CACHE_MODE_REPLACE<class_ResourceLoader_constant_CACHE_MODE_REPLACE>`, але пропагований рекурсивно вниз дерево залежностей (зовнішні ресурси).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ResourceLoader_method_add_resource_format_loader:

.. rst-class:: classref-method

|void| **add_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceLoader_method_add_resource_format_loader>`

Статус на сервери ResourceLoader буде використовувати ResourceFormatLoader як описано в ``методичне навантаження``.

Цей метод виконується непомітно для ResourceFormatLoaders, написаних в GDScript (див. :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` для отримання додаткової інформації).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **exists**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_ResourceLoader_method_exists>`

Повертає, чи існує визнаний ресурс для вказаного ``пам'ятний шлях``.

Додатковий ``type_hint`` може бути використаний для подальшого уточнення типу :ref:`Resource<class_Resource>`, який слід обробляти :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Будь-який, що спадок від :ref:`Resource<class_Resource>` може бути використаний як підказка типу, наприклад :ref:`Image<class_Image>`.

\ **Примітка:** Якщо ви використовуєте :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`, цей метод повернеться ``true``, якщо ресурс не збережений (тобто існує тільки в ресурсному кеші).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_cached_ref:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_cached_ref**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_cached_ref>`

Повертає кешоване посилання на ресурс для заданого ``path``.

\ **Примітка:** Якщо ресурс не кешується, повернутий :ref:`Resource<class_Resource>` буде недійсним.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_dependencies>`

Повертає залежності для ресурсу за заданим ``path``.

Кожна залежність – це рядок, який можна розділити на секції за допомогою ``::``. Може бути як одна секція, так і три секції, причому друга секція завжди порожня. Якщо є одна секція, вона містить шлях до файлу. Якщо є три секції, перша секція містить UID, а третя – резервний шлях.

::

    for dependency in ResourceLoader.get_dependencies(path):
        if dependency.contains("::"):
            print(dependency.get_slice("::", 0)) # Виводить UID.
            print(dependency.get_slice("::", 2)) # Виводить резервний шлях.
        else:
            print(dependency) # Виводить шлях.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_recognized_extensions_for_type:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions_for_type**\ (\ type\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_recognized_extensions_for_type>`

Повертає перелік визнаних розширень для ресурсного типу.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_resource_uid>`

Повертає ідентифікатор, пов'язаний з даним ресурсом, або ``-1``, коли не існує такого ID.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_has_cached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cached**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_has_cached>`

Повертає, чи доступний кешований ресурс для заданого ``path``.

Після завантаження ресурсу рушієм, він кешується в пам'яті для швидшого доступу, і майбутні виклики методу :ref:`load()<class_ResourceLoader_method_load>` використовуватимуть кешовану версію. Кешований ресурс можна перезаписати, використовуючи :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>` для нового ресурсу для того самого шляху.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_list_directory:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_directory**\ (\ directory_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_list_directory>`

Виводить список каталогів, повертаючи всі ресурси та підкаталоги, що містяться в ньому. Файли ресурсів мають оригінальні імена файлів, як видно в редакторі перед експортом. До каталогів додано ``"/"``.

::

    # Виводить ["extra_data/", "model.gltf", "model.tscn", "model_slime.png"]
    print(ResourceLoader.list_directory("res://assets/enemies/slime"))

\ **Примітка:** Порядок файлів та каталогів, що повертаються цим методом, не є детермінованим і може відрізнятися залежно від операційної системи.

\ **Примітка:** Щоб нормально переміщатися по файловій системі, див. :ref:`DirAccess<class_DirAccess>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load>`

Завантажує ресурс за вказаним ``path``, кешуючи результат для подальшого доступу.

Зареєстровані :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` послідовно запитуються, щоб знайти перший, який може обробити розширення файлу, а потім намагаються завантажити. Якщо завантаження не вдається, також намагаються завантажити решту ResourceFormatLoader.

Додатковий ``type_hint`` може бути використаний для подальшого визначення типу :ref:`Resource<class_Resource>`, який має оброблятися :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Будь-що, що успадковується від :ref:`Resource<class_Resource>`, може бути використано як підказка типу, наприклад, :ref:`Image<class_Image>`.

Властивість ``cache_mode`` визначає, чи і як кеш повинен використовуватися або оновлюватися під час завантаження ресурсу.

Повертає порожній ресурс, якщо жоден :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` не може обробити файл, і друкує помилку, якщо файл не знайдено за вказаним шляхом.

GDScript має спрощений вбудований метод :ref:`@GDScript.load()<class_@GDScript_method_load>`, який можна використовувати в більшості ситуацій, залишаючи використання **ResourceLoader** для більш складних сценаріїв. 

\ **Примітка:** Якщо :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` має значення ``true``, :ref:`@GDScript.load()<class_@GDScript_method_load>` не зможе прочитати конвертовані файли в експортованому проекті. Якщо ви покладаєтеся на завантаження файлів, що знаходяться в PCK, під час виконання, встановіть для :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` значення ``false``.

\ **Примітка:** Відносні шляхи будуть мати префікс ``"res://"`` перед завантаженням. Щоб уникнути неочікуваних результатів, переконайтеся, що ваші шляхи абсолютні.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load_threaded_get**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get>`

Повертає ресурс, завантажений :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

Якщо це викликається до завершення потоку завантаження (тобто :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` не є :ref:`THREAD_LOAD_LOADED<class_ResourceLoader_constant_THREAD_LOAD_LOADED>`), потік, що викликає, буде заблоковано, доки ресурс не завершить завантаження. Однак рекомендується використовувати :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>`, щоб дізнатися, коли завантаження фактично завершилося.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get_status:

.. rst-class:: classref-method

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **load_threaded_get_status**\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get_status>`

Повертає статус потокової операції завантаження, розпочатої за допомогою методу :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` для ресурсу за адресою ``path``.

Змінну масиву можна додатково передати через ``progress``, і вона поверне одноелементний масив, що містить коефіцієнт завершення потокового завантаження (між ``0.0`` та ``1.0``).

\ **Примітка:** Рекомендований спосіб використання цього методу – викликати його під час різних кадрів (наприклад, у методі :ref:`node._process()<class_node_method__process>`, замість циклу).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_threaded_request**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_request>`

Завантажує ресурс за допомогою потоків. Якщо ``use_sub_threads`` має значення ``true``, для завантаження ресурсу буде використано кілька потоків, що пришвидшує завантаження, але може вплинути на основний потік (і таким чином спричинити уповільнення гри).

Параметр ``cache_mode`` визначає, чи і як кеш має використовуватися або оновлюватися під час завантаження ресурсу.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_remove_resource_format_loader:

.. rst-class:: classref-method

|void| **remove_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ) :ref:`🔗<class_ResourceLoader_method_remove_resource_format_loader>`

Незареєстровані дані :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_set_abort_on_missing_resources:

.. rst-class:: classref-method

|void| **set_abort_on_missing_resources**\ (\ abort\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ResourceLoader_method_set_abort_on_missing_resources>`

Зміни поведінки на відсутніх субресурсах. Поведінка за замовчуванням полягає в скороченні навантаження.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
