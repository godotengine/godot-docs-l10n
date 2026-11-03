:github_url: hide

.. _class_Texture3D:

Texture3D
=========

**繼承：** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CompressedTexture3D<class_CompressedTexture3D>`, :ref:`ImageTexture3D<class_ImageTexture3D>`, :ref:`NoiseTexture3D<class_NoiseTexture3D>`, :ref:`PlaceholderTexture3D<class_PlaceholderTexture3D>`, :ref:`Texture3DRD<class_Texture3DRD>`

三維紋理的基底類別。

.. rst-class:: classref-introduction-group

說明
----

:ref:`ImageTexture3D<class_ImageTexture3D>` 和 :ref:`CompressedTexture3D<class_CompressedTexture3D>` 的基底類別。無法直接使用，但包含所有訪問衍生資源型別所需的函式。\ **Texture3D** 是所有三維紋理型別的基底類別。另見 :ref:`TextureLayered<class_TextureLayered>`\ 。

所有影像都需要有相同的寬度、高度和 mipmap 層數。

要自己建立這樣的紋理檔，請使用 Godot 編輯器的匯入預設重新匯入你的影像檔。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`_get_data<class_Texture3D_private_method__get_data>`\ (\ ) |virtual| |required| |const|       |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_depth<class_Texture3D_private_method__get_depth>`\ (\ ) |virtual| |required| |const|     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                       | :ref:`_get_format<class_Texture3D_private_method__get_format>`\ (\ ) |virtual| |required| |const|   |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_height<class_Texture3D_private_method__get_height>`\ (\ ) |virtual| |required| |const|   |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_width<class_Texture3D_private_method__get_width>`\ (\ ) |virtual| |required| |const|     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`_has_mipmaps<class_Texture3D_private_method__has_mipmaps>`\ (\ ) |virtual| |required| |const| |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                        | :ref:`create_placeholder<class_Texture3D_method_create_placeholder>`\ (\ ) |const|                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_data<class_Texture3D_method_get_data>`\ (\ ) |const|                                      |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_depth<class_Texture3D_method_get_depth>`\ (\ ) |const|                                    |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                       | :ref:`get_format<class_Texture3D_method_get_format>`\ (\ ) |const|                                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_height<class_Texture3D_method_get_height>`\ (\ ) |const|                                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_width<class_Texture3D_method_get_width>`\ (\ ) |const|                                    |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`has_mipmaps<class_Texture3D_method_has_mipmaps>`\ (\ ) |const|                                |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Texture3D_private_method__get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **_get_data**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_data>`

查詢該 **Texture3D** 的資料時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_depth**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_depth>`

查詢該 **Texture3D** 的深度時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_format>`

查詢該 **Texture3D** 的格式時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_height>`

查詢該 **Texture3D** 的高度時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_width>`

查詢該 **Texture3D** 的寬度時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__has_mipmaps>`

查詢該 **Texture3D** 的 Mipmap 是否存在時被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_create_placeholder>`

建立該資源的預留位置版本（\ :ref:`PlaceholderTexture3D<class_PlaceholderTexture3D>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_data**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_data>`

將該 **Texture3D** 的資料作為 :ref:`Image<class_Image>` 陣列返回。每個 :ref:`Image<class_Image>` 代表該 **Texture3D** 的一個\ *切片*\ ，不同的切片對應到不同的深度（Z 軸）級別。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_depth**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_depth>`

返回該 **Texture3D** 的深度，單位為圖元。深度通常由 Z 軸表示（\ :ref:`Texture2D<class_Texture2D>` 中沒有這個維度）。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_format>`

回傳該紋理目前所使用的格式。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_height>`

返回該 **Texture3D** 的高度，單位為圖元。寬度通常由 Y 軸表示。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_width>`

返回該 **Texture3D** 的寬度，單位為圖元。寬度通常由 X 軸表示。

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_has_mipmaps>`

如果該 **Texture3D** 已生成 mipmap，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
