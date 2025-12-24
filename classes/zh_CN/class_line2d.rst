:github_url: hide

.. _class_Line2D:

Line2D
======

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

可以选择设置纹理的 2D 折线。

.. rst-class:: classref-introduction-group

描述
----

该节点绘制一条 2D 折线，即由多个线段连接的点组成的形状。\ **Line2D** 不是数学折线，即线段不是无限细的。它用于渲染，且可以被着色，也可以选择纹理。

\ **警告：**\ 某些配置可能无法很好地绘制，例如非常锐利的角度。在这些情况下，节点使用后备绘制逻辑来看起来不错。

\ **注意：**\ **Line2D** 使用 2D 网格进行绘制。

.. rst-class:: classref-introduction-group

教程
----

- `矩阵变换演示 <https://godotengine.org/asset-library/asset/2787>`__

- `2.5D 游戏演示 <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`antialiased<class_Line2D_property_antialiased>`         | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineCapMode<enum_Line2D_LineCapMode>`         | :ref:`begin_cap_mode<class_Line2D_property_begin_cap_mode>`   | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`closed<class_Line2D_property_closed>`                   | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`default_color<class_Line2D_property_default_color>`     | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineCapMode<enum_Line2D_LineCapMode>`         | :ref:`end_cap_mode<class_Line2D_property_end_cap_mode>`       | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Gradient<class_Gradient>`                     | :ref:`gradient<class_Line2D_property_gradient>`               |                          |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineJointMode<enum_Line2D_LineJointMode>`     | :ref:`joint_mode<class_Line2D_property_joint_mode>`           | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_Line2D_property_points>`                   | ``PackedVector2Array()`` |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`round_precision<class_Line2D_property_round_precision>` | ``8``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`sharp_limit<class_Line2D_property_sharp_limit>`         | ``2.0``                  |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`texture<class_Line2D_property_texture>`                 |                          |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineTextureMode<enum_Line2D_LineTextureMode>` | :ref:`texture_mode<class_Line2D_property_texture_mode>`       | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`width<class_Line2D_property_width>`                     | ``10.0``                 |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Curve<class_Curve>`                           | :ref:`width_curve<class_Line2D_property_width_curve>`         |                          |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_point<class_Line2D_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, index\: :ref:`int<class_int>` = -1\ )              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_points<class_Line2D_method_clear_points>`\ (\ )                                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_point_count<class_Line2D_method_get_point_count>`\ (\ ) |const|                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_point_position<class_Line2D_method_get_point_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_point<class_Line2D_method_remove_point>`\ (\ index\: :ref:`int<class_int>`\ )                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_point_position<class_Line2D_method_set_point_position>`\ (\ index\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Line2D_LineJointMode:

.. rst-class:: classref-enumeration

enum **LineJointMode**: :ref:`🔗<enum_Line2D_LineJointMode>`

.. _class_Line2D_constant_LINE_JOINT_SHARP:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_SHARP** = ``0``

使该折线的接头变尖，通过延伸两条线段直至它们相交来连接它们的侧面。如果关节的旋转太大（基于 :ref:`sharp_limit<class_Line2D_property_sharp_limit>`\ ），关节将回落到 :ref:`LINE_JOINT_BEVEL<class_Line2D_constant_LINE_JOINT_BEVEL>` 以防止出现过长的斜角。

.. _class_Line2D_constant_LINE_JOINT_BEVEL:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_BEVEL** = ``1``

使折线的接头倾斜/倒角，用一条简单的线连接两个线段的侧面。

.. _class_Line2D_constant_LINE_JOINT_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_ROUND** = ``2``

使该折线的接头变圆，用圆弧连接两条线段的侧面。该弧的细节取决于 :ref:`round_precision<class_Line2D_property_round_precision>`\ 。

.. rst-class:: classref-item-separator

----

.. _enum_Line2D_LineCapMode:

.. rst-class:: classref-enumeration

enum **LineCapMode**: :ref:`🔗<enum_Line2D_LineCapMode>`

.. _class_Line2D_constant_LINE_CAP_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_NONE** = ``0``

不绘制线条端点。

.. _class_Line2D_constant_LINE_CAP_BOX:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_BOX** = ``1``

将线帽绘制为方框，稍微延伸第一段/最后一段。

.. _class_Line2D_constant_LINE_CAP_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_ROUND** = ``2``

将线帽绘制为连接到第一条/最后一条线段的半圆。

.. rst-class:: classref-item-separator

----

.. _enum_Line2D_LineTextureMode:

.. rst-class:: classref-enumeration

enum **LineTextureMode**: :ref:`🔗<enum_Line2D_LineTextureMode>`

.. _class_Line2D_constant_LINE_TEXTURE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_NONE** = ``0``

获取纹理的左侧像素并将它们渲染在整条折线上。

.. _class_Line2D_constant_LINE_TEXTURE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_TILE** = ``1``

将纹理平铺在该折线上。该 **Line2D** 节点的 :ref:`CanvasItem.texture_repeat<class_CanvasItem_property_texture_repeat>` 必须为 :ref:`CanvasItem.TEXTURE_REPEAT_ENABLED<class_CanvasItem_constant_TEXTURE_REPEAT_ENABLED>` 或 :ref:`CanvasItem.TEXTURE_REPEAT_MIRROR<class_CanvasItem_constant_TEXTURE_REPEAT_MIRROR>`\ ，才能正常工作。

.. _class_Line2D_constant_LINE_TEXTURE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_STRETCH** = ``2``

沿该折线拉伸纹理。为了获得最佳效果，\ **Line2D** 节点的 :ref:`CanvasItem.texture_repeat<class_CanvasItem_property_texture_repeat>` 必须为 :ref:`CanvasItem.TEXTURE_REPEAT_DISABLED<class_CanvasItem_constant_TEXTURE_REPEAT_DISABLED>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Line2D_property_antialiased:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **antialiased** = ``false`` :ref:`🔗<class_Line2D_property_antialiased>`

.. rst-class:: classref-property-setget

- |void| **set_antialiased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_antialiased**\ (\ )

如果为 ``true``\ ，则折线的边界将使用抗锯齿。

\ **注意：**\ **Line2D** 在使用抗锯齿时，不会通过批处理来加速。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_begin_cap_mode:

.. rst-class:: classref-property

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **begin_cap_mode** = ``0`` :ref:`🔗<class_Line2D_property_begin_cap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_begin_cap_mode**\ (\ value\: :ref:`LineCapMode<enum_Line2D_LineCapMode>`\ )
- :ref:`LineCapMode<enum_Line2D_LineCapMode>` **get_begin_cap_mode**\ (\ )

:ref:`closed<class_Line2D_property_closed>` 为 ``false`` 时的折线开头样式。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``false`` :ref:`🔗<class_Line2D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

如果为 ``true`` 并且折线有超过2个点，则最后一个点和第一个点将通过线段连接。

\ **注意：**\ 如果提供了 :ref:`width_curve<class_Line2D_property_width_curve>`\ ，则不保证闭合线段的形状是无缝的。

\ **注意：**\ 首先绘制结束线段和第一条线段之间的连接点，并在开始时对 :ref:`gradient<class_Line2D_property_gradient>` 和 :ref:`width_curve<class_Line2D_property_width_curve>` 进行采样。这是在未来版本中可能会更改的实现细节。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_default_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **default_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Line2D_property_default_color>`

.. rst-class:: classref-property-setget

- |void| **set_default_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_default_color**\ (\ )

折线的颜色。如果设置了渐变，则不会被使用。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_end_cap_mode:

.. rst-class:: classref-property

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **end_cap_mode** = ``0`` :ref:`🔗<class_Line2D_property_end_cap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_end_cap_mode**\ (\ value\: :ref:`LineCapMode<enum_Line2D_LineCapMode>`\ )
- :ref:`LineCapMode<enum_Line2D_LineCapMode>` **get_end_cap_mode**\ (\ )

:ref:`closed<class_Line2D_property_closed>` 为 ``false`` 时的折线末端样式。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_Line2D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

渐变是从头到尾贯穿整条线绘制的。如果该属性被设置，则 :ref:`default_color<class_Line2D_property_default_color>` 不会被使用。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_joint_mode:

.. rst-class:: classref-property

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **joint_mode** = ``0`` :ref:`🔗<class_Line2D_property_joint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_joint_mode**\ (\ value\: :ref:`LineJointMode<enum_Line2D_LineJointMode>`\ )
- :ref:`LineJointMode<enum_Line2D_LineJointMode>` **get_joint_mode**\ (\ )

折线段之间的连接样式。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_Line2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

折线的点，以局部 2D 坐标解释。在该数组中的相邻点之间绘制线段。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_round_precision:

.. rst-class:: classref-property

:ref:`int<class_int>` **round_precision** = ``8`` :ref:`🔗<class_Line2D_property_round_precision>`

.. rst-class:: classref-property-setget

- |void| **set_round_precision**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_round_precision**\ (\ )

用于圆形接头和端盖的光滑度。值越高，边角越平滑，但对渲染和更新的要求更高。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_sharp_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **sharp_limit** = ``2.0`` :ref:`🔗<class_Line2D_property_sharp_limit>`

.. rst-class:: classref-property-setget

- |void| **set_sharp_limit**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sharp_limit**\ (\ )

确定该折线的斜接限制。通常，当 :ref:`joint_mode<class_Line2D_property_joint_mode>` 被设置为 :ref:`LINE_JOINT_SHARP<class_Line2D_constant_LINE_JOINT_SHARP>` 时，锐角会回退到使用 :ref:`LINE_JOINT_BEVEL<class_Line2D_constant_LINE_JOINT_BEVEL>` 关节的逻辑来防止过长的斜接。该属性的值越高意味着倒角接头的回退将以更锐利的角度发生。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Line2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

用于折线的纹理。使用 :ref:`texture_mode<class_Line2D_property_texture_mode>` 作为绘图样式。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_texture_mode:

.. rst-class:: classref-property

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **texture_mode** = ``0`` :ref:`🔗<class_Line2D_property_texture_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mode**\ (\ value\: :ref:`LineTextureMode<enum_Line2D_LineTextureMode>`\ )
- :ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **get_texture_mode**\ (\ )

渲染该折线的 :ref:`texture<class_Line2D_property_texture>` 的样式。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``10.0`` :ref:`🔗<class_Line2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

多边形的宽度。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_width_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **width_curve** :ref:`🔗<class_Line2D_property_width_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

该折线的宽度曲线。该折线在其长度上的宽度将等于宽度曲线在其域上的值。宽度曲线应当为单位 :ref:`Curve<class_Curve>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Line2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Line2D_method_add_point>`

在指定的位置 ``position`` 添加一个点，该位置相对于该线段自身的位置。如果未提供 ``index``\ ，则新的点将被添加到点数组的末尾。

如果给出 ``index``\ ，则将新点插入到由索引 ``index`` 标识的已有点之前。该新点之后的点的索引增加 1。提供的 ``index`` 不得超过折线中已有点的数量。请参阅 :ref:`get_point_count()<class_Line2D_method_get_point_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Line2D_method_clear_points>`

从折线中移除所有点，使其为空。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_Line2D_method_get_point_count>`

返回该折线中的点的数量。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Line2D_method_get_point_position>`

返回索引为 ``index`` 的点的位置。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Line2D_method_remove_point>`

移除该折线中索引为 ``index`` 的点。

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ index\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Line2D_method_set_point_position>`

用提供的 ``position`` 覆盖给定索引 ``index`` 处的点的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
