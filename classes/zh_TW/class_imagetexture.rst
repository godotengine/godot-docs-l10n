:github_url: hide

.. _class_ImageTexture:

ImageTexture
============

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

基於 :ref:`Image<class_Image>` 的 :ref:`Texture2D<class_Texture2D>`\ 。

.. rst-class:: classref-introduction-group

說明
----

基於 :ref:`Image<class_Image>` 的 :ref:`Texture2D<class_Texture2D>`\ 。若要顯示影像，必須使用 :ref:`create_from_image()<class_ImageTexture_method_create_from_image>` 方法從中建立一個 **ImageTexture**\ ：

::

    var image = Image.load_from_file("res://icon.svg")
    var texture = ImageTexture.create_from_image(image)
    $Sprite2D.texture = texture

如此一來，便可通過載入編輯器內外部的影像，在執行時動態建立紋理。

\ **警告：**\ 最好使用 :ref:`@GDScript.load()<class_@GDScript_method_load>` 載入匯入的紋理，而不是使用 :ref:`Image.load()<class_Image_method_load>` 從檔案系統中動態載入它們，因為後者可能不適用於匯出的專案：

::

    var texture = load("res://icon.svg")
    $Sprite2D.texture = texture

這是因為影像必須首先作為 :ref:`CompressedTexture2D<class_CompressedTexture2D>` 被匯入，然後才能被 :ref:`@GDScript.load()<class_@GDScript_method_load>` 載入。若仍希望像載入其他 :ref:`Resource<class_Resource>` 一樣載入影像檔案，可先將其作為 :ref:`Image<class_Image>` 資源匯入，然後使用 :ref:`@GDScript.load()<class_@GDScript_method_load>` 方法正常載入。

\ **注意：**\ 若要從已匯入的紋理中重新獲得影像，可以使用 :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>`\ ，該方法回傳影像的副本：

::

    var texture = load("res://icon.svg")
    var image = texture.get_image()

\ **ImageTexture** 並非設計為在編輯器介面內直接操作，其主要用途是通過程式碼在螢幕上動態渲染影像。如果你需要在編輯器內部程式化生成影像，請考慮將其儲存並匯入為自訂紋理資源，這需要實作一個新的 :ref:`EditorImportPlugin<class_EditorImportPlugin>`\ 。

\ **注意：**\ 由於圖形硬體限制，最大紋理大小為 16384×16384 像素。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入影像 <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImageTexture<class_ImageTexture>` | :ref:`create_from_image<class_ImageTexture_method_create_from_image>`\ (\ image\: :ref:`Image<class_Image>`\ ) |static| |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_image<class_ImageTexture_method_set_image>`\ (\ image\: :ref:`Image<class_Image>`\ )                          |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_size_override<class_ImageTexture_method_set_size_override>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )     |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`update<class_ImageTexture_method_update>`\ (\ image\: :ref:`Image<class_Image>`\ )                                |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ImageTexture_method_create_from_image:

.. rst-class:: classref-method

:ref:`ImageTexture<class_ImageTexture>` **create_from_image**\ (\ image\: :ref:`Image<class_Image>`\ ) |static| :ref:`🔗<class_ImageTexture_method_create_from_image>`

建立一個新的 **ImageTexture**\ ，並通過分配和設定來自 :ref:`Image<class_Image>` 的資料來初始化它。

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_image:

.. rst-class:: classref-method

|void| **set_image**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_set_image>`

用新的 :ref:`Image<class_Image>` 替換該紋理的資料。這將為該紋理重新分配新記憶體。

如果要更新影像，但不需要更改其參數（格式、大小），請改用 :ref:`update()<class_ImageTexture_method_update>` 以獲得更好的效能。

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImageTexture_method_set_size_override>`

將紋理的大小調整為指定的尺寸。

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_update>`

用新的 :ref:`Image<class_Image>` 替換該紋理的資料。

\ **注意：**\ 該紋理必須使用 :ref:`create_from_image()<class_ImageTexture_method_create_from_image>` 建立、或首先使用 :ref:`set_image()<class_ImageTexture_method_set_image>` 方法初始化，然後才能更新。新的影像大小、格式和 mipmaps 配置，應與現有紋理的影像配置相配對。

如果需要頻繁更新紋理，請使用該方法而不是 :ref:`set_image()<class_ImageTexture_method_set_image>`\ ，這比每次為一個新紋理分配額外記憶體要快。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
