:github_url: hide

.. _class_ResourceImporterScene:

ResourceImporterScene
=====================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入 glTF、FBX、COLLADA 或 Blender 3D 場景。

.. rst-class:: classref-introduction-group

說明
----

另請參見 :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`\ ，它被用於可作為獨立的 :ref:`Mesh<class_Mesh>` 或場景匯入的 OBJ 模型。

\ **進階匯入設定** 對話框中提供了其他選項（例如將單個網格或材質提取到檔案）。可以通過雙擊檔案系統停靠面板中的 3D 場景或通過選擇檔案系統停靠面板中的 3D 場景，轉至匯入停靠面板並選擇\ **進階**\ 來存取該對話框。

\ **注意：**\ **ResourceImporterScene** *未*\ 被用於 :ref:`PackedScene<class_PackedScene>`\ ，例如 ``.tscn`` 和 ``.scn`` 檔案 。

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

用於透過線性內插將動畫曲線烘焙為一系列點的每秒影格數。建議配置此值以配對您用作基線的值您的3D 建模軟體。較高的值會導致更精確的動畫和快速的運動變化，但代價是檔案大小和記憶體使用量更大。由於插值，超過30 FPS 通常沒有太大好處（因為動畫仍然會出現）在較高渲染影格速率下平滑）。

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

如果為 ``true``\ ，則新增一個名為 ``RESET`` 的 :ref:`Animation<class_Animation>`\ ，其中包含來自 :ref:`Skeleton3D<class_Skeleton3D>` 節點的 :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>`\ 。這對於提取參考姿勢中的動畫很有用。

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

如果 3D 模型檔案僅包含一個網格（Mesh），則此選項無效。如果設為 ``true`` 且 3D 模型檔案包含多個具有相同表面（Surface）名稱和格式的網格，那麼在合併網格時，表面將被合併在一起。這有助於減少生成網格中的表面數量，並避免材質重複。如果設為 ``false`` 且 3D 模型檔案包含多個網格，表面將始終被保持分離。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_import_script/path:

.. rst-class:: classref-property

:ref:`String<class_String>` **import_script/path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_import_script/path>`

匯入腳本的路徑，該腳本可以在匯入過程完成後執行程式碼以進行自訂處理。有關詳細資訊，請參閱 `使用匯入腳本進行自動化 <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract>`

材質提取模式。

- ``0 (Keep Internal)``\ ，不提取材質。

- ``1 (Extract Once)``\ ，提取一次材質，後續匯入時重用。

- ``2 (Extract and Overwrite)``\ ，每次匯入都提取並覆蓋材質。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract_format** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_format>`

提取材質的檔案格式。

- ``0 (Text)``\ ，文字檔案格式（\ ``*.tres``\ ）。

- ``1 (Binary)``\ ，二進位檔案格式（\ ``*.res``\ ）。

- ``2 (Material)``\ ，二進位檔案格式（\ ``*.material``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **materials/extract_path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_path>`

提取材質的儲存路徑。留空時使用源場景路徑。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mesh_library/use_node_names_as_mesh_names** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names>`

如果設為 ``true``\ ，網格（Mesh）的名稱將被設定為 3D 模型檔案中節點的名稱。如果設為 ``false``\ ，網格的名稱將被設定為 3D 模型檔案中網格自身的名稱。當 3D 模型檔案的作者未在 Blender 或其他 3D 建模軟體中正確設定網格名稱時，啟用此選項是一種常見的變通方法。例如，某個檔案可能包含一個名為 "Turret" 的節點，其網格名稱為 "Cube.002"，啟用此選項後，網格名稱將被設定為 "Turret"，而不是 "Cube_002"。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/create_shadow_meshes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/create_shadow_meshes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`

如果\ ``true``\ ，則在匯入時啟用陰影網格的產生。這可以最佳化陰影渲染，而不會在可能的情況下透過將頂點焊接在一起來降低品質。這反過來又減少了記憶體渲染陰影所需的頻寬。陰影網格產生目前不支援使用比來源網格更低的細節等級（但陰影算繪將在相關時使用LOD）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/ensure_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/ensure_tangents** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/ensure_tangents>`

如果設為 ``true``\ ，當輸入的網格體（meshes）沒有切線資料時，將使用 `Mikktspace <http://www.mikktspace.com/>`__ 算法來生成頂點切線。如果條件允許，更推薦讓 3D 建模軟體在匯出模型時直接生成切線，而不是相依性這個選項。法線貼圖（normal maps）和高度貼圖（height maps），以及任何需要切線的材質或著色器（shader）功能，都必須要有切線資料才能正確顯示。

如果你不需要那些相依性切線的材質功能，停用此選項可以在源 3D 檔案不包含切線的情況下，減小輸出檔案的大小，並加快匯入速度。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/force_disable_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/force_disable_compression** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_meshes/force_disable_compression>`

如果為 ``true``\ ，則不會使用網格壓縮。如果你在網格法線或 UV 中發現塊狀偽影，或者如果你的網格在每個方向都大於幾千米，請考慮啟用。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/generate_lods>`

如果\ ``true``\ ，則產生網格的較低細節變體，這些變體將顯示在遠處以提高算繪效能。並非所有網格都受益於LOD，特別是如果它們永遠不會從遠處渲染。停用此功能可以減少輸出檔案大小並加快匯入速度。請參閱\ `網格細節等級(LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ 了解更多。

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

將匯入場景中的所有節點視為單個 :ref:`Skeleton3D<class_Skeleton3D>` 中的骨骼。可用於保證匯入的動畫以骨架骨骼而不是節點為目標。也可用於在 :ref:`BoneMap<class_BoneMap>` 中分配 ``"Root"`` 骨骼。有關詳細資訊，請參閱 :doc:`重新導向 3D 骨架 <../tutorials/assets_pipeline/retargeting_3d_skeletons>`\ 。

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

用於場景根的均勻比例。\ ``1.0``\ 的預設值將不會執行任何重新縮放。有關如何執行的詳細資訊，請參閱\ :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>`\ 套用此比例。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_script:

.. rst-class:: classref-property

:ref:`Script<class_Script>` **nodes/root_script** = ``null`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_script>`

如果設為有效的腳本，則會將該腳本附加到匯入後的場景的根節點上。如果根節點的型別與腳本不相容，則會將根節點替換為與腳本相容的型別。也可以對場景中的其他非網格節點使用該設定，為他們附加腳本。

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

如果為 ``true``\ ，則會使用匯入的節點、資源等物件的名稱後綴來確定型別和屬性，例如 ``-noimp`` 可以跳過節點和動畫的匯入、\ ``-alpha`` 可以啟用材質的 Alpha 透明、\ ``-vcol`` 可以啟用材質的頂點顏色。停用該選項會讓編輯器匯入的檔案更接近原始檔案，更類似於在執行時匯入檔案。詳見\ :doc:`《使用名稱後綴自訂節點型別》 <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_node_type_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_node_type_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`

如果為 ``true``\ ，則會使用節點名稱的後綴來確定節點型別，例如 ``-col`` 表示碰撞形狀。僅在 :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>` 為 ``true`` 時使用。停用該選項會讓編輯器匯入的檔案更接近原始檔案，更類似於在執行時匯入檔案。詳見\ :doc:`《使用名稱後綴自訂節點型別》 <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_skins/use_named_skins:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **skins/use_named_skins** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_skins/use_named_skins>`

如果勾選此項，動畫將使用帶有名稱的 :ref:`Skin<class_Skin>`\ （蒙皮）資源。在這裡，\ :ref:`MeshInstance3D<class_MeshInstance3D>` 節點包含 3 個與之相關的關鍵屬性：指向 :ref:`Skeleton3D<class_Skeleton3D>` 節點的骨骼 :ref:`NodePath<class_NodePath>`\ （通常填 ``..``\ ）、一個網格（Mesh），以及一個蒙皮（Skin）：

- :ref:`Skeleton3D<class_Skeleton3D>` 節點包含一個帶有名稱的骨骼清單，記錄了它們的姿態和初始狀態（Rest），同時也包含節點自身的名稱以及父級骨骼的資訊。

- 網格（Mesh）包含了顯示模型所需的所有原始頂點資料。就網格本身而言，它知道頂點是如何進行權重繪製（weight-painted）的，並使用了一些通常從 3D 建模軟體中匯入的內部編號。

- 蒙皮（Skin）包含了將此網格綁定到該 :ref:`Skeleton3D<class_Skeleton3D>` 上所需的必要資訊。對於 3D 建模軟體為每個內部骨骼選定的 ID，它都包含兩樣東西。首先是一個矩陣，被稱為綁定姿態矩陣、逆綁定矩陣，簡稱 IBM。其次，\ :ref:`Skin<class_Skin>` 還包含每根骨骼的名稱（如果 :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` 設為 ``true``\ ），或者包含該骨骼在 :ref:`Skeleton3D<class_Skeleton3D>` 清單中的索引編號（如果 :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` 設為 ``false``\ ）。

綜合以上資訊，就足以告訴 Godot 如何利用 :ref:`Skeleton3D<class_Skeleton3D>` 節點中的骨骼姿態來渲染每個 :ref:`MeshInstance3D<class_MeshInstance3D>` 的網格了。需要注意的是，每個 :ref:`MeshInstance3D<class_MeshInstance3D>` 可能會共享綁定關係（這在從 Blender 匯出的模型中很常見），也可能每個 :ref:`MeshInstance3D<class_MeshInstance3D>` 使用各自獨立的 :ref:`Skin<class_Skin>` 物件（這在從 Maya 等其他工具匯出的模型中很常見）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
