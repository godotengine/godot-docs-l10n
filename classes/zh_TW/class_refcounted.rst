:github_url: hide

.. _class_RefCounted:

RefCounted
==========

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`AESContext<class_AESContext>`, :ref:`AStar2D<class_AStar2D>`, :ref:`AStar3D<class_AStar3D>`, :ref:`AStarGrid2D<class_AStarGrid2D>`, :ref:`AudioEffectInstance<class_AudioEffectInstance>`, :ref:`AudioSample<class_AudioSample>`, :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`, :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`, :ref:`CameraFeed<class_CameraFeed>`, :ref:`CharFXTransform<class_CharFXTransform>`, :ref:`ConfigFile<class_ConfigFile>`, :ref:`Crypto<class_Crypto>`, :ref:`DirAccess<class_DirAccess>`, :ref:`DTLSServer<class_DTLSServer>`, :ref:`EditorContextMenuPlugin<class_EditorContextMenuPlugin>`, :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`, :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`, :ref:`EditorExportPlatform<class_EditorExportPlatform>`, :ref:`EditorExportPlugin<class_EditorExportPlugin>`, :ref:`EditorExportPreset<class_EditorExportPreset>`, :ref:`EditorFeatureProfile<class_EditorFeatureProfile>`, :ref:`EditorFileSystemImportFormatSupportQuery<class_EditorFileSystemImportFormatSupportQuery>`, :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>`, :ref:`EditorResourceConversionPlugin<class_EditorResourceConversionPlugin>`, :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`, :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`, :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>`, :ref:`EditorScenePostImport<class_EditorScenePostImport>`, :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>`, :ref:`EditorScript<class_EditorScript>`, :ref:`EditorTranslationParserPlugin<class_EditorTranslationParserPlugin>`, :ref:`EncodedObjectAsID<class_EncodedObjectAsID>`, :ref:`ENetConnection<class_ENetConnection>`, :ref:`EngineProfiler<class_EngineProfiler>`, :ref:`Expression<class_Expression>`, :ref:`FileAccess<class_FileAccess>`, :ref:`GDScriptTextDocument<class_GDScriptTextDocument>`, :ref:`GDScriptWorkspace<class_GDScriptWorkspace>`, :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`, :ref:`HashingContext<class_HashingContext>`, :ref:`HMACContext<class_HMACContext>`, :ref:`HTTPClient<class_HTTPClient>`, :ref:`ImageFormatLoader<class_ImageFormatLoader>`, :ref:`JavaClass<class_JavaClass>`, :ref:`JavaObject<class_JavaObject>`, :ref:`JavaScriptObject<class_JavaScriptObject>`, :ref:`KinematicCollision2D<class_KinematicCollision2D>`, :ref:`KinematicCollision3D<class_KinematicCollision3D>`, :ref:`Lightmapper<class_Lightmapper>`, :ref:`Logger<class_Logger>`, :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>`, :ref:`MeshDataTool<class_MeshDataTool>`, :ref:`MultiplayerAPI<class_MultiplayerAPI>`, :ref:`Mutex<class_Mutex>`, :ref:`NavigationPathQueryParameters2D<class_NavigationPathQueryParameters2D>`, :ref:`NavigationPathQueryParameters3D<class_NavigationPathQueryParameters3D>`, :ref:`NavigationPathQueryResult2D<class_NavigationPathQueryResult2D>`, :ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>`, :ref:`Node3DGizmo<class_Node3DGizmo>`, :ref:`OggPacketSequencePlayback<class_OggPacketSequencePlayback>`, :ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>`, :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`, :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`, :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`, :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`, :ref:`PacketPeer<class_PacketPeer>`, :ref:`PCKPacker<class_PCKPacker>`, :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`, :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, :ref:`PhysicsTestMotionParameters2D<class_PhysicsTestMotionParameters2D>`, :ref:`PhysicsTestMotionParameters3D<class_PhysicsTestMotionParameters3D>`, :ref:`PhysicsTestMotionResult2D<class_PhysicsTestMotionResult2D>`, :ref:`PhysicsTestMotionResult3D<class_PhysicsTestMotionResult3D>`, :ref:`RandomNumberGenerator<class_RandomNumberGenerator>`, :ref:`RDAccelerationStructureGeometry<class_RDAccelerationStructureGeometry>`, :ref:`RDAccelerationStructureInstance<class_RDAccelerationStructureInstance>`, :ref:`RDAttachmentFormat<class_RDAttachmentFormat>`, :ref:`RDFramebufferPass<class_RDFramebufferPass>`, :ref:`RDHitGroup<class_RDHitGroup>`, :ref:`RDPipelineColorBlendState<class_RDPipelineColorBlendState>`, :ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`, :ref:`RDPipelineDepthStencilState<class_RDPipelineDepthStencilState>`, :ref:`RDPipelineMultisampleState<class_RDPipelineMultisampleState>`, :ref:`RDPipelineRasterizationState<class_RDPipelineRasterizationState>`, :ref:`RDPipelineShader<class_RDPipelineShader>`, :ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`, :ref:`RDSamplerState<class_RDSamplerState>`, :ref:`RDShaderSource<class_RDShaderSource>`, :ref:`RDTextureFormat<class_RDTextureFormat>`, :ref:`RDTextureView<class_RDTextureView>`, :ref:`RDUniform<class_RDUniform>`, :ref:`RDVertexAttribute<class_RDVertexAttribute>`, :ref:`RegEx<class_RegEx>`, :ref:`RegExMatch<class_RegExMatch>`, :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`, :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`, :ref:`Resource<class_Resource>`, :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, :ref:`ResourceImporter<class_ResourceImporter>`, :ref:`SceneState<class_SceneState>`, :ref:`SceneTreeTimer<class_SceneTreeTimer>`, :ref:`ScriptBacktrace<class_ScriptBacktrace>`, :ref:`Semaphore<class_Semaphore>`, :ref:`SkinReference<class_SkinReference>`, :ref:`SocketServer<class_SocketServer>`, :ref:`StreamPeer<class_StreamPeer>`, :ref:`SurfaceTool<class_SurfaceTool>`, :ref:`TextLine<class_TextLine>`, :ref:`TextParagraph<class_TextParagraph>`, :ref:`TextServer<class_TextServer>`, :ref:`Thread<class_Thread>`, :ref:`TLSOptions<class_TLSOptions>`, :ref:`TranslationDomain<class_TranslationDomain>`, :ref:`TriangleMesh<class_TriangleMesh>`, :ref:`Tween<class_Tween>`, :ref:`Tweener<class_Tweener>`, :ref:`UDPServer<class_UDPServer>`, :ref:`UPNP<class_UPNP>`, :ref:`UPNPDevice<class_UPNPDevice>`, :ref:`WeakRef<class_WeakRef>`, :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, :ref:`XMLParser<class_XMLParser>`, :ref:`XRInterface<class_XRInterface>`, :ref:`XRPose<class_XRPose>`, :ref:`XRTracker<class_XRTracker>`, :ref:`ZIPPacker<class_ZIPPacker>`, :ref:`ZIPReader<class_ZIPReader>`

引用計數物件的基底類別。

.. rst-class:: classref-introduction-group

說明
----

所有進行參照計數的物件的基底類別。\ :ref:`Resource<class_Resource>` 和許多其他輔助物件都繼承自這個類。

與其他 :ref:`Object<class_Object>` 型別不同，\ **RefCounted** 內部存在參照計數器，當且僅當自身不再處於使用狀態時就會自動釋放。因此 **RefCounted** 不需要使用 :ref:`Object.free()<class_Object_method_free>` 手動釋放。

陷入循環參照的 **RefCounted** 實例\ **不會**\ 自動釋放。例如某節點持有對實例 ``A`` 的參照，而該實例直接或間接持有對 ``A`` 的參照，則 ``A`` 的參照計數為 2。該節點銷毀後 ``A`` 懸空，參照計數為 1，造成記憶體洩漏。為了防止這種情況，可以使用 :ref:`@GlobalScope.weakref()<class_@GlobalScope_method_weakref>` 將循環中的某一處參照設定為弱參照。

在絕大多數用例中，只需實例化和使用 **RefCounted** 派生型別即可。該類中提供的方法僅適用於進階使用者，如果使用不當可能會導致問題。

\ **注意：**\ 在 C# 中，參照計數的物件在不再使用後不會立即釋放。相反，垃圾收集將定期執行，並釋放不再使用的參照計數物件。這意味著未使用的參照計數物件會在被移除之前在記憶體中保留一段時間。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`何時以及如何避免為任何事情使用節點 <../tutorials/best_practices/node_alternatives>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_reference_count<class_RefCounted_method_get_reference_count>`\ (\ ) |const| |
   +-------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`init_ref<class_RefCounted_method_init_ref>`\ (\ )                               |
   +-------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`reference<class_RefCounted_method_reference>`\ (\ )                             |
   +-------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`unreference<class_RefCounted_method_unreference>`\ (\ )                         |
   +-------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RefCounted_method_get_reference_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_count**\ (\ ) |const| :ref:`🔗<class_RefCounted_method_get_reference_count>`

返回目前的引用計數。

.. rst-class:: classref-item-separator

----

.. _class_RefCounted_method_init_ref:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **init_ref**\ (\ ) :ref:`🔗<class_RefCounted_method_init_ref>`

初始化內部引用計數器。只有在你真的知道你在做什麼的時候才使用這個。

返回初始化是否成功。

.. rst-class:: classref-item-separator

----

.. _class_RefCounted_method_reference:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **reference**\ (\ ) :ref:`🔗<class_RefCounted_method_reference>`

內部引用差異量計數器。只有在你真的知道你在做什麼的時候才使用這個。

如果差異量成功，返回 ``true``\ ，否則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RefCounted_method_unreference:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **unreference**\ (\ ) :ref:`🔗<class_RefCounted_method_unreference>`

將內部參照計數器減一。不清楚有甚麼用就別用。

如果減少成功則回傳 ``true``\ ，否則回傳 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
