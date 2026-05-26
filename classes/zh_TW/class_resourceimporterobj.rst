:github_url: hide

.. _class_ResourceImporterOBJ:

ResourceImporterOBJ
===================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports an OBJ 3D model as an independent :ref:`Mesh<class_Mesh>` or scene.

.. rst-class:: classref-introduction-group

說明
----

與\ :ref:`ResourceImporterScene<class_ResourceImporterScene>`\ 不同，\ **ResourceImporterOBJ**\ 預設會匯入單一\ :ref:`Mesh<class_Mesh>`\ 資源，而不是匯入\ :ref:`PackedScene<class_PackedScene>`\ 。這使得在節點中使用\ :ref:`Mesh<class_Mesh>`\ 資源變得更加容易需要直接\ :ref:`Mesh<class_Mesh>` 資源，例如\ :ref:`GridMap<class_GridMap>`\ 、\ :ref:`GPUParticles3D<class_GPUParticles3D>` 或\ :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。請注意，無論如何，仍然可以使用\ **高階匯入設定** 對話方塊從3D 場景儲存網格資源的來源格式。

另請參閱 :ref:`ResourceImporterScene<class_ResourceImporterScene>`\ ，它用於更高級的 3D 格式，例如 glTF。

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

If ``true``, mesh compression will not be used. Consider enabling if you notice blocky artifacts in your mesh normals or UVs, or if you have meshes that are larger than a few thousand meters in each direction.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lightmap_uv2** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`

If ``true``, generates UV2 on import for :ref:`LightmapGI<class_LightmapGI>` baking.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **generate_lightmap_uv2_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>`

Controls the size of each texel on the baked lightmap. A smaller value results in more precise lightmaps, at the cost of larger lightmap sizes and longer bake times.

\ **Note:** Only effective if :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lods>`

如果\ ``true``\ ，則產生網格的較低細節變體，這些變體將顯示在遠處以提高算繪效能。並非所有網格都受益於LOD，特別是如果它們永遠不會從遠處算繪。停用此功能可以減少輸出檔案大小並加快匯入速度。請參閱\ `網格細節等級(LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ 了解更多。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_shadow_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_shadow_mesh** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_shadow_mesh>`

如果\ ``true``\ ，則在匯入時啟用陰影網格的產生。這可以最佳化陰影算繪，而不會在可能的情況下透過將頂點焊接在一起來降低品質。這反過來又減少了記憶體算繪陰影所需的頻寬。陰影網格產生目前不支援使用比來源網格更低的細節等級（但陰影算繪將在相關時使用LOD）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_tangents** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_tangents>`

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the source mesh doesn't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

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
