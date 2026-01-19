:github_url: hide

.. _class_EditorPaths:

EditorPaths
===========

**Успадковує:** :ref:`Object<class_Object>`

Редактор-only singleton, який повертає шляхи до різних папок даних OS та файлів.

.. rst-class:: classref-introduction-group

Опис
--------

Цей редактор-only singleton повертає спеціальні шляхи для різних папок даних та файлів. Для забезпечення збереження файлів в правильному місці на кожній операційній системі можна використовувати в додатках редактора.

\ **Примітка:** Цей однотон не доступний у експортованих проектах. Припустимо, щоб отримати доступ до його в експортному проекті призведе до помилки скрипта, оскільки одинонтон не буде оголошено. Щоб запобігти помилках сценаріїв у експортованих проектах, скористайтеся :ref:`Engine.has_singleton()<class_Engine_method_has_singleton>`, щоб перевірити, чи доступний одинон до його використання.

\ **Примітка:** На платформі Linux/BSD Godot відповідає `XDG Специфікація бази каталогів  <https://specifications.freedesktop.org/на основіir-spec/на основіir-spec-latest.html>`__. Ви можете перевизнати змінні середовища відповідно до специфікації, щоб змінити шляхи даних редактора та проекту.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Файлові шляхи у проектах Godot <../tutorials/io/data_paths>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_cache_dir<class_EditorPaths_method_get_cache_dir>`\ (\ ) |const|                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_config_dir<class_EditorPaths_method_get_config_dir>`\ (\ ) |const|                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_data_dir<class_EditorPaths_method_get_data_dir>`\ (\ ) |const|                         |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_project_settings_dir<class_EditorPaths_method_get_project_settings_dir>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_self_contained_file<class_EditorPaths_method_get_self_contained_file>`\ (\ ) |const|   |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_self_contained<class_EditorPaths_method_is_self_contained>`\ (\ ) |const|               |
   +-----------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorPaths_method_get_cache_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_cache_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_cache_dir>`

Повертає абсолютний шлях до папки кешу користувача. Цю папку слід використовувати для тимчасових даних, які можна безпечно видалити, коли редактор закривається (наприклад, створені мініатюри ресурсів). 

\ **Шляхи за умовчанням для кожної платформи:** 

.. code:: text
 
    - Windows: %LOCALAPPDATA%\Godot\ 
    - macOS: ~/Library/Caches/Godot/ 
    - Linux: ~/.cache/godot/ 

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_config_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_config_dir>`

Повертає абсолютний шлях до папки конфігурації користувача. Ця папка повинна бути використана для файлів * конфігурації *\ 

\ **Плани за замовчуванням на платформі:**\ 

.. code:: text

    - Вікна: %APPDATA%\Godot\ (наприклад, `get_data_dir()`)`
    - macOS: ~/Library/Application support/Godot/ (наприклад, `get_data_dir()`)`)
    - Linux: ~/.config/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_data_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_data_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_data_dir>`

Повертає абсолютний шлях до папки даних користувача. Ця папка повинна бути використана для *persistent* файлів даних, таких як встановлені шаблони експорту.

\ **Пріжки за платформою:**\ 

.. code:: text

    - Вікна: %APPDATA%\Godot\ (наприклад, `get_config_dir()`)`
    - macOS: ~/Library/Application support/Godot/ (наприклад, `get_config_dir()`)`)
    - Linux: ~/.local/share/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_project_settings_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_project_settings_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_project_settings_dir>`

Повертає відносний шлях до налаштувань редактора для цього проєкту. Зазвичай це ``"res://.godot/editor"``. Усі проєкти мають унікальний підкаталог у шляху налаштувань, де зберігаються налаштування редактора, специфічні для проєкту.

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_self_contained_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_self_contained_file**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_self_contained_file>`

Повертає абсолютний шлях до самостійного файлу, що робить поточний екземпляр редактора Godot вважається самодотриманням. Повертає порожній рядок, якщо поточний екземпляр редактора Godot не підтримується. Дивитися також :ref:`_self_contained()<class_EditorPaths_private_method__self_contained>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_is_self_contained:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_self_contained**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_is_self_contained>`

``true``, якщо редактор позначений як самоконтейнер, ``false`` в іншому випадку. Коли ввімкнено режим, конфігурація користувача, дані та файли кешу зберігаються в папці ``editor_data/`` поряд з редактором бінарних. Це полегшує переносне використання і забезпечує редактор Godot, що зменшує кількість файлів, що надходить з власної папки. Самостійний режим не доступний для експортованих проектів.

Самостійний режим можна ввімкнути, створивши файл ``._sc_`` або ``_sc_`` в тій же папці, як і редактор бінарних або macOS .app пучка, поки редактор не працює. Дивитися також :ref:`get_self_contained_file()<class_EditorPaths_method_get_self_contained_file>`.

\ **Примітка:** На macOS, карантинний прапор слід вручну видалити, перш ніж використовувати режим самотримання, див. ` Запуск на macOS  <https://docs.godotengine.org/en/stable/tutorials/export/running_on_macos.html>`__.

\ **Примітка:** На macOS, розміщення ``_sc_`` або будь-який інший файл всередині .app пучка буде розбити цифровий підпис і зробити його непортабельним, розглянути розміщення його в тій же папці, як пакет .app замість.

\ **Примітка:** Паровий випуск Godot використовує режим самотримання за замовчуванням.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
