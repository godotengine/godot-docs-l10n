:github_url: hide

.. _class_EditorSceneFormatImporter:

EditorSceneFormatImporter
=========================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`EditorSceneFormatImporterBlend<class_EditorSceneFormatImporterBlend>`, :ref:`EditorSceneFormatImporterFBX2GLTF<class_EditorSceneFormatImporterFBX2GLTF>`, :ref:`EditorSceneFormatImporterGLTF<class_EditorSceneFormatImporterGLTF>`, :ref:`EditorSceneFormatImporterUFBX<class_EditorSceneFormatImporterUFBX>`

Імпортні сцени з 3D файлів.

.. rst-class:: classref-introduction-group

Опис
--------

**EditorSceneFormatImporter** дозволяє визначити скрипт імпортера для третього формату 3D.

Для використання **EditorSceneFormatImporter**, зареєструйте його за допомогою :ref:`EditorPlugin.add_scene_format_importer_plugin()<class_EditorPlugin_method_add_scene_format_importer_plugin>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_extensions<class_EditorSceneFormatImporter_private_method__get_extensions>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_get_import_options<class_EditorSceneFormatImporter_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_option_visibility<class_EditorSceneFormatImporter_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                       | :ref:`_import_scene<class_EditorSceneFormatImporter_private_method__import_scene>`\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required|                                                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option<class_EditorSceneFormatImporter_method_add_import_option>`\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option_advanced<class_EditorSceneFormatImporter_method_add_import_option_advanced>`\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_EditorSceneFormatImporter_ImportFlags:

.. rst-class:: classref-enumeration

flags **ImportFlags**: :ref:`🔗<enum_EditorSceneFormatImporter_ImportFlags>`

.. _class_EditorSceneFormatImporter_constant_IMPORT_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_SCENE** = ``1``

Невикористаний прапорець (при увімкненні не має ніякого ефекту).

.. _class_EditorSceneFormatImporter_constant_IMPORT_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_ANIMATION** = ``2``

Імпортувати анімації з 3D-сцени. При імпорті сцени як :ref:`AnimationLibrary<class_AnimationLibrary>` цей прапорець завжди ввімкнено.

.. _class_EditorSceneFormatImporter_constant_IMPORT_FAIL_ON_MISSING_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FAIL_ON_MISSING_DEPENDENCIES** = ``4``

Невикористаний прапорець (при увімкненні не має ніякого ефекту).

.. _class_EditorSceneFormatImporter_constant_IMPORT_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_GENERATE_TANGENT_ARRAYS** = ``8``

Якщо ``true``, генерувати тангенси вершин за допомогою `Mikktspace <http://www.mikktspace.com/>`__, якщо вхідні сітки не містять даних про тангенси. Якщо це можливо, рекомендується дозволити програмі 3D-моделювання генерувати тангенси під час експорту, замість того щоб покладатися на цю опцію. Тангенти необхідні для коректного відображення карт нормалей та висот, а також будь-яких функцій матеріалів/шейдерів, що вимагають тангентів.

Якщо вам не потрібні функції матеріалів, що вимагають тангентів, вимкнення цієї опції може зменшити розмір вихідного файлу та пришвидшити імпорт, якщо вихідний 3D-файл не містить тангентів.

.. _class_EditorSceneFormatImporter_constant_IMPORT_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_USE_NAMED_SKIN_BINDS** = ``16``

Якщо встановлено прапорець, для анімації використовуються іменовані :ref:`Skin<class_Skin>`. Вузол :ref:`MeshInstance3D<class_MeshInstance3D>` містить 3 властивості, що мають тут значення: скелет :ref:`NodePath<class_NodePath>`, який вказує на вузол :ref:`Skeleton3D<class_Skeleton3D>` (зазвичай ``..``), сітку та скін:

- Вузол :ref:`Skeleton3D<class_Skeleton3D>` містить список кісток з іменами, їх позою та положенням спокою, ім'ям та батьківською кісткою.

- Сітка — це всі необроблені дані про вершини, необхідні для відображення сітки. Щодо сітки, вона знає, як вершини розфарбовуються за вагою, та використовує внутрішню нумерацію, часто імпортовану з програмного забезпечення для 3D-моделювання.

- Скін містить інформацію, необхідну для прив'язки цієї сітки до цього Skeleton3D. Для кожного з внутрішніх ідентифікаторів кісток, обраних програмним забезпеченням для 3D-моделювання, він містить дві речі. По-перше, матрицю, відому як матриця позиції прив'язки (Bind Pose Matrix), обернена матриця прив'язки (Inverse Bind Matrix) або, скорочено, IBM. По-друге, :ref:`Skin<class_Skin>` містить назву кожної кістки (якщо цей прапорець увімкнено) або індекс кістки у списку :ref:`Skeleton3D<class_Skeleton3D>` (якщо цей прапорець вимкнено).

Разом ця інформація достатня, щоб повідомити Godot, як використовувати пози кісток у вузлі :ref:`Skeleton3D<class_Skeleton3D>` для рендерингу сітки з кожного :ref:`MeshInstance3D<class_MeshInstance3D>`. Зверніть увагу, що кожен :ref:`MeshInstance3D<class_MeshInstance3D>` може використовувати спільні прив'язки, як це зазвичай буває у моделях, експортованих з Blender, або кожен :ref:`MeshInstance3D<class_MeshInstance3D>` може використовувати окремий об'єкт :ref:`Skin<class_Skin>`, як це зазвичай буває у моделях, експортованих з інших інструментів, таких як Maya.

.. _class_EditorSceneFormatImporter_constant_IMPORT_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_DISCARD_MESHES_AND_MATERIALS** = ``32``

Ігнорувати сітки та матеріали під час імпорту. Під час імпорту сцени як :ref:`AnimationLibrary<class_AnimationLibrary>` цей прапорець завжди увімкнено.

.. _class_EditorSceneFormatImporter_constant_IMPORT_FORCE_DISABLE_MESH_COMPRESSION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FORCE_DISABLE_MESH_COMPRESSION** = ``64``

Якщо ``true``, стиснення сітки не буде використовуватися. З огляду на те, що ви помітили блоковані артефакти у ваших сітчастих нормах або УФ, або якщо у вас є сітки, які більше, ніж кілька тисяч метрів в кожному напрямку.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorSceneFormatImporter_private_method__get_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_extensions>`

Повернути підтримувані розширення файлів для цього імпортера сцен.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_import_options>`

Перевизначте, щоб додати загальні параметри імпорту. Вони з’являться в головній панелі імпорту в редакторі. Додайте параметри за допомогою :ref:`add_import_option()<class_EditorSceneFormatImporter_method_add_import_option>` і :ref:`add_import_option_advanced()<class_EditorSceneFormatImporter_method_add_import_option_advanced>`.

\ **Примітка.** Усі екземпляри **EditorSceneFormatImporter** і :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>` додадуть параметри для всіх файлів. Рекомендується перевіряти розширення файлу, якщо ``path`` не порожній.

Коли користувач редагує параметри проекту, ``path`` буде порожнім. Рекомендується додавати всі параметри, коли ``path`` порожній, щоб дозволити користувачеві налаштувати імпорт за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_option_visibility>`

Має повернути ``true``, щоб показати заданий параметр, ``false``, щоб приховати вказаний параметр, або ``null``, щоб проігнорувати.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__import_scene:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_import_scene**\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| :ref:`🔗<class_EditorSceneFormatImporter_private_method__import_scene>`

Виконайте основну частину логіки імпорту сцени тут, наприклад, використовуючи :ref:`GLTFDocument<class_GLTFDocument>` або :ref:`FBXDocument<class_FBXDocument>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option>`

Додайте певний параметр імпорту (лише ім’я та значення за замовчуванням). Цю функцію можна викликати лише з :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option_advanced>`

Додайте окремий параметр імпорту. Цю функцію можна викликати лише з :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
