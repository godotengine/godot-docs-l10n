:github_url: hide

.. _class_AtlasTexture:

AtlasTexture
============

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

從另一個 Texture2D 裁剪出的紋理。

.. rst-class:: classref-introduction-group

說明
----

:ref:`Texture2D<class_Texture2D>` 資源，只會繪製其 :ref:`atlas<class_AtlasTexture_property_atlas>` 紋理中由 :ref:`region<class_AtlasTexture_property_region>` 定義的區域，並可另周邊裝置定 :ref:`margin<class_AtlasTexture_property_margin>` 以進行微調。

可以從同一個 :ref:`atlas<class_AtlasTexture_property_atlas>` 裁剪出多個 **AtlasTexture** 資源。將許多小型紋理打包到單一大型紋理中，可減少顯示記憶體占用並降低繪製呼叫次數。

\ **注意：**\ **AtlasTexture** 無法用於 :ref:`AnimatedTexture<class_AnimatedTexture>`\ ，且在 :ref:`TextureRect<class_TextureRect>`\ 、\ :ref:`Sprite2D<class_Sprite2D>` 等節點中不會正確平鋪。若需平鋪 **AtlasTexture**\ ，請改變其 :ref:`region<class_AtlasTexture_property_region>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`atlas<class_AtlasTexture_property_atlas>`             |                                                                                        |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`filter_clip<class_AtlasTexture_property_filter_clip>` | ``false``                                                                              |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`margin<class_AtlasTexture_property_margin>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region<class_AtlasTexture_property_region>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                     | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AtlasTexture_property_atlas:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **atlas** :ref:`🔗<class_AtlasTexture_property_atlas>`

.. rst-class:: classref-property-setget

- |void| **set_atlas**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_atlas**\ (\ )

包含該圖集的紋理。可以是任何繼承自 :ref:`Texture2D<class_Texture2D>` 的型別，包括其他 **AtlasTexture**\ 。

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_filter_clip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_clip** = ``false`` :ref:`🔗<class_AtlasTexture_property_filter_clip>`

.. rst-class:: classref-property-setget

- |void| **set_filter_clip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_filter_clip**\ (\ )

若為 ``true``\ ，則會裁剪 :ref:`region<class_AtlasTexture_property_region>` 之外的區域，以避免周圍紋理像素滲色。

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_margin:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **margin** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_margin**\ (\ )

環繞 :ref:`region<class_AtlasTexture_property_region>` 的邊距，適用於微調。如果設定此屬性的 :ref:`Rect2.size<class_Rect2_property_size>`\ （在編輯器中的「w」與「h」），則繪製的紋理會縮放以符合邊距。

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_region:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region**\ (\ )

用於繪製 :ref:`atlas<class_AtlasTexture_property_atlas>` 的區域。如果區域在任一方向上大小為 ``0``\ ，則該方向會使用 :ref:`atlas<class_AtlasTexture_property_atlas>` 的大小。

\ **注意：**\ 圖片大小總是整數，所以實際的區域大小會被向下取整。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
