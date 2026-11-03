:github_url: hide

.. _class_CompressedCubemapArray:

CompressedCubemapArray
======================

**繼承：** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

立方體貼圖紋理陣列（見 :ref:`CubemapArray<class_CubemapArray>`\ ）。

.. rst-class:: classref-introduction-group

說明
----

一種從 ``.ccubearray`` 檔案載入的立方體貼圖陣列。這種檔案格式是 Godot 內部使用的；它是通過匯入系統匯入其他影像格式建立的。\ **CompressedCubemapArray** 可以使用 4 種壓縮方法中的一種：

- 無損（WebP 或 PNG，在 GPU 上不壓縮）

- 有損（WebP，在 GPU 上不壓縮）

- VRAM 壓縮（在 GPU 上壓縮）

- VRAM 未壓縮（在 GPU 上不壓縮）

- Basis Universal（在 GPU 上壓縮。與 VRAM 壓縮相比，檔案更小，但壓縮速度更慢、品質更低）

只有 **VRAM 壓縮**\ 實際上減少了 GPU 上的記憶體使用。\ **無損**\ 和\ **有損**\ 壓縮方法將減少磁碟上所需的儲存空間，但它們不會減少 GPU 上的記憶體使用，因為紋理未經壓縮地被發送到 GPU。

使用 **VRAM 壓縮**\ 還可以縮短載入時間，因為與使用無損或有損壓縮的紋理相比，VRAM 壓縮的紋理載入速度更快。VRAM 壓縮會表現出明顯的偽影，並且它旨在用於 3D 渲染，而不是 2D。

有關立方體貼圖陣列的一般說明，請參閱 :ref:`CubemapArray<class_CubemapArray>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
