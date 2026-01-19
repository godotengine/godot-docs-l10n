:github_url: hide

.. _class_NoiseTexture2D:

NoiseTexture2D
==============

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

由 :ref:`Noise<class_Noise>` 对象生成的噪声所填充的 2D 纹理。

.. rst-class:: classref-introduction-group

描述
----

使用 :ref:`FastNoiseLite<class_FastNoiseLite>` 库或其他噪声生成器来填充所需大小的纹理数据。\ **NoiseTexture2D** 还能生成法线贴图纹理。

该类在内部使用 :ref:`Thread<class_Thread>` 生成纹理数据，因此如果生成过程尚未完成，\ :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` 可能会返回 ``null``\ 。在这种情况下，需要等待纹理生成后再访问图像和生成的字节数据：

::

    var texture = NoiseTexture2D.new()
    texture.noise = FastNoiseLite.new()
    await texture.changed
    var image = texture.get_image()
    var data = image.get_data()

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`as_normal_map<class_NoiseTexture2D_property_as_normal_map>`               | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`bump_strength<class_NoiseTexture2D_property_bump_strength>`               | ``8.0``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>` | :ref:`color_ramp<class_NoiseTexture2D_property_color_ramp>`                     |                                                                                        |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`generate_mipmaps<class_NoiseTexture2D_property_generate_mipmaps>`         | ``true``                                                                               |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`height<class_NoiseTexture2D_property_height>`                             | ``512``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`in_3d_space<class_NoiseTexture2D_property_in_3d_space>`                   | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`invert<class_NoiseTexture2D_property_invert>`                             | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Noise<class_Noise>`       | :ref:`noise<class_NoiseTexture2D_property_noise>`                               |                                                                                        |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`normalize<class_NoiseTexture2D_property_normalize>`                       | ``true``                                                                               |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | resource_local_to_scene                                                         | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`seamless<class_NoiseTexture2D_property_seamless>`                         | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`seamless_blend_skirt<class_NoiseTexture2D_property_seamless_blend_skirt>` | ``0.1``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`width<class_NoiseTexture2D_property_width>`                               | ``512``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_NoiseTexture2D_property_as_normal_map:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **as_normal_map** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_as_normal_map>`

.. rst-class:: classref-property-setget

- |void| **set_as_normal_map**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_normal_map**\ (\ )

如果为 ``true``\ ，产生的纹理包含一个由原始噪声创建的法线贴图，解释为凹凸贴图。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_bump_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **bump_strength** = ``8.0`` :ref:`🔗<class_NoiseTexture2D_property_bump_strength>`

.. rst-class:: classref-property-setget

- |void| **set_bump_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bump_strength**\ (\ )

该纹理中使用的凹凸贴图的强度。更高的值会使凹凸贴图看起来更大，而更低的值会使它们看起来更柔和。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_NoiseTexture2D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

:ref:`Gradient<class_Gradient>`\ ，用于将每个像素的亮度映射到一个颜色值。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``true`` :ref:`🔗<class_NoiseTexture2D_property_generate_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_generate_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_generating_mipmaps**\ (\ )

决定是否为该纹理生成 mipmap。启用该属性可减少纹理锯齿，但会增加约 33% 的内存占用，生成噪声纹理也可能需要更长的时间。

\ **注意：**\ 使用该 **NoiseTexture2D** 的材质需要启用 mipmap 过滤才能让 :ref:`generate_mipmaps<class_NoiseTexture2D_property_generate_mipmaps>` 生效。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``512`` :ref:`🔗<class_NoiseTexture2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

生成的纹理的高度（单位为像素）。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_in_3d_space:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **in_3d_space** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_in_3d_space>`

.. rst-class:: classref-property-setget

- |void| **set_in_3d_space**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_in_3d_space**\ (\ )

决定是否在 3D 空间中计算噪声图像。可能会导致对比度降低。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_invert:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_invert>`

.. rst-class:: classref-property-setget

- |void| **set_invert**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert**\ (\ )

如果为 ``true``\ ，则反转该噪声纹理。白变黑，黑变白。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_noise:

.. rst-class:: classref-property

:ref:`Noise<class_Noise>` **noise** :ref:`🔗<class_NoiseTexture2D_property_noise>`

.. rst-class:: classref-property-setget

- |void| **set_noise**\ (\ value\: :ref:`Noise<class_Noise>`\ )
- :ref:`Noise<class_Noise>` **get_noise**\ (\ )

:ref:`Noise<class_Noise>` 对象的实例。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalize** = ``true`` :ref:`🔗<class_NoiseTexture2D_property_normalize>`

.. rst-class:: classref-property-setget

- |void| **set_normalize**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_normalized**\ (\ )

如果为 ``true``\ ，来自噪声发生器的噪声图像，将被归一化到范围 ``0.0`` 到 ``1.0``\ 。

关闭归一化会影响对比度，并允许生成非重复的可平铺噪声纹理。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_seamless:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **seamless** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_seamless>`

.. rst-class:: classref-property-setget

- |void| **set_seamless**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_seamless**\ (\ )

如果为 ``true``\ ，则从 :ref:`Noise<class_Noise>` 资源请求无缝纹理。

\ **注意：**\ 与非无缝噪声相比，无缝噪声纹理可能需要更长的时间来生成，并且/或者可能具有较低的对比度，具体取决于所使用的 :ref:`Noise<class_Noise>` 资源。这是因为一些实现使用更高的维度来生成无缝噪声。

\ **注意：**\ 默认的 :ref:`FastNoiseLite<class_FastNoiseLite>` 实现在生成无缝纹理时使用回退路径。如果使用的 :ref:`width<class_NoiseTexture2D_property_width>` 或 :ref:`height<class_NoiseTexture2D_property_height>` 小于默认值，你可能需要通过增大 :ref:`seamless_blend_skirt<class_NoiseTexture2D_property_seamless_blend_skirt>` 来让无缝混合更高效。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_seamless_blend_skirt:

.. rst-class:: classref-property

:ref:`float<class_float>` **seamless_blend_skirt** = ``0.1`` :ref:`🔗<class_NoiseTexture2D_property_seamless_blend_skirt>`

.. rst-class:: classref-property-setget

- |void| **set_seamless_blend_skirt**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_seamless_blend_skirt**\ (\ )

用于无缝纹理生成的默认/回退实现。它决定接缝混合的距离。较高的值可能会导致较少的细节和对比度。详见 :ref:`Noise<class_Noise>`\ 。

\ **注意：**\ 如果使用的 :ref:`width<class_NoiseTexture2D_property_width>` 或 :ref:`height<class_NoiseTexture2D_property_height>` 小于默认值，你可能需要通过增大 :ref:`seamless_blend_skirt<class_NoiseTexture2D_property_seamless_blend_skirt>` 来让无缝混合更高效。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``512`` :ref:`🔗<class_NoiseTexture2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

生成的纹理的宽度（单位为像素）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
