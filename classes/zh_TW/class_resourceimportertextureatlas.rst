:github_url: hide

.. _class_ResourceImporterTextureAtlas:

ResourceImporterTextureAtlas
============================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

將PNG 影像中的紋理集合匯入至最佳化的\ :ref:`AtlasTexture<class_AtlasTexture>` 以進行2D 渲染。

.. rst-class:: classref-introduction-group

說明
----

這會將 PNG 影像中的紋理集合匯入到 :ref:`AtlasTexture<class_AtlasTexture>` 或 2D :ref:`ArrayMesh<class_ArrayMesh>` 中。從 spritesheet 匯入 2D 動畫時，這可用於節省記憶體。紋理合集只是支援紋理合集。 2D 渲染，而不是3D。另請參閱\ :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` 和\ :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`\ 。

\ **注意：** **ResourceImporterTextureAtlas** 不處理匯入 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`\ ，它是使用 :ref:`TileSet<class_TileSet>` 編輯器建立的。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`atlas_file<class_ResourceImporterTextureAtlas_property_atlas_file>`                                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`                               | ``false`` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>`                                     | ``0``     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>` | ``true``  |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterTextureAtlas_property_atlas_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **atlas_file** = ``""`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_atlas_file>`

atlas spritesheet 的路徑。此\ *必須*\ 設定為 PNG 映像的有效路徑。否則，atlas 將無法匯入。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_crop_to_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **crop_to_region** = ``false`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_crop_to_region>`

如果\ ``true``\ ，則丟棄合集中的空白區域。這只會影響最終的精靈定位，而不影響儲存。另請參閱\ :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`\ 。

\ **注意：** 僅在 :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` 為 **Region** 時有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_import_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **import_mode** = ``0`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_import_mode>`

**Region:** 在 :ref:`AtlasTexture<class_AtlasTexture>` 資源中匯入合集，該合集呈現為矩形。這渲染速度很快，但仍需要透明區域如果\ :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`\ 無法有效修剪它們，則渲染它們。在螢幕上渲染大型精靈時，這會降低效能。

\ **Mesh：** 將合集匯入為 :ref:`ArrayMesh<class_ArrayMesh>` 資源，保持原始點陣圖可見（但渲染為多邊形）。這可用於在渲染大型透明精靈時降低填充率，但如果精靈中幾乎沒有透明區域，則渲染速度會變慢。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trim_alpha_border_from_region** = ``true`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`

如果為 ``true``\ ，則使用裁剪矩形（從不旋轉）修剪區塊以排除完全透明的像素。這可以被用來節省記憶體。另請參見 :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`\ 。

\ **注意：**\ 僅當 :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` 為\ **區塊**\ 時有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
