:github_url: hide

.. _class_ResourceImporterScene:

ResourceImporterScene
=====================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports a glTF, FBX, COLLADA, or Blender 3D scene.

.. rst-class:: classref-introduction-group

說明
----

See also :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, which is used for OBJ models that can be imported as an independent :ref:`Mesh<class_Mesh>` or a scene.

Additional options (such as extracting individual meshes or materials to files) are available in the **Advanced Import Settings** dialog. This dialog can be accessed by double-clicking a 3D scene in the FileSystem dock or by selecting a 3D scene in the FileSystem dock, going to the Import dock and choosing **Advanced**.

\ **Note:** **ResourceImporterScene** is *not* used for :ref:`PackedScene<class_PackedScene>`\ s, such as ``.tscn`` and ``.scn`` files.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入 3D 場景 <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_ResourceImporterScene_property__subresources:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **_subresources** = ``{}`` :ref:`🔗<class_ResourceImporterScene_property__subresources>`

包含場景子資源的屬性。這是一個內部選項，在匯入塢中不可見。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **animation/fps** = ``30`` :ref:`🔗<class_ResourceImporterScene_property_animation/fps>`

用於透過線性內插將動畫曲線烘焙為一系列點的每秒影格數。建議配置此值以配對您用作基線的值您的3D 建模軟體。較高的值會導致更精確的動畫和快速的運動變化，但代價是檔案大小和記憶體使用量更大。由於插值，超過30 FPS 通常沒有太大好處（因為動畫仍然會出現）在較高算繪影格速率下平滑）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/import>`

如果為 ``true``\ ，則馬達將轉動鉸鏈。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import_rest_as_RESET:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import_rest_as_RESET** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`

If ``true``, adds an :ref:`Animation<class_Animation>` named ``RESET``, containing the :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>` from :ref:`Skeleton3D<class_Skeleton3D>` nodes. This can be useful to extract an animation in the reference pose.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/remove_immutable_tracks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/remove_immutable_tracks** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/remove_immutable_tracks>`

如果\ ``true``\ ，則刪除僅包含預設值的動畫軌跡。這可以減少某些3D 場景的輸出檔案大小和記憶體使用量，具體取決於其內容動畫軌道。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/trimming:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/trimming** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/trimming>`

如果\ ``true``\ ，如果沒有關鍵影格更改，則修剪動畫的開頭和結尾。這可以減少某些3D 場景的輸出檔案大小和記憶體使用量，取決於關於他們的動畫軌道的內容。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **array_mesh/deduplicate_surfaces** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces>`

If the 3D model file contains only one mesh, this option has no effect. If ``true`` and the 3D model file contains multiple meshes with the same surface names and formats, the surfaces will be merged together when the meshes are merged. This is useful for reducing the number of surfaces in the resulting mesh, and avoids duplicating materials. If ``false`` and the 3D model file contains multiple meshes, the surfaces will always be kept separate.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_import_script/path:

.. rst-class:: classref-property

:ref:`String<class_String>` **import_script/path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_import_script/path>`

Path to an import script, which can run code after the import process has completed for custom processing. See `Using import scripts for automation <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__ for more information.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract>`

Material extraction mode.

- ``0 (Keep Internal)``, materials are not extracted.

- ``1 (Extract Once)``, materials are extracted once and reused on subsequent import.

- ``2 (Extract and Overwrite)``, materials are extracted and overwritten on every import.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract_format** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_format>`

Extracted material file format.

- ``0 (Text)``, text file format (``*.tres``).

- ``1 (Binary)``, binary file format (``*.res``).

- ``2 (Material)``, binary file format (``*.material``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **materials/extract_path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_path>`

Path extracted materials are saved to. If empty, source scene path is used.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mesh_library/use_node_names_as_mesh_names** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names>`

If ``true``, the mesh names will be set to the names of the nodes in the 3D model file. If ``false``, the mesh names will be set to the names of the meshes in the 3D model file. Enabling this is a common work-around when the author of the 3D model file did not properly set the mesh names in Blender or other 3D modeling apps. For example, a file may have a node named "Turret" with a mesh named "Cube.002", so enabling this option will set the mesh name to "Turret" instead of "Cube_002".

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/create_shadow_meshes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/create_shadow_meshes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`

如果\ ``true``\ ，則在匯入時啟用陰影網格的產生。這可以最佳化陰影算繪，而不會在可能的情況下透過將頂點焊接在一起來降低品質。這反過來又減少了記憶體算繪陰影所需的頻寬。陰影網格產生目前不支援使用比來源網格更低的細節等級（但陰影算繪將在相關時使用LOD）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/ensure_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/ensure_tangents** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/ensure_tangents>`

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the input meshes don't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/force_disable_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/force_disable_compression** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_meshes/force_disable_compression>`

If ``true``, mesh compression will not be used. Consider enabling if you notice blocky artifacts in your mesh normals or UVs, or if you have meshes that are larger than a few thousand meters in each direction.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/generate_lods>`

如果\ ``true``\ ，則產生網格的較低細節變體，這些變體將顯示在遠處以提高算繪效能。並非所有網格都受益於LOD，特別是如果它們永遠不會從遠處算繪。停用此功能可以減少輸出檔案大小並加快匯入速度。請參閱\ `網格細節等級(LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ 了解更多。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/light_baking:

.. rst-class:: classref-property

:ref:`int<class_int>` **meshes/light_baking** = ``1`` :ref:`🔗<class_ResourceImporterScene_property_meshes/light_baking>`

在3D場景中設定網格體的\ :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`\ 。如果設定為\ **靜態光照貼圖**\ ，則將網格體的GI模式設定為靜態並產生UV2匯入 :ref:`LightmapGI<class_LightmapGI>` 烘焙時。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/lightmap_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **meshes/lightmap_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`

控制烘焙光照貼圖上每個紋素的大小。較小的值會導致更精確的光照貼圖，但代價是更大的光照貼圖大小和更長的烘焙時間。

\ **注意：**\ 僅當\ :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>`\ 設定為\ **靜態光照貼圖**\ 時有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/apply_root_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/apply_root_scale** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/apply_root_scale>`

如果\ ``true``\ ，\ :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>`\ 將套用於後代節點、網格、動畫、骨骼等。這表示如果您新增稍後在匯入的場景中新增子節點時，它將不會縮放。如果\ ``false``\ ，\ :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` 將乘以根節點的縮放比例。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/import_as_skeleton_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/import_as_skeleton_bones** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`

Treat all nodes in the imported scene as if they are bones within a single :ref:`Skeleton3D<class_Skeleton3D>`. Can be used to guarantee that imported animations target skeleton bones rather than nodes. May also be used to assign the ``"Root"`` bone in a :ref:`BoneMap<class_BoneMap>`. See :doc:`Retargeting 3D Skeletons <../tutorials/assets_pipeline/retargeting_3d_skeletons>` for more information.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_name** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_name>`

覆寫根節點名稱。如果為空，則根節點將使用場景指定的名稱，如果場景未指定根名稱，則使用檔案名稱。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **nodes/root_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_scale>`

用於場景根的均勻比例。\ ``1.0``\ 的預設值將不會執行任何重新縮放。有關如何執行的詳細信息，請參閱\ :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>`\ 套用此比例。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_script:

.. rst-class:: classref-property

:ref:`Script<class_Script>` **nodes/root_script** = ``null`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_script>`

If set to a valid script, attaches the script to the root node of the imported scene. If the type of the root node is not compatible with the script, the root node will be replaced with a type that is compatible with the script. This setting can also be used on other non-mesh nodes in the scene to attach scripts to them.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_type** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_type>`

覆寫根節點型別。如果為空，則根節點將使用場景指定的內容，如果場景未指定根型別，則根節點將使用 :ref:`Node3D<class_Node3D>`\ 。使用下列節點型別建議繼承自\ :ref:`Node3D<class_Node3D>`\ 。否則，您將無法在3D 編輯器中直接定位節點。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_name_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_name_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_name_suffixes>`

If ``true``, will use suffixes in the names of imported objects such as nodes and resources to determine types and properties, such as ``-noimp`` to skip import of a node or animation, ``-alpha`` to enable alpha transparency on a material, and ``-vcol`` to enable vertex colors on a material. Disabling this makes editor-imported files more similar to the original files, and more similar to files imported at runtime. See :doc:`Node type customization using name suffixes <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>` for more information.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_node_type_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_node_type_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`

If ``true``, will use suffixes in the node names to determine the node type, such as ``-col`` for collision shapes. This is only used when :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>` is ``true``. Disabling this makes editor-imported files more similar to the original files, and more similar to files imported at runtime. See :doc:`Node type customization using name suffixes <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>` for more information.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_skins/use_named_skins:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **skins/use_named_skins** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_skins/use_named_skins>`

If checked, use named :ref:`Skin<class_Skin>`\ s for animation. The :ref:`MeshInstance3D<class_MeshInstance3D>` node contains 3 properties of relevance here: a skeleton :ref:`NodePath<class_NodePath>` pointing to the :ref:`Skeleton3D<class_Skeleton3D>` node (usually ``..``), a mesh, and a skin:

- The :ref:`Skeleton3D<class_Skeleton3D>` node contains a list of bones with names, their pose and rest, a name, and a parent bone.

- The mesh is all of the raw vertex data needed to display a mesh. In terms of the mesh, it knows how vertices are weight-painted and uses some internal numbering often imported from 3D modeling software.

- The skin contains the information necessary to bind this mesh onto this Skeleton3D. For each of the internal bone IDs chosen by the 3D modeling software, it contains two things. Firstly, a matrix known as the Bind Pose Matrix, Inverse Bind Matrix, or IBM for short. Secondly, the :ref:`Skin<class_Skin>` contains each bone's name (if :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` is ``true``), or the bone's index within the :ref:`Skeleton3D<class_Skeleton3D>` list (if :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` is ``false``).

Together, this information is enough to tell Godot how to use the bone poses in the :ref:`Skeleton3D<class_Skeleton3D>` node to render the mesh from each :ref:`MeshInstance3D<class_MeshInstance3D>`. Note that each :ref:`MeshInstance3D<class_MeshInstance3D>` may share binds, as is common in models exported from Blender, or each :ref:`MeshInstance3D<class_MeshInstance3D>` may use a separate :ref:`Skin<class_Skin>` object, as is common in models exported from other tools such as Maya.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
