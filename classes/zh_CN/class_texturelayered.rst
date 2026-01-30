:github_url: hide

.. _class_TextureLayered:

TextureLayered
==============

**继承：** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>`, :ref:`ImageTextureLayered<class_ImageTextureLayered>`, :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>`, :ref:`TextureLayeredRD<class_TextureLayeredRD>`

包含多个 :ref:`Image<class_Image>` 的纹理类型的基类。每个图像的大小和格式都是一样的。

.. rst-class:: classref-introduction-group

描述
----

:ref:`ImageTextureLayered<class_ImageTextureLayered>` 和 :ref:`CompressedTextureLayered<class_CompressedTextureLayered>` 的基类。不能直接使用，但包含了访问派生资源类型所需的所有函数。另见 :ref:`Texture3D<class_Texture3D>`\ 。

数据是按层设置的。对于 :ref:`Texture2DArray<class_Texture2DArray>`\ ，层指定的是数组层。

所有图像都需要具有相同的宽度、高度和 mipmap 级别数。

\ **TextureLayered** 可以用 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` 加载。

在内部，Godot 将这些文件映射到目标渲染驱动程序（Vulkan、OpenGL3）中的对应文件。

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

枚举
----

.. _enum_TextureLayered_LayeredType:

.. rst-class:: classref-enumeration

enum **LayeredType**: :ref:`🔗<enum_TextureLayered_LayeredType>`

.. _class_TextureLayered_constant_LAYERED_TYPE_2D_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_2D_ARRAY** = ``0``

纹理为通用的 :ref:`Texture2DArray<class_Texture2DArray>`\ 。

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP** = ``1``

纹理为 :ref:`Cubemap<class_Cubemap>`\ ，每一面都有自己的层（共 6 层）。

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP_ARRAY** = ``2``

纹理为 :ref:`CubemapArray<class_CubemapArray>`\ ，每个立方体贴图都由 6 层组成。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TextureLayered_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_format>`

查询该 **TextureLayered** 的格式时被调用。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_height>`

查询该 **TextureLayered** 的高度时被调用。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **_get_layer_data**\ (\ layer_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layer_data>`

查询该 **TextureLayered** 中某一层的数据时被调用。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layered_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layered_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layered_type>`

查询该 **TextureLayered** 的层类型时被调用。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layers**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layers>`

查询该 **TextureLayered** 的层数时被调用。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_width>`

查询该 **TextureLayered** 的宽度时被调用。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__has_mipmaps>`

查询该 **TextureLayered** 的 Mipmap 是否存在时被调用。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_format>`

返回该纹理当前所使用的格式。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_height>`

返回该纹理的高度，单位为像素。高度通常由 Y 轴表示。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_layer_data**\ (\ layer\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layer_data>`

返回带有指定 ``layer`` 层数据的 :ref:`Image<class_Image>` 图像资源。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layered_type:

.. rst-class:: classref-method

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **get_layered_type**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layered_type>`

返回该 **TextureLayered** 的类型。类型决定了数据的访问方式，立方体图有特殊的类型。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_layers**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layers>`

返回引用的 :ref:`Image<class_Image>` 数。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_width>`

返回该纹理的宽度，单位为像素。宽度通常由 X 轴表示。

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_has_mipmaps>`

如果层生成了 mipmap 则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
