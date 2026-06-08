:github_url: hide

.. _class_GradientTexture2D:

GradientTexture2D
=================

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用从 :ref:`Gradient<class_Gradient>` 获得的颜色创建图案的 2D 纹理。

.. rst-class:: classref-introduction-group

描述
----

2D 纹理，从 :ref:`Gradient<class_Gradient>` 中获取颜色来填充纹理数据。该纹理能够将颜色过渡转换为不同的图案，例如线性渐变或径向渐变。填充纹理时，默认会从偏移 :ref:`fill_from<class_GradientTexture2D_property_fill_from>` 的位置到偏移 :ref:`fill_to<class_GradientTexture2D_property_fill_to>` 的位置对颜色进行插值，但渐变填充也可以在整张纹理上重复。

渐变是针对每个像素单独采样的，因此不一定代表渐变的精确副本（见 :ref:`width<class_GradientTexture2D_property_width>` 和 :ref:`height<class_GradientTexture2D_property_height>`\ ）。另见 :ref:`GradientTexture1D<class_GradientTexture1D>`\ 、\ :ref:`CurveTexture<class_CurveTexture>`\ 、\ :ref:`CurveXYZTexture<class_CurveXYZTexture>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Fill<enum_GradientTexture2D_Fill>`     | :ref:`fill<class_GradientTexture2D_property_fill>`           | ``0``                                                                                  |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                | :ref:`fill_from<class_GradientTexture2D_property_fill_from>` | ``Vector2(0, 0)``                                                                      |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                | :ref:`fill_to<class_GradientTexture2D_property_fill_to>`     | ``Vector2(1, 0)``                                                                      |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>`              | :ref:`gradient<class_GradientTexture2D_property_gradient>`   |                                                                                        |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`height<class_GradientTexture2D_property_height>`       | ``64``                                                                                 |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Repeat<enum_GradientTexture2D_Repeat>` | :ref:`repeat<class_GradientTexture2D_property_repeat>`       | ``0``                                                                                  |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | resource_local_to_scene                                      | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`use_hdr<class_GradientTexture2D_property_use_hdr>`     | ``false``                                                                              |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`width<class_GradientTexture2D_property_width>`         | ``64``                                                                                 |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GradientTexture2D_Fill:

.. rst-class:: classref-enumeration

enum **Fill**: :ref:`🔗<enum_GradientTexture2D_Fill>`

.. _class_GradientTexture2D_constant_FILL_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_LINEAR** = ``0``

颜色按照直线进行线性插值。

.. _class_GradientTexture2D_constant_FILL_RADIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_RADIAL** = ``1``

颜色按照圆形模式进行线性插值。

.. _class_GradientTexture2D_constant_FILL_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_SQUARE** = ``2``

颜色按照方形模式进行线性插值。

.. _class_GradientTexture2D_constant_FILL_CONIC:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_CONIC** = ``3``

颜色会以锥形图案进行线性插值。

.. rst-class:: classref-item-separator

----

.. _enum_GradientTexture2D_Repeat:

.. rst-class:: classref-enumeration

enum **Repeat**: :ref:`🔗<enum_GradientTexture2D_Repeat>`

.. _class_GradientTexture2D_constant_REPEAT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT_NONE** = ``0``

渐变填充限制在由 :ref:`fill_from<class_GradientTexture2D_property_fill_from>` 到 :ref:`fill_to<class_GradientTexture2D_property_fill_to>` 的偏移量范围内。

.. _class_GradientTexture2D_constant_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT** = ``1``

纹理的填充从偏移量 :ref:`fill_from<class_GradientTexture2D_property_fill_from>` 开始到 :ref:`fill_to<class_GradientTexture2D_property_fill_to>`\ ，两个方向都按照相同的模式重复。

.. _class_GradientTexture2D_constant_REPEAT_MIRROR:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT_MIRROR** = ``2``

纹理的填充从偏移量 :ref:`fill_from<class_GradientTexture2D_property_fill_from>` 开始到 :ref:`fill_to<class_GradientTexture2D_property_fill_to>`\ ，两个方向都按照相同的模式镜像重复。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GradientTexture2D_property_fill:

.. rst-class:: classref-property

:ref:`Fill<enum_GradientTexture2D_Fill>` **fill** = ``0`` :ref:`🔗<class_GradientTexture2D_property_fill>`

.. rst-class:: classref-property-setget

- |void| **set_fill**\ (\ value\: :ref:`Fill<enum_GradientTexture2D_Fill>`\ )
- :ref:`Fill<enum_GradientTexture2D_Fill>` **get_fill**\ (\ )

渐变的填充类型。

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_fill_from:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **fill_from** = ``Vector2(0, 0)`` :ref:`🔗<class_GradientTexture2D_property_fill_from>`

.. rst-class:: classref-property-setget

- |void| **set_fill_from**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_fill_from**\ (\ )

用于填充纹理的初始偏移量，使用 UV 坐标。

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_fill_to:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **fill_to** = ``Vector2(1, 0)`` :ref:`🔗<class_GradientTexture2D_property_fill_to>`

.. rst-class:: classref-property-setget

- |void| **set_fill_to**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_fill_to**\ (\ )

用于填充纹理的结束偏移量，使用 UV 坐标。

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_GradientTexture2D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

用于填充纹理的 :ref:`Gradient<class_Gradient>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``64`` :ref:`🔗<class_GradientTexture2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

从 :ref:`Gradient<class_Gradient>` 上获取的垂直颜色采样数，也表示纹理的高度。

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_repeat:

.. rst-class:: classref-property

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **repeat** = ``0`` :ref:`🔗<class_GradientTexture2D_property_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_repeat**\ (\ value\: :ref:`Repeat<enum_GradientTexture2D_Repeat>`\ )
- :ref:`Repeat<enum_GradientTexture2D_Repeat>` **get_repeat**\ (\ )

渐变的重复类型。

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_use_hdr:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hdr** = ``false`` :ref:`🔗<class_GradientTexture2D_property_use_hdr>`

.. rst-class:: classref-property-setget

- |void| **set_use_hdr**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_hdr**\ (\ )

如果为 ``true``\ ，则生成的纹理会支持高动态范围（\ :ref:`Image.FORMAT_RGBAF<class_Image_constant_FORMAT_RGBAF>` 格式）。可以在 :ref:`Environment.glow_enabled<class_Environment_property_glow_enabled>` 为 ``true`` 时实现辉光效果。如果为 ``false``\ ，则生成的纹理会使用低动态范围；过亮的颜色会被钳制（\ :ref:`Image.FORMAT_RGBA8<class_Image_constant_FORMAT_RGBA8>` 格式）。

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``64`` :ref:`🔗<class_GradientTexture2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

从 :ref:`Gradient<class_Gradient>` 上获取的水平颜色采样数，也表示纹理的宽度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
