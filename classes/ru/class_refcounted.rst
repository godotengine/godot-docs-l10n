:github_url: hide

.. _class_RefCounted:

RefCounted
==========

**Наследует:** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AESContext<class_AESContext>`, :ref:`AStar2D<class_AStar2D>`, :ref:`AStar3D<class_AStar3D>`, :ref:`AStarGrid2D<class_AStarGrid2D>`, :ref:`AudioEffectInstance<class_AudioEffectInstance>`, :ref:`AudioSample<class_AudioSample>`, :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`, :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`, :ref:`CameraFeed<class_CameraFeed>`, :ref:`CharFXTransform<class_CharFXTransform>`, :ref:`ConfigFile<class_ConfigFile>`, :ref:`Crypto<class_Crypto>`, :ref:`DirAccess<class_DirAccess>`, :ref:`DTLSServer<class_DTLSServer>`, :ref:`EditorContextMenuPlugin<class_EditorContextMenuPlugin>`, :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`, :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`, :ref:`EditorExportPlatform<class_EditorExportPlatform>`, :ref:`EditorExportPlugin<class_EditorExportPlugin>`, :ref:`EditorExportPreset<class_EditorExportPreset>`, :ref:`EditorFeatureProfile<class_EditorFeatureProfile>`, :ref:`EditorFileSystemImportFormatSupportQuery<class_EditorFileSystemImportFormatSupportQuery>`, :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>`, :ref:`EditorResourceConversionPlugin<class_EditorResourceConversionPlugin>`, :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`, :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`, :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>`, :ref:`EditorScenePostImport<class_EditorScenePostImport>`, :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>`, :ref:`EditorScript<class_EditorScript>`, :ref:`EditorTranslationParserPlugin<class_EditorTranslationParserPlugin>`, :ref:`EncodedObjectAsID<class_EncodedObjectAsID>`, :ref:`ENetConnection<class_ENetConnection>`, :ref:`EngineProfiler<class_EngineProfiler>`, :ref:`Expression<class_Expression>`, :ref:`FileAccess<class_FileAccess>`, :ref:`GDScriptTextDocument<class_GDScriptTextDocument>`, :ref:`GDScriptWorkspace<class_GDScriptWorkspace>`, :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`, :ref:`HashingContext<class_HashingContext>`, :ref:`HMACContext<class_HMACContext>`, :ref:`HTTPClient<class_HTTPClient>`, :ref:`ImageFormatLoader<class_ImageFormatLoader>`, :ref:`JavaClass<class_JavaClass>`, :ref:`JavaObject<class_JavaObject>`, :ref:`JavaScriptObject<class_JavaScriptObject>`, :ref:`KinematicCollision2D<class_KinematicCollision2D>`, :ref:`KinematicCollision3D<class_KinematicCollision3D>`, :ref:`Lightmapper<class_Lightmapper>`, :ref:`Logger<class_Logger>`, :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>`, :ref:`MeshDataTool<class_MeshDataTool>`, :ref:`MultiplayerAPI<class_MultiplayerAPI>`, :ref:`Mutex<class_Mutex>`, :ref:`NavigationPathQueryParameters2D<class_NavigationPathQueryParameters2D>`, :ref:`NavigationPathQueryParameters3D<class_NavigationPathQueryParameters3D>`, :ref:`NavigationPathQueryResult2D<class_NavigationPathQueryResult2D>`, :ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>`, :ref:`Node3DGizmo<class_Node3DGizmo>`, :ref:`OggPacketSequencePlayback<class_OggPacketSequencePlayback>`, :ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>`, :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`, :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`, :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`, :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`, :ref:`PacketPeer<class_PacketPeer>`, :ref:`PCKPacker<class_PCKPacker>`, :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`, :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, :ref:`PhysicsTestMotionParameters2D<class_PhysicsTestMotionParameters2D>`, :ref:`PhysicsTestMotionParameters3D<class_PhysicsTestMotionParameters3D>`, :ref:`PhysicsTestMotionResult2D<class_PhysicsTestMotionResult2D>`, :ref:`PhysicsTestMotionResult3D<class_PhysicsTestMotionResult3D>`, :ref:`RandomNumberGenerator<class_RandomNumberGenerator>`, :ref:`RDAccelerationStructureGeometry<class_RDAccelerationStructureGeometry>`, :ref:`RDAccelerationStructureInstance<class_RDAccelerationStructureInstance>`, :ref:`RDAttachmentFormat<class_RDAttachmentFormat>`, :ref:`RDFramebufferPass<class_RDFramebufferPass>`, :ref:`RDHitGroup<class_RDHitGroup>`, :ref:`RDPipelineColorBlendState<class_RDPipelineColorBlendState>`, :ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`, :ref:`RDPipelineDepthStencilState<class_RDPipelineDepthStencilState>`, :ref:`RDPipelineMultisampleState<class_RDPipelineMultisampleState>`, :ref:`RDPipelineRasterizationState<class_RDPipelineRasterizationState>`, :ref:`RDPipelineShader<class_RDPipelineShader>`, :ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`, :ref:`RDSamplerState<class_RDSamplerState>`, :ref:`RDShaderSource<class_RDShaderSource>`, :ref:`RDTextureFormat<class_RDTextureFormat>`, :ref:`RDTextureView<class_RDTextureView>`, :ref:`RDUniform<class_RDUniform>`, :ref:`RDVertexAttribute<class_RDVertexAttribute>`, :ref:`RegEx<class_RegEx>`, :ref:`RegExMatch<class_RegExMatch>`, :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`, :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`, :ref:`Resource<class_Resource>`, :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, :ref:`ResourceImporter<class_ResourceImporter>`, :ref:`SceneState<class_SceneState>`, :ref:`SceneTreeTimer<class_SceneTreeTimer>`, :ref:`ScriptBacktrace<class_ScriptBacktrace>`, :ref:`Semaphore<class_Semaphore>`, :ref:`SkinReference<class_SkinReference>`, :ref:`SocketServer<class_SocketServer>`, :ref:`StreamPeer<class_StreamPeer>`, :ref:`SurfaceTool<class_SurfaceTool>`, :ref:`TextLine<class_TextLine>`, :ref:`TextParagraph<class_TextParagraph>`, :ref:`TextServer<class_TextServer>`, :ref:`Thread<class_Thread>`, :ref:`TLSOptions<class_TLSOptions>`, :ref:`TranslationDomain<class_TranslationDomain>`, :ref:`TriangleMesh<class_TriangleMesh>`, :ref:`Tween<class_Tween>`, :ref:`Tweener<class_Tweener>`, :ref:`UDPServer<class_UDPServer>`, :ref:`UPNP<class_UPNP>`, :ref:`UPNPDevice<class_UPNPDevice>`, :ref:`WeakRef<class_WeakRef>`, :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, :ref:`XMLParser<class_XMLParser>`, :ref:`XRInterface<class_XRInterface>`, :ref:`XRPose<class_XRPose>`, :ref:`XRTracker<class_XRTracker>`, :ref:`ZIPPacker<class_ZIPPacker>`, :ref:`ZIPReader<class_ZIPReader>`

Базовый класс для объектов с подсчетом ссылок.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс для любого объекта, который хранит счетчик ссылок. :ref:`Resource<class_Resource>` и многие другие вспомогательные объекты наследуют этот класс.

В отличие от других типов :ref:`Object<class_Object>`, **RefCounted** сохраняют внутренний счетчик ссылок, чтобы они автоматически освобождались, когда больше не используются, и только тогда. Поэтому **RefCounted** не нужно освобождать вручную с помощью :ref:`Object.free()<class_Object_method_free>`.

Экземпляры **RefCounted**, пойманные в циклической ссылке, **не** будут освобождены автоматически. Например, если узел содержит ссылку на экземпляр ``A``, который напрямую или косвенно содержит ссылку на ``A``, счетчик ссылок ``A`` будет равен 2. Уничтожение узла оставит ``A`` висящим со счетчиком ссылок 1, и произойдет утечка памяти. Чтобы предотвратить это, одну из ссылок в цикле можно сделать слабой с помощью :ref:`@GlobalScope.weakref()<class_@GlobalScope_method_weakref>`.

В подавляющем большинстве случаев использования создание экземпляра и использование производных от **RefCounted** типов — это все, что вам нужно сделать. Методы, предоставленные в этом классе, предназначены только для продвинутых пользователей и могут вызывать проблемы при неправильном использовании.

\ **Примечание:** В C# объекты с подсчетом ссылок не будут освобождаться мгновенно после того, как они больше не используются. Вместо этого сборка мусора будет запускаться периодически и освобождать объекты с подсчетом ссылок, которые больше не используются. Это означает, что неиспользуемые объекты будут оставаться в памяти некоторое время, прежде чем будут удалены.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Когда и как избегать использования узлов для всего <../tutorials/best_practices/node_alternatives>`

.. rst-class:: classref-reftable-group

Методы
------------

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

Описания метода
------------------------------

.. _class_RefCounted_method_get_reference_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_count**\ (\ ) |const| :ref:`🔗<class_RefCounted_method_get_reference_count>`

Возвращает текущее количество ссылок.

.. rst-class:: classref-item-separator

----

.. _class_RefCounted_method_init_ref:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **init_ref**\ (\ ) :ref:`🔗<class_RefCounted_method_init_ref>`

Инициализирует внутренний счетчик ссылок. Используйте это только если вы действительно знаете, что делаете.

Возвращает, была ли инициализация успешной.

.. rst-class:: classref-item-separator

----

.. _class_RefCounted_method_reference:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **reference**\ (\ ) :ref:`🔗<class_RefCounted_method_reference>`

Увеличивает внутренний счетчик ссылок. Используйте это только если вы действительно знаете, что делаете.

Возвращает ``true``, если приращение прошло успешно, ``false`` в противном случае.

.. rst-class:: classref-item-separator

----

.. _class_RefCounted_method_unreference:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **unreference**\ (\ ) :ref:`🔗<class_RefCounted_method_unreference>`

Уменьшает внутренний счетчик ссылок. Используйте это, только если вы действительно знаете, что делаете.

Возвращает ``true``, если объект должен быть освобожден после уменьшения, ``false`` в противном случае.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
