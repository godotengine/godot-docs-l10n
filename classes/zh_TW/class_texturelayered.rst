:github_url: hide

.. _class_TextureLayered:

TextureLayered
==============

**繼承：** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>`, :ref:`ImageTextureLayered<class_ImageTextureLayered>`, :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>`, :ref:`TextureLayeredRD<class_TextureLayeredRD>`

包含多個 :ref:`Image<class_Image>` 的紋理型別的基底類別。每個圖像的大小和格式都是一樣的。

.. rst-class:: classref-introduction-group

說明
----

:ref:`ImageTextureLayered<class_ImageTextureLayered>` 和 :ref:`CompressedTextureLayered<class_CompressedTextureLayered>` 的基底類別。不能直接使用，但包含了存取衍生資源型別所需的所有函式。另見 :ref:`Texture3D<class_Texture3D>`\ 。

資料是按層設定的。對於 :ref:`Texture2DArray<class_Texture2DArray>`\ ，層指定的是陣列層。

所有圖像都需要具有相同的寬度、高度和 mipmap 級別數。

\ **TextureLayered** 可以用 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` 載入。

在內部，Godot 將這些檔對應到目標算繪驅動程式（Vulkan、OpenGL3）中的對應文件。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                    | :ref:`_get_format<class_TextureLayered_private_method__get_format>`\ (\ ) |virtual| |required| |const|                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_height<class_TextureLayered_private_method__get_height>`\ (\ ) |virtual| |required| |const|                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                           | :ref:`_get_layer_data<class_TextureLayered_private_method__get_layer_data>`\ (\ layer_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_layered_type<class_TextureLayered_private_method__get_layered_type>`\ (\ ) |virtual| |required| |const|                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_layers<class_TextureLayered_private_method__get_layers>`\ (\ ) |virtual| |required| |const|                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_width<class_TextureLayered_private_method__get_width>`\ (\ ) |virtual| |required| |const|                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_has_mipmaps<class_TextureLayered_private_method__has_mipmaps>`\ (\ ) |virtual| |required| |const|                                            |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                    | :ref:`get_format<class_TextureLayered_method_get_format>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_height<class_TextureLayered_method_get_height>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                           | :ref:`get_layer_data<class_TextureLayered_method_get_layer_data>`\ (\ layer\: :ref:`int<class_int>`\ ) |const|                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LayeredType<enum_TextureLayered_LayeredType>` | :ref:`get_layered_type<class_TextureLayered_method_get_layered_type>`\ (\ ) |const|                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_layers<class_TextureLayered_method_get_layers>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_width<class_TextureLayered_method_get_width>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_mipmaps<class_TextureLayered_method_has_mipmaps>`\ (\ ) |const|                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_TextureLayered_LayeredType:

.. rst-class:: classref-enumeration

enum **LayeredType**: :ref:`🔗<enum_TextureLayered_LayeredType>`

.. _class_TextureLayered_constant_LAYERED_TYPE_2D_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_2D_ARRAY** = ``0``

紋理為通用的 :ref:`Texture2DArray<class_Texture2DArray>`\ 。

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP** = ``1``

紋理為 :ref:`Cubemap<class_Cubemap>`\ ，每一面都有自己的層（共 6 層）。

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP_ARRAY** = ``2``

紋理為 :ref:`CubemapArray<class_CubemapArray>`\ ，每個立方體貼圖都由 6 層組成。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TextureLayered_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_format>`

查詢該 **TextureLayered** 的格式時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_height>`

查詢該 **TextureLayered** 的高度時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **_get_layer_data**\ (\ layer_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layer_data>`

查詢該 **TextureLayered** 中某一層的資料時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layered_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layered_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layered_type>`

查詢該 **TextureLayered** 的層型別時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layers**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layers>`

查詢該 **TextureLayered** 的層數時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_width>`

查詢該 **TextureLayered** 的寬度時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__has_mipmaps>`

查詢該 **TextureLayered** 的 Mipmap 是否存在時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_format>`

Returns the current format being used by this texture.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_height>`

返回該紋理的高度，單位為圖元。高度通常由 Y 軸表示。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_layer_data**\ (\ layer\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layer_data>`

返回帶有指定 ``layer`` 層資料的 :ref:`Image<class_Image>` 圖像資源。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layered_type:

.. rst-class:: classref-method

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **get_layered_type**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layered_type>`

返回該 **TextureLayered** 的型別。型別決定了資料的存取方式，立方體圖有特殊的類型。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_layers**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layers>`

返回引用的 :ref:`Image<class_Image>` 數。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_width>`

返回該紋理的寬度，單位為圖元。寬度通常由 X 軸表示。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_has_mipmaps>`

如果層生成了 mipmap 則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
