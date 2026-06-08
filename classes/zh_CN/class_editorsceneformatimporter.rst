:github_url: hide

.. _class_EditorSceneFormatImporter:

EditorSceneFormatImporter
=========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`EditorSceneFormatImporterBlend<class_EditorSceneFormatImporterBlend>`, :ref:`EditorSceneFormatImporterFBX2GLTF<class_EditorSceneFormatImporterFBX2GLTF>`, :ref:`EditorSceneFormatImporterGLTF<class_EditorSceneFormatImporterGLTF>`, :ref:`EditorSceneFormatImporterUFBX<class_EditorSceneFormatImporterUFBX>`

从第三方的 3D 文件中导入场景。

.. rst-class:: classref-introduction-group

描述
----

**EditorSceneFormatImporter** 允许为第三方 3D 格式定义导入器脚本。

要使用 **EditorSceneFormatImporter**\ ，请先使用 :ref:`EditorPlugin.add_scene_format_importer_plugin()<class_EditorPlugin_method_add_scene_format_importer_plugin>` 方法注册它。

.. rst-class:: classref-reftable-group

方法
----

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

枚举
----

.. _enum_EditorSceneFormatImporter_ImportFlags:

.. rst-class:: classref-enumeration

flags **ImportFlags**: :ref:`🔗<enum_EditorSceneFormatImporter_ImportFlags>`

.. _class_EditorSceneFormatImporter_constant_IMPORT_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_SCENE** = ``1``

未使用的标志（启用它没有任何效果）。

.. _class_EditorSceneFormatImporter_constant_IMPORT_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_ANIMATION** = ``2``

从 3D 场景中导入动画。当将场景作为 :ref:`AnimationLibrary<class_AnimationLibrary>`\ （动画库）进行导入时，此选项会始终处于启用状态。

.. _class_EditorSceneFormatImporter_constant_IMPORT_FAIL_ON_MISSING_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FAIL_ON_MISSING_DEPENDENCIES** = ``4``

未使用的标志（启用它没有任何效果）。

.. _class_EditorSceneFormatImporter_constant_IMPORT_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_GENERATE_TANGENT_ARRAYS** = ``8``

如果设为 ``true``\ ，当输入的网格体（meshes）没有切线数据时，将使用 `Mikktspace <http://www.mikktspace.com/>`__ 算法来生成顶点切线。如果条件允许，更推荐让 3D 建模软件在导出模型时直接生成切线，而不是依赖这个选项。法线贴图（normal maps）和高度贴图（height maps），以及任何需要切线的材质或着色器（shader）功能，都必须要有切线数据才能正确显示。

如果你不需要那些依赖切线的材质功能，禁用此选项可以在源 3D 文件不包含切线的情况下，减小输出文件的大小，并加快导入速度。

.. _class_EditorSceneFormatImporter_constant_IMPORT_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_USE_NAMED_SKIN_BINDS** = ``16``

如果勾选此项，动画将使用带名称的 :ref:`Skin<class_Skin>`\ （皮肤）资源。\ :ref:`MeshInstance3D<class_MeshInstance3D>`\ （网格实例 3D）节点在这里包含 3 个关键属性：一个指向 :ref:`Skeleton3D<class_Skeleton3D>`\ （骨骼 3D）节点的骨架 :ref:`NodePath<class_NodePath>`\ （节点路径，通常是 ``..``\ ）、一个网格（mesh），以及一个皮肤（skin）。

- :ref:`Skeleton3D<class_Skeleton3D>` 节点包含一个骨骼列表，其中记录了骨骼的名称、姿态（pose）和静止状态（rest），以及父级骨骼的信息。

- 网格（mesh）包含了显示模型所需的所有原始顶点数据。就网格本身而言，它知道顶点是如何进行权重绘制（weight-painted）的，并且使用了一些通常从 3D 建模软件导入的内部编号。

- 皮肤（skin）包含了将这个网格绑定到该 :ref:`Skeleton3D<class_Skeleton3D>` 上所需的必要信息。对于 3D 建模软件选定的每一个内部骨骼 ID，它都包含两项内容。首先，是一个被称为“绑定姿态矩阵”、“反向绑定矩阵”或简称 IBM 的矩阵。其次，\ :ref:`Skin<class_Skin>` 还包含每根骨骼的名称（如果启用了此标志），或者包含该骨骼在 :ref:`Skeleton3D<class_Skeleton3D>` 列表中的索引（如果禁用了此标志）。

综合这些信息，就足以告诉 Godot 如何利用 :ref:`Skeleton3D<class_Skeleton3D>` 节点中的骨骼姿态，来渲染每个 :ref:`MeshInstance3D<class_MeshInstance3D>`\ 。请注意，每个 :ref:`MeshInstance3D<class_MeshInstance3D>` 可以共享绑定信息（这在从 Blender 导出的模型中很常见），或者每个 :ref:`MeshInstance3D<class_MeshInstance3D>` 也可以使用独立的 :ref:`Skin<class_Skin>` 对象（这在从 Maya 等其他工具导出的模型中很常见）。

.. _class_EditorSceneFormatImporter_constant_IMPORT_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_DISCARD_MESHES_AND_MATERIALS** = ``32``

在导入时忽略网格（Meshes）和材质（Materials）。当将场景作为 :ref:`AnimationLibrary<class_AnimationLibrary>`\ （动画库）进行导入时，此选项会始终处于启用状态。

.. _class_EditorSceneFormatImporter_constant_IMPORT_FORCE_DISABLE_MESH_COMPRESSION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FORCE_DISABLE_MESH_COMPRESSION** = ``64``

如果为 ``true``\ ，则不会使用网格压缩。如果你在网格法线或 UV 中发现块状伪影，或者如果你的网格在每个方向都大于几千米，请考虑启用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorSceneFormatImporter_private_method__get_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_extensions>`

返回该场景导入器支持的文件扩展名。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_import_options>`

覆盖后可以添加通用导入选项。这些选项将出现在编辑器的主导入面板中。请通过 :ref:`add_import_option()<class_EditorSceneFormatImporter_method_add_import_option>` 和 :ref:`add_import_option_advanced()<class_EditorSceneFormatImporter_method_add_import_option_advanced>` 添加选项。

\ **注意：**\ 所有 **EditorSceneFormatImporter** 和 :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>` 实例都会为所有文件添加选项。\ ``path`` 非空时，最好检查文件的扩展名。

用户编辑项目设置时 ``path`` 将为空。建议在 ``path`` 为空时添加所有选项，以便用户自定义导入默认值。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_option_visibility>`

显示给定的选项应返回 ``true``\ ，隐藏给定的选项应返回 ``false``\ ，忽略应返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__import_scene:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_import_scene**\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| :ref:`🔗<class_EditorSceneFormatImporter_private_method__import_scene>`

在此处执行批量场景导入逻辑，例如使用 :ref:`GLTFDocument<class_GLTFDocument>` 和 :ref:`FBXDocument<class_FBXDocument>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option>`

添加特定的导入选项（仅限名称和默认值）。该函数只能在 :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>` 中调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option_advanced>`

添加特定的导入选项。该函数只能在 :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>` 中调用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
