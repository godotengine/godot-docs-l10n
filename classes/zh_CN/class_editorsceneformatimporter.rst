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

Unused flag (this has no effect when enabled).

.. _class_EditorSceneFormatImporter_constant_IMPORT_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_ANIMATION** = ``2``

Import animations from the 3D scene. When importing a scene as an :ref:`AnimationLibrary<class_AnimationLibrary>`, this flag is always enabled.

.. _class_EditorSceneFormatImporter_constant_IMPORT_FAIL_ON_MISSING_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FAIL_ON_MISSING_DEPENDENCIES** = ``4``

Unused flag (this has no effect when enabled).

.. _class_EditorSceneFormatImporter_constant_IMPORT_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_GENERATE_TANGENT_ARRAYS** = ``8``

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the input meshes don't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

.. _class_EditorSceneFormatImporter_constant_IMPORT_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_USE_NAMED_SKIN_BINDS** = ``16``

If checked, use named :ref:`Skin<class_Skin>`\ s for animation. The :ref:`MeshInstance3D<class_MeshInstance3D>` node contains 3 properties of relevance here: a skeleton :ref:`NodePath<class_NodePath>` pointing to the :ref:`Skeleton3D<class_Skeleton3D>` node (usually ``..``), a mesh, and a skin:

- The :ref:`Skeleton3D<class_Skeleton3D>` node contains a list of bones with names, their pose and rest, a name, and a parent bone.

- The mesh is all of the raw vertex data needed to display a mesh. In terms of the mesh, it knows how vertices are weight-painted and uses some internal numbering often imported from 3D modeling software.

- The skin contains the information necessary to bind this mesh onto this Skeleton3D. For each of the internal bone IDs chosen by the 3D modeling software, it contains two things. Firstly, a matrix known as the Bind Pose Matrix, Inverse Bind Matrix, or IBM for short. Secondly, the :ref:`Skin<class_Skin>` contains each bone's name (if this flag is enabled), or the bone's index within the :ref:`Skeleton3D<class_Skeleton3D>` list (if this flag is disabled).

Together, this information is enough to tell Godot how to use the bone poses in the :ref:`Skeleton3D<class_Skeleton3D>` node to render the mesh from each :ref:`MeshInstance3D<class_MeshInstance3D>`. Note that each :ref:`MeshInstance3D<class_MeshInstance3D>` may share binds, as is common in models exported from Blender, or each :ref:`MeshInstance3D<class_MeshInstance3D>` may use a separate :ref:`Skin<class_Skin>` object, as is common in models exported from other tools such as Maya.

.. _class_EditorSceneFormatImporter_constant_IMPORT_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_DISCARD_MESHES_AND_MATERIALS** = ``32``

Ignore meshes and materials on import. When importing a scene as an :ref:`AnimationLibrary<class_AnimationLibrary>`, this flag is always enabled.

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
