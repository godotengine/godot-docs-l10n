:github_url: hide

.. _class_CompressedTexture2D:

CompressedTexture2D
===================

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

二維紋理，可選擇壓縮。

.. rst-class:: classref-introduction-group

說明
----

一種從 ``.ctex`` 檔載入的紋理。這種檔案格式是 Godot 內部使用的；它是通過匯入系統匯入其他圖像格式建立的。\ **CompressedTexture2D** 可以使用 4 種壓縮方法中的一種（包括沒有任何壓縮）：

- 無損（WebP 或 PNG，在 GPU 上不壓縮）

- 有損（WebP，在 GPU 上不壓縮）

- VRAM 壓縮（在 GPU 上壓縮）

- VRAM 未壓縮（在 GPU 上不壓縮）

- Basis Universal（在 GPU 上壓縮。與 VRAM 壓縮相比，檔更小，但壓縮速度更慢、品質更低）

只有 **VRAM 壓縮**\ 實際上減少了 GPU 上的記憶體使用。\ **無損**\ 和\ **有損**\ 壓縮方法將減少磁片上所需的儲存空間，但它們不會減少 GPU 上的記憶體使用，因為紋理未經壓縮地被發送到 GPU。

使用 **VRAM 壓縮**\ 還可以縮短載入時間，因為與使用無損或失真壓縮的紋理相比，VRAM 壓縮的紋理載入速度更快。VRAM 壓縮會表現出明顯的偽影，並且它旨在用於 3D 算繪，而不是 2D。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`load_path<class_CompressedTexture2D_property_load_path>` | ``""``                                                                                 |
   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | resource_local_to_scene                                        | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CompressedTexture2D_method_load>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CompressedTexture2D_property_load_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **load_path** = ``""`` :ref:`🔗<class_CompressedTexture2D_property_load_path>`

.. rst-class:: classref-property-setget

- :ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_load_path**\ (\ )

該 **CompressedTexture2D** 的檔路徑，指向 ``.ctex`` 檔案。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CompressedTexture2D_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CompressedTexture2D_method_load>`

從指定的路徑 ``path`` 載入紋理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
