:github_url: hide

.. _class_TextureLayeredRD:

TextureLayeredRD
================

**繼承：** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`Texture2DArrayRD<class_Texture2DArrayRD>`, :ref:`TextureCubemapArrayRD<class_TextureCubemapArrayRD>`, :ref:`TextureCubemapRD<class_TextureCubemapRD>`

滑桿的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

Base class for :ref:`Texture2DArrayRD<class_Texture2DArrayRD>`, :ref:`TextureCubemapRD<class_TextureCubemapRD>` and :ref:`TextureCubemapArrayRD<class_TextureCubemapArrayRD>`. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types.

\ **Note:** **TextureLayeredRD** is intended for low-level usage with :ref:`RenderingDevice<class_RenderingDevice>`. For most use cases, use :ref:`TextureLayered<class_TextureLayered>` instead.

.. rst-class:: classref-introduction-group

教學
----

- `Compute Texture demo <https://godotengine.org/asset-library/asset/2764>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`texture_rd_rid<class_TextureLayeredRD_property_texture_rd_rid>` |
   +-----------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TextureLayeredRD_property_texture_rd_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **texture_rd_rid** :ref:`🔗<class_TextureLayeredRD_property_texture_rd_rid>`

.. rst-class:: classref-property-setget

- |void| **set_texture_rd_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_texture_rd_rid**\ (\ )

:ref:`RenderingDevice<class_RenderingDevice>` 上建立的紋理對象的 RID。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
