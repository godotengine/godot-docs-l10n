:github_url: hide

.. _class_VisualShaderNodeTextureParameter:

VisualShaderNodeTextureParameter
================================

**继承：** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisualShaderNodeCubemapParameter<class_VisualShaderNodeCubemapParameter>`, :ref:`VisualShaderNodeTexture2DArrayParameter<class_VisualShaderNodeTexture2DArrayParameter>`, :ref:`VisualShaderNodeTexture2DParameter<class_VisualShaderNodeTexture2DParameter>`, :ref:`VisualShaderNodeTexture3DParameter<class_VisualShaderNodeTexture3DParameter>`, :ref:`VisualShaderNodeTextureParameterTriplanar<class_VisualShaderNodeTextureParameterTriplanar>`

在可视化着色器图中执行 uniform 的纹理查找。

.. rst-class:: classref-introduction-group

描述
----

对作为 uniform 着色器提供的纹理进行查找操作。

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_VisualShaderNodeTextureParameter_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureType>`

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_DATA** = ``0``

在uniform声明中未添加提示。

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_COLOR** = ``1``

Adds ``source_color`` as hint to the uniform declaration for proper conversion from nonlinear sRGB encoding to linear encoding.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_NORMAL_MAP** = ``2``

将 ``hint_normal`` 作为提示添加到 uniform 声明中，该声明在内部将纹理转换为法线贴图。

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_ANISOTROPY:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_ANISOTROPY** = ``3``

向该 uniform 声明添加 ``hint_anisotropy`` 提示，用于流向图。

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_MAX** = ``4``

代表 :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_ColorDefault:

.. rst-class:: classref-enumeration

enum **ColorDefault**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_ColorDefault>`

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_WHITE:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_WHITE** = ``0``

默认为完全不透明的白色。

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_BLACK:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_BLACK** = ``1``

默认为完全不透明的黑色。

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_TRANSPARENT** = ``2``

默认为完全透明的黑色。

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_MAX** = ``3``

代表 :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureFilter:

.. rst-class:: classref-enumeration

enum **TextureFilter**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureFilter>`

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_DEFAULT** = ``0``

使用由该着色器所附加到的节点决定的过滤器对纹理进行采样。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST** = ``1``

纹理过滤仅从最近的像素读取。这使得纹理从近距离看是像素化的，从远处看是颗粒状的（由于多级渐远纹理没有被采样）。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR** = ``2``

纹理过滤在最近的 4 个像素之间进行混合。这使得纹理从近处看起来很平滑，从远处看起来却有颗粒感（由于多级渐远纹理没有被采样）。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST_MIPMAP** = ``3``

纹理过滤从最近的像素读取并在最近的 2 个多级渐远纹理之间进行混合（或者如果 :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` 为 ``true``\ ，则使用最近的多级渐远纹理）。这使得纹理从近处看起来像素化，从远处看起来平滑。

将此用于可能以低缩放查看的非像素艺术纹理（例如，由于 :ref:`Camera2D<class_Camera2D>` 缩放或精灵缩放），因为多级渐远纹理对于平滑小于屏幕像素的像素很重要。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR_MIPMAP** = ``4``

纹理过滤在最近的 4 个像素和最近的 2 个多级渐远纹理之间进行混合（或者如果 :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` 为 ``true``\ ，则使用最近的多级渐远纹理）。这使得纹理从近处看起来平滑，从远处看起来也平滑。

将此用于可能以低缩放查看的非像素艺术纹理（例如，由于 :ref:`Camera2D<class_Camera2D>` 缩放或精灵缩放），因为多级渐远纹理对于平滑小于屏幕像素的像素很重要。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP_ANISOTROPIC:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST_MIPMAP_ANISOTROPIC** = ``5``

纹理过滤从最近的像素读取并根据表面和相机视图之间的角度在 2 个多级渐远纹理之间进行混合（或者如果 :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` 为 ``true``\ ，则使用最近的多级渐远纹理）。这使得纹理从近处看起来像素化，从远处看起来平滑。各向异性过滤提高了几乎与相机位于一条线的表面上的纹理质量，但速度稍慢。各向异性过滤级别可以通过调整 :ref:`ProjectSettings.rendering/textures/default_filters/anisotropic_filtering_level<class_ProjectSettings_property_rendering/textures/default_filters/anisotropic_filtering_level>` 来改变。

\ **注意：**\ 该纹理过滤在 2D 项目中很少有用。\ :ref:`FILTER_NEAREST_MIPMAP<class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP>` 在这种情况下通常更合适。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP_ANISOTROPIC:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR_MIPMAP_ANISOTROPIC** = ``6``

纹理过滤在最近的 4 个像素之间进行混合，并基于表面与相机视图之间的角度在 2 个多级渐远纹理之间进行混合（或者如果 :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` 为 ``true``\ ，则使用最近的多级渐远纹理）。这使得纹理从近处看起来平滑，从远处看起来也平滑。各向异性过滤提高了几乎与相机位于一条线的表面上的纹理质量，但速度稍慢。各向异性过滤级别可以通过调整 :ref:`ProjectSettings.rendering/textures/default_filters/anisotropic_filtering_level<class_ProjectSettings_property_rendering/textures/default_filters/anisotropic_filtering_level>` 来改变。

\ **注意：**\ 该纹理过滤在 2D 项目中很少有用。\ :ref:`FILTER_LINEAR_MIPMAP<class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP>` 在这种情况下通常更合适。

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_MAX** = ``7``

代表 :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureRepeat:

.. rst-class:: classref-enumeration

enum **TextureRepeat**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureRepeat>`

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_DEFAULT** = ``0``

使用由该着色器所附加到的节点决定的重复模式对该纹理进行采样。

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_ENABLED** = ``1``

纹理将正常重复。

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_DISABLED** = ``2``

纹理不会重复。

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_MAX** = ``3``

代表 :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureSource:

.. rst-class:: classref-enumeration

enum **TextureSource**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureSource>`

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_NONE** = ``0``

着色器中未指定纹理源。

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_SCREEN** = ``1``

纹理源为屏幕纹理，捕获了本帧中绘制的所有不透明对象。

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_DEPTH** = ``2``

纹理源为深度预处理阶段的深度纹理。

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_NORMAL_ROUGHNESS:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_NORMAL_ROUGHNESS** = ``3``

纹理源为深度预处理阶段的法线粗糙度缓冲区。

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_MAX** = ``4``

代表 :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeTextureParameter_property_color_default:

.. rst-class:: classref-property

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **color_default** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_color_default>`

.. rst-class:: classref-property-setget

- |void| **set_color_default**\ (\ value\: :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>`\ )
- :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **get_color_default**\ (\ )

如果没有给 uniform 分配纹理，则设置默认颜色。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **texture_filter** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>`\ )
- :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **get_texture_filter**\ (\ )

设置纹理的过滤模式。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_repeat:

.. rst-class:: classref-property

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **texture_repeat** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_texture_repeat**\ (\ value\: :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>`\ )
- :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **get_texture_repeat**\ (\ )

设置纹理的重复模式。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_source:

.. rst-class:: classref-property

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **texture_source** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_source>`

.. rst-class:: classref-property-setget

- |void| **set_texture_source**\ (\ value\: :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>`\ )
- :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **get_texture_source**\ (\ )

设置纹理源的模式。用于读取 screen（屏幕）、depth（深度）或 normal_roughness（法线粗糙度）纹理。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **get_texture_type**\ (\ )

定义源纹理提供的数据类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
