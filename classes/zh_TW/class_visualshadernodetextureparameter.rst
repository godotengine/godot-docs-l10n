:github_url: hide

.. _class_VisualShaderNodeTextureParameter:

VisualShaderNodeTextureParameter
================================

**繼承：** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisualShaderNodeCubemapParameter<class_VisualShaderNodeCubemapParameter>`, :ref:`VisualShaderNodeTexture2DArrayParameter<class_VisualShaderNodeTexture2DArrayParameter>`, :ref:`VisualShaderNodeTexture2DParameter<class_VisualShaderNodeTexture2DParameter>`, :ref:`VisualShaderNodeTexture3DParameter<class_VisualShaderNodeTexture3DParameter>`, :ref:`VisualShaderNodeTextureParameterTriplanar<class_VisualShaderNodeTextureParameterTriplanar>`

在視覺化著色器圖中執行 uniform 的紋理搜尋。

.. rst-class:: classref-introduction-group

說明
----

對作為 uniform 著色器提供的紋理進行搜尋操作。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>`   | :ref:`color_default<class_VisualShaderNodeTextureParameter_property_color_default>`   | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` | :ref:`texture_filter<class_VisualShaderNodeTextureParameter_property_texture_filter>` | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` | :ref:`texture_repeat<class_VisualShaderNodeTextureParameter_property_texture_repeat>` | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` | :ref:`texture_source<class_VisualShaderNodeTextureParameter_property_texture_source>` | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>`     | :ref:`texture_type<class_VisualShaderNodeTextureParameter_property_texture_type>`     | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeTextureParameter_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureType>`

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_DATA** = ``0``

在uniform宣告中未新增提示。

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_COLOR** = ``1``

Adds ``source_color`` as hint to the uniform declaration for proper conversion from nonlinear sRGB encoding to linear encoding.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_NORMAL_MAP** = ``2``

將 ``hint_normal`` 作為提示新增到 uniform 宣告中，該宣告在內部將紋理轉換為法線貼圖。

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_ANISOTROPY:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_ANISOTROPY** = ``3``

向該 uniform 宣告新增 ``hint_anisotropy`` 提示，用於流向圖。

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_MAX** = ``4``

代表 :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_ColorDefault:

.. rst-class:: classref-enumeration

enum **ColorDefault**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_ColorDefault>`

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_WHITE:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_WHITE** = ``0``

預設為完全不透明的白色。

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_BLACK:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_BLACK** = ``1``

預設為完全不透明的黑色。

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_TRANSPARENT** = ``2``

預設為完全透明的黑色。

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_MAX** = ``3``

代表 :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureFilter:

.. rst-class:: classref-enumeration

enum **TextureFilter**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureFilter>`

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_DEFAULT** = ``0``

使用由該著色器所附加到的節點決定的篩檢程式對紋理進行取樣。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST** = ``1``

紋理僅取最鄰近像素，近看呈現馬賽克，遠處因未取樣 mipmap 而顯得顆粒。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR** = ``2``

紋理在最鄰近 4 像素間插值，近看平滑，遠處因未取樣 mipmap 仍顆粒。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST_MIPMAP** = ``3``

The texture filter reads from the nearest pixel and blends between the nearest 2 mipmaps (or uses the nearest mipmap if :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` is ``true``). This makes the texture look pixelated from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to :ref:`Camera2D<class_Camera2D>` zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR_MIPMAP** = ``4``

The texture filter blends between the nearest 4 pixels and between the nearest 2 mipmaps (or uses the nearest mipmap if :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` is ``true``). This makes the texture look smooth from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to :ref:`Camera2D<class_Camera2D>` zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP_ANISOTROPIC:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST_MIPMAP_ANISOTROPIC** = ``5``

The texture filter reads from the nearest pixel and blends between 2 mipmaps (or uses the nearest mipmap if :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` is ``true``) based on the angle between the surface and the camera view. This makes the texture look pixelated from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting :ref:`ProjectSettings.rendering/textures/default_filters/anisotropic_filtering_level<class_ProjectSettings_property_rendering/textures/default_filters/anisotropic_filtering_level>`.

\ **Note:** This texture filter is rarely useful in 2D projects. :ref:`FILTER_NEAREST_MIPMAP<class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP>` is usually more appropriate in this case.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP_ANISOTROPIC:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR_MIPMAP_ANISOTROPIC** = ``6``

The texture filter blends between the nearest 4 pixels and blends between 2 mipmaps (or uses the nearest mipmap if :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` is ``true``) based on the angle between the surface and the camera view. This makes the texture look smooth from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting :ref:`ProjectSettings.rendering/textures/default_filters/anisotropic_filtering_level<class_ProjectSettings_property_rendering/textures/default_filters/anisotropic_filtering_level>`.

\ **Note:** This texture filter is rarely useful in 2D projects. :ref:`FILTER_LINEAR_MIPMAP<class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP>` is usually more appropriate in this case.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_MAX** = ``7``

代表 :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureRepeat:

.. rst-class:: classref-enumeration

enum **TextureRepeat**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureRepeat>`

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_DEFAULT** = ``0``

使用由該著色器所附加到的節點決定的重複模式對該紋理進行取樣。

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_ENABLED** = ``1``

紋理將正常重複。

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_DISABLED** = ``2``

紋理不會重複。

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_MAX** = ``3``

代表 :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureSource:

.. rst-class:: classref-enumeration

enum **TextureSource**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureSource>`

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_NONE** = ``0``

著色器中未指定紋理源。

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_SCREEN** = ``1``

紋理源為螢幕紋理，捕獲了本影格中繪製的所有不透明物件。

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_DEPTH** = ``2``

紋理源為深度預處理階段的深度紋理。

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_NORMAL_ROUGHNESS:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_NORMAL_ROUGHNESS** = ``3``

紋理源為深度預處理階段的法線粗糙度緩衝區。

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_MAX** = ``4``

代表 :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeTextureParameter_property_color_default:

.. rst-class:: classref-property

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **color_default** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_color_default>`

.. rst-class:: classref-property-setget

- |void| **set_color_default**\ (\ value\: :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>`\ )
- :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **get_color_default**\ (\ )

如果沒有給 uniform 分配紋理，則設定預設顏色。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **texture_filter** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>`\ )
- :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **get_texture_filter**\ (\ )

Sets the texture filtering mode.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_repeat:

.. rst-class:: classref-property

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **texture_repeat** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_texture_repeat**\ (\ value\: :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>`\ )
- :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **get_texture_repeat**\ (\ )

Sets the texture repeating mode.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_source:

.. rst-class:: classref-property

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **texture_source** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_source>`

.. rst-class:: classref-property-setget

- |void| **set_texture_source**\ (\ value\: :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>`\ )
- :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **get_texture_source**\ (\ )

Sets the texture source mode. Used for reading from the screen, depth, or normal_roughness texture.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **get_texture_type**\ (\ )

Defines the type of data provided by the source texture.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
