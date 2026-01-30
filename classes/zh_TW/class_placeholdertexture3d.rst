:github_url: hide

.. _class_PlaceholderTexture3D:

PlaceholderTexture3D
====================

**繼承：** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

三維紋理的占位類。

.. rst-class:: classref-introduction-group

說明
----

載入使用 :ref:`Texture3D<class_Texture3D>` 子類別的專案時，使用這個類的情況有兩種：

- 運作使用專用伺服器模式匯出的專案，僅保留紋理的尺寸（因為遊戲邏輯可能依賴紋理的尺寸，可能用來定位其他元素）。這樣能夠顯著減小匯出的 PCK 的大小。

- 由於引擎版本或建構不同而缺失這個子類別（例如禁用了某些模組）。

\ **注意：**\ 設計這個類的目的並不是作為算繪的實際紋理。不保證能夠在著色器和材質中正常工作（例如對 UV 進行計算）。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------+-----------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`size<class_PlaceholderTexture3D_property_size>` | ``Vector3i(1, 1, 1)`` |
   +---------------------------------+-------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PlaceholderTexture3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3i<class_Vector3i>` **size** = ``Vector3i(1, 1, 1)`` :ref:`🔗<class_PlaceholderTexture3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3i<class_Vector3i>`\ )
- :ref:`Vector3i<class_Vector3i>` **get_size**\ (\ )

紋理的尺寸（單位為圖元）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
