:github_url: hide

.. _class_CompressedTextureLayered:

CompressedTextureLayered
========================

**繼承：** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CompressedCubemap<class_CompressedCubemap>`, :ref:`CompressedCubemapArray<class_CompressedCubemapArray>`, :ref:`CompressedTexture2DArray<class_CompressedTexture2DArray>`

可壓縮紋理陣列的基底類別。

.. rst-class:: classref-introduction-group

說明
----

:ref:`CompressedTexture2DArray<class_CompressedTexture2DArray>` 和 :ref:`CompressedTexture3D<class_CompressedTexture3D>` 的基底類別。不能直接使用，但包含了存取衍生資源型別所需的所有函式。另見 :ref:`TextureLayered<class_TextureLayered>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`load_path<class_CompressedTextureLayered_property_load_path>` | ``""`` |
   +-----------------------------+---------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CompressedTextureLayered_method_load>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CompressedTextureLayered_property_load_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **load_path** = ``""`` :ref:`🔗<class_CompressedTextureLayered_property_load_path>`

.. rst-class:: classref-property-setget

- :ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_load_path**\ (\ )

載入紋理所使用的路徑。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CompressedTextureLayered_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CompressedTextureLayered_method_load>`

載入位於 ``path`` 的紋理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
