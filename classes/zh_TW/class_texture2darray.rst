:github_url: hide

.. _class_Texture2DArray:

Texture2DArray
==============

**繼承：** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

由多個獨立影像構成的單個紋理資源。每個影像的尺寸和 mipmap 級別數都相同。

.. rst-class:: classref-introduction-group

說明
----

Texture2DArray 與 Texture3D 不同：Texture2DArray 不支援在 :ref:`Image<class_Image>` 之間進行三線性插值，即不會進行混合。另見 :ref:`Cubemap<class_Cubemap>` 和 :ref:`CubemapArray<class_CubemapArray>`\ ，這些紋理陣列具有針對立方體貼圖設計的函式。

Texture2DArray 與 :ref:`AtlasTexture<class_AtlasTexture>` 也不同：Texture2DArray 中的圖形都是單獨處理的。而在圖集中，區域（即單張影像）的大小可以不同。此外，你通常會需要圍繞區域新增邊距，防止 UV 映射意外進入多個區域。多級漸遠紋理 mipmap 也是一樣：每一層的 mipmap 鏈都是單獨處理的。而在圖集中，需要在片段著色器中手動切片。

要自己建立這樣的紋理檔案，請使用 Godot 編輯器匯入預設重新匯入影像檔案。要使用程式碼建立 Texture2DArray，請對 Texture2DArray 類的實例使用 :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Texture2DArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Texture2DArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture2DArray_method_create_placeholder>`

建立該資源的預留位置版本（\ :ref:`PlaceholderTexture2DArray<class_PlaceholderTexture2DArray>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
