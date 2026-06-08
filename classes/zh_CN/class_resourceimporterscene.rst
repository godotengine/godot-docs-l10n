:github_url: hide

.. _class_ResourceImporterScene:

ResourceImporterScene
=====================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入 glTF、FBX、COLLADA 或 Blender 3D 场景。

.. rst-class:: classref-introduction-group

描述
----

另请参见 :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`\ ，它被用于可作为独立的 :ref:`Mesh<class_Mesh>` 或场景导入的 OBJ 模型。

\ **高级导入设置** 对话框中提供了其他选项（例如将单个网格或材质提取到文件）。可以通过双击文件系统停靠面板中的 3D 场景或通过选择文件系统停靠面板中的 3D 场景，转至导入停靠面板并选择\ **高级**\ 来访问该对话框。

\ **注意：**\ **ResourceImporterScene** *未*\ 被用于 :ref:`PackedScene<class_PackedScene>`\ ，例如 ``.tscn`` 和 ``.scn`` 文件 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入 3D 场景 <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

属性
----

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

属性说明
--------

.. _class_ResourceImporterScene_property__subresources:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **_subresources** = ``{}`` :ref:`🔗<class_ResourceImporterScene_property__subresources>`

包含场景子资源的属性。这是一个内部选项，在导入停靠面板中不可见。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **animation/fps** = ``30`` :ref:`🔗<class_ResourceImporterScene_property_animation/fps>`

用于通过线性插值将动画曲线烘焙为一系列点的每秒帧数。建议配置该值以匹配你在 3D 建模软件中用作基线的值。较高的值会导致更精确的快速运动变化的动画，但代价是文件大小和内存占用更大。由于插值，超过 30 FPS 通常不会有太大好处（因为动画在更高的渲染帧速率下仍然会显得平滑）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/import>`

如果为 ``true``\ ，则从 3D 场景导入动画。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import_rest_as_RESET:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import_rest_as_RESET** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`

如果为 ``true``\ ，则添加一个名为 ``RESET`` 的 :ref:`Animation<class_Animation>`\ ，其中包含来自 :ref:`Skeleton3D<class_Skeleton3D>` 节点的 :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>`\ 。这对于提取参考姿势中的动画很有用。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/remove_immutable_tracks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/remove_immutable_tracks** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/remove_immutable_tracks>`

如果为 ``true``\ ，则移除仅包含默认值的动画轨道。这可以减少某些 3D 场景的输出文件大小和内存占用，具体取决于其动画轨道的内容。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/trimming:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/trimming** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/trimming>`

如果为 ``true``\ ，如果没有关键帧更改，则修剪动画的开头和结尾。这可以减少某些 3D 场景的输出文件大小和内存占用，具体取决于其动画轨道的内容。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **array_mesh/deduplicate_surfaces** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces>`

如果 3D 模型文件仅包含一个网格（Mesh），则此选项无效。如果设为 ``true`` 且 3D 模型文件包含多个具有相同表面（Surface）名称和格式的网格，那么在合并网格时，表面将被合并在一起。这有助于减少生成网格中的表面数量，并避免材质重复。如果设为 ``false`` 且 3D 模型文件包含多个网格，表面将始终被保持分离。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_import_script/path:

.. rst-class:: classref-property

:ref:`String<class_String>` **import_script/path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_import_script/path>`

导入脚本的路径，该脚本可以在导入过程完成后运行代码以进行自定义处理。有关详细信息，请参阅 `使用导入脚本进行自动化 <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract>`

材质提取模式。

- ``0 (Keep Internal)``\ ，不提取材质。

- ``1 (Extract Once)``\ ，提取一次材质，后续导入时重用。

- ``2 (Extract and Overwrite)``\ ，每次导入都提取并覆盖材质。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract_format** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_format>`

提取材质的文件格式。

- ``0 (Text)``\ ，文本文件格式（\ ``*.tres``\ ）。

- ``1 (Binary)``\ ，二进制文件格式（\ ``*.res``\ ）。

- ``2 (Material)``\ ，二进制文件格式（\ ``*.material``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **materials/extract_path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_path>`

提取材质的保存路径。留空时使用源场景路径。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mesh_library/use_node_names_as_mesh_names** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names>`

如果设为 ``true``\ ，网格（Mesh）的名称将被设置为 3D 模型文件中节点的名称。如果设为 ``false``\ ，网格的名称将被设置为 3D 模型文件中网格自身的名称。当 3D 模型文件的作者未在 Blender 或其他 3D 建模软件中正确设置网格名称时，启用此选项是一种常见的变通方法。例如，某个文件可能包含一个名为 "Turret" 的节点，其网格名称为 "Cube.002"，启用此选项后，网格名称将被设置为 "Turret"，而不是 "Cube_002"。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/create_shadow_meshes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/create_shadow_meshes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`

如果为 ``true``\ ，则在导入时启用阴影网格体的生成。这可以通过在可能的情况下将顶点焊接在一起来优化阴影渲染，且不会降低质量。这反过来又减少了渲染阴影所需的内存带宽。阴影网格生成当前不支持使用比源网格更低的细节级别（但阴影渲染将在相关时使用 LOD）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/ensure_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/ensure_tangents** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/ensure_tangents>`

如果设为 ``true``\ ，当输入的网格体（meshes）没有切线数据时，将使用 `Mikktspace <http://www.mikktspace.com/>`__ 算法来生成顶点切线。如果条件允许，更推荐让 3D 建模软件在导出模型时直接生成切线，而不是依赖这个选项。法线贴图（normal maps）和高度贴图（height maps），以及任何需要切线的材质或着色器（shader）功能，都必须要有切线数据才能正确显示。

如果你不需要那些依赖切线的材质功能，禁用此选项可以在源 3D 文件不包含切线的情况下，减小输出文件的大小，并加快导入速度。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/force_disable_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/force_disable_compression** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_meshes/force_disable_compression>`

如果为 ``true``\ ，则不会使用网格压缩。如果你在网格法线或 UV 中发现块状伪影，或者如果你的网格在每个方向都大于几千米，请考虑启用。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/generate_lods>`

如果为 ``true``\ ，则生成网格的较低细节变体，这些变体将显示在远处以提高渲染性能。并非所有网格体都受益于 LOD，特别是如果它们从未从远处渲染。禁用该功能可以减少输出文件大小并加快导入速度。有关详细信息，请参阅 `网格细节级别（LOD） <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/light_baking:

.. rst-class:: classref-property

:ref:`int<class_int>` **meshes/light_baking** = ``1`` :ref:`🔗<class_ResourceImporterScene_property_meshes/light_baking>`

在 3D 场景中配置网格体的 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`\ 。如果被设置为\ **静态光照贴图**\ ，则将网格体的 GI 模式设置为静态并在导入时生成 UV2 以进行 :ref:`LightmapGI<class_LightmapGI>` 烘焙。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/lightmap_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **meshes/lightmap_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`

控制烘焙光照贴图上每个纹素的大小。较小的值会产生更精确的光照贴图，但代价是更大的光照贴图大小和更长的烘焙时间。

\ **注意：**\ 仅当 :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>` 被设置为\ **静态光照贴图**\ 时有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/apply_root_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/apply_root_scale** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/apply_root_scale>`

如果为 ``true``\ ，\ :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` 将被应用于后代节点、网格、动画、骨骼等。这意味着，如果你稍后在导入的场景中添加子节点，它将不会被缩放。如果为 ``false``\ ，\ :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` 将乘以该根节点的缩放。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/import_as_skeleton_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/import_as_skeleton_bones** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`

将导入场景中的所有节点视为单个 :ref:`Skeleton3D<class_Skeleton3D>` 中的骨骼。可用于保证导入的动画以骨架骨骼而不是节点为目标。也可用于在 :ref:`BoneMap<class_BoneMap>` 中分配 ``"Root"`` 骨骼。有关详细信息，请参阅 :doc:`重定向 3D 骨架 <../tutorials/assets_pipeline/retargeting_3d_skeletons>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_name** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_name>`

覆盖根节点名称。如果为空，则根节点将使用场景指定的内容；如果场景未指定根名称，则根节点将使用该文件名。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **nodes/root_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_scale>`

用于场景根的均一缩放。默认值 ``1.0`` 不会执行任何重新缩放。有关如何应用该缩放的详细信息，请参阅 :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_script:

.. rst-class:: classref-property

:ref:`Script<class_Script>` **nodes/root_script** = ``null`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_script>`

如果设为有效的脚本，则会将该脚本附加到导入后的场景的根节点上。如果根节点的类型与脚本不兼容，则会将根节点替换为与脚本兼容的类型。也可以对场景中的其他非网格节点使用该设置，为他们附加脚本。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_type** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_type>`

覆盖该根节点类型。如果为空，则根节点将使用场景指定的内容，如果场景未指定根类型，则根节点将使用 :ref:`Node3D<class_Node3D>`\ 。建议使用继承自 :ref:`Node3D<class_Node3D>` 的节点类型。否则，你将无法直接在 3D 编辑器中定位节点。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_name_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_name_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_name_suffixes>`

如果为 ``true``\ ，则会使用导入的节点、资源等对象的名称后缀来确定类型和属性，例如 ``-noimp`` 可以跳过节点和动画的导入、\ ``-alpha`` 可以启用材质的 Alpha 透明、\ ``-vcol`` 可以启用材质的顶点颜色。禁用该选项会让编辑器导入的文件更接近原始文件，更类似于在运行时导入文件。详见\ :doc:`《使用名称后缀自定义节点类型》 <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_node_type_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_node_type_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`

如果为 ``true``\ ，则会使用节点名称的后缀来确定节点类型，例如 ``-col`` 表示碰撞形状。仅在 :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>` 为 ``true`` 时使用。禁用该选项会让编辑器导入的文件更接近原始文件，更类似于在运行时导入文件。详见\ :doc:`《使用名称后缀自定义节点类型》 <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_skins/use_named_skins:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **skins/use_named_skins** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_skins/use_named_skins>`

如果勾选此项，动画将使用带有名称的 :ref:`Skin<class_Skin>`\ （蒙皮）资源。在这里，\ :ref:`MeshInstance3D<class_MeshInstance3D>` 节点包含 3 个与之相关的关键属性：指向 :ref:`Skeleton3D<class_Skeleton3D>` 节点的骨骼 :ref:`NodePath<class_NodePath>`\ （通常填 ``..``\ ）、一个网格（Mesh），以及一个蒙皮（Skin）：

- :ref:`Skeleton3D<class_Skeleton3D>` 节点包含一个带有名称的骨骼列表，记录了它们的姿态和初始状态（Rest），同时也包含节点自身的名称以及父级骨骼的信息。

- 网格（Mesh）包含了显示模型所需的所有原始顶点数据。就网格本身而言，它知道顶点是如何进行权重绘制（weight-painted）的，并使用了一些通常从 3D 建模软件中导入的内部编号。

- 蒙皮（Skin）包含了将此网格绑定到该 :ref:`Skeleton3D<class_Skeleton3D>` 上所需的必要信息。对于 3D 建模软件为每个内部骨骼选定的 ID，它都包含两样东西。首先是一个矩阵，被称为绑定姿态矩阵、逆绑定矩阵，简称 IBM。其次，\ :ref:`Skin<class_Skin>` 还包含每根骨骼的名称（如果 :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` 设为 ``true``\ ），或者包含该骨骼在 :ref:`Skeleton3D<class_Skeleton3D>` 列表中的索引编号（如果 :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` 设为 ``false``\ ）。

综合以上信息，就足以告诉 Godot 如何利用 :ref:`Skeleton3D<class_Skeleton3D>` 节点中的骨骼姿态来渲染每个 :ref:`MeshInstance3D<class_MeshInstance3D>` 的网格了。需要注意的是，每个 :ref:`MeshInstance3D<class_MeshInstance3D>` 可能会共享绑定关系（这在从 Blender 导出的模型中很常见），也可能每个 :ref:`MeshInstance3D<class_MeshInstance3D>` 使用各自独立的 :ref:`Skin<class_Skin>` 对象（这在从 Maya 等其他工具导出的模型中很常见）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
