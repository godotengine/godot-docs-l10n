:github_url: hide

.. _class_MeshTexture:

MeshTexture
===========

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

簡單的紋理，使用一個網格來繪製自己。

.. rst-class:: classref-introduction-group

說明
----

簡單的紋理，使用一個網格來繪製自己。它的套用場景有限，因為 Flag 不能更改，而且不支援區域繪製。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`base_texture<class_MeshTexture_property_base_texture>` |                                                                                        |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`image_size<class_MeshTexture_property_image_size>`     | ``Vector2(0, 0)``                                                                      |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`           | :ref:`mesh<class_MeshTexture_property_mesh>`                 |                                                                                        |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                      | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_MeshTexture_property_base_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **base_texture** :ref:`🔗<class_MeshTexture_property_base_texture>`

.. rst-class:: classref-property-setget

- |void| **set_base_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_base_texture**\ (\ )

設定該 Mesh 用來繪製的基礎紋理。

.. rst-class:: classref-item-separator

----

.. _class_MeshTexture_property_image_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **image_size** = ``Vector2(0, 0)`` :ref:`🔗<class_MeshTexture_property_image_size>`

.. rst-class:: classref-property-setget

- |void| **set_image_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_image_size**\ (\ )

設定圖像的大小，需要參考。

.. rst-class:: classref-item-separator

----

.. _class_MeshTexture_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshTexture_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

設定用於繪製的網格，該網格必須使用 2D 頂點。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
