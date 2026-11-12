:github_url: hide

.. _class_EditorExportPreset:

EditorExportPreset
==================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Экспорт предустановленной конфигурации.

.. rst-class:: classref-introduction-group

Описание
----------------

Представляет конфигурацию шаблона экспорта, созданную в диалоговом окне экспорта редактора. Экземпляр **EditorExportPreset** предназначен для использования в качестве конфигурации, доступной только для чтения, передаваемой методам :ref:`EditorExportPlatform<class_EditorExportPlatform>` при экспорте проекта.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`are_advanced_options_enabled<class_EditorExportPreset_method_are_advanced_options_enabled>`\ (\ ) |const|                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_custom_features<class_EditorExportPreset_method_get_custom_features>`\ (\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                               | :ref:`get_customized_files<class_EditorExportPreset_method_get_customized_files>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_customized_files_count<class_EditorExportPreset_method_get_customized_files_count>`\ (\ ) |const|                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`get_encrypt_directory<class_EditorExportPreset_method_get_encrypt_directory>`\ (\ ) |const|                                                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`get_encrypt_pck<class_EditorExportPreset_method_get_encrypt_pck>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_encryption_ex_filter<class_EditorExportPreset_method_get_encryption_ex_filter>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_encryption_in_filter<class_EditorExportPreset_method_get_encryption_in_filter>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_encryption_key<class_EditorExportPreset_method_get_encryption_key>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_exclude_filter<class_EditorExportPreset_method_get_exclude_filter>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>`         | :ref:`get_export_filter<class_EditorExportPreset_method_get_export_filter>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_export_path<class_EditorExportPreset_method_get_export_path>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>`     | :ref:`get_file_export_mode<class_EditorExportPreset_method_get_file_export_mode>`\ (\ path\: :ref:`String<class_String>`, default\: :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` = 0\ ) |const| |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                 | :ref:`get_files_to_export<class_EditorExportPreset_method_get_files_to_export>`\ (\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_include_filter<class_EditorExportPreset_method_get_include_filter>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                     | :ref:`get_or_env<class_EditorExportPreset_method_get_or_env>`\ (\ name\: :ref:`StringName<class_StringName>`, env_var\: :ref:`String<class_String>`\ ) |const|                                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                 | :ref:`get_patches<class_EditorExportPreset_method_get_patches>`\ (\ ) |const|                                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_preset_name<class_EditorExportPreset_method_get_preset_name>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                     | :ref:`get_project_setting<class_EditorExportPreset_method_get_project_setting>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` | :ref:`get_script_export_mode<class_EditorExportPreset_method_get_script_export_mode>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_version<class_EditorExportPreset_method_get_version>`\ (\ name\: :ref:`StringName<class_StringName>`, windows_version\: :ref:`bool<class_bool>`\ ) |const|                                             |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`has<class_EditorExportPreset_method_has>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`has_export_file<class_EditorExportPreset_method_has_export_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_dedicated_server<class_EditorExportPreset_method_is_dedicated_server>`\ (\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_runnable<class_EditorExportPreset_method_is_runnable>`\ (\ ) |const|                                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                     | :ref:`resolve_encryption_key<class_EditorExportPreset_method_resolve_encryption_key>`\ (\ )                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_EditorExportPreset_ExportFilter:

.. rst-class:: classref-enumeration

enum **ExportFilter**: :ref:`🔗<enum_EditorExportPreset_ExportFilter>`

.. _class_EditorExportPreset_constant_EXPORT_ALL_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_ALL_RESOURCES** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_SELECTED_SCENES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_SELECTED_SCENES** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_SELECTED_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_SELECTED_RESOURCES** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXCLUDE_SELECTED_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXCLUDE_SELECTED_RESOURCES** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_CUSTOMIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_CUSTOMIZED** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPreset_FileExportMode:

.. rst-class:: classref-enumeration

enum **FileExportMode**: :ref:`🔗<enum_EditorExportPreset_FileExportMode>`

.. _class_EditorExportPreset_constant_MODE_FILE_NOT_CUSTOMIZED:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_NOT_CUSTOMIZED** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_STRIP** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_KEEP** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_REMOVE** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPreset_ScriptExportMode:

.. rst-class:: classref-enumeration

enum **ScriptExportMode**: :ref:`🔗<enum_EditorExportPreset_ScriptExportMode>`

.. _class_EditorExportPreset_constant_MODE_SCRIPT_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_TEXT** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_SCRIPT_BINARY_TOKENS:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_BINARY_TOKENS** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_SCRIPT_BINARY_TOKENS_COMPRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_BINARY_TOKENS_COMPRESSED** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorExportPreset_method_are_advanced_options_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_advanced_options_enabled**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_are_advanced_options_enabled>`

Возвращает ``true``, если в диалоговом окне экспорта включен переключатель «Дополнительно».

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_custom_features:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_custom_features**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_custom_features>`

Возвращает список пользовательских функций, добавленных к этому шаблону, через запятую, в виде строки. Подробнее см. в разделе :doc:`Теги функций <../tutorials/export/feature_tags>` в документации.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_customized_files:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_customized_files**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_customized_files>`

Возвращает словарь файлов, выбранных на вкладке «Ресурсы» диалогового окна экспорта. Ключами словаря являются пути к файлам, а значениями — соответствующие режимы экспорта: ``"strip"``, ``"keep"`` или ``"remove"``. См. также :ref:`get_file_export_mode()<class_EditorExportPreset_method_get_file_export_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_customized_files_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_customized_files_count**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_customized_files_count>`

Возвращает количество файлов, выбранных на вкладке «Ресурсы» диалогового окна экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encrypt_directory:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_encrypt_directory**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encrypt_directory>`

Возвращает ``true``, если в диалоговом окне экспорта включено шифрование каталога PCK.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encrypt_pck:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_encrypt_pck**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encrypt_pck>`

Возвращает ``true``, если в диалоговом окне экспорта включено шифрование PCK.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_ex_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_ex_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_ex_filter>`

Возвращает фильтры файлов, которые следует исключить при шифровании PCK.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_in_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_in_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_in_filter>`

Возвращает фильтры файлов, которые следует включить во время шифрования PCK.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_key:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_key**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_key>`

Returns PCK encryption key. This will only return the value set in the export preset and not the value of the ``GODOT_SCRIPT_ENCRYPTION_KEY`` environment variable. See also :ref:`resolve_encryption_key()<class_EditorExportPreset_method_resolve_encryption_key>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_exclude_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_exclude_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_exclude_filter>`

Возвращает фильтры файлов, которые следует исключить при экспорте.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_export_filter:

.. rst-class:: classref-method

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **get_export_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_export_filter>`

Возвращает режим фильтра файла экспорта, выбранный на вкладке «Ресурсы» диалогового окна экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_export_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_export_path**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_export_path>`

Возвращает целевой путь экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_file_export_mode:

.. rst-class:: classref-method

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **get_file_export_mode**\ (\ path\: :ref:`String<class_String>`, default\: :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` = 0\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_file_export_mode>`

Возвращает режим экспорта файла для указанного файла.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_files_to_export:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_to_export**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_files_to_export>`

Возвращает массив файлов для экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_include_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_include_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_include_filter>`

Возвращает фильтры файлов для включения во время экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_or_env:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_or_env**\ (\ name\: :ref:`StringName<class_StringName>`, env_var\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_or_env>`

Возвращает значение параметра экспорта или значение переменной среды, если она задана.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_patches:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_patches**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_patches>`

Возвращает список пакетов, на основе которых будет выполнен экспорт патча.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_preset_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_preset_name**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_preset_name>`

Возвращает имя этого экспортного пресета.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_project_setting:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_project_setting**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorExportPreset_method_get_project_setting>`

Возвращает значение параметра, идентифицированного ``name``, используя переопределения тега предустановленных функций экспорта вместо текущих функций ОС.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_script_export_mode:

.. rst-class:: classref-method

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **get_script_export_mode**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_script_export_mode>`

Возвращает режим экспорта, используемый файлами GDScript. ``0`` для «Текста», ``1`` для «Двоичных токенов» и ``2`` для «Сжатых двоичных токенов (файлы меньшего размера)».

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_version:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_version**\ (\ name\: :ref:`StringName<class_StringName>`, windows_version\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_version>`

Возвращает номер версии предустановки или возвращается к настройке проекта :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`, если задана пустая строка.

Если ``windows_version`` равен ``true``, форматирует возвращаемый номер версии для совместимости с метаданными исполняемого файла Windows.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_has>`

Возвращает ``true``, если у пресета есть свойство с именем ``property``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_has_export_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_export_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPreset_method_has_export_file>`

Возвращает ``true``, если файл по указанному ``path`` будет экспортирован.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_is_dedicated_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_dedicated_server**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_is_dedicated_server>`

Возвращает ``true``, если в диалоговом окне экспорта выбран режим экспорта выделенного сервера.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_is_runnable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_runnable**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_is_runnable>`

Возвращает ``true``, если в диалоговом окне экспорта включен переключатель «Работающий» (Runnable).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_resolve_encryption_key:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **resolve_encryption_key**\ (\ ) :ref:`🔗<class_EditorExportPreset_method_resolve_encryption_key>`

Returns PCK encryption key as a :ref:`PackedByteArray<class_PackedByteArray>`. If the ``GODOT_SCRIPT_ENCRYPTION_KEY`` environment variable is set, this will return that key instead of the key set in the export preset. See also :ref:`get_encryption_key()<class_EditorExportPreset_method_get_encryption_key>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
