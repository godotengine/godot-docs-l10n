:github_url: hide

.. _class_ResourceImporterScene:

ResourceImporterScene
=====================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует сцену glTF, FBX, COLLADA или Blender 3D.

.. rst-class:: classref-introduction-group

Описание
----------------

См. также :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, который используется для моделей OBJ, которые можно импортировать как независимую :ref:`Mesh<class_Mesh>` или сцену.

Дополнительные параметры (например, извлечение отдельных сеток или материалов в файлы) доступны в диалоговом окне **Расширенные параметры импорта**. Доступ к этому диалоговому окну можно получить, дважды щелкнув 3D-сцену в доке FileSystem или выбрав 3D-сцену в доке FileSystem, перейдя в док Import и выбрав **Расширенный**.

\ **Примечание:** **ResourceImporterScene** *не* используется для :ref:`PackedScene<class_PackedScene>`, таких как файлы ``.tscn`` и ``.scn``.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт 3D-сцен <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`_subresources<class_ResourceImporterScene_property__subresources>`                                                         | ``{}``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`animation/fps<class_ResourceImporterScene_property_animation/fps>`                                                         | ``30``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/import<class_ResourceImporterScene_property_animation/import>`                                                   | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/import_rest_as_RESET<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`                       | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/remove_immutable_tracks<class_ResourceImporterScene_property_animation/remove_immutable_tracks>`                 | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/trimming<class_ResourceImporterScene_property_animation/trimming>`                                               | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`array_mesh/deduplicate_surfaces<class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces>`                     | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`import_script/path<class_ResourceImporterScene_property_import_script/path>`                                               | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`materials/extract<class_ResourceImporterScene_property_materials/extract>`                                                 | ``0``     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`materials/extract_format<class_ResourceImporterScene_property_materials/extract_format>`                                   | ``0``     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`materials/extract_path<class_ResourceImporterScene_property_materials/extract_path>`                                       | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`mesh_library/use_node_names_as_mesh_names<class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names>` | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/create_shadow_meshes<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`                             | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/ensure_tangents<class_ResourceImporterScene_property_meshes/ensure_tangents>`                                       | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/force_disable_compression<class_ResourceImporterScene_property_meshes/force_disable_compression>`                   | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/generate_lods<class_ResourceImporterScene_property_meshes/generate_lods>`                                           | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>`                                             | ``1``     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`meshes/lightmap_texel_size<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`                               | ``0.2``   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>`                                       | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/import_as_skeleton_bones<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`                       | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`nodes/root_name<class_ResourceImporterScene_property_nodes/root_name>`                                                     | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>`                                                   | ``1.0``   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Script<class_Script>`         | :ref:`nodes/root_script<class_ResourceImporterScene_property_nodes/root_script>`                                                 | ``null``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`nodes/root_type<class_ResourceImporterScene_property_nodes/root_type>`                                                     | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>`                                     | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/use_node_type_suffixes<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`                           | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>`                                         | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterScene_property__subresources:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **_subresources** = ``{}`` :ref:`🔗<class_ResourceImporterScene_property__subresources>`

Содержит свойства для подресурсов сцены. Это внутренняя опция, которая не видна в Доке импорта.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **animation/fps** = ``30`` :ref:`🔗<class_ResourceImporterScene_property_animation/fps>`

Число кадров в секунду, используемое для запекания кривых анимации в серии точек с линейной интерполяцией. Рекомендуется настроить это значение так, чтобы оно соответствовало значению, которое вы используете в качестве базового в вашем программном обеспечении для 3D-моделирования. Более высокие значения приводят к более точной анимации с быстрыми изменениями движения, за счет более высоких размеров файлов и использования памяти. Благодаря интерполяции обычно нет особой выгоды от перехода выше 30 FPS (поскольку анимация все равно будет выглядеть плавной при более высокой частоте кадров рендеринга).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/import>`

Если ``true``, импортировать анимацию из 3D-сцены.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import_rest_as_RESET:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import_rest_as_RESET** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`

Если ``true``, добавляет :ref:`Animation<class_Animation>` с именем ``RESET``, содержащий :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>` из узлов :ref:`Skeleton3D<class_Skeleton3D>`. Это может быть полезно для извлечения анимации в опорной позе.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/remove_immutable_tracks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/remove_immutable_tracks** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/remove_immutable_tracks>`

Если ``true``, удалить дорожки анимации, которые содержат только значения по умолчанию. Это может уменьшить размер выходного файла и использование памяти для определенных 3D-сцен, в зависимости от содержимого их дорожек анимации.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/trimming:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/trimming** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/trimming>`

Если ``true``, обрезает начало и конец анимации, если нет изменений ключевых кадров. Это может уменьшить размер выходного файла и использование памяти для определенных 3D-сцен, в зависимости от содержимого их анимационных дорожек.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **array_mesh/deduplicate_surfaces** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces>`

If the 3D model file contains only one mesh, this option has no effect. If ``true`` and the 3D model file contains multiple meshes with the same surface names and formats, the surfaces will be merged together when the meshes are merged. This is useful for reducing the number of surfaces in the resulting mesh, and avoids duplicating materials. If ``false`` and the 3D model file contains multiple meshes, the surfaces will always be kept separate.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_import_script/path:

.. rst-class:: classref-property

:ref:`String<class_String>` **import_script/path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_import_script/path>`

Путь к скрипту импорта, который может запустить код после завершения процесса импорта для пользовательской обработки. См. `Использование скриптов импорта для автоматизации <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__ для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract>`

Режим извлечения материала.

- ``0 (Keep Internal)``, материалы не извлекаются.

- ``1 (Extract Once)``, Материалы извлекаются один раз и повторно используются при последующем импорте.

- ``2 (Extract and Overwrite)``, Материалы извлекаются и перезаписываются при каждом импорте.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract_format** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_format>`

Формат файла извлеченного материала.

- ``0 (Text)``, формат текстового файла (``*.tres``).

- ``1 (Binary)``, двоичный формат файла (``*.res``).

- ``2 (Material)``, двоичный формат файла (``*.material``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **materials/extract_path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_path>`

Путь, по которому сохраняются извлеченные материалы. Если путь пуст, используется путь к исходной сцене.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mesh_library/use_node_names_as_mesh_names** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names>`

If ``true``, the mesh names will be set to the names of the nodes in the 3D model file. If ``false``, the mesh names will be set to the names of the meshes in the 3D model file. Enabling this is a common work-around when the author of the 3D model file did not properly set the mesh names in Blender or other 3D modeling apps. For example, a file may have a node named "Turret" with a mesh named "Cube.002", so enabling this option will set the mesh name to "Turret" instead of "Cube_002".

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/create_shadow_meshes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/create_shadow_meshes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`

Если ``true``, включает генерацию теневых сеток при импорте. Это оптимизирует рендеринг теней без снижения качества путем объединения вершин, когда это возможно. Это, в свою очередь, снижает пропускную способность памяти, необходимую для рендеринга теней. Генерация теневых сеток в настоящее время не поддерживает использование более низкого уровня детализации, чем исходная сетка (но рендеринг теней будет использовать LOD, когда это уместно).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/ensure_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/ensure_tangents** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/ensure_tangents>`

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the input meshes don't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/force_disable_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/force_disable_compression** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_meshes/force_disable_compression>`

Если ``true``, сжатие сетки не будет использоваться. Рассмотрите возможность включения, если вы заметили блочные артефакты в нормалях сетки или UV, или если у вас есть сетки, которые больше нескольких тысяч метров в каждом направлении.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/generate_lods>`

Если ``true``, генерирует варианты сетки с более низкой степенью детализации, которые будут отображаться на расстоянии для повышения производительности рендеринга. Не все сетки выигрывают от LOD, особенно если они никогда не визуализируются издалека. Отключение этого может уменьшить размер выходного файла и ускорить импорт. См. `Уровень детализации сетки (LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/light_baking:

.. rst-class:: classref-property

:ref:`int<class_int>` **meshes/light_baking** = ``1`` :ref:`🔗<class_ResourceImporterScene_property_meshes/light_baking>`

Настраивает :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` сеток в 3D-сцене. Если установлено значение **Static Lightmaps**, устанавливает режим GI сеток на Static и генерирует UV2 при импорте для запекания :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/lightmap_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **meshes/lightmap_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`

Управляет размером каждого текселя на запеченной карте освещения. Меньшее значение приводит к более точным картам освещения за счет большего размера карты освещения и более длительного времени запекания.

\ **Примечание:** Эффективно только если :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>` установлен на **Static Lightmaps**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/apply_root_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/apply_root_scale** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/apply_root_scale>`

Если ``true``, :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` будет применен к дочерним узлам, сеткам, анимациям, костям и т. д. Это означает, что если вы добавите дочерний узел позже в импортированную сцену, он не будет масштабироваться. Если ``false``, :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` вместо этого умножит масштаб корневого узла.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/import_as_skeleton_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/import_as_skeleton_bones** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`

Обрабатывать все узлы в импортированной сцене так, как будто они являются костями в пределах одного :ref:`Skeleton3D<class_Skeleton3D>`. Может использоваться для гарантии того, что импортированные анимации будут нацелены на кости скелета, а не на узлы. Может также использоваться для назначения кости ``"Root"`` в :ref:`BoneMap<class_BoneMap>`. Для получения дополнительной информации см. :doc:`Перенацеливание 3D-скелетов <../tutorials/assets_pipeline/retargeting_3d_skeletons>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_name** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_name>`

Переопределить имя корневого узла. Если пусто, корневой узел будет использовать то, что указано в сцене, или имя файла, если в сцене не указано корневое имя.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **nodes/root_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_scale>`

Единый масштаб для использования в корне сцены. Значение по умолчанию ``1.0`` не будет выполнять никакого масштабирования. Подробности применения этого масштаба см. в :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_script:

.. rst-class:: classref-property

:ref:`Script<class_Script>` **nodes/root_script** = ``null`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_script>`

Если задан допустимый скрипт, он прикрепляется к корневому узлу импортированной сцены. Если тип корневого узла несовместим со скриптом, корневой узел будет заменён типом, совместимым со скриптом. Этот параметр также можно использовать для других узлов сцены, не являющихся сеткой, для присоединения к ним скриптов.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_type** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_type>`

Переопределить тип корневого узла. Если пусто, корневой узел будет использовать то, что указано в сцене, или :ref:`Node3D<class_Node3D>`, если в сцене не указан корневой тип. Рекомендуется использовать тип узла, который наследуется от :ref:`Node3D<class_Node3D>`. В противном случае вы потеряете возможность позиционировать узел напрямую в 3D-редакторе.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_name_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_name_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_name_suffixes>`

Если ``true``, то будут использоваться суффиксы в именах импортируемых объектов, таких как узлы и ресурсы, для определения типов и свойств, например, ``-noimp`` для пропуска импорта узла или анимации, ``-alpha`` для включения альфа-прозрачности для материала и ``-vcol`` для включения цветов вершин для материала. Отключение этого параметра делает импортированные редактором файлы более похожими на исходные файлы и более похожими на файлы, импортированные во время выполнения. См. :doc:`Настройка типа узла с использованием суффиксов имен <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>` для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_node_type_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_node_type_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`

Если ``true``, будут использоваться суффиксы в именах узлов для определения типа узла, например, ``-col`` для форм столкновений. Это используется только тогда, когда :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>` равно ``true``. Отключение этого параметра делает импортированные редактором файлы более похожими на исходные файлы и более похожими на файлы, импортированные во время выполнения. Для получения дополнительной информации см. :doc:`Настройка типа узла с использованием суффиксов имен <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_skins/use_named_skins:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **skins/use_named_skins** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_skins/use_named_skins>`

If checked, use named :ref:`Skin<class_Skin>`\ s for animation. The :ref:`MeshInstance3D<class_MeshInstance3D>` node contains 3 properties of relevance here: a skeleton :ref:`NodePath<class_NodePath>` pointing to the :ref:`Skeleton3D<class_Skeleton3D>` node (usually ``..``), a mesh, and a skin:

- The :ref:`Skeleton3D<class_Skeleton3D>` node contains a list of bones with names, their pose and rest, a name, and a parent bone.

- The mesh is all of the raw vertex data needed to display a mesh. In terms of the mesh, it knows how vertices are weight-painted and uses some internal numbering often imported from 3D modeling software.

- The skin contains the information necessary to bind this mesh onto this Skeleton3D. For each of the internal bone IDs chosen by the 3D modeling software, it contains two things. Firstly, a matrix known as the Bind Pose Matrix, Inverse Bind Matrix, or IBM for short. Secondly, the :ref:`Skin<class_Skin>` contains each bone's name (if :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` is ``true``), or the bone's index within the :ref:`Skeleton3D<class_Skeleton3D>` list (if :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` is ``false``).

Together, this information is enough to tell Godot how to use the bone poses in the :ref:`Skeleton3D<class_Skeleton3D>` node to render the mesh from each :ref:`MeshInstance3D<class_MeshInstance3D>`. Note that each :ref:`MeshInstance3D<class_MeshInstance3D>` may share binds, as is common in models exported from Blender, or each :ref:`MeshInstance3D<class_MeshInstance3D>` may use a separate :ref:`Skin<class_Skin>` object, as is common in models exported from other tools such as Maya.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
