:github_url: hide

.. _class_GLTFDocument:

GLTFDocument
============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`FBXDocument<class_FBXDocument>`

Клас імпорту та експорту файлів glTF і з Godot.

.. rst-class:: classref-introduction-group

Опис
--------

GLTFDocument підтримує читання даних із файлу glTF, буфера або сцени Godot. Потім ці дані можна записати у файлову систему, буфер або використати для створення сцени Godot.

Усі дані сцени glTF зберігаються в класі :ref:`GLTFState<class_GLTFState>`. GLTFDocument обробляє об’єкти стану, але сам по собі не містить даних сцени. GLTFDocument має змінні-учасники для зберігання налаштувань конфігурації експорту, таких як формат зображення, але в іншому випадку не має стану. Кілька сцен можна обробити з однаковими параметрами, використовуючи той самий об’єкт GLTFDocument і різні об’єкти :ref:`GLTFState<class_GLTFState>`.

GLTFDocument можна розширити довільними функціями, розширивши клас :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` і зареєструвавши його в GLTFDocument через :ref:`register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>`. Це дозволяє імпортувати й експортувати спеціальні дані.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF 'Що качка?' Керівництво <https://www.khronos.org/files/gltf20-reference-guide.pdf>`__

- `Хронос glTF специфікація <https://registry.khronos.org/glTF/>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`String<class_String>`                             | :ref:`fallback_image_format<class_GLTFDocument_property_fallback_image_format>`   | ``"None"`` |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                               | :ref:`fallback_image_quality<class_GLTFDocument_property_fallback_image_quality>` | ``0.25``   |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`String<class_String>`                             | :ref:`image_format<class_GLTFDocument_property_image_format>`                     | ``"PNG"``  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                               | :ref:`lossy_quality<class_GLTFDocument_property_lossy_quality>`                   | ``0.75``   |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>`     | :ref:`root_node_mode<class_GLTFDocument_property_root_node_mode>`                 | ``0``      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` | :ref:`texture_map_mode<class_GLTFDocument_property_texture_map_mode>`             | ``1``      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` | :ref:`visibility_mode<class_GLTFDocument_property_visibility_mode>`               | ``0``      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`append_from_buffer<class_GLTFDocument_method_append_from_buffer>`\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, base_path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ )                       |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`append_from_file<class_GLTFDocument_method_append_from_file>`\ (\ path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0, base_path\: :ref:`String<class_String>` = ""\ )                                         |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`append_from_scene<class_GLTFDocument_method_append_from_scene>`\ (\ node\: :ref:`Node<class_Node>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ )                                                                                         |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` | :ref:`export_object_model_property<class_GLTFDocument_method_export_object_model_property>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`\ ) |static| |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                 | :ref:`generate_buffer<class_GLTFDocument_method_generate_buffer>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ )                                                                                                                                                                |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                       | :ref:`generate_scene<class_GLTFDocument_method_generate_scene>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, bake_fps\: :ref:`float<class_float>` = 30, trimming\: :ref:`bool<class_bool>` = false, remove_immutable_tracks\: :ref:`bool<class_bool>` = true\ )                 |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_supported_gltf_extensions<class_GLTFDocument_method_get_supported_gltf_extensions>`\ (\ ) |static|                                                                                                                                                                      |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` | :ref:`import_object_model_property<class_GLTFDocument_method_import_object_model_property>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, json_pointer\: :ref:`String<class_String>`\ ) |static|                                                                                 |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`register_gltf_document_extension<class_GLTFDocument_method_register_gltf_document_extension>`\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, first_priority\: :ref:`bool<class_bool>` = false\ ) |static|                                       |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`unregister_gltf_document_extension<class_GLTFDocument_method_unregister_gltf_document_extension>`\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`\ ) |static|                                                                                     |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`write_to_filesystem<class_GLTFDocument_method_write_to_filesystem>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, path\: :ref:`String<class_String>`\ )                                                                                                                    |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_GLTFDocument_RootNodeMode:

.. rst-class:: classref-enumeration

enum **RootNodeMode**: :ref:`🔗<enum_GLTFDocument_RootNodeMode>`

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_SINGLE_ROOT** = ``0``

Покладіть кореневу вершину Godot як кореневу вершину glTF, і позначте його як єдиний вузол кореневих за допомогою ``GODOT_single_root`` розширення glTF. Це буде поданий тим самим, як :ref:`ROOT_NODE_MODE_KEEP_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT>`, якщо реалізація не підтримує ``GODOT_single_root``.

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_KEEP_ROOT** = ``1``

Покладіть кореневу вершину Godot як кореневу вершину файлу glTF, але не позначте його як будь-який особливий. При імпорті в Godot з'явиться додаткова коренева вершина. Це використовується тільки ванільна glTF функції. Це еквівалент поведінки в Godot 4.1 і раніше.

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_MULTI_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_MULTI_ROOT** = ``2``

Покладіть кореневу вершину Godot як ім'я сцени glTF, і додайте всіх своїх дітей як кореневих вершин файлу glTF. Це використовується тільки ванільна glTF функції. Це дозволяє уникнути додаткового кореневого вузла, але тільки ім'я кореневого вузла Godot буде збережена, оскільки він не буде збережений як вузол.

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_TextureMapMode:

.. rst-class:: classref-enumeration

enum **TextureMapMode**: :ref:`🔗<enum_GLTFDocument_TextureMapMode>`

.. _class_GLTFDocument_constant_TEXTURE_MAP_MODE_DO_NOT_REMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **TEXTURE_MAP_MODE_DO_NOT_REMAP** = ``0``

Import the texture maps in the glTF file as they are, without trying to fit them into specific texture slots suitable for Godot's built-in materials. This may be desirable if using the glTF file with custom shaders, but may not display correctly with Godot's built-in materials. This is equivalent to the behavior in Godot 4.6 and earlier.

.. _class_GLTFDocument_constant_TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL** = ``1``

Import the texture maps in the glTF file remapped to the most suitable texture slots based on Godot's :ref:`StandardMaterial3D<class_StandardMaterial3D>` class. This is the default behavior.

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_GLTFDocument_VisibilityMode>`

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_REQUIRED** = ``0``

Якщо сцена містить будь-які невидимі вузли, включіть їх, позначте їх як невидимі за допомогою ``KHR_node_visibility`` та вимагайте, щоб імпортери поважали їхню невидимість. Недолік: Якщо імпортер не підтримує ``KHR_node_visibility``, файл не можна імпортувати.

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_OPTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_OPTIONAL** = ``1``

Якщо сцена містить будь-які невидимі вузли, включіть їх, позначте їх як невидимі за допомогою ``KHR_node_visibility`` та не нав'язуйте жодних вимог імпортерам. Недолік: Якщо імпортер не підтримує ``KHR_node_visibility``, невидимі об'єкти будуть видимими.

.. _class_GLTFDocument_constant_VISIBILITY_MODE_EXCLUDE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_EXCLUDE** = ``2``

Якщо сцена містить будь-які невидимі вузли, не включайте їх до експорту. Це те саме, що й у Godot 4.4 та попередніх версіях. Недолік: невидимі вузли не існуватимуть в експортованому файлі.

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_ImportFlags:

.. rst-class:: classref-enumeration

flags **ImportFlags**: :ref:`🔗<enum_GLTFDocument_ImportFlags>`

.. _class_GLTFDocument_constant_IMPORT_FLAG_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_GENERATE_TANGENT_ARRAYS** = ``8``

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the input meshes don't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

.. _class_GLTFDocument_constant_IMPORT_FLAG_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_USE_NAMED_SKIN_BINDS** = ``16``

If checked, use named :ref:`Skin<class_Skin>`\ s for animation. The :ref:`MeshInstance3D<class_MeshInstance3D>` node contains 3 properties of relevance here: a skeleton :ref:`NodePath<class_NodePath>` pointing to the :ref:`Skeleton3D<class_Skeleton3D>` node (usually ``..``), a mesh, and a skin:

- The :ref:`Skeleton3D<class_Skeleton3D>` node contains a list of bones with names, their pose and rest, a name, and a parent bone.

- The mesh is all of the raw vertex data needed to display a mesh. In terms of the mesh, it knows how vertices are weight-painted and uses some internal numbering often imported from 3D modeling software.

- The skin contains the information necessary to bind this mesh onto this Skeleton3D. For each of the internal bone IDs chosen by the 3D modeling software, it contains two things. Firstly, a matrix known as the Bind Pose Matrix, Inverse Bind Matrix, or IBM for short. Secondly, the :ref:`Skin<class_Skin>` contains each bone's name (if this flag is enabled), or the bone's index within the :ref:`Skeleton3D<class_Skeleton3D>` list (if this flag is disabled).

Together, this information is enough to tell Godot how to use the bone poses in the :ref:`Skeleton3D<class_Skeleton3D>` node to render the mesh from each :ref:`MeshInstance3D<class_MeshInstance3D>`. Note that each :ref:`MeshInstance3D<class_MeshInstance3D>` may share binds, as is common in models exported from Blender, or each :ref:`MeshInstance3D<class_MeshInstance3D>` may use a separate :ref:`Skin<class_Skin>` object, as is common in models exported from other tools such as Maya.

.. _class_GLTFDocument_constant_IMPORT_FLAG_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_DISCARD_MESHES_AND_MATERIALS** = ``32``

Ignore meshes and materials on import. When importing a scene as an :ref:`AnimationLibrary<class_AnimationLibrary>`, this flag is always enabled.

.. _class_GLTFDocument_constant_IMPORT_FLAG_FORCE_DISABLE_MESH_COMPRESSION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_FORCE_DISABLE_MESH_COMPRESSION** = ``64``

Якщо ``true``, стиснення сітки не буде використовуватися. З огляду на те, що ви помітили блоковані артефакти у ваших сітчастих нормах або УФ, або якщо у вас є сітки, які більше, ніж кілька тисяч метрів в кожному напрямку.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GLTFDocument_property_fallback_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **fallback_image_format** = ``"None"`` :ref:`🔗<class_GLTFDocument_property_fallback_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_fallback_image_format**\ (\ )

Зручна назва формату резервного зображення. Використовується під час експорту файлу glTF, включаючи запис у файл та запис у байтовий масив.

Ця властивість може мати значення лише "None", "PNG" або "JPEG" і використовується лише тоді, коли :ref:`image_format<class_GLTFDocument_property_image_format>` не має значення "None", "PNG" або "JPEG". Якщо потрібно мати кілька форматів розширених зображень, це можна зробити за допомогою класу :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` - ця властивість охоплює лише випадок використання базового резервного зображення glTF під час використання власного формату зображення.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_fallback_image_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_image_quality** = ``0.25`` :ref:`🔗<class_GLTFDocument_property_fallback_image_quality>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_image_quality**\ (\ )

Якість резервного зображення, якщо таке є. Для файлів PNG це зменшує масштаб зображення в обох вимірах на цей коефіцієнт. Для файлів JPEG це якість зображення з втратами. Рекомендується низьке значення, оскільки включення кількох зображень високої якості у файл glTF зводить нанівець збільшення розміру файлу від використання ефективнішого формату зображення.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **image_format** = ``"PNG"`` :ref:`🔗<class_GLTFDocument_property_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_image_format**\ (\ )

Зручна назва формату експортованого зображення. Використовується під час експорту файлу glTF, включаючи запис у файл та запис у байтовий масив.

За замовчуванням Godot дозволяє такі параметри: "None", "PNG", "JPEG", "Lossless WebP" та "Lossy WebP". Підтримку інших форматів зображень можна додати в класах :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`. Один клас розширення може надавати кілька параметрів для використання певного формату або навіть параметр, який використовує кілька форматів одночасно.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **lossy_quality** = ``0.75`` :ref:`🔗<class_GLTFDocument_property_lossy_quality>`

.. rst-class:: classref-property-setget

- |void| **set_lossy_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lossy_quality**\ (\ )

Якщо ``пам'ятати зображення_формат`` є форматом образу, це визначає якість втрати зображення. ``0.0`` to ``1.0``, де ``0.0`` є найнижчою якістю і ``1.0`` є найвищою якістю. Якість втрати ``1.0`` не така ж, як без втрат.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_root_node_mode:

.. rst-class:: classref-property

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **root_node_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_root_node_mode>`

.. rst-class:: classref-property-setget

- |void| **set_root_node_mode**\ (\ value\: :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>`\ )
- :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **get_root_node_mode**\ (\ )

Як обробити кореневий вузол під час експорту. Значення за замовчуванням та рекомендоване значення — :ref:`ROOT_NODE_MODE_SINGLE_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT>`.

\ **Примітка:** Незалежно від того, як експортується файл glTF, під час імпорту тип та назву кореневого вузла можна перевизначити на вкладці налаштувань імпорту сцени.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_texture_map_mode:

.. rst-class:: classref-property

:ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **texture_map_mode** = ``1`` :ref:`🔗<class_GLTFDocument_property_texture_map_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_map_mode**\ (\ value\: :ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>`\ )
- :ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **get_texture_map_mode**\ (\ )

How to handle texture maps during import. The default and recommended value is :ref:`TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL<class_GLTFDocument_constant_TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL>`, which automatically remaps from glTF's flexible texture map system to the more specific texture map slots in Godot's :ref:`StandardMaterial3D<class_StandardMaterial3D>` class. Alternatively, :ref:`TEXTURE_MAP_MODE_DO_NOT_REMAP<class_GLTFDocument_constant_TEXTURE_MAP_MODE_DO_NOT_REMAP>` can be used to preserve the original texture maps from the glTF file, which may be desirable if using the glTF file with custom shaders, but may not display correctly with Godot's built-in materials.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **get_visibility_mode**\ (\ )

Як обробляти видимість вузлів під час експорту. Цей параметр нічого не змінює, якщо всі вузли видимі. Значення за замовчуванням та рекомендоване значення — :ref:`VISIBILITY_MODE_INCLUDE_REQUIRED<class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED>`, яке використовує розширення ``KHR_node_visibility``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GLTFDocument_method_append_from_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_buffer**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, base_path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_buffer>`

Приймає :ref:`PackedByteArray<class_PackedByteArray>`, що визначає glTF, та імпортує дані до заданого об'єкта :ref:`GLTFState<class_GLTFState>` через параметр ``state``.

\ **Примітка:** Параметр ``base_path`` вказує методу append_from_buffer], де шукати залежності, і може бути порожнім.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_file**\ (\ path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0, base_path\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_GLTFDocument_method_append_from_file>`

Бере шлях до файлу glTF та імпортує дані за цим шляхом до заданого об'єкта :ref:`GLTFState<class_GLTFState>` через параметр ``state``.

\ **Примітка:** Параметр ``base_path`` вказує методу :ref:`append_from_file()<class_GLTFDocument_method_append_from_file>`, де шукати залежності, і може бути порожнім.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_scene**\ (\ node\: :ref:`Node<class_Node>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_scene>`

Візьміть вершину сцени Godot Engine і експортуйте його і його нащадків до вказаного параметра :ref:`GLTFState<class_GLTFState>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_export_object_model_property>`

Визначає зіставлення між даним Godot ``node_path`` і відповідним покажчиком(ами) JSON об’єктної моделі glTF у згенерованому файлі glTF. Деталі цього зіставлення повертаються в об’єкті :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`. Додаткові зіставлення можна надати через метод зворотного виклику :ref:`GLTFDocumentExtension._import_object_model_property()<class_GLTFDocumentExtension_private_method__import_object_model_property>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_buffer**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) :ref:`🔗<class_GLTFDocument_method_generate_buffer>`

Отримує об’єкт :ref:`GLTFState<class_GLTFState>` через параметр ``state`` і повертає glTF :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **generate_scene**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, bake_fps\: :ref:`float<class_float>` = 30, trimming\: :ref:`bool<class_bool>` = false, remove_immutable_tracks\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFDocument_method_generate_scene>`

Візьміть об'єкт :ref:`GLTFState<class_GLTFState>` через параметр ``State`` і повертає вузол сцени Godot Engine.

Параметри параметра ``fix_fps`` наділяє пекарні_fps в ``State``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_get_supported_gltf_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_supported_gltf_extensions**\ (\ ) |static| :ref:`🔗<class_GLTFDocument_method_get_supported_gltf_extensions>`

Повертає список усіх підтримуваних розширень glTF, включно з розширеннями, які підтримуються безпосередньо системою, і розширеннями, які підтримуються плагінами користувача, що реєструють класи :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`.

\ **Примітка:** якщо цей метод запущено до того, як GLTFDocumentExtension зареєстровано, його розширення не буде включено до списку. Обов’язково запускайте цей метод лише після реєстрації всіх розширень. Якщо ви запускаєте це під час запуску двигуна, зачекайте кадр перед викликом цього методу, щоб переконатися, що всі розширення зареєстровано.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, json_pointer\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_import_object_model_property>`

Визначає зіставлення між заданою об’єктною моделлю glTF ``json_pointer`` і відповідним шляхом(ями) вузла Godot у згенерованій сцені Godot. Деталі цього зіставлення повертаються в об’єкті :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`. Додаткові зіставлення можна надати через метод зворотного виклику :ref:`GLTFDocumentExtension._export_object_model_property()<class_GLTFDocumentExtension_private_method__export_object_model_property>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_register_gltf_document_extension:

.. rst-class:: classref-method

|void| **register_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, first_priority\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_GLTFDocument_method_register_gltf_document_extension>`

Реєструє даний екземпляр :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` у GLTFDocument. Якщо ``first_priority`` має значення ``true``, це розширення буде запущено першим. В іншому випадку він буде запущений останнім.

\ **Примітка:** Як і сам GLTFDocument, усі класи GLTFDocumentExtension мають бути без стану, щоб функціонувати належним чином. Якщо вам потрібно зберігати дані, використовуйте методи ``set_additional_data`` і ``get_additional_data`` у :ref:`GLTFState<class_GLTFState>` або :ref:`GLTFNode<class_GLTFNode>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_unregister_gltf_document_extension:

.. rst-class:: classref-method

|void| **unregister_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_unregister_gltf_document_extension>`

Незареєстровані дані :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_write_to_filesystem:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_to_filesystem**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GLTFDocument_method_write_to_filesystem>`

Візьміть об'єкт :ref:`GLTFState<class_GLTFState>` через параметр ``State`` і напишіть файл glTF до файлової системи.

\ **Примітка:** Розширення файлу glTF визначає, якщо це бінарний файл .glb або текстовий файл .gltf.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
