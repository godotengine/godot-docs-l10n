:github_url: hide

.. _class_ImageTextureLayered:

ImageTextureLayered
===================

**繼承：** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>`

紋理型別的基底類別，包含多個 :ref:`ImageTexture<class_ImageTexture>` 的資料。各個影像具有相同的大小和格式。

.. rst-class:: classref-introduction-group

說明
----

:ref:`Texture2DArray<class_Texture2DArray>`\ 、\ :ref:`Cubemap<class_Cubemap>` 和 :ref:`CubemapArray<class_CubemapArray>` 的基底類別。不能直接使用，但包含了存取衍生資源型別所需的所有函式。另請參閱 :ref:`Texture3D<class_Texture3D>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_from_images<class_ImageTextureLayered_method_create_from_images>`\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update_layer<class_ImageTextureLayered_method_update_layer>`\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ )            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ImageTextureLayered_method_create_from_images:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTextureLayered_method_create_from_images>`

根據 :ref:`Image<class_Image>` 陣列建立 **ImageTextureLayered**\ ，所需的資料格式見 :ref:`Image.create()<class_Image_method_create>`\ 。寬度、高度、影像格式、Mipmap 等設定由第一個影像決定，其他影像\ *必須*\ 保持一致。

每個 :ref:`Image<class_Image>` 都代表一層 ``layer``\ 。

::

    # 為陣列中的影像填充不同的顏色。
    var images = []
    const LAYERS = 6
    for i in LAYERS:
        var image = Image.create_empty(128, 128, false, Image.FORMAT_RGB8)
        if i % 3 == 0:
            image.fill(Color.RED)
        elif i % 3 == 1:
            image.fill(Color.GREEN)
        else:
            image.fill(Color.BLUE)
        images.push_back(image)

    # 建立並儲存 2D 紋理陣列。影像陣列中必須至少有 1 個影像。
    var texture_2d_array = Texture2DArray.new()
    texture_2d_array.create_from_images(images)
    ResourceSaver.save(texture_2d_array, "res://texture_2d_array.res", ResourceSaver.FLAG_COMPRESS)

    # 建立並儲存立方體貼圖。影像陣列中影像的數量必須為 6。
    # 立方體貼圖影像的順序為：X+、X-、Y+、Y-、Z+、Z-
    # （使用 Godot 的座標系，因此 Y+ 是“上”、Z- 是“前”）。
    var cubemap = Cubemap.new()
    cubemap.create_from_images(images)
    ResourceSaver.save(cubemap, "res://cubemap.res", ResourceSaver.FLAG_COMPRESS)

    # 建立並儲存立方體貼圖陣列。影像陣列中影像的數量必須為 6 的倍數。
    # 每個立方體貼圖影像的順序為：X+、X-、Y+、Y-、Z+、Z-
    # （使用 Godot 的座標系，因此 Y+ 是“上”、Z- 是“前”）。
    var cubemap_array = CubemapArray.new()
    cubemap_array.create_from_images(images)
    ResourceSaver.save(cubemap_array, "res://cubemap_array.res", ResourceSaver.FLAG_COMPRESS)

.. rst-class:: classref-item-separator

----

.. _class_ImageTextureLayered_method_update_layer:

.. rst-class:: classref-method

|void| **update_layer**\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImageTextureLayered_method_update_layer>`

用這個新影像替換給定 ``layer`` 的現有 :ref:`Image<class_Image>` 資料。

給定的 :ref:`Image<class_Image>` 必須與其餘參照的影像具有相同的寬度、高度、影像格式和多級漸遠紋理標誌。

如果影像格式不受支援，它將被解壓縮並轉換為一個相似且受支援的 :ref:`Format<enum_Image_Format>`\ 。

更新是即時的：它與繪製同步。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
