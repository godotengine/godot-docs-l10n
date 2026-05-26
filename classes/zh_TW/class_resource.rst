:github_url: hide

.. _class_Resource:

Resource
========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`Animation<class_Animation>`, :ref:`AnimationLibrary<class_AnimationLibrary>`, :ref:`AnimationNode<class_AnimationNode>`, :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>`, :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`, :ref:`AudioBusLayout<class_AudioBusLayout>`, :ref:`AudioEffect<class_AudioEffect>`, :ref:`AudioStream<class_AudioStream>`, :ref:`BitMap<class_BitMap>`, :ref:`BoneMap<class_BoneMap>`, :ref:`ButtonGroup<class_ButtonGroup>`, :ref:`CameraAttributes<class_CameraAttributes>`, :ref:`ColorPalette<class_ColorPalette>`, :ref:`Compositor<class_Compositor>`, :ref:`CompositorEffect<class_CompositorEffect>`, :ref:`CryptoKey<class_CryptoKey>`, :ref:`Curve<class_Curve>`, :ref:`Curve2D<class_Curve2D>`, :ref:`Curve3D<class_Curve3D>`, :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`, :ref:`EditorSettings<class_EditorSettings>`, :ref:`Environment<class_Environment>`, :ref:`FoldableGroup<class_FoldableGroup>`, :ref:`Font<class_Font>`, :ref:`GDExtension<class_GDExtension>`, :ref:`GLTFAccessor<class_GLTFAccessor>`, :ref:`GLTFAnimation<class_GLTFAnimation>`, :ref:`GLTFBufferView<class_GLTFBufferView>`, :ref:`GLTFCamera<class_GLTFCamera>`, :ref:`GLTFDocument<class_GLTFDocument>`, :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, :ref:`GLTFLight<class_GLTFLight>`, :ref:`GLTFMesh<class_GLTFMesh>`, :ref:`GLTFNode<class_GLTFNode>`, :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`, :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>`, :ref:`GLTFSkeleton<class_GLTFSkeleton>`, :ref:`GLTFSkin<class_GLTFSkin>`, :ref:`GLTFSpecGloss<class_GLTFSpecGloss>`, :ref:`GLTFState<class_GLTFState>`, :ref:`GLTFTexture<class_GLTFTexture>`, :ref:`GLTFTextureSampler<class_GLTFTextureSampler>`, :ref:`Gradient<class_Gradient>`, :ref:`Image<class_Image>`, :ref:`ImporterMesh<class_ImporterMesh>`, :ref:`InputEvent<class_InputEvent>`, :ref:`JointLimitation3D<class_JointLimitation3D>`, :ref:`JSON<class_JSON>`, :ref:`LabelSettings<class_LabelSettings>`, :ref:`LightmapGIData<class_LightmapGIData>`, :ref:`Material<class_Material>`, :ref:`Mesh<class_Mesh>`, :ref:`MeshLibrary<class_MeshLibrary>`, :ref:`MissingResource<class_MissingResource>`, :ref:`MultiMesh<class_MultiMesh>`, :ref:`NavigationMesh<class_NavigationMesh>`, :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`, :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, :ref:`NavigationPolygon<class_NavigationPolygon>`, :ref:`Noise<class_Noise>`, :ref:`Occluder3D<class_Occluder3D>`, :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`, :ref:`OggPacketSequence<class_OggPacketSequence>`, :ref:`OpenXRAction<class_OpenXRAction>`, :ref:`OpenXRActionMap<class_OpenXRActionMap>`, :ref:`OpenXRActionSet<class_OpenXRActionSet>`, :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`, :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`, :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`, :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`, :ref:`PackedDataContainer<class_PackedDataContainer>`, :ref:`PackedScene<class_PackedScene>`, :ref:`PhysicsMaterial<class_PhysicsMaterial>`, :ref:`PolygonPathFinder<class_PolygonPathFinder>`, :ref:`RDShaderFile<class_RDShaderFile>`, :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, :ref:`RichTextEffect<class_RichTextEffect>`, :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`, :ref:`Script<class_Script>`, :ref:`Shader<class_Shader>`, :ref:`ShaderInclude<class_ShaderInclude>`, :ref:`Shape2D<class_Shape2D>`, :ref:`Shape3D<class_Shape3D>`, :ref:`Shortcut<class_Shortcut>`, :ref:`SkeletonModification2D<class_SkeletonModification2D>`, :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, :ref:`SkeletonProfile<class_SkeletonProfile>`, :ref:`Skin<class_Skin>`, :ref:`Sky<class_Sky>`, :ref:`SpriteFrames<class_SpriteFrames>`, :ref:`StyleBox<class_StyleBox>`, :ref:`SyntaxHighlighter<class_SyntaxHighlighter>`, :ref:`Texture<class_Texture>`, :ref:`Theme<class_Theme>`, :ref:`TileMapPattern<class_TileMapPattern>`, :ref:`TileSet<class_TileSet>`, :ref:`TileSetSource<class_TileSetSource>`, :ref:`Translation<class_Translation>`, :ref:`VideoStream<class_VideoStream>`, :ref:`VideoStreamPlayback<class_VideoStreamPlayback>`, :ref:`VisualShaderNode<class_VisualShaderNode>`, :ref:`VoxelGIData<class_VoxelGIData>`, :ref:`World2D<class_World2D>`, :ref:`World3D<class_World3D>`, :ref:`X509Certificate<class_X509Certificate>`

可序列化物件的基底類別。

.. rst-class:: classref-introduction-group

說明
----

Resource is the base class for all Godot-specific resource types, serving primarily as data containers. Since they inherit from :ref:`RefCounted<class_RefCounted>`, resources are reference-counted and freed when no longer in use. They can also be nested within other resources, and saved on disk. :ref:`PackedScene<class_PackedScene>`, one of the most common :ref:`Object<class_Object>`\ s in a Godot project, is also a resource, uniquely capable of storing and instantiating the :ref:`Node<class_Node>`\ s it contains as many times as desired.

In GDScript, resources can loaded from disk by their :ref:`resource_path<class_Resource_property_resource_path>` using :ref:`@GDScript.load()<class_@GDScript_method_load>` or :ref:`@GDScript.preload()<class_@GDScript_method_preload>`.

The engine keeps a global cache of all loaded resources, referenced by paths (see :ref:`ResourceLoader.has_cached()<class_ResourceLoader_method_has_cached>`). A resource will be cached when loaded for the first time and removed from cache once all references are released. When a resource is cached, subsequent loads using its path will return the cached reference.

\ **Note:** In C#, resources will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free resources that are no longer in use. This means that unused resources will remain in memory for a while before being removed.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`資源 <../tutorials/scripting/resources>`

- :doc:`何時以及如何避免為任何事情使用節點 <../tutorials/best_practices/node_alternatives>`

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_Resource_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Resource_signal_changed>`

當資源發生更改時發出訊號，通常是當其屬性之一被修改時。另見 :ref:`emit_changed()<class_Resource_method_emit_changed>` 。

\ **注意：**\ 自訂資源的屬性不會自動發出此訊號。如有必要，需要建立一個 setter 來觸發。

.. rst-class:: classref-item-separator

----

.. _class_Resource_signal_setup_local_to_scene_requested:

.. rst-class:: classref-signal

**setup_local_to_scene_requested**\ (\ ) :ref:`🔗<class_Resource_signal_setup_local_to_scene_requested>`

**已棄用：** This signal is only emitted when the resource is created. Override :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>` instead.

Emitted by a newly duplicated resource with :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` set to ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Resource_DeepDuplicateMode:

.. rst-class:: classref-enumeration

enum **DeepDuplicateMode**: :ref:`🔗<enum_Resource_DeepDuplicateMode>`

.. _class_Resource_constant_DEEP_DUPLICATE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_NONE** = ``0``

No subresources at all are duplicated. This is useful even in a deep duplication to have all the arrays and dictionaries duplicated but still pointing to the original resources.

.. _class_Resource_constant_DEEP_DUPLICATE_INTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_INTERNAL** = ``1``

Only subresources without a path or with a scene-local path will be duplicated.

.. _class_Resource_constant_DEEP_DUPLICATE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_ALL** = ``2``

Every subresource found will be duplicated, even if it has a non-local path. In other words, even potentially big resources stored separately will be duplicated.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Resource_property_resource_local_to_scene:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resource_local_to_scene** = ``false`` :ref:`🔗<class_Resource_property_resource_local_to_scene>`

.. rst-class:: classref-property-setget

- |void| **set_local_to_scene**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_local_to_scene**\ (\ )

如果為 ``true``\ ，那麼在本地場景的各個實例中，該資源都會被唯一化。在運作時，在某個場景中對該資源的修改不會影響其他實例（見 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`\ ）。

\ **注意：**\ 運作時，在已建立副本的資源上修改該屬性不會有效果。

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_name** = ``""`` :ref:`🔗<class_Resource_property_resource_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_name**\ (\ )

對於這個資源，這是一個選用的名稱。定義後，它的值會顯示以在屬性檢視器面板中表示資源。

對於內建腳本，名稱會顯示為腳本編輯器中分頁名稱的一部分。

\ **注意：** 有些資源格式不支援資源名稱。

您仍然可以在編輯器或透過程式碼設定名稱，但當資源被重新載入時，它會遺失。

例如，只有內建腳本可以有資源名稱，而儲存在獨立檔案中的腳本則不行。

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_path** = ``""`` :ref:`🔗<class_Resource_property_resource_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_path**\ (\ )

該資源的唯一路徑。如果已被保存到磁片，該值將是其檔路徑。如果該資源僅包含在某一個場景中，該值將是 :ref:`PackedScene<class_PackedScene>` 的檔路徑後加上一個唯一識別碼。

\ **注意：**\ 如果之前已經載入了具有相同路徑的資源，手動設定該屬性可能會失敗。如果有必要，請使用 :ref:`take_over_path()<class_Resource_method_take_over_path>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_scene_unique_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_scene_unique_id** :ref:`🔗<class_Resource_property_resource_scene_unique_id>`

.. rst-class:: classref-property-setget

- |void| **set_scene_unique_id**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_unique_id**\ (\ )

A unique identifier relative to the this resource's scene. If left empty, the ID is automatically generated when this resource is saved inside a :ref:`PackedScene<class_PackedScene>`. If the resource is not inside a scene, this property is empty by default.

\ **Note:** When the :ref:`PackedScene<class_PackedScene>` is saved, if multiple resources in the same scene use the same ID, only the earliest resource in the scene hierarchy keeps the original ID. The other resources are assigned new IDs from :ref:`generate_scene_unique_id()<class_Resource_method_generate_scene_unique_id>`.

\ **Note:** Setting this property does not emit the :ref:`changed<class_Resource_signal_changed>` signal.

\ **Warning:** When setting, the ID must only consist of letters, numbers, and underscores. Otherwise, it will fail and default to a randomly generated ID.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Resource_private_method__get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_rid**\ (\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__get_rid>`

可以覆蓋此方法，從而在呼叫 :ref:`get_rid()<class_Resource_method_get_rid>` 時返回自訂 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__reset_state:

.. rst-class:: classref-method

|void| **_reset_state**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__reset_state>`

For resources that store state in non-exported properties, such as via :ref:`Object._validate_property()<class_Object_private_method__validate_property>` or :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`, this method must be implemented to clear them.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__set_path_cache:

.. rst-class:: classref-method

|void| **_set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__set_path_cache>`

Override this method to execute additional logic after :ref:`set_path_cache()<class_Resource_method_set_path_cache>` is called on this object.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__setup_local_to_scene:

.. rst-class:: classref-method

|void| **_setup_local_to_scene**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__setup_local_to_scene>`

Override this method to customize the newly duplicated resource created from :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, if the original's :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` is set to ``true``.

\ **Example:** Set a random ``damage`` value to every local resource from an instantiated scene:

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

Duplicates this resource, returning a new resource with its ``export``\ ed or :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` properties copied from the original.

If ``deep`` is ``false``, a **shallow** copy is returned: nested :ref:`Array<class_Array>`, :ref:`Dictionary<class_Dictionary>`, and **Resource** properties are not duplicated and are shared with the original resource.

If ``deep`` is ``true``, a **deep** copy is returned: all nested arrays, dictionaries, and packed arrays are also duplicated (recursively). Any **Resource** found inside will only be duplicated if it's local, like :ref:`DEEP_DUPLICATE_INTERNAL<class_Resource_constant_DEEP_DUPLICATE_INTERNAL>` used with :ref:`duplicate_deep()<class_Resource_method_duplicate_deep>`.

The following exceptions apply:

- Subresource properties with the :ref:`@GlobalScope.PROPERTY_USAGE_ALWAYS_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_ALWAYS_DUPLICATE>` flag are always duplicated (recursively or not, depending on ``deep``).

- Subresource properties with the :ref:`@GlobalScope.PROPERTY_USAGE_NEVER_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_NEVER_DUPLICATE>` flag are never duplicated.

\ **Note:** For custom resources, this method will fail if :ref:`Object._init()<class_Object_private_method__init>` has been defined with required parameters.

\ **Note:** When duplicating with ``deep`` set to ``true``, each resource found, including the one on which this method is called, will be only duplicated once and referenced as many times as needed in the duplicate. For instance, if you are duplicating resource A that happens to have resource B referenced twice, you'll get a new resource A' referencing a new resource B' twice.

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

發出 :ref:`changed<class_Resource_signal_changed>` 更改訊號。內建資源會自動呼叫此方法。

\ **注意：**\ 對於自訂資源，推薦在發生任何有意義的變化時都呼叫此方法，例如修改屬性時。這樣能夠保證依賴於此資源的自訂 :ref:`Object<class_Object>` 能夠正確更新其屬性。

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

Generates a unique identifier for a resource to be contained inside a :ref:`PackedScene<class_PackedScene>`, based on the current date, time, and a random value. The returned string is only composed of letters (``a`` to ``y``) and numbers (``0`` to ``8``). See also :ref:`resource_scene_unique_id<class_Resource_property_resource_scene_unique_id>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_id_for_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Resource_method_get_id_for_path>`

From the internal cache for scene-unique IDs, returns the ID of this resource for the scene at ``path``. If there is no entry, an empty string is returned. Useful to keep scene-unique IDs the same when implementing a VCS-friendly custom resource format by extending :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` and :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Note:** This method is only implemented when running in an editor context. At runtime, it returns an empty string.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_local_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_local_scene**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_local_scene>`

如果 :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` 為 ``true``\ ，並且該資源是從 :ref:`PackedScene<class_PackedScene>` 實例中載入的，則返回使用該資源的場景的根 :ref:`Node<class_Node>`\ 。否則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_rid>`

返回該資源的 :ref:`RID<class_RID>`\ （或者空的 RID）。許多資源（如 :ref:`Texture2D<class_Texture2D>`\ 、\ :ref:`Mesh<class_Mesh>` 等）是存儲在伺服器（\ :ref:`DisplayServer<class_DisplayServer>`\ 、\ :ref:`RenderingServer<class_RenderingServer>` 等）中的資源的高級抽象，所以這個函式將返回原始的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_is_built_in:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_built_in**\ (\ ) |const| :ref:`🔗<class_Resource_method_is_built_in>`

Returns ``true`` if the resource is saved on disk as a part of another resource's file.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_reset_state:

.. rst-class:: classref-method

|void| **reset_state**\ (\ ) :ref:`🔗<class_Resource_method_reset_state>`

Makes the resource clear its non-exported properties. See also :ref:`_reset_state()<class_Resource_private_method__reset_state>`. Useful when implementing a custom resource format by extending :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` and :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_id_for_path:

.. rst-class:: classref-method

|void| **set_id_for_path**\ (\ path\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_id_for_path>`

In the internal cache for scene-unique IDs, sets the ID of this resource to ``id`` for the scene at ``path``. If ``id`` is empty, the cache entry for ``path`` is cleared. Useful to keep scene-unique IDs the same when implementing a VCS-friendly custom resource format by extending :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` and :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Note:** This method is only implemented when running in an editor context.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_path_cache:

.. rst-class:: classref-method

|void| **set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_path_cache>`

Sets the resource's path to ``path`` without involving the resource cache. Useful for handling :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` values when implementing a custom resource format by extending :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` and :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_setup_local_to_scene:

.. rst-class:: classref-method

|void| **setup_local_to_scene**\ (\ ) :ref:`🔗<class_Resource_method_setup_local_to_scene>`

**已棄用：** This method should only be called internally.

Calls :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>`. If :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` is set to ``true``, this method is automatically called from :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` by the newly duplicated resource within the scene instance.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_take_over_path:

.. rst-class:: classref-method

|void| **take_over_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_take_over_path>`

將 :ref:`resource_path<class_Resource_property_resource_path>` 設定為 ``path``\ ，可能會覆蓋這個路徑對應的已有緩存條目。後續嘗試通過路徑載入覆蓋後的資源時，會返回這個資源。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
