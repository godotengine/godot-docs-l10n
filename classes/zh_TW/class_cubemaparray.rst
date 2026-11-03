:github_url: hide

.. _class_CubemapArray:

CubemapArray
============

**繼承：** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Cubemap<class_Cubemap>` 陣列，儲存在一起並使用單一參考。

.. rst-class:: classref-introduction-group

說明
----

**CubemapArray** 由 :ref:`Cubemap<class_Cubemap>` 陣列組成。與 :ref:`Cubemap<class_Cubemap>` 一樣由多個紋理組成，紋理的數量必須能被 6 整除（對應立方體的各個面）。

\ **CubemapArray** 的主要優點是可以使用單個紋理參照在著色器程式碼中存取。換句話說，你可以使用單個 **CubemapArray** 將多個 :ref:`Cubemap<class_Cubemap>` 傳遞到著色器中。這些 :ref:`Cubemap<class_Cubemap>` 在 GPU 上會被分配到相鄰快取區域中，因此用 **CubemapArray** 儲存多個 :ref:`Cubemap<class_Cubemap>` 最為高效。

Godot 內部使用 **CubemapArray** 來實現許多效果，例如將 :ref:`ProjectSettings.rendering/reflections/sky_reflections/texture_array_reflections<class_ProjectSettings_property_rendering/reflections/sky_reflections/texture_array_reflections>` 設定為 ``true`` 時的 :ref:`Sky<class_Sky>`\ 。

要自己建立這樣的紋理檔案，請使用 Godot 編輯器的匯入預設重新匯入影像檔案。要使用程式碼建立 CubemapArray，請在 CubemapArray 類的實例上使用 :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>`\ 。

預期的影像順序是 X+、X-、Y+、Y-、Z+、Z-（Godot 的座標系中 Y+ 是“上”、Z- 是“前”）。你可以從下列範本中挑選一個作為基礎：

- `2×3 立方體貼圖範本（預設版面配置選項） <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `3×2 立方體貼圖範本 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `1×6 立方體貼圖範本 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `6×1 立方體貼圖範本 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

使用預設垂直匯入選項時多個圖層會相互堆疊（第一個圖層位於頂部）。你也可以在匯入選項中選擇水平版面配置（第一個圖層位於左側）。

\ **注意：**\ 由於圖形 API 限制，相容性渲染器不支援 **CubemapArray**\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_CubemapArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CubemapArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_CubemapArray_method_create_placeholder>`

建立該資源的預留位置版本（\ :ref:`PlaceholderCubemapArray<class_PlaceholderCubemapArray>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
