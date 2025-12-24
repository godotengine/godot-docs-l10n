:github_url: hide

.. _class_RefCounted:

RefCounted
==========

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`AESContext<class_AESContext>`, :ref:`AStar2D<class_AStar2D>`, :ref:`AStar3D<class_AStar3D>`, :ref:`AStarGrid2D<class_AStarGrid2D>`, :ref:`AudioEffectInstance<class_AudioEffectInstance>`, :ref:`AudioSample<class_AudioSample>`, :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`, :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`, :ref:`CameraFeed<class_CameraFeed>`, :ref:`CharFXTransform<class_CharFXTransform>`, :ref:`ConfigFile<class_ConfigFile>`, :ref:`Crypto<class_Crypto>`, :ref:`DirAccess<class_DirAccess>`, :ref:`DTLSServer<class_DTLSServer>`, :ref:`EditorContextMenuPlugin<class_EditorContextMenuPlugin>`, :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`, :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`, :ref:`EditorExportPlatform<class_EditorExportPlatform>`, :ref:`EditorExportPlugin<class_EditorExportPlugin>`, :ref:`EditorExportPreset<class_EditorExportPreset>`, :ref:`EditorFeatureProfile<class_EditorFeatureProfile>`, :ref:`EditorFileSystemImportFormatSupportQuery<class_EditorFileSystemImportFormatSupportQuery>`, :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>`, :ref:`EditorResourceConversionPlugin<class_EditorResourceConversionPlugin>`, :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`, :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`, :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>`, :ref:`EditorScenePostImport<class_EditorScenePostImport>`, :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>`, :ref:`EditorScript<class_EditorScript>`, :ref:`EditorTranslationParserPlugin<class_EditorTranslationParserPlugin>`, :ref:`EncodedObjectAsID<class_EncodedObjectAsID>`, :ref:`ENetConnection<class_ENetConnection>`, :ref:`EngineProfiler<class_EngineProfiler>`, :ref:`Expression<class_Expression>`, :ref:`FileAccess<class_FileAccess>`, :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`, :ref:`HashingContext<class_HashingContext>`, :ref:`HMACContext<class_HMACContext>`, :ref:`HTTPClient<class_HTTPClient>`, :ref:`ImageFormatLoader<class_ImageFormatLoader>`, :ref:`JavaClass<class_JavaClass>`, :ref:`JavaObject<class_JavaObject>`, :ref:`JavaScriptObject<class_JavaScriptObject>`, :ref:`KinematicCollision2D<class_KinematicCollision2D>`, :ref:`KinematicCollision3D<class_KinematicCollision3D>`, :ref:`Lightmapper<class_Lightmapper>`, :ref:`Logger<class_Logger>`, :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>`, :ref:`MeshDataTool<class_MeshDataTool>`, :ref:`MultiplayerAPI<class_MultiplayerAPI>`, :ref:`Mutex<class_Mutex>`, :ref:`NavigationPathQueryParameters2D<class_NavigationPathQueryParameters2D>`, :ref:`NavigationPathQueryParameters3D<class_NavigationPathQueryParameters3D>`, :ref:`NavigationPathQueryResult2D<class_NavigationPathQueryResult2D>`, :ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>`, :ref:`Node3DGizmo<class_Node3DGizmo>`, :ref:`OggPacketSequencePlayback<class_OggPacketSequencePlayback>`, :ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>`, :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`, :ref:`PacketPeer<class_PacketPeer>`, :ref:`PCKPacker<class_PCKPacker>`, :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`, :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, :ref:`PhysicsTestMotionParameters2D<class_PhysicsTestMotionParameters2D>`, :ref:`PhysicsTestMotionParameters3D<class_PhysicsTestMotionParameters3D>`, :ref:`PhysicsTestMotionResult2D<class_PhysicsTestMotionResult2D>`, :ref:`PhysicsTestMotionResult3D<class_PhysicsTestMotionResult3D>`, :ref:`RandomNumberGenerator<class_RandomNumberGenerator>`, :ref:`RDAttachmentFormat<class_RDAttachmentFormat>`, :ref:`RDFramebufferPass<class_RDFramebufferPass>`, :ref:`RDPipelineColorBlendState<class_RDPipelineColorBlendState>`, :ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`, :ref:`RDPipelineDepthStencilState<class_RDPipelineDepthStencilState>`, :ref:`RDPipelineMultisampleState<class_RDPipelineMultisampleState>`, :ref:`RDPipelineRasterizationState<class_RDPipelineRasterizationState>`, :ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`, :ref:`RDSamplerState<class_RDSamplerState>`, :ref:`RDShaderSource<class_RDShaderSource>`, :ref:`RDTextureFormat<class_RDTextureFormat>`, :ref:`RDTextureView<class_RDTextureView>`, :ref:`RDUniform<class_RDUniform>`, :ref:`RDVertexAttribute<class_RDVertexAttribute>`, :ref:`RegEx<class_RegEx>`, :ref:`RegExMatch<class_RegExMatch>`, :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`, :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`, :ref:`Resource<class_Resource>`, :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, :ref:`ResourceImporter<class_ResourceImporter>`, :ref:`SceneState<class_SceneState>`, :ref:`SceneTreeTimer<class_SceneTreeTimer>`, :ref:`ScriptBacktrace<class_ScriptBacktrace>`, :ref:`Semaphore<class_Semaphore>`, :ref:`SkinReference<class_SkinReference>`, :ref:`StreamPeer<class_StreamPeer>`, :ref:`SurfaceTool<class_SurfaceTool>`, :ref:`TCPServer<class_TCPServer>`, :ref:`TextLine<class_TextLine>`, :ref:`TextParagraph<class_TextParagraph>`, :ref:`TextServer<class_TextServer>`, :ref:`Thread<class_Thread>`, :ref:`TLSOptions<class_TLSOptions>`, :ref:`TranslationDomain<class_TranslationDomain>`, :ref:`TriangleMesh<class_TriangleMesh>`, :ref:`Tween<class_Tween>`, :ref:`Tweener<class_Tweener>`, :ref:`UDPServer<class_UDPServer>`, :ref:`UPNP<class_UPNP>`, :ref:`UPNPDevice<class_UPNPDevice>`, :ref:`WeakRef<class_WeakRef>`, :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, :ref:`XMLParser<class_XMLParser>`, :ref:`XRInterface<class_XRInterface>`, :ref:`XRPose<class_XRPose>`, :ref:`XRTracker<class_XRTracker>`, :ref:`ZIPPacker<class_ZIPPacker>`, :ref:`ZIPReader<class_ZIPReader>`

引用計數物件的基底類別。

.. rst-class:: classref-introduction-group

說明
----

Base class for any object that keeps a reference count. :ref:`Resource<class_Resource>` and many other helper objects inherit this class.

Unlike other :ref:`Object<class_Object>` types, **RefCounted**\ s keep an internal reference counter so that they are automatically released when no longer in use, and only then. **RefCounted**\ s therefore do not need to be freed manually with :ref:`Object.free()<class_Object_method_free>`.

\ **RefCounted** instances caught in a cyclic reference will **not** be freed automatically. For example, if a node holds a reference to instance ``A``, which directly or indirectly holds a reference back to ``A``, ``A``'s reference count will be 2. Destruction of the node will leave ``A`` dangling with a reference count of 1, and there will be a memory leak. To prevent this, one of the references in the cycle can be made weak with :ref:`@GlobalScope.weakref()<class_@GlobalScope_method_weakref>`.

In the vast majority of use cases, instantiating and using **RefCounted**-derived types is all you need to do. The methods provided in this class are only for advanced users, and can cause issues if misused.

\ **Note:** In C#, reference-counted objects will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free reference-counted objects that are no longer in use. This means that unused ones will remain in memory for a while before being removed.

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

Decrements the internal reference counter. Use this only if you really know what you are doing.

Returns ``true`` if the object should be freed after the decrement, ``false`` otherwise.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
