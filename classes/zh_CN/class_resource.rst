:github_url: hide

.. _class_Resource:

Resource
========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`Animation<class_Animation>`, :ref:`AnimationLibrary<class_AnimationLibrary>`, :ref:`AnimationNode<class_AnimationNode>`, :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>`, :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`, :ref:`AudioBusLayout<class_AudioBusLayout>`, :ref:`AudioEffect<class_AudioEffect>`, :ref:`AudioStream<class_AudioStream>`, :ref:`BitMap<class_BitMap>`, :ref:`BoneMap<class_BoneMap>`, :ref:`ButtonGroup<class_ButtonGroup>`, :ref:`CameraAttributes<class_CameraAttributes>`, :ref:`ColorPalette<class_ColorPalette>`, :ref:`Compositor<class_Compositor>`, :ref:`CompositorEffect<class_CompositorEffect>`, :ref:`CryptoKey<class_CryptoKey>`, :ref:`Curve<class_Curve>`, :ref:`Curve2D<class_Curve2D>`, :ref:`Curve3D<class_Curve3D>`, :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`, :ref:`EditorSettings<class_EditorSettings>`, :ref:`Environment<class_Environment>`, :ref:`FoldableGroup<class_FoldableGroup>`, :ref:`Font<class_Font>`, :ref:`GDExtension<class_GDExtension>`, :ref:`GLTFAccessor<class_GLTFAccessor>`, :ref:`GLTFAnimation<class_GLTFAnimation>`, :ref:`GLTFBufferView<class_GLTFBufferView>`, :ref:`GLTFCamera<class_GLTFCamera>`, :ref:`GLTFDocument<class_GLTFDocument>`, :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, :ref:`GLTFLight<class_GLTFLight>`, :ref:`GLTFMesh<class_GLTFMesh>`, :ref:`GLTFNode<class_GLTFNode>`, :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`, :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>`, :ref:`GLTFSkeleton<class_GLTFSkeleton>`, :ref:`GLTFSkin<class_GLTFSkin>`, :ref:`GLTFSpecGloss<class_GLTFSpecGloss>`, :ref:`GLTFState<class_GLTFState>`, :ref:`GLTFTexture<class_GLTFTexture>`, :ref:`GLTFTextureSampler<class_GLTFTextureSampler>`, :ref:`Gradient<class_Gradient>`, :ref:`Image<class_Image>`, :ref:`ImporterMesh<class_ImporterMesh>`, :ref:`InputEvent<class_InputEvent>`, :ref:`JointLimitation3D<class_JointLimitation3D>`, :ref:`JSON<class_JSON>`, :ref:`LabelSettings<class_LabelSettings>`, :ref:`LightmapGIData<class_LightmapGIData>`, :ref:`Material<class_Material>`, :ref:`Mesh<class_Mesh>`, :ref:`MeshLibrary<class_MeshLibrary>`, :ref:`MissingResource<class_MissingResource>`, :ref:`MultiMesh<class_MultiMesh>`, :ref:`NavigationMesh<class_NavigationMesh>`, :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`, :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, :ref:`NavigationPolygon<class_NavigationPolygon>`, :ref:`Noise<class_Noise>`, :ref:`Occluder3D<class_Occluder3D>`, :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`, :ref:`OggPacketSequence<class_OggPacketSequence>`, :ref:`OpenXRAction<class_OpenXRAction>`, :ref:`OpenXRActionMap<class_OpenXRActionMap>`, :ref:`OpenXRActionSet<class_OpenXRActionSet>`, :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`, :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`, :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`, :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`, :ref:`PackedDataContainer<class_PackedDataContainer>`, :ref:`PackedScene<class_PackedScene>`, :ref:`PhysicsMaterial<class_PhysicsMaterial>`, :ref:`PolygonPathFinder<class_PolygonPathFinder>`, :ref:`RDShaderFile<class_RDShaderFile>`, :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, :ref:`RichTextEffect<class_RichTextEffect>`, :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`, :ref:`Script<class_Script>`, :ref:`Shader<class_Shader>`, :ref:`ShaderInclude<class_ShaderInclude>`, :ref:`Shape2D<class_Shape2D>`, :ref:`Shape3D<class_Shape3D>`, :ref:`Shortcut<class_Shortcut>`, :ref:`SkeletonModification2D<class_SkeletonModification2D>`, :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, :ref:`SkeletonProfile<class_SkeletonProfile>`, :ref:`Skin<class_Skin>`, :ref:`Sky<class_Sky>`, :ref:`SpriteFrames<class_SpriteFrames>`, :ref:`StyleBox<class_StyleBox>`, :ref:`SyntaxHighlighter<class_SyntaxHighlighter>`, :ref:`Texture<class_Texture>`, :ref:`Theme<class_Theme>`, :ref:`TileMapPattern<class_TileMapPattern>`, :ref:`TileSet<class_TileSet>`, :ref:`TileSetSource<class_TileSetSource>`, :ref:`Translation<class_Translation>`, :ref:`VideoStream<class_VideoStream>`, :ref:`VideoStreamPlayback<class_VideoStreamPlayback>`, :ref:`VisualShaderNode<class_VisualShaderNode>`, :ref:`VoxelGIData<class_VoxelGIData>`, :ref:`World2D<class_World2D>`, :ref:`World3D<class_World3D>`, :ref:`X509Certificate<class_X509Certificate>`

可序列化对象的基类。

.. rst-class:: classref-introduction-group

描述
----

资源是所有 Godot 特定资源类型的基类，主要作为数据容器。因为资源继承自 :ref:`RefCounted<class_RefCounted>`\ ，所以进行了引用计数，不再使用时会被释放。资源也可以嵌套到其他资源里、保存到磁盘上。\ :ref:`PackedScene<class_PackedScene>` 也是一种资源，它是 Godot 项目中最常用的 :ref:`Object<class_Object>` 之一，独特的能力是可以将若干 :ref:`Node<class_Node>` 保存起来、随意进行实例化。

在 GDScript 中，可以根据 :ref:`resource_path<class_Resource_property_resource_path>` 从磁盘上加载资源，使用 :ref:`@GDScript.load()<class_@GDScript_method_load>` 或 :ref:`@GDScript.preload()<class_@GDScript_method_preload>` 即可。

引擎会维护所有已加载资源的全局缓存，可以根据路径引用资源（见 :ref:`ResourceLoader.has_cached()<class_ResourceLoader_method_has_cached>`\ ）。资源会在首次加载时缓存，所有引用释放后就会从缓存中移除。如果缓存中存在某个资源，那么后续使用其路径进行加载的时候返回的就是缓存中的引用。

\ **注意：**\ 在 C# 中，资源不再被使用后并不会立即被释放。相反，垃圾回收将定期运行，并释放不再使用的资源。这意味着未使用的资源在被删除之前会在内存中保留一段时间。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`资源 <../tutorials/scripting/resources>`

- :doc:`何时以及如何避免为任何事情使用节点 <../tutorials/best_practices/node_alternatives>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>`   | ``false`` |
   +-----------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`resource_name<class_Resource_property_resource_name>`                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`resource_path<class_Resource_property_resource_path>`                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`resource_scene_unique_id<class_Resource_property_resource_scene_unique_id>` |           |
   +-----------------------------+-----------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`           | :ref:`_get_rid<class_Resource_private_method__get_rid>`\ (\ ) |virtual| |const|                                                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_reset_state<class_Resource_private_method__reset_state>`\ (\ ) |virtual|                                                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_set_path_cache<class_Resource_private_method__set_path_cache>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_setup_local_to_scene<class_Resource_private_method__setup_local_to_scene>`\ (\ ) |virtual|                                                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`duplicate<class_Resource_method_duplicate>`\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const|                                                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`duplicate_deep<class_Resource_method_duplicate_deep>`\ (\ deep_subresources_mode\: :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` = 1\ ) |const| |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`emit_changed<class_Resource_method_emit_changed>`\ (\ )                                                                                                     |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`generate_scene_unique_id<class_Resource_method_generate_scene_unique_id>`\ (\ ) |static|                                                                    |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`get_id_for_path<class_Resource_method_get_id_for_path>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`         | :ref:`get_local_scene<class_Resource_method_get_local_scene>`\ (\ ) |const|                                                                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`           | :ref:`get_rid<class_Resource_method_get_rid>`\ (\ ) |const|                                                                                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_built_in<class_Resource_method_is_built_in>`\ (\ ) |const|                                                                                               |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`reset_state<class_Resource_method_reset_state>`\ (\ )                                                                                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_id_for_path<class_Resource_method_set_id_for_path>`\ (\ path\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`\ )                         |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_path_cache<class_Resource_method_set_path_cache>`\ (\ path\: :ref:`String<class_String>`\ )                                                             |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`setup_local_to_scene<class_Resource_method_setup_local_to_scene>`\ (\ )                                                                                     |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`take_over_path<class_Resource_method_take_over_path>`\ (\ path\: :ref:`String<class_String>`\ )                                                             |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Resource_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Resource_signal_changed>`

当资源发生更改时发出信号，通常是当其属性之一被修改时。另见 :ref:`emit_changed()<class_Resource_method_emit_changed>` 。

\ **注意：**\ 自定义资源的属性不会自动发出此信号。如有必要，需要创建一个 setter 来触发。

.. rst-class:: classref-item-separator

----

.. _class_Resource_signal_setup_local_to_scene_requested:

.. rst-class:: classref-signal

**setup_local_to_scene_requested**\ (\ ) :ref:`🔗<class_Resource_signal_setup_local_to_scene_requested>`

**已弃用：** This signal is only emitted when the resource is created. Override :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>` instead.

由新复制的 :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` 为 ``true`` 的资源发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Resource_DeepDuplicateMode:

.. rst-class:: classref-enumeration

enum **DeepDuplicateMode**: :ref:`🔗<enum_Resource_DeepDuplicateMode>`

.. _class_Resource_constant_DEEP_DUPLICATE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_NONE** = ``0``

完全不复制子资源。即使在深层复制时也很有用，因为可以在复制所有数组和字典的同时，仍然指向原始资源。

.. _class_Resource_constant_DEEP_DUPLICATE_INTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_INTERNAL** = ``1``

仅复制不具备路径的子资源以及使用场景本地化路径的子资源。

.. _class_Resource_constant_DEEP_DUPLICATE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_ALL** = ``2``

复制所有子资源，即便使用的是非本地路径。换句话说，即便是单独保存的大型资源也会复制。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Resource_property_resource_local_to_scene:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resource_local_to_scene** = ``false`` :ref:`🔗<class_Resource_property_resource_local_to_scene>`

.. rst-class:: classref-property-setget

- |void| **set_local_to_scene**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_local_to_scene**\ (\ )

如果为 ``true``\ ，那么在本地场景的各个实例中，该资源都会被唯一化。在运行时，在某个场景中对该资源的修改不会影响其他实例（见 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`\ ）。

\ **注意：**\ 运行时，在已创建副本的资源上修改该属性不会有效果。

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_name** = ``""`` :ref:`🔗<class_Resource_property_resource_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_name**\ (\ )

这个资源的可选名称。定义后会在“检查器”面板中显示这个值来代表该资源。对于内置脚本，该名称会在脚本编辑器中作为选项卡名称的一部分显示。

\ **注意：**\ 某些资源格式不支持资源名称。仍然可以在编辑器中或通过代码设置名称，但重新加载资源时该名称将会丢失。例如，只有内置的脚本可以有资源名称，而存储在单独文件中的脚本则不能。

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_path** = ``""`` :ref:`🔗<class_Resource_property_resource_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_path**\ (\ )

该资源的唯一路径。如果已被保存到磁盘，该值将是其文件路径。如果该资源仅包含在某一个场景中，该值将是 :ref:`PackedScene<class_PackedScene>` 的文件路径后加上一个唯一标识符。

\ **注意：**\ 如果之前已经加载了具有相同路径的资源，手动设置该属性可能会失败。如果有必要，请使用 :ref:`take_over_path()<class_Resource_method_take_over_path>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_scene_unique_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_scene_unique_id** :ref:`🔗<class_Resource_property_resource_scene_unique_id>`

.. rst-class:: classref-property-setget

- |void| **set_scene_unique_id**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_unique_id**\ (\ )

相对于该资源场景的唯一标识，若留空，则当该资源保存在 :ref:`PackedScene<class_PackedScene>` 中时，会自动生成 ID；若资源不在场景中，则该属性默认为空。

\ **注意：**\ 保存 :ref:`PackedScene<class_PackedScene>` 时，若同一场景中的多个资源使用相同 ID，则只有场景层级中最早的资源保留原 ID，其他资源从 :ref:`generate_scene_unique_id()<class_Resource_method_generate_scene_unique_id>` 中分配新 ID。

\ **注意：**\ 设置该属性不会发出 :ref:`changed<class_Resource_signal_changed>` 信号。

\ **警告：**\ 设置时，ID 只能由字母、数字和下划线组成，否则会失败，且默认为一个随机生成的 ID。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Resource_private_method__get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_rid**\ (\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__get_rid>`

可以覆盖此方法，从而在调用 :ref:`get_rid()<class_Resource_method_get_rid>` 时返回自定义 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__reset_state:

.. rst-class:: classref-method

|void| **_reset_state**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__reset_state>`

如果资源在未导出的属性中存储状态，例如通过 :ref:`Object._validate_property()<class_Object_private_method__validate_property>` 或 :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>` 存储，则必须实现该方法进行状态的清空。

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__set_path_cache:

.. rst-class:: classref-method

|void| **_set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__set_path_cache>`

可以覆盖此方法，从而在对象的 :ref:`set_path_cache()<class_Resource_method_set_path_cache>` 被调用后执行额外的逻辑。

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__setup_local_to_scene:

.. rst-class:: classref-method

|void| **_setup_local_to_scene**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__setup_local_to_scene>`

如果原始资源的 :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` 被设置为 ``true``\ ，则覆盖该方法可以自定义从 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` 创建的新复制的资源。

\ **示例：**\ 为实例化场景中的每个本地资源设置随机 ``damage`` 值：

::

    extends Resource

    var damage = 0

    func _setup_local_to_scene():
        damage = randi_range(10, 40)

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_duplicate:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Resource_method_duplicate>`

制作该资源的副本，返回资源中，\ ``export`` 的属性以及 :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` 的属性都会从原始资源中复制。

如果 ``deep`` 为 ``false``\ ，则会返回\ **浅拷贝**\ ：嵌套的 :ref:`Array<class_Array>`\ 、\ :ref:`Dictionary<class_Dictionary>`\ 、\ **Resource** 属性不会发生复制，与原资源共享。

如果 ``deep`` 为 ``true``\ ，则会返回\ **深拷贝**\ ：嵌套的数组、字典和紧缩数组都会发生（递归）复制。内部的 **Resource** 只会在本地时进行复制，类似于对 :ref:`duplicate_deep()<class_Resource_method_duplicate_deep>` 使用 :ref:`DEEP_DUPLICATE_INTERNAL<class_Resource_constant_DEEP_DUPLICATE_INTERNAL>`\ 。

例外如下：

- 带有 :ref:`@GlobalScope.PROPERTY_USAGE_ALWAYS_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_ALWAYS_DUPLICATE>` 标志的子资源属性始终会被复制（是否递归取决于 ``deep``\ ）。

- 带有 :ref:`@GlobalScope.PROPERTY_USAGE_NEVER_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_NEVER_DUPLICATE>` 标志的子资源属性始终不会被复制。

\ **注意：**\ 对于自定义资源，如果定义 :ref:`Object._init()<class_Object_private_method__init>` 时使用了必填的参数，则此方法会失败。

\ **注意：**\ 复制时如果将 ``deep`` 设置为 ``true``\ ，则在复制过程中发现的每个资源，包括调用该方法的资源，都只会发生一次复制，在副本中可以对其存在多次引用。例如你复制的资源 A 里正好对资源 B 存在两个引用，那么新的资源 A' 就会引用新的资源 B' 两次。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` = 1\ ) |const| :ref:`🔗<class_Resource_method_duplicate_deep>`

Duplicates this resource, deeply, like :ref:`duplicate()<class_Resource_method_duplicate>` when passing ``true``, with extra control over how subresources are handled.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_emit_changed:

.. rst-class:: classref-method

|void| **emit_changed**\ (\ ) :ref:`🔗<class_Resource_method_emit_changed>`

发出 :ref:`changed<class_Resource_signal_changed>` 更改信号。某些内置资源会自动调用此方法。

\ **注意：**\ 对于自定义资源，推荐在发生任何有意义的变化时都调用此方法，例如修改属性时。这样能够保证依赖于此资源的自定义 :ref:`Object<class_Object>` 能够正确更新其属性。

::

    var damage:
        set(new_value):
            if damage != new_value:
                damage = new_value
                emit_changed()

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_generate_scene_unique_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **generate_scene_unique_id**\ (\ ) |static| :ref:`🔗<class_Resource_method_generate_scene_unique_id>`

根据当前日期、时间和随机值，为要包含在 :ref:`PackedScene<class_PackedScene>` 中的资源生成唯一标识符。返回的字符串仅由字母（\ ``a`` 到 ``y``\ ）和数字（\ ``0`` 到 ``8``\ ）组成。另见 :ref:`resource_scene_unique_id<class_Resource_property_resource_scene_unique_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_id_for_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Resource_method_get_id_for_path>`

根据场景唯一 ID 的内部缓存，返回位于 ``path`` 的场景中该资源的 ID。如果没有对应的条目则返回空字符串。适用于扩展 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 和 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` 实现对版本控制系统友好的自定义资源格式时保持场景唯一 ID 一致。

\ **注意：**\ 该方法仅在运行于编辑器上下文时实现。运行时返回空字符串。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_local_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_local_scene**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_local_scene>`

如果 :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` 为 ``true``\ ，并且该资源是从 :ref:`PackedScene<class_PackedScene>` 实例中加载的，则返回使用该资源的场景的根 :ref:`Node<class_Node>`\ 。否则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_rid>`

返回该资源的 :ref:`RID<class_RID>`\ （或者空的 RID）。许多资源（如 :ref:`Texture2D<class_Texture2D>`\ 、\ :ref:`Mesh<class_Mesh>` 等）是存储在服务器（\ :ref:`DisplayServer<class_DisplayServer>`\ 、\ :ref:`RenderingServer<class_RenderingServer>` 等）中的资源的高级抽象，所以这个函数将返回原始的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_is_built_in:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_built_in**\ (\ ) |const| :ref:`🔗<class_Resource_method_is_built_in>`

如果资源是作为其他资源文件中的一部分保存到磁盘上的，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_reset_state:

.. rst-class:: classref-method

|void| **reset_state**\ (\ ) :ref:`🔗<class_Resource_method_reset_state>`

清空资源中未导出的属性。另见 :ref:`_reset_state()<class_Resource_private_method__reset_state>`\ 。适合在通过扩展 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 和 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` 实现自定义资源格式时使用。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_id_for_path:

.. rst-class:: classref-method

|void| **set_id_for_path**\ (\ path\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_id_for_path>`

场景唯一 ID 的内部缓存，针对位于 ``path`` 的场景将该资源的 ID 设置为 ``id``\ 。如果 ``id`` 为空，则会清空 ``path`` 对应的缓存条目。适用于扩展 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 和 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` 实现对版本控制系统友好的自定义资源格式时保持场景唯一 ID 一致。

\ **注意：**\ 该方法仅在运行于编辑器上下文时实现。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_path_cache:

.. rst-class:: classref-method

|void| **set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_path_cache>`

将资源的路径设置为 ``path``\ ，不涉及资源缓存。适用于扩展 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 和 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` 实现自定义资源格式时处理 :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` 的值。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_setup_local_to_scene:

.. rst-class:: classref-method

|void| **setup_local_to_scene**\ (\ ) :ref:`🔗<class_Resource_method_setup_local_to_scene>`

**已弃用：** This method should only be called internally.

调用 :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>`\ 。如果 :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` 为 ``true``\ ，则场景实例中新复制的资源会自动从 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` 中调用该方法。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_take_over_path:

.. rst-class:: classref-method

|void| **take_over_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_take_over_path>`

将 :ref:`resource_path<class_Resource_property_resource_path>` 设置为 ``path``\ ，可能会覆盖这个路径对应的已有缓存条目。后续尝试通过路径加载覆盖后的资源时，会返回这个资源。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
