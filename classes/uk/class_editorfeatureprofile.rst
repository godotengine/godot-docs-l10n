:github_url: hide

.. _class_EditorFeatureProfile:

EditorFeatureProfile
====================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Профіль редактора, який може бути використаний для виявлення конкретних функцій.

.. rst-class:: classref-introduction-group

Опис
--------

Профіль редактора може бути використаний для виключення конкретних особливостей редактора Godot. Коли вимкнено, функції не з'являються в редакторі, що робить редактор менш метеликом. Це корисно в налаштуваннях освіти, щоб зменшити сплутаність або при роботі в команді. Наприклад, художники та дизайнери рівня можуть використовувати спеціальний профіль, який відключає редактор сценаріїв, щоб уникнути випадкового внесення змін до файлів, які не повинні редагувати.

Щоб керувати профільами редактора, скористайтеся **Editor > Керування особливостями профілю...** у верхній частині вікна редактора.

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

.. _enum_EditorFeatureProfile_Feature:

.. rst-class:: classref-enumeration

enum **Feature**: :ref:`🔗<enum_EditorFeatureProfile_Feature>`

.. _class_EditorFeatureProfile_constant_FEATURE_3D:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_3D** = ``0``

3D редактор. Якщо ця функція вимкнена, 3D редактор не відображатиметься, але 3D вершини все ще відображатимуться в діалоговому вікні Створити новий Node.

.. _class_EditorFeatureProfile_constant_FEATURE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCRIPT** = ``1``

Вкладка скрипта, яка містить редактор і клас довідковий браузер. Якщо ця функція вимкнена, вкладка Script не відображатиметься.

.. _class_EditorFeatureProfile_constant_FEATURE_ASSET_LIB:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_ASSET_LIB** = ``2``

The Asset Store tab. If this feature is disabled, the Asset Store tab won't display.

.. _class_EditorFeatureProfile_constant_FEATURE_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCENE_TREE** = ``3``

Сцена редагування дерева. Якщо ця функція вимкнена, то Сценка док все ще буде видно, але буде прочитано.

.. _class_EditorFeatureProfile_constant_FEATURE_NODE_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_NODE_DOCK** = ``4``

**Застаріло:** Replaced by the Signals and Groups docks.

Док Нод. Якщо ця функція вимкнена, сигнали та групи не будуть видимими та модіфікованими з редактора.

.. _class_EditorFeatureProfile_constant_FEATURE_FILESYSTEM_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_FILESYSTEM_DOCK** = ``5``

ФайлСистема док. Якщо ця функція вимкнена, файлова система не буде видно.

.. _class_EditorFeatureProfile_constant_FEATURE_IMPORT_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_IMPORT_DOCK** = ``6``

Імпортний док. Якщо ця функція вимкнена, то Імпортний док не буде видно.

.. _class_EditorFeatureProfile_constant_FEATURE_HISTORY_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_HISTORY_DOCK** = ``7``

Історія док. Якщо ця функція вимкнена, історія не буде видно.

.. _class_EditorFeatureProfile_constant_FEATURE_GAME:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GAME** = ``8``

Вкладка «Гра», яка дозволяє вбудовувати вікно гри та вибирати вузли, клацаючи всередині нього. Якщо цю функцію вимкнено, вкладка Гра не відображатиметься.

.. _class_EditorFeatureProfile_constant_FEATURE_SIGNALS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SIGNALS_DOCK** = ``9``

Док «Сигнали». Якщо цю функцію вимкнено, сигнали не будуть видимими та не можна буде змінювати в редакторі.

.. _class_EditorFeatureProfile_constant_FEATURE_GROUPS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GROUPS_DOCK** = ``10``

Панель груп. Якщо цю функцію вимкнено, групи не будуть видимими та не можна буде змінювати в редакторі.

.. _class_EditorFeatureProfile_constant_FEATURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_MAX** = ``11``

Представляє розмір переліку :ref:`Feature<enum_EditorFeatureProfile_Feature>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorFeatureProfile_method_get_feature_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_feature_name**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_get_feature_name>`

Повертає зазначену ``парамічну функцію`` людське ім'я.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_disabled>`

Повернення ``true`` якщо клас, зазначений ``class_name`` вимкнено. Коли вимкнено, клас не з'явиться у діалоговому вікні Створити новий Node.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_editor_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_editor_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_editor_disabled>`

Повернення ``true`` якщо редагування для класу, зазначеного ``class_name`` вимкнено. Коли вимкнено, клас все ще з'явиться у діалоговому вікні Створити новий Node, але інспектор буде прочитано, коли вибирає вузол, яка розширює клас.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_property_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_property_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_property_disabled>`

Повертаємо ``true``, якщо ``property`` вимкнено в класі, зазначеному ``class_name``. Коли майно вимкнено, вона не з'явиться в Інспекторі при виборі вузла, яка розширює клас, зазначений ``class_name``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_feature_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_feature_disabled**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_feature_disabled>`

Повертає ``true``, якщо функція ``feature`` вимкнена. Коли функція вимкнена, вона повністю зникає з редактора.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_load_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_load_from_file>`

Завантажує профіль можливостей редактора з файлу. Файл має відповідати формату JSON, отриманому за допомогою кнопки **Експорт** у менеджері профілів функцій або методу :ref:`save_to_file()<class_EditorFeatureProfile_method_save_to_file>`.

\ **Примітка:** Профілі функцій, створені за допомогою інтерфейсу користувача, завантажуються з каталогу ``feature_profiles`` у вигляді файлу з розширенням ``.profile``. Теку конфігурації редактора можна знайти за допомогою :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_save_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_save_to_file>`

Заощаджує профіль редактора на файл у форматі JSON. Після цього можна імпортувати за допомогою функції менеджера профілю **Імпорт ** кнопка або метод :ref:`load_from_file()<class_EditorFeatureProfile_method_load_from_file>`.

\ **Примітка:** Функціональні профілі, створені за допомогою інтерфейсу користувача, зберігаються в каталозі ``feature_profiles``, як файл з ``.profile``. Теки конфігурації редактора можна знайти за допомогою :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class:

.. rst-class:: classref-method

|void| **set_disable_class**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class>`

Якщо ``disable`` є ``true``, відключає клас, зазначений ``class_name``. Коли вимкнено, клас не з'явиться у діалоговому вікні Створити новий Node.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_editor:

.. rst-class:: classref-method

|void| **set_disable_class_editor**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_editor>`

Якщо ``disable`` є ``true``, вимикає редагування для класу, зазначеного ``class_name``. Коли вимкнено, клас все ще з'явиться у діалоговому вікні Створити новий Node, але інспектор буде прочитано, коли вибирає вузол, яка розширює клас.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_property:

.. rst-class:: classref-method

|void| **set_disable_class_property**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_property>`

Якщо ``disable`` є ``true``, вимикає редагування для ``властивість`` в класі, зазначеному ``class_name``. Коли майно вимкнено, вона не з'явиться в Інспекторі при виборі вузла, яка розширює клас, зазначений ``class_name``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_feature:

.. rst-class:: classref-method

|void| **set_disable_feature**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_feature>`

Якщо ``disable`` є ``true``, відключає функцію редактора, зазначену в ``feature``. Коли функція вимкнена, вона повністю зникне з редактора.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
