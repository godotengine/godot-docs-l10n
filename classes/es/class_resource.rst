:github_url: hide

.. _class_Resource:

Resource
========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`Animation<class_Animation>`, :ref:`AnimationLibrary<class_AnimationLibrary>`, :ref:`AnimationNode<class_AnimationNode>`, :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>`, :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`, :ref:`AudioBusLayout<class_AudioBusLayout>`, :ref:`AudioEffect<class_AudioEffect>`, :ref:`AudioStream<class_AudioStream>`, :ref:`BitMap<class_BitMap>`, :ref:`BoneMap<class_BoneMap>`, :ref:`ButtonGroup<class_ButtonGroup>`, :ref:`CameraAttributes<class_CameraAttributes>`, :ref:`ColorPalette<class_ColorPalette>`, :ref:`Compositor<class_Compositor>`, :ref:`CompositorEffect<class_CompositorEffect>`, :ref:`CryptoKey<class_CryptoKey>`, :ref:`Curve<class_Curve>`, :ref:`Curve2D<class_Curve2D>`, :ref:`Curve3D<class_Curve3D>`, :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`, :ref:`EditorSettings<class_EditorSettings>`, :ref:`Environment<class_Environment>`, :ref:`FoldableGroup<class_FoldableGroup>`, :ref:`Font<class_Font>`, :ref:`GDExtension<class_GDExtension>`, :ref:`GLTFAccessor<class_GLTFAccessor>`, :ref:`GLTFAnimation<class_GLTFAnimation>`, :ref:`GLTFBufferView<class_GLTFBufferView>`, :ref:`GLTFCamera<class_GLTFCamera>`, :ref:`GLTFDocument<class_GLTFDocument>`, :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, :ref:`GLTFLight<class_GLTFLight>`, :ref:`GLTFMesh<class_GLTFMesh>`, :ref:`GLTFNode<class_GLTFNode>`, :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`, :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>`, :ref:`GLTFSkeleton<class_GLTFSkeleton>`, :ref:`GLTFSkin<class_GLTFSkin>`, :ref:`GLTFSpecGloss<class_GLTFSpecGloss>`, :ref:`GLTFState<class_GLTFState>`, :ref:`GLTFTexture<class_GLTFTexture>`, :ref:`GLTFTextureSampler<class_GLTFTextureSampler>`, :ref:`Gradient<class_Gradient>`, :ref:`Image<class_Image>`, :ref:`ImporterMesh<class_ImporterMesh>`, :ref:`InputEvent<class_InputEvent>`, :ref:`JointLimitation3D<class_JointLimitation3D>`, :ref:`JSON<class_JSON>`, :ref:`LabelSettings<class_LabelSettings>`, :ref:`LightmapGIData<class_LightmapGIData>`, :ref:`Material<class_Material>`, :ref:`Mesh<class_Mesh>`, :ref:`MeshLibrary<class_MeshLibrary>`, :ref:`MissingResource<class_MissingResource>`, :ref:`MultiMesh<class_MultiMesh>`, :ref:`NavigationMesh<class_NavigationMesh>`, :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`, :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, :ref:`NavigationPolygon<class_NavigationPolygon>`, :ref:`Noise<class_Noise>`, :ref:`Occluder3D<class_Occluder3D>`, :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`, :ref:`OggPacketSequence<class_OggPacketSequence>`, :ref:`OpenXRAction<class_OpenXRAction>`, :ref:`OpenXRActionMap<class_OpenXRActionMap>`, :ref:`OpenXRActionSet<class_OpenXRActionSet>`, :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`, :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`, :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`, :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`, :ref:`PackedDataContainer<class_PackedDataContainer>`, :ref:`PackedScene<class_PackedScene>`, :ref:`PhysicsMaterial<class_PhysicsMaterial>`, :ref:`PolygonPathFinder<class_PolygonPathFinder>`, :ref:`RDShaderFile<class_RDShaderFile>`, :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, :ref:`RichTextEffect<class_RichTextEffect>`, :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`, :ref:`Script<class_Script>`, :ref:`Shader<class_Shader>`, :ref:`ShaderInclude<class_ShaderInclude>`, :ref:`Shape2D<class_Shape2D>`, :ref:`Shape3D<class_Shape3D>`, :ref:`Shortcut<class_Shortcut>`, :ref:`SkeletonModification2D<class_SkeletonModification2D>`, :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, :ref:`SkeletonProfile<class_SkeletonProfile>`, :ref:`Skin<class_Skin>`, :ref:`Sky<class_Sky>`, :ref:`SpriteFrames<class_SpriteFrames>`, :ref:`StyleBox<class_StyleBox>`, :ref:`SyntaxHighlighter<class_SyntaxHighlighter>`, :ref:`Texture<class_Texture>`, :ref:`Theme<class_Theme>`, :ref:`TileMapPattern<class_TileMapPattern>`, :ref:`TileSet<class_TileSet>`, :ref:`TileSetSource<class_TileSetSource>`, :ref:`Translation<class_Translation>`, :ref:`VideoStream<class_VideoStream>`, :ref:`VideoStreamPlayback<class_VideoStreamPlayback>`, :ref:`VisualShaderNode<class_VisualShaderNode>`, :ref:`VoxelGIData<class_VoxelGIData>`, :ref:`World2D<class_World2D>`, :ref:`World3D<class_World3D>`, :ref:`X509Certificate<class_X509Certificate>`

Clase base para objetos serializables.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Resource es la clase base para todos los tipos de recursos específicos de Godot, sirviendo principalmente como contenedores de datos. Ya que heredan de :ref:`RefCounted<class_RefCounted>`, los recursos son contados por referencia y liberados cuando ya no están en uso. También pueden anidarse dentro de otros recursos, y guardarse en el disco. :ref:`PackedScene<class_PackedScene>`, uno de los :ref:`Object<class_Object>`\ s más comunes en un proyecto de Godot, también es un recurso, únicamente capaz de almacenar e instanciar los :ref:`Node<class_Node>`\ s que contiene tantas veces como se desee.

En GDScript, los recursos pueden ser cargados desde el disco por su :ref:`resource_path<class_Resource_property_resource_path>` usando :ref:`@GDScript.load()<class_@GDScript_method_load>` o :ref:`@GDScript.preload()<class_@GDScript_method_preload>`.

El motor mantiene un caché global de todos los recursos cargados, referenciados por rutas (ver :ref:`ResourceLoader.has_cached()<class_ResourceLoader_method_has_cached>`). Un recurso será cacheado cuando se cargue por primera vez y se removerá del caché una vez que todas las referencias sean liberadas. Cuando un recurso está en caché, las cargas subsiguientes usando su ruta devolverán la referencia en caché.

\ **Nota:** En C#, los recursos no se liberarán instantáneamente después de que ya no estén en uso. En cambio, la recolección de basura se ejecutará periódicamente y liberará los recursos que ya no estén en uso. Esto significa que los recursos no utilizados permanecerán en la memoria durante un tiempo antes de ser eliminados.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Recursos <../tutorials/scripting/resources>`

- :doc:`Cuándo y cómo evitar el uso de nodos para todo <../tutorials/best_practices/node_alternatives>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_Resource_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Resource_signal_changed>`

Emitida cuando el recurso cambia, normalmente cuando se modifica una de sus propiedades. Véase también :ref:`emit_changed()<class_Resource_method_emit_changed>`.

\ **Nota:** Esta señal no se emite automáticamente para las propiedades de los recursos personalizados. Si es necesario, se debe crear un setter para emitir la señal.

.. rst-class:: classref-item-separator

----

.. _class_Resource_signal_setup_local_to_scene_requested:

.. rst-class:: classref-signal

**setup_local_to_scene_requested**\ (\ ) :ref:`🔗<class_Resource_signal_setup_local_to_scene_requested>`

**Obsoleto:** This signal is only emitted when the resource is created. Override :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>` instead.

Emitido por un recurso recién duplicado con :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` establecido a ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

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

Solo se duplicarán los subrecursos sin una ruta o con una ruta local de la escena.

.. _class_Resource_constant_DEEP_DUPLICATE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_ALL** = ``2``

Cada subrecurso encontrado será duplicado, incluso si tiene una ruta no local. En otras palabras, incluso los recursos potencialmente grandes almacenados por separado serán duplicados.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Resource_property_resource_local_to_scene:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resource_local_to_scene** = ``false`` :ref:`🔗<class_Resource_property_resource_local_to_scene>`

.. rst-class:: classref-property-setget

- |void| **set_local_to_scene**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_local_to_scene**\ (\ )

Si es ``true``, el recurso es duplicado para cada instancia de todas las escenas que lo usen. En tiempo de ejecución, el recurso puede ser modificado en una escena sin afectar a otras instancias (véase :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`).

\ **Nota:** Cambiar esta propiedad en tiempo de ejecución no tiene efecto en los recursos duplicados ya creados.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_name** = ``""`` :ref:`🔗<class_Resource_property_resource_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_name**\ (\ )

Un nombre opcional para este recurso. Cuando se define, su valor se muestra para representar el recurso en el panel Inspector. Para los scripts incorporados, el nombre se muestra como parte del nombre de la pestaña en el editor de scripts.

\ **Nota:** Algunos formatos de recursos no soportan nombres de recursos. Aún puedes establecer el nombre en el editor o a través de código, pero se perderá cuando el recurso se recargue. Por ejemplo, solo los scripts incorporados pueden tener un nombre de recurso, mientras que los scripts almacenados en archivos separados no pueden.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_path** = ``""`` :ref:`🔗<class_Resource_property_resource_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_path**\ (\ )

La ruta única a este recurso. Si se ha guardado en disco, el valor será su ruta de archivo. Si el recurso está contenido exclusivamente dentro de una escena, el valor será la ruta de archivo de la :ref:`PackedScene<class_PackedScene>`, seguida de un identificador único.

\ **Nota:** Establecer esta propiedad manualmente puede fallar si un recurso con la misma ruta ya ha sido cargado previamente. Si es necesario, usa :ref:`take_over_path()<class_Resource_method_take_over_path>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_scene_unique_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_scene_unique_id** :ref:`🔗<class_Resource_property_resource_scene_unique_id>`

.. rst-class:: classref-property-setget

- |void| **set_scene_unique_id**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_unique_id**\ (\ )

Un identificador único relativo a la escena de este recurso. Si se deja vacío, el ID se genera automáticamente cuando este recurso se guarda dentro de un :ref:`PackedScene<class_PackedScene>`. Si el recurso no está dentro de una escena, esta propiedad está vacía por defecto.

\ **Nota:** Cuando se guarda el :ref:`PackedScene<class_PackedScene>`, si varios recursos de la misma escena utilizan el mismo ID, solo el primer recurso de la jerarquía de la escena conserva el ID original. A los demás recursos se les asignan nuevos ID desde :ref:`generate_scene_unique_id()<class_Resource_method_generate_scene_unique_id>`.

\ **Nota:** El establecimiento de esta propiedad no emite la señal :ref:`changed<class_Resource_signal_changed>`.

\ **Advertencia:** Al establecerlo, el ID solo debe consistir en letras, números y guiones bajos. De lo contrario, fallará y por defecto se generará un ID aleatorio.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Resource_private_method__get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_rid**\ (\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__get_rid>`

Sobrescribe este método para devolver un :ref:`RID<class_RID>` personalizado cuando se llama a :ref:`get_rid()<class_Resource_method_get_rid>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__reset_state:

.. rst-class:: classref-method

|void| **_reset_state**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__reset_state>`

Para los recursos que almacenan el estado en propiedades no exportadas, como a través de :ref:`Object._validate_property()<class_Object_private_method__validate_property>` o :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`, este método debe ser implementado para borrarlas.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__set_path_cache:

.. rst-class:: classref-method

|void| **_set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__set_path_cache>`

Sobrescribe este método para ejecutar lógica adicional después de que se llame a :ref:`set_path_cache()<class_Resource_method_set_path_cache>` en este objeto.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__setup_local_to_scene:

.. rst-class:: classref-method

|void| **_setup_local_to_scene**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__setup_local_to_scene>`

Sobrescribe este método para personalizar el recurso recién duplicado creado a partir de :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, si el :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` del original está establecido en ``true``.

\ **Ejemplo:** Establece un valor ``damage`` aleatorio para cada recurso local de una escena instanciada:

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

Duplica este recurso, devolviendo un nuevo recurso con sus propiedades ``export``\ adas o :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` copiadas del original.

Si ``deep`` es ``false``, se devuelve una copia **superficial**: las propiedades anidadas :ref:`Array<class_Array>`, :ref:`Dictionary<class_Dictionary>` y **Resource** no se duplican y se comparten con el recurso original.

Si ``deep`` es ``true``, se devuelve una copia **profunda**: todos los arrays, diccionarios y arrays empaquetados anidados también se duplican (recursivamente). Cualquier **Resource** encontrado dentro solo se duplicará si es local, como :ref:`DEEP_DUPLICATE_INTERNAL<class_Resource_constant_DEEP_DUPLICATE_INTERNAL>` utilizado con :ref:`duplicate_deep()<class_Resource_method_duplicate_deep>`.

Se aplican las siguientes excepciones:

- Las propiedades de subrecursos con la bandera :ref:`@GlobalScope.PROPERTY_USAGE_ALWAYS_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_ALWAYS_DUPLICATE>` siempre se duplican (recursivamente o no, dependiendo de ``deep``).

- Las propiedades de subrecursos con la bandera :ref:`@GlobalScope.PROPERTY_USAGE_NEVER_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_NEVER_DUPLICATE>` nunca se duplican.

\ **Nota:** Para recursos personalizados, este método fallará si :ref:`Object._init()<class_Object_private_method__init>` ha sido definido con parámetros requeridos.

\ **Nota:** Al duplicar con ``deep`` establecido en ``true``, cada recurso encontrado, incluido aquel sobre el que se llama a este método, se duplicará solo una vez y se referenciará tantas veces como sea necesario en el duplicado. Por ejemplo, si estás duplicando el recurso A que tiene el recurso B referenciado dos veces, obtendrás un nuevo recurso A' que referencia a un nuevo recurso B' dos veces.

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

Emite la señal :ref:`changed<class_Resource_signal_changed>`. Este método se llama automáticamente para algunos recursos incorporados.

\ **Nota:** Para los recursos personalizados, se recomienda llamar a este método siempre que se produzca un cambio significativo, como una propiedad modificada. Esto asegura que los :ref:`Object<class_Object>`\ s personalizados que dependen del recurso se actualicen correctamente.

::

    var daño:
        set(nuevo_valor):
            if daño != nuevo_valor:
                damage = nuevo_valor
                emit_changed()

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_generate_scene_unique_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **generate_scene_unique_id**\ (\ ) |static| :ref:`🔗<class_Resource_method_generate_scene_unique_id>`

Genera un identificador único para un recurso que se contendrá dentro de una :ref:`PackedScene<class_PackedScene>`, basado en la fecha, hora y un valor aleatorio actuales. La string devuelta se compone únicamente de letras (``a`` a ``y``) y números (``0`` a ``8``). Véase también :ref:`resource_scene_unique_id<class_Resource_property_resource_scene_unique_id>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_id_for_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Resource_method_get_id_for_path>`

Desde la caché interna para ID únicos de escena, devuelve el ID de este recurso para la escena en ``path``. Si no hay ninguna entrada, se devuelve una string vacía. Útil para mantener los ID únicos de escena iguales al implementar un formato de recurso personalizado compatible con VCS extendiendo :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` y :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Nota:** Este método solo se implementa cuando se ejecuta en un contexto de editor. En tiempo de ejecución, devuelve una string vacía.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_local_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_local_scene**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_local_scene>`

Si :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` está establecido en ``true`` y el recurso se ha cargado desde una instanciación de :ref:`PackedScene<class_PackedScene>`, devuelve el :ref:`Node<class_Node>` raíz de la escena donde se utiliza este recurso. De lo contrario, devuelve ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_rid>`

Devuelve el :ref:`RID<class_RID>` de este recurso (o un :ref:`RID<class_RID>` vacío). Muchos recursos (como :ref:`Texture2D<class_Texture2D>`, :ref:`Mesh<class_Mesh>`, etc.) son abstracciones de alto nivel de recursos almacenados en un servidor especializado (:ref:`DisplayServer<class_DisplayServer>`, :ref:`RenderingServer<class_RenderingServer>`, etc.), por lo que esta función devolverá el :ref:`RID<class_RID>` original.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_is_built_in:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_built_in**\ (\ ) |const| :ref:`🔗<class_Resource_method_is_built_in>`

Devuelve ``true`` si el recurso está guardado en el disco como parte del archivo de otro recurso.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_reset_state:

.. rst-class:: classref-method

|void| **reset_state**\ (\ ) :ref:`🔗<class_Resource_method_reset_state>`

Hace que el recurso borre sus propiedades no exportadas. Véase también :ref:`_reset_state()<class_Resource_private_method__reset_state>`. Útil al implementar un formato de recurso personalizado extendiendo :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` y :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_id_for_path:

.. rst-class:: classref-method

|void| **set_id_for_path**\ (\ path\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_id_for_path>`

En la caché interna para ID únicos de escena, establece el ID de este recurso a ``id`` para la escena en ``path``. Si ``id`` está vacío, la entrada de caché para ``path`` se borra. Útil para mantener los ID únicos de escena iguales al implementar un formato de recurso personalizado amigable con VCS extendiendo :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` y :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Nota:** Este método solo está implementado cuando se ejecuta en un contexto de editor.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_path_cache:

.. rst-class:: classref-method

|void| **set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_path_cache>`

Establece la ruta del recurso a ``path`` sin involucrar la caché de recursos. Útil para manejar los valores de :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` al implementar un formato de recurso personalizado extendiendo :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` y :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_setup_local_to_scene:

.. rst-class:: classref-method

|void| **setup_local_to_scene**\ (\ ) :ref:`🔗<class_Resource_method_setup_local_to_scene>`

**Obsoleto:** This method should only be called internally.

Llama a :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>`. Si :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` está establecido en ``true``, este método es llamado automáticamente desde :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` por el recurso recién duplicado dentro de la instancia de la escena.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_take_over_path:

.. rst-class:: classref-method

|void| **take_over_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_take_over_path>`

Establece la :ref:`resource_path<class_Resource_property_resource_path>` a ``path``, potencialmente sobrescribiendo una entrada de caché existente para esta ruta. Los intentos posteriores de cargar un recurso sobrescrito por la ruta devolverán este recurso en su lugar.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
