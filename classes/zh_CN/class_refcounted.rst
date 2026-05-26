:github_url: hide

.. _class_RefCounted:

RefCounted
==========

**继承：** :ref:`Object<class_Object>`

**派生：** :ref:`AESContext<class_AESContext>`, :ref:`AStar2D<class_AStar2D>`, :ref:`AStar3D<class_AStar3D>`, :ref:`AStarGrid2D<class_AStarGrid2D>`, :ref:`AudioEffectInstance<class_AudioEffectInstance>`, :ref:`AudioSample<class_AudioSample>`, :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`, :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`, :ref:`CameraFeed<class_CameraFeed>`, :ref:`CharFXTransform<class_CharFXTransform>`, :ref:`ConfigFile<class_ConfigFile>`, :ref:`Crypto<class_Crypto>`, :ref:`DirAccess<class_DirAccess>`, :ref:`DTLSServer<class_DTLSServer>`, :ref:`EditorContextMenuPlugin<class_EditorContextMenuPlugin>`, :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`, :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`, :ref:`EditorExportPlatform<class_EditorExportPlatform>`, :ref:`EditorExportPlugin<class_EditorExportPlugin>`, :ref:`EditorExportPreset<class_EditorExportPreset>`, :ref:`EditorFeatureProfile<class_EditorFeatureProfile>`, :ref:`EditorFileSystemImportFormatSupportQuery<class_EditorFileSystemImportFormatSupportQuery>`, :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>`, :ref:`EditorResourceConversionPlugin<class_EditorResourceConversionPlugin>`, :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`, :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`, :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>`, :ref:`EditorScenePostImport<class_EditorScenePostImport>`, :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>`, :ref:`EditorScript<class_EditorScript>`, :ref:`EditorTranslationParserPlugin<class_EditorTranslationParserPlugin>`, :ref:`EncodedObjectAsID<class_EncodedObjectAsID>`, :ref:`ENetConnection<class_ENetConnection>`, :ref:`EngineProfiler<class_EngineProfiler>`, :ref:`Expression<class_Expression>`, :ref:`FileAccess<class_FileAccess>`, :ref:`GDScriptTextDocument<class_GDScriptTextDocument>`, :ref:`GDScriptWorkspace<class_GDScriptWorkspace>`, :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`, :ref:`HashingContext<class_HashingContext>`, :ref:`HMACContext<class_HMACContext>`, :ref:`HTTPClient<class_HTTPClient>`, :ref:`ImageFormatLoader<class_ImageFormatLoader>`, :ref:`JavaClass<class_JavaClass>`, :ref:`JavaObject<class_JavaObject>`, :ref:`JavaScriptObject<class_JavaScriptObject>`, :ref:`KinematicCollision2D<class_KinematicCollision2D>`, :ref:`KinematicCollision3D<class_KinematicCollision3D>`, :ref:`Lightmapper<class_Lightmapper>`, :ref:`Logger<class_Logger>`, :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>`, :ref:`MeshDataTool<class_MeshDataTool>`, :ref:`MultiplayerAPI<class_MultiplayerAPI>`, :ref:`Mutex<class_Mutex>`, :ref:`NavigationPathQueryParameters2D<class_NavigationPathQueryParameters2D>`, :ref:`NavigationPathQueryParameters3D<class_NavigationPathQueryParameters3D>`, :ref:`NavigationPathQueryResult2D<class_NavigationPathQueryResult2D>`, :ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>`, :ref:`Node3DGizmo<class_Node3DGizmo>`, :ref:`OggPacketSequencePlayback<class_OggPacketSequencePlayback>`, :ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>`, :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`, :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`, :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`, :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`, :ref:`PacketPeer<class_PacketPeer>`, :ref:`PCKPacker<class_PCKPacker>`, :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`, :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, :ref:`PhysicsTestMotionParameters2D<class_PhysicsTestMotionParameters2D>`, :ref:`PhysicsTestMotionParameters3D<class_PhysicsTestMotionParameters3D>`, :ref:`PhysicsTestMotionResult2D<class_PhysicsTestMotionResult2D>`, :ref:`PhysicsTestMotionResult3D<class_PhysicsTestMotionResult3D>`, :ref:`RandomNumberGenerator<class_RandomNumberGenerator>`, :ref:`RDAccelerationStructureGeometry<class_RDAccelerationStructureGeometry>`, :ref:`RDAccelerationStructureInstance<class_RDAccelerationStructureInstance>`, :ref:`RDAttachmentFormat<class_RDAttachmentFormat>`, :ref:`RDFramebufferPass<class_RDFramebufferPass>`, :ref:`RDHitGroup<class_RDHitGroup>`, :ref:`RDPipelineColorBlendState<class_RDPipelineColorBlendState>`, :ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`, :ref:`RDPipelineDepthStencilState<class_RDPipelineDepthStencilState>`, :ref:`RDPipelineMultisampleState<class_RDPipelineMultisampleState>`, :ref:`RDPipelineRasterizationState<class_RDPipelineRasterizationState>`, :ref:`RDPipelineShader<class_RDPipelineShader>`, :ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`, :ref:`RDSamplerState<class_RDSamplerState>`, :ref:`RDShaderSource<class_RDShaderSource>`, :ref:`RDTextureFormat<class_RDTextureFormat>`, :ref:`RDTextureView<class_RDTextureView>`, :ref:`RDUniform<class_RDUniform>`, :ref:`RDVertexAttribute<class_RDVertexAttribute>`, :ref:`RegEx<class_RegEx>`, :ref:`RegExMatch<class_RegExMatch>`, :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`, :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`, :ref:`Resource<class_Resource>`, :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, :ref:`ResourceImporter<class_ResourceImporter>`, :ref:`SceneState<class_SceneState>`, :ref:`SceneTreeTimer<class_SceneTreeTimer>`, :ref:`ScriptBacktrace<class_ScriptBacktrace>`, :ref:`Semaphore<class_Semaphore>`, :ref:`SkinReference<class_SkinReference>`, :ref:`SocketServer<class_SocketServer>`, :ref:`StreamPeer<class_StreamPeer>`, :ref:`SurfaceTool<class_SurfaceTool>`, :ref:`TextLine<class_TextLine>`, :ref:`TextParagraph<class_TextParagraph>`, :ref:`TextServer<class_TextServer>`, :ref:`Thread<class_Thread>`, :ref:`TLSOptions<class_TLSOptions>`, :ref:`TranslationDomain<class_TranslationDomain>`, :ref:`TriangleMesh<class_TriangleMesh>`, :ref:`Tween<class_Tween>`, :ref:`Tweener<class_Tweener>`, :ref:`UDPServer<class_UDPServer>`, :ref:`UPNP<class_UPNP>`, :ref:`UPNPDevice<class_UPNPDevice>`, :ref:`WeakRef<class_WeakRef>`, :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, :ref:`XMLParser<class_XMLParser>`, :ref:`XRInterface<class_XRInterface>`, :ref:`XRPose<class_XRPose>`, :ref:`XRTracker<class_XRTracker>`, :ref:`ZIPPacker<class_ZIPPacker>`, :ref:`ZIPReader<class_ZIPReader>`

引用计数对象的基类。

.. rst-class:: classref-introduction-group

描述
----

所有进行引用计数的对象的基类。\ :ref:`Resource<class_Resource>` 和许多其他辅助对象都继承自这个类。

与其他 :ref:`Object<class_Object>` 类型不同，\ **RefCounted** 内部存在引用计数器，当且仅当自身不再处于使用状态时就会自动释放。因此 **RefCounted** 不需要使用 :ref:`Object.free()<class_Object_method_free>` 手动释放。

陷入循环引用的 **RefCounted** 实例\ **不会**\ 自动释放。例如某节点持有对实例 ``A`` 的引用，而该实例直接或间接持有对 ``A`` 的引用，则 ``A`` 的引用计数为 2。该节点销毁后 ``A`` 悬空，引用计数为 1，造成内存泄漏。为了防止这种情况，可以使用 :ref:`@GlobalScope.weakref()<class_@GlobalScope_method_weakref>` 将循环中的某一处引用设置为弱引用。

在绝大多数用例中，只需实例化和使用 **RefCounted** 派生类型即可。该类中提供的方法仅适用于高级用户，如果使用不当可能会导致问题。

\ **注意：**\ 在 C# 中，引用计数的对象在不再使用后不会立即释放。相反，垃圾收集将定期运行，并释放不再使用的引用计数对象。这意味着未使用的引用计数对象会在被移除之前在内存中保留一段时间。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`何时以及如何避免为任何事情使用节点 <../tutorials/best_practices/node_alternatives>`

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

方法说明
--------

.. _class_RefCounted_method_get_reference_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_count**\ (\ ) |const| :ref:`🔗<class_RefCounted_method_get_reference_count>`

返回当前的引用计数。

.. rst-class:: classref-item-separator

----

.. _class_RefCounted_method_init_ref:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **init_ref**\ (\ ) :ref:`🔗<class_RefCounted_method_init_ref>`

初始化内部引用计数器。不清楚有什么用就别用。

返回初始化是否成功。

.. rst-class:: classref-item-separator

----

.. _class_RefCounted_method_reference:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **reference**\ (\ ) :ref:`🔗<class_RefCounted_method_reference>`

将内部引用计数器加一。不清楚有什么用就别用。

如果增加成功则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RefCounted_method_unreference:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **unreference**\ (\ ) :ref:`🔗<class_RefCounted_method_unreference>`

将内部引用计数器减一。不清楚有什么用就别用。

如果减少成功则返回 ``true``\ ，否则返回 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
