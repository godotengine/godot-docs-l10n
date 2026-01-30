:github_url: hide

.. _class_VisualShaderNodeTexture2DArray:

VisualShaderNodeTexture2DArray
==============================

**繼承：** :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

視覺化著色器圖中使用的 2D 紋理 uniform 陣列。

.. rst-class:: classref-introduction-group

說明
----

翻譯為著色器語言中的 ``uniform sampler2DArray``\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------+-----------------------------------------------------------------------------------+
   | :ref:`TextureLayered<class_TextureLayered>` | :ref:`texture_array<class_VisualShaderNodeTexture2DArray_property_texture_array>` |
   +---------------------------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeTexture2DArray_property_texture_array:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **texture_array** :ref:`🔗<class_VisualShaderNodeTexture2DArray_property_texture_array>`

.. rst-class:: classref-property-setget

- |void| **set_texture_array**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_texture_array**\ (\ )

源紋理陣列。\ :ref:`VisualShaderNodeSample3D.source<class_VisualShaderNodeSample3D_property_source>` 為 :ref:`VisualShaderNodeSample3D.SOURCE_TEXTURE<class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE>` 時使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
