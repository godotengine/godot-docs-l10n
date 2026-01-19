:github_url: hide

.. _class_EditorFeatureProfile:

EditorFeatureProfile
====================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Профиль функций редактора, который можно использовать для отключения определенных функций.

.. rst-class:: classref-introduction-group

Описание
----------------

Профиль функций редактора можно использовать для отключения определенных функций редактора Godot. При отключении функции не будут отображаться в редакторе, что делает редактор менее загроможденным. Это полезно в образовательных настройках для уменьшения путаницы или при работе в команде. Например, художники и дизайнеры уровней могут использовать профиль функций, который отключает редактор сценариев, чтобы избежать случайного внесения изменений в файлы, которые они не должны редактировать.

Для визуального управления профилями функций редактора используйте **Редактор > Управление профилями функций...** в верхней части окна редактора.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_feature_name<class_EditorFeatureProfile_method_get_feature_name>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ )                                                                                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_disabled<class_EditorFeatureProfile_method_is_class_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                              |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_editor_disabled<class_EditorFeatureProfile_method_is_class_editor_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_property_disabled<class_EditorFeatureProfile_method_is_class_property_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                            |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_feature_disabled<class_EditorFeatureProfile_method_is_feature_disabled>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) |const|                                                                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_file<class_EditorFeatureProfile_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                          |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save_to_file<class_EditorFeatureProfile_method_save_to_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                              |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class<class_EditorFeatureProfile_method_set_disable_class>`\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ )                                                                   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class_editor<class_EditorFeatureProfile_method_set_disable_class_editor>`\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ )                                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class_property<class_EditorFeatureProfile_method_set_disable_class_property>`\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_feature<class_EditorFeatureProfile_method_set_disable_feature>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`, disable\: :ref:`bool<class_bool>`\ )                                                    |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_EditorFeatureProfile_Feature:

.. rst-class:: classref-enumeration

enum **Feature**: :ref:`🔗<enum_EditorFeatureProfile_Feature>`

.. _class_EditorFeatureProfile_constant_FEATURE_3D:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_3D** = ``0``

3D-редактор. Если эта функция отключена, 3D-редактор не будет отображаться, но 3D-узлы будут по-прежнему отображаться в диалоговом окне «Создать новый узел».

.. _class_EditorFeatureProfile_constant_FEATURE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCRIPT** = ``1``

Вкладка Script, которая содержит редактор скриптов и браузер ссылок на классы. Если эта функция отключена, вкладка Script не будет отображаться.

.. _class_EditorFeatureProfile_constant_FEATURE_ASSET_LIB:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_ASSET_LIB** = ``2``

Вкладка AssetLib. Если эта функция отключена, вкладка AssetLib не будет отображаться.

.. _class_EditorFeatureProfile_constant_FEATURE_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCENE_TREE** = ``3``

Редактирование дерева сцены. Если эта функция отключена, док-станция дерева сцены будет по-прежнему видна, но будет доступна только для чтения.

.. _class_EditorFeatureProfile_constant_FEATURE_NODE_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_NODE_DOCK** = ``4``

**Устарело:** Replaced by the Signals and Groups docks.

Док-станция Node. Если эта функция отключена, сигналы и группы не будут видны и не будут доступны для изменения из редактора.

.. _class_EditorFeatureProfile_constant_FEATURE_FILESYSTEM_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_FILESYSTEM_DOCK** = ``5``

Док FileSystem. Если эта функция отключена, док FileSystem не будет виден.

.. _class_EditorFeatureProfile_constant_FEATURE_IMPORT_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_IMPORT_DOCK** = ``6``

Док импорта. Если эта функция отключена, док импорта не будет виден.

.. _class_EditorFeatureProfile_constant_FEATURE_HISTORY_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_HISTORY_DOCK** = ``7``

Док истории. Если эта функция отключена, док истории не будет виден.

.. _class_EditorFeatureProfile_constant_FEATURE_GAME:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GAME** = ``8``

Вкладка «Игра», которая позволяет встраивать игровое окно и выбирать узлы, щелкая внутри него. Если эта функция отключена, вкладка «Игра» не будет отображаться.

.. _class_EditorFeatureProfile_constant_FEATURE_SIGNALS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SIGNALS_DOCK** = ``9``

Панель «Сигналы». Если эта функция отключена, сигналы не будут видны и недоступны для изменения в редакторе.

.. _class_EditorFeatureProfile_constant_FEATURE_GROUPS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GROUPS_DOCK** = ``10``

Панель «Группы». Если эта функция отключена, группы не будут видны и недоступны для изменения в редакторе.

.. _class_EditorFeatureProfile_constant_FEATURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_MAX** = ``11``

Представляет размер перечисления :ref:`Feature<enum_EditorFeatureProfile_Feature>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorFeatureProfile_method_get_feature_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_feature_name**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_get_feature_name>`

Возвращает понятное человеку имя указанного ``feature``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_disabled>`

Возвращает ``true``, если класс, указанный ``class_name``, отключен. Если отключен, класс не будет отображаться в диалоговом окне Create New Node.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_editor_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_editor_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_editor_disabled>`

Возвращает ``true``, если редактирование для класса, указанного ``class_name``, отключено. Если отключено, класс все равно будет отображаться в диалоговом окне Create New Node, но Inspector будет доступен только для чтения при выборе узла, который расширяет класс.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_property_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_property_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_property_disabled>`

Возвращает ``true``, если ``property`` отключено в классе, указанном ``class_name``. Если свойство отключено, оно не будет отображаться в инспекторе при выборе узла, который расширяет класс, указанный ``class_name``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_feature_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_feature_disabled**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_feature_disabled>`

Возвращает ``true``, если ``feature`` отключена. Когда функция отключена, она полностью исчезнет из редактора.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_load_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_load_from_file>`

Загружает профиль функций редактора из файла. Файл должен соответствовать формату JSON, полученному с помощью кнопки **Export** менеджера профилей функций или метода :ref:`save_to_file()<class_EditorFeatureProfile_method_save_to_file>`.

\ **Примечание:** Профили функций, созданные через пользовательский интерфейс, загружаются из каталога ``feature_profiles`` в виде файла с расширением ``.profile``. Папку конфигурации редактора можно найти с помощью :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_save_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_save_to_file>`

Сохраняет профиль функций редактора в файл в формате JSON. Затем его можно импортировать с помощью кнопки **Import** менеджера профилей функций или метода :ref:`load_from_file()<class_EditorFeatureProfile_method_load_from_file>`.

\ **Примечание:** Профили функций, созданные через пользовательский интерфейс, сохраняются в каталоге ``feature_profiles`` в виде файла с расширением ``.profile``. Папку конфигурации редактора можно найти с помощью :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class:

.. rst-class:: classref-method

|void| **set_disable_class**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class>`

Если ``disable`` равно ``true``, отключает класс, указанный ``class_name``. Если отключено, класс не будет отображаться в диалоговом окне «Создать новый узел».

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_editor:

.. rst-class:: classref-method

|void| **set_disable_class_editor**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_editor>`

Если ``disable`` равно ``true``, отключает редактирование для класса, указанного ``class_name``. Если отключено, класс все равно будет отображаться в диалоговом окне «Создать новый узел», но инспектор будет доступен только для чтения при выборе узла, расширяющего класс.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_property:

.. rst-class:: classref-method

|void| **set_disable_class_property**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_property>`

Если ``disable`` равно ``true``, отключает редактирование для ``property`` в классе, указанном ``class_name``. Когда свойство отключено, оно не будет отображаться в инспекторе при выборе узла, который расширяет класс, указанный ``class_name``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_feature:

.. rst-class:: classref-method

|void| **set_disable_feature**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_feature>`

Если ``disable`` равно ``true``, отключает функцию редактора, указанную в ``feature``. Когда функция отключена, она полностью исчезает из редактора.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
