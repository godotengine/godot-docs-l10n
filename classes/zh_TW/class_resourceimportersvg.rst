:github_url: hide

.. _class_ResourceImporterSVG:

ResourceImporterSVG
===================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

將 SVG 檔案作為自動縮放紋理匯入，用於 UI 元素和 2D 渲染。

.. rst-class:: classref-introduction-group

說明
----

該匯入器匯入 :ref:`DPITexture<class_DPITexture>` 資源。另見 :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` 和 :ref:`ResourceImporterImage<class_ResourceImporterImage>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`base_scale<class_ResourceImporterSVG_property_base_scale>`             | ``1.0``   |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_map<class_ResourceImporterSVG_property_color_map>`               | ``{}``    |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterSVG_property_compress>`                 | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`fix_alpha_border<class_ResourceImporterSVG_property_fix_alpha_border>` | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`premult_alpha<class_ResourceImporterSVG_property_premult_alpha>`       | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`saturation<class_ResourceImporterSVG_property_saturation>`             | ``1.0``   |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterSVG_property_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **base_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_base_scale>`

紋理縮放。\ ``1.0`` 是原始 SVG 大小。值越大得到的影像越大。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_color_map:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_map** = ``{}`` :ref:`🔗<class_ResourceImporterSVG_property_color_map>`

設定後，會根據 :ref:`Color<class_Color>`-:ref:`Color<class_Color>` 映射對紋理中的顏色進行重映射。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterSVG_property_compress>`

如果為 ``true``\ ，則對 SVG 原始碼使用無損壓縮。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fix_alpha_border** = ``false`` :ref:`🔗<class_ResourceImporterSVG_property_fix_alpha_border>`

如果設為 ``true``\ ，它會在從透明到不透明的過渡區域，填充周圍相同顏色的像素。對於使用雙線性過濾（bilinear filtering）顯示的紋理，這有助於減少從影像編輯器匯出圖片時產生的邊緣輪廓效應。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **premult_alpha** = ``false`` :ref:`🔗<class_ResourceImporterSVG_property_premult_alpha>`

除了使用 :ref:`fix_alpha_border<class_ResourceImporterSVG_property_fix_alpha_border>` 來修復發黑的邊緣，另一種替代方案是使用預乘 Alpha（premultiplied alpha）。啟用此選項後，紋理會被自動轉換成這種格式。不過，預乘 Alpha 紋理需要配合特定的材質才能正確顯示：

- 在 2D 中：需要建立一個 :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`\ ，並在使用了該紋理的 :ref:`CanvasItem<class_CanvasItem>` 上，將其混合模式設定為 :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>`\ 。如果你使用的是自訂的 ``canvas_item`` 著色器，則需要在程式碼中加入 ``render_mode blend_premul_alpha;``\ 。

- 在 3D 中：需要建立一個 :ref:`BaseMaterial3D<class_BaseMaterial3D>`\ ，並在使用了該紋理的材質上，將其混合模式設定為 :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>`\ 。如果你使用的是自訂的 ``spatial`` 著色器，則需要在程式碼中加入 ``render_mode blend_premul_alpha;``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_saturation:

.. rst-class:: classref-property

:ref:`float<class_float>` **saturation** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_saturation>`

覆蓋紋理飽和度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
