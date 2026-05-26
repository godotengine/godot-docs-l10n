:github_url: hide

.. _class_EditorFileSystem:

EditorFileSystem
================

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Файловая система ресурсов, как ее видит редактор.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот объект содержит информацию обо всех ресурсах в файловой системе, их типах и т. д.

\ **Примечание:** Этот класс не следует создавать напрямую. Вместо этого обращайтесь к синглтону с помощью :ref:`EditorInterface.get_resource_filesystem()<class_EditorInterface_method_get_resource_filesystem>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_type<class_EditorFileSystem_method_get_file_type>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                  |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_filesystem<class_EditorFileSystem_method_get_filesystem>`\ (\ )                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_filesystem_path<class_EditorFileSystem_method_get_filesystem_path>`\ (\ path\: :ref:`String<class_String>`\ )              |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`get_scanning_progress<class_EditorFileSystem_method_get_scanning_progress>`\ (\ ) |const|                                      |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_importing<class_EditorFileSystem_method_is_importing>`\ (\ ) |const|                                                        |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_scanning<class_EditorFileSystem_method_is_scanning>`\ (\ ) |const|                                                          |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`reimport_files<class_EditorFileSystem_method_reimport_files>`\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`scan<class_EditorFileSystem_method_scan>`\ (\ )                                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`scan_sources<class_EditorFileSystem_method_scan_sources>`\ (\ )                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`update_file<class_EditorFileSystem_method_update_file>`\ (\ path\: :ref:`String<class_String>`\ )                              |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_EditorFileSystem_signal_filesystem_changed:

.. rst-class:: classref-signal

**filesystem_changed**\ (\ ) :ref:`🔗<class_EditorFileSystem_signal_filesystem_changed>`

Выдается при изменении файловой системы.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reimported:

.. rst-class:: classref-signal

**resources_reimported**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reimported>`

Вызывается при повторном импорте ресурса.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reimporting:

.. rst-class:: classref-signal

**resources_reimporting**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reimporting>`

Выдается перед повторным импортом ресурса.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reload:

.. rst-class:: classref-signal

**resources_reload**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reload>`

Генерируется, если хотя бы один ресурс перезагружается при сканировании файловой системы.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_script_classes_updated:

.. rst-class:: classref-signal

**script_classes_updated**\ (\ ) :ref:`🔗<class_EditorFileSystem_signal_script_classes_updated>`

Генерируется при обновлении списка глобальных классов скриптов.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_sources_changed:

.. rst-class:: classref-signal

**sources_changed**\ (\ exist\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFileSystem_signal_sources_changed>`

Выдается, если изменился источник импортируемого файла.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorFileSystem_method_get_file_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_type**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystem_method_get_file_type>`

Возвращает тип ресурса файла, учитывая полный путь. Это возвращает строку, например ``"Resource"`` или ``"GDScript"``, *не* расширение файла, например ``".gd"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_filesystem:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_filesystem**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_get_filesystem>`

Получает объект корневого каталога.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_filesystem_path:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_filesystem_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileSystem_method_get_filesystem_path>`

Возвращает представление файловой системы по адресу ``path``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_scanning_progress:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_scanning_progress**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_get_scanning_progress>`

Возвращает ход сканирования от 0 до 1, если ФС сканируется.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_is_importing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_importing**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_is_importing>`

Returns ``true`` if resources are currently being imported.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_is_scanning:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scanning**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_is_scanning>`

Возвращает ``true``, если файловая система сканируется.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_reimport_files:

.. rst-class:: classref-method

|void| **reimport_files**\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_method_reimport_files>`

Повторно импортирует набор файлов. Вызывайте это, если эти файлы или их файлы ``.import`` были напрямую отредактированы скриптом или внешней программой.

Если тип файла изменился или файл был создан заново, используйте :ref:`update_file()<class_EditorFileSystem_method_update_file>` или :ref:`scan()<class_EditorFileSystem_method_scan>`.

\ **Примечание:** Эта функция блокируется до завершения импорта. Однако итерация основного цикла, включая таймеры и :ref:`Node._process()<class_Node_private_method__process>`, будет происходить во время процесса импорта из-за обновлений индикатора выполнения. Избегайте вызовов :ref:`reimport_files()<class_EditorFileSystem_method_reimport_files>` или :ref:`scan()<class_EditorFileSystem_method_scan>` во время выполнения импорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_scan:

.. rst-class:: classref-method

|void| **scan**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_scan>`

Сканировать файловую систему на предмет изменений.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_scan_sources:

.. rst-class:: classref-method

|void| **scan_sources**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_scan_sources>`

Проверяет, не изменился ли источник импортируемого ресурса.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_update_file:

.. rst-class:: classref-method

|void| **update_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileSystem_method_update_file>`

Добавьте файл в существующий каталог или запланируйте обновление информации о файле при перезапуске редактора. Может использоваться для обновления текстовых файлов, сохраненных внешней программой. Это не импортирует файл. 

Для повторного импорта вызовите методы :ref:`reimport_files()<class_EditorFileSystem_method_reimport_files>` или :ref:`scan()<class_EditorFileSystem_method_scan>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
