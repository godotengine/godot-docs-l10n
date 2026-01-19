:github_url: hide

.. _class_EditorPaths:

EditorPaths
===========

**Наследует:** :ref:`Object<class_Object>`

Синглтон, доступный только редактору, который возвращает пути к различным папкам и файлам данных, специфичным для ОС.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот синглтон, предназначенный только для редактора, возвращает пути, специфичные для ОС, к различным папкам и файлам данных. Его можно использовать в плагинах редактора, чтобы гарантировать сохранение файлов в правильном месте в каждой операционной системе.

\ **Примечание:** Этот синглтон недоступен в экспортированных проектах. Попытка доступа к нему в экспортированном проекте приведет к ошибке скрипта, так как синглтон не будет объявлен. Чтобы предотвратить ошибки скрипта в экспортированных проектах, используйте :ref:`Engine.has_singleton()<class_Engine_method_has_singleton>`, чтобы проверить, доступен ли синглтон, перед его использованием.

\ **Примечание:** На платформе Linux/BSD Godot соответствует `Спецификации базового каталога XDG <https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html>`__. Вы можете переопределить переменные среды, следуя спецификации, чтобы изменить пути к данным редактора и проекта.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Пути к файлам в проектах Godot <../tutorials/io/data_paths>`

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_EditorPaths_method_get_cache_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_cache_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_cache_dir>`

Возвращает абсолютный путь к папке кэша пользователя. Эту папку следует использовать для временных данных, которые можно безопасно удалить при закрытии редактора (например, сгенерированные миниатюры ресурсов).

\ **Пути по умолчанию для каждой платформы:**\ 

.. code:: text

    - Windows: %LOCALAPPDATA%\Godot\
    - macOS: ~/Library/Caches/Godot/
    - Linux: ~/.cache/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_config_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_config_dir>`

Возвращает абсолютный путь к папке конфигурации пользователя. Эту папку следует использовать для *постоянных* файлов конфигурации пользователя.

\ **Пути по умолчанию для каждой платформы:**\ 

.. code:: text

    - Windows: %APPDATA%\Godot\                    (same as `get_data_dir()`)
    - macOS: ~/Library/Application Support/Godot/  (same as `get_data_dir()`)
    - Linux: ~/.config/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_data_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_data_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_data_dir>`

Возвращает абсолютный путь к папке данных пользователя. Эту папку следует использовать для *постоянных* файлов данных пользователя, таких как установленные шаблоны экспорта.

\ **Пути по умолчанию для каждой платформы:**\ 

.. code:: text

    - Windows: %APPDATA%\Godot\                    (same as `get_config_dir()`)
    - macOS: ~/Library/Application Support/Godot/  (same as `get_config_dir()`)
    - Linux: ~/.local/share/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_project_settings_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_project_settings_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_project_settings_dir>`

Возвращает относительный путь к настройкам редактора для данного проекта. Обычно это ``"res://.godot/editor"``. Все проекты имеют уникальную подпапку внутри пути к настройкам, где сохраняются специфические для проекта параметры редактора.

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_self_contained_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_self_contained_file**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_self_contained_file>`

Возвращает абсолютный путь к автономному файлу, который делает текущий экземпляр редактора Godot автономным. Возвращает пустую строку, если текущий экземпляр редактора Godot не автономен. См. также :ref:`is_self_contained()<class_EditorPaths_method_is_self_contained>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_is_self_contained:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_self_contained**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_is_self_contained>`

Возвращает ``true``, если редактор отмечен как автономный, ``false`` в противном случае. Когда автономный режим включен, пользовательская конфигурация, данные и файлы кэша сохраняются в папке ``editor_data/`` рядом с двоичным файлом редактора. Это упрощает портативное использование и гарантирует, что редактор Godot минимизирует запись файлов за пределами своей собственной папки. Автономный режим недоступен для экспортированных проектов.

Автономный режим можно включить, создав файл с именем ``._sc_`` или ``_sc_`` в той же папке, что и двоичный файл редактора или пакет macOS .app, пока редактор не запущен. См. также :ref:`get_self_contained_file()<class_EditorPaths_method_get_self_contained_file>`.

\ **Примечание:** На macOS флаг карантина должен быть вручную удален перед использованием автономного режима, см. `Запуск на macOS <https://docs.godotengine.org/en/stable/tutorials/export/running_on_macos.html>`__.

\ **Примечание:** На macOS размещение ``_sc_`` или любого другого файла внутри пакета .app нарушит цифровую подпись и сделает его непереносимым, рассмотрите возможность размещения его в той же папке, что и пакет .app.

\ **Примечание:** В Steam-релизе Godot по умолчанию используется автономный режим.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
