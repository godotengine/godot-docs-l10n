:github_url: hide

.. _class_GradientTexture1D:

GradientTexture1D
=================

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用从 :ref:`Gradient<class_Gradient>` 获得的颜色的一维纹理。

.. rst-class:: classref-introduction-group

描述
----

从 :ref:`Gradient<class_Gradient>` 获取颜色来填充纹理数据的一维纹理。通过为每个像素采样渐变来填充纹理。因此，该纹理不一定代表渐变的精确副本，因为如果没有足够的像素，它可能会丢失一些颜色。另见 :ref:`GradientTexture2D<class_GradientTexture2D>`\ 、\ :ref:`CurveTexture<class_CurveTexture>` 和 :ref:`CurveXYZTexture<class_CurveXYZTexture>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>` | :ref:`gradient<class_GradientTexture1D_property_gradient>` |                                                                                        |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | resource_local_to_scene                                    | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_hdr<class_GradientTexture1D_property_use_hdr>`   | ``false``                                                                              |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`width<class_GradientTexture1D_property_width>`       | ``256``                                                                                |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GradientTexture1D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_GradientTexture1D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

用于填充纹理的 :ref:`Gradient<class_Gradient>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture1D_property_use_hdr:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hdr** = ``false`` :ref:`🔗<class_GradientTexture1D_property_use_hdr>`

.. rst-class:: classref-property-setget

- |void| **set_use_hdr**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_hdr**\ (\ )

如果为 ``true``\ ，则生成的纹理会支持高动态范围（\ :ref:`Image.FORMAT_RGBAF<class_Image_constant_FORMAT_RGBAF>` 格式）。可以在 :ref:`Environment.glow_enabled<class_Environment_property_glow_enabled>` 为 ``true`` 时实现辉光效果。如果为 ``false``\ ，则生成的纹理会使用低动态范围；过亮的颜色会被钳制（\ :ref:`Image.FORMAT_RGBA8<class_Image_constant_FORMAT_RGBA8>` 格式）。

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture1D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_GradientTexture1D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

将从 :ref:`Gradient<class_Gradient>` 中获得的颜色样本的数量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
