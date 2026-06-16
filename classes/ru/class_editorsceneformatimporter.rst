:github_url: hide

.. _class_EditorSceneFormatImporter:

EditorSceneFormatImporter
=========================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`EditorSceneFormatImporterBlend<class_EditorSceneFormatImporterBlend>`, :ref:`EditorSceneFormatImporterFBX2GLTF<class_EditorSceneFormatImporterFBX2GLTF>`, :ref:`EditorSceneFormatImporterGLTF<class_EditorSceneFormatImporterGLTF>`, :ref:`EditorSceneFormatImporterUFBX<class_EditorSceneFormatImporterUFBX>`

Импортирует сцены из сторонних 3D-файлов.

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorSceneFormatImporter** позволяет определить скрипт импортера для стороннего 3D-формата.

Чтобы использовать **EditorSceneFormatImporter**, сначала зарегистрируйте его с помощью метода :ref:`EditorPlugin.add_scene_format_importer_plugin()<class_EditorPlugin_method_add_scene_format_importer_plugin>`.

.. rst-class:: classref-reftable-group

Методы
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

Перечисления
------------------------

.. _enum_EditorSceneFormatImporter_ImportFlags:

.. rst-class:: classref-enumeration

flags **ImportFlags**: :ref:`🔗<enum_EditorSceneFormatImporter_ImportFlags>`

.. _class_EditorSceneFormatImporter_constant_IMPORT_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_SCENE** = ``1``

Неиспользуемый флаг (при включении не оказывает никакого эффекта).

.. _class_EditorSceneFormatImporter_constant_IMPORT_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_ANIMATION** = ``2``

Импортируйте анимации из 3D-сцены. При импорте сцены в качестве :ref:`AnimationLibrary<class_AnimationLibrary>` этот флаг всегда включен.

.. _class_EditorSceneFormatImporter_constant_IMPORT_FAIL_ON_MISSING_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FAIL_ON_MISSING_DEPENDENCIES** = ``4``

Неиспользуемый флаг (при включении не оказывает никакого эффекта).

.. _class_EditorSceneFormatImporter_constant_IMPORT_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_GENERATE_TANGENT_ARRAYS** = ``8``

Если ``true``, сгенерируйте касательные вершины с помощью `Mikktspace <http://www.mikktspace.com/>`__, если входные сетки не содержат данных о касательных. По возможности рекомендуется позволить программному обеспечению для 3D-моделирования генерировать касательные при экспорте, а не полагаться на эту опцию. Касательные необходимы для корректного отображения карт нормалей и высот, а также любых функций материала/шейдера, требующих касательных.

Если вам не нужны функции материала, требующие касательных, отключение этой опции может уменьшить размер выходного файла и ускорить импорт, если исходный 3D-файл не содержит касательных.

.. _class_EditorSceneFormatImporter_constant_IMPORT_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_USE_NAMED_SKIN_BINDS** = ``16``

Если этот параметр отмечен, используйте именованные :ref:`Skin<class_Skin>` для анимации. Узел :ref:`MeshInstance3D<class_MeshInstance3D>` содержит 3 важных свойства: скелет :ref:`NodePath<class_NodePath>`, указывающий на узел :ref:`Skeleton3D<class_Skeleton3D>` (обычно ``..``), сетку и скин:

- Узел :ref:`Skeleton3D<class_Skeleton3D>` содержит список костей с именами, их позами и состояниями покоя, имя и родительскую кость.

- Сетка содержит все необходимые данные о вершинах для отображения сетки. С точки зрения сетки, она знает, как происходит распределение весов вершин, и использует некоторую внутреннюю нумерацию, часто импортируемую из программного обеспечения для 3D-моделирования.

- Скин содержит информацию, необходимую для привязки этой сетки к этому Skeleton3D. Для каждого из внутренних идентификаторов костей, выбранных программным обеспечением для 3D-моделирования, он содержит две вещи. Во-первых, матрицу, известную как матрица привязки позы, обратная матрица привязки или сокращенно IBM. Во-вторых, :ref:`Skin<class_Skin>` содержит имя каждой кости (если этот флаг включен) или индекс кости в списке :ref:`Skeleton3D<class_Skeleton3D>` (если этот флаг отключен).

Вместе эта информация достаточна, чтобы сообщить Godot, как использовать позы костей в узле :ref:`Skeleton3D<class_Skeleton3D>` и для рендеринга сетки каждого :ref:`MeshInstance3D<class_MeshInstance3D>`. Обратите внимание, что каждый :ref:`MeshInstance3D<class_MeshInstance3D>` может использовать общие привязки, как это часто бывает в моделях, экспортированных из Blender, или каждый :ref:`MeshInstance3D<class_MeshInstance3D>` может использовать отдельный объект :ref:`Skin<class_Skin>`, как это часто бывает в моделях, экспортированных из других инструментов, таких как Maya.

.. _class_EditorSceneFormatImporter_constant_IMPORT_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_DISCARD_MESHES_AND_MATERIALS** = ``32``

Игнорировать сетки и материалы при импорте. При импорте сцены в формате :ref:`AnimationLibrary<class_AnimationLibrary>` этот флаг всегда включен.

.. _class_EditorSceneFormatImporter_constant_IMPORT_FORCE_DISABLE_MESH_COMPRESSION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FORCE_DISABLE_MESH_COMPRESSION** = ``64``

Если ``true``, сжатие сетки не будет использоваться. Рассмотрите возможность включения, если вы заметили блочные артефакты в нормалях сетки или UV, или если у вас есть сетки, которые больше нескольких тысяч метров в каждом направлении.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorSceneFormatImporter_private_method__get_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_extensions>`

Верните поддерживаемые расширения файлов для этого импортера сцен.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_import_options>`

Переопределите, чтобы добавить общие параметры импорта. Они появятся в главном доке импорта в редакторе. Добавьте параметры с помощью :ref:`add_import_option()<class_EditorSceneFormatImporter_method_add_import_option>` и :ref:`add_import_option_advanced()<class_EditorSceneFormatImporter_method_add_import_option_advanced>`.

\ **Примечание:** Все экземпляры **EditorSceneFormatImporter** и :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>` добавят параметры для всех файлов. Рекомендуется проверять расширение файла, если ``path`` непустой.

Когда пользователь редактирует настройки проекта, ``path`` будет пустым. Рекомендуется добавлять все параметры, если ``path`` пустой, чтобы пользователь мог настраивать параметры импорта по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_option_visibility>`

Должен возвращать ``true`` для отображения заданной опции, ``false`` для скрытия заданной опции или ``null`` для игнорирования.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__import_scene:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_import_scene**\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| :ref:`🔗<class_EditorSceneFormatImporter_private_method__import_scene>`

Выполните здесь основную часть логики импорта сцены, например, с помощью :ref:`GLTFDocument<class_GLTFDocument>` или :ref:`FBXDocument<class_FBXDocument>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option>`

Добавьте определенную опцию импорта (только имя и значение по умолчанию). Эту функцию можно вызвать только из :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option_advanced>`

Добавить конкретную опцию импорта. Эту функцию можно вызвать только из :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
