:github_url: hide

.. _class_ResourceImporterOBJ:

ResourceImporterOBJ
===================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

將 OBJ 3D 模型匯入為獨立的 :ref:`Mesh<class_Mesh>` 或場景。

.. rst-class:: classref-introduction-group

說明
----

與\ :ref:`ResourceImporterScene<class_ResourceImporterScene>`\ 不同，\ **ResourceImporterOBJ**\ 預設會匯入單一\ :ref:`Mesh<class_Mesh>`\ 資源，而不是匯入\ :ref:`PackedScene<class_PackedScene>`\ 。這使得在節點中使用\ :ref:`Mesh<class_Mesh>`\ 資源變得更加容易需要直接\ :ref:`Mesh<class_Mesh>` 資源，例如\ :ref:`GridMap<class_GridMap>`\ 、\ :ref:`GPUParticles3D<class_GPUParticles3D>` 或\ :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。請注意，無論如何，仍然可以使用\ **高階匯入設定** 對話框從3D 場景儲存網格資源的來源格式。

另請參閱 :ref:`ResourceImporterScene<class_ResourceImporterScene>`\ ，它用於更進階的 3D 格式，例如 glTF。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入 3D 場景 <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`force_disable_mesh_compression<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`     | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`                       | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`generate_lightmap_uv2_texel_size<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>` | ``0.2``              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lods<class_ResourceImporterOBJ_property_generate_lods>`                                       | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_shadow_mesh<class_ResourceImporterOBJ_property_generate_shadow_mesh>`                         | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_tangents<class_ResourceImporterOBJ_property_generate_tangents>`                               | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`offset_mesh<class_ResourceImporterOBJ_property_offset_mesh>`                                           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`scale_mesh<class_ResourceImporterOBJ_property_scale_mesh>`                                             | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterOBJ_property_force_disable_mesh_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_disable_mesh_compression** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`

如果為 ``true``\ ，則不會使用網格壓縮。如果你在網格法線或 UV 中發現塊狀偽影，或者如果你的網格在每個方向都大於幾千米，請考慮啟用。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lightmap_uv2** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`

如果為 ``true``\ ，匯入時會為烘焙 :ref:`LightmapGI<class_LightmapGI>` 生成 UV2。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **generate_lightmap_uv2_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>`

控制烘焙光照貼圖上每個紋素的大小。較小的值會產生更精確的光照貼圖，但代價是光照貼圖尺寸更大，烘焙時間也更長。

\ **注意：**\ 僅當 :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lods>`

如果\ ``true``\ ，則產生網格的較低細節變體，這些變體將顯示在遠處以提高算繪效能。並非所有網格都受益於LOD，特別是如果它們永遠不會從遠處渲染。停用此功能可以減少輸出檔案大小並加快匯入速度。請參閱\ `網格細節等級(LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ 了解更多。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_shadow_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_shadow_mesh** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_shadow_mesh>`

如果\ ``true``\ ，則在匯入時啟用陰影網格的產生。這可以最佳化陰影渲染，而不會在可能的情況下透過將頂點焊接在一起來降低品質。這反過來又減少了記憶體渲染陰影所需的頻寬。陰影網格產生目前不支援使用比來源網格更低的細節等級（但陰影算繪將在相關時使用LOD）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_tangents** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_tangents>`

如果設為 ``true``\ （開啟），當源網格模型沒有切線資料時，將使用 `Mikktspace <http://www.mikktspace.com/>`__ 算法來自動生成頂點切線。如果條件允許，更推薦的做法是讓 3D 建模軟體在匯出模型時直接生成切線，而不是相依性引擎的這個選項。因為法線貼圖、高度貼圖，以及任何需要切線的材質/著色器功能，都必須要有切線資料才能正確顯示。

如果你並不需要這些相依性切線的材質功能，那麼關閉這個選項，不僅能在源 3D 檔案本身不包含切線的情況下加快匯入速度，還能減小最終輸出檔案的大小。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_offset_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset_mesh** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ResourceImporterOBJ_property_offset_mesh>`

將網格資料偏移指定值。這可用於解決未對齊的網格，而無需修改原始檔案。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_scale_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale_mesh** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_ResourceImporterOBJ_property_scale_mesh>`

會依照指定值縮放網格資料。這可用於解決縮放錯誤的網格，而無需修改來源檔案。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
