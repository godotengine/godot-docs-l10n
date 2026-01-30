:github_url: hide

.. _class_NinePatchRect:

NinePatchRect
=============

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

显示纹理的控件，会保持角落不变，但平铺边缘和中心。

.. rst-class:: classref-introduction-group

描述
----

也叫 9 片式面板，\ **NinePatchRect** 能够根据较小的纹理，生成任何大小的干净面板。为了做到这一点，它将纹理分割成 3×3 的网格。当你缩放节点时，它会在水平或垂直方向上平铺纹理的侧边，在两个轴上平铺中心，但不会缩放或平铺角落。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` | :ref:`axis_stretch_horizontal<class_NinePatchRect_property_axis_stretch_horizontal>` | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` | :ref:`axis_stretch_vertical<class_NinePatchRect_property_axis_stretch_vertical>`     | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`draw_center<class_NinePatchRect_property_draw_center>`                         | ``true``                                                              |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`               | mouse_filter                                                                         | ``2`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_bottom<class_NinePatchRect_property_patch_margin_bottom>`         | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_left<class_NinePatchRect_property_patch_margin_left>`             | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_right<class_NinePatchRect_property_patch_margin_right>`           | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_top<class_NinePatchRect_property_patch_margin_top>`               | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                  | :ref:`region_rect<class_NinePatchRect_property_region_rect>`                         | ``Rect2(0, 0, 0, 0)``                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                          | :ref:`texture<class_NinePatchRect_property_texture>`                                 |                                                                       |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_patch_margin<class_NinePatchRect_method_get_patch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                        |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_patch_margin<class_NinePatchRect_method_set_patch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_NinePatchRect_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_NinePatchRect_signal_texture_changed>`

当节点的纹理发生变化时触发。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_NinePatchRect_AxisStretchMode:

.. rst-class:: classref-enumeration

enum **AxisStretchMode**: :ref:`🔗<enum_NinePatchRect_AxisStretchMode>`

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_STRETCH** = ``0``

在 NinePatchRect 上拉伸中心纹理。这可能会导致纹理失真。

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE** = ``1``

在 NinePatchRect 上重复中心纹理。这不会导致任何可见的失真。 纹理必须是无缝的，这样才能在边缘之间不显示伪影。

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_TILE_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE_FIT** = ``2``

在 NinePatchRect 上重复中心纹理，但也会拉伸纹理以确保每个图块都完整可见。这可能会导致纹理扭曲，但少于 :ref:`AXIS_STRETCH_MODE_STRETCH<class_NinePatchRect_constant_AXIS_STRETCH_MODE_STRETCH>`\ 。纹理必须是无缝的，这样才能在边缘之间不显示伪影。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_NinePatchRect_property_axis_stretch_horizontal:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **axis_stretch_horizontal** = ``0`` :ref:`🔗<class_NinePatchRect_property_axis_stretch_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **get_h_axis_stretch_mode**\ (\ )

水平拉伸/平铺时使用的拉伸模式。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_axis_stretch_vertical:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **axis_stretch_vertical** = ``0`` :ref:`🔗<class_NinePatchRect_property_axis_stretch_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **get_v_axis_stretch_mode**\ (\ )

垂直拉伸/平铺时使用的拉伸模式。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_NinePatchRect_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

如果为 ``true``\ ，则绘制面板的中心。否则，只画9-slice的边框。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_bottom** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

9-切片底行的高度。边距为 16 意味着 9-切片的底角和侧面将有 16 像素的高度。你可以单独设置所有 4 个边距值，来创建有非统一边框的面板。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_left** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

9-切片左列的宽度。边距为 16 意味着 9-切片的左角和侧面将有 16 像素的宽度。你可以单独设置所有 4 个边距值，来创建有非统一边框的面板。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_right** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

9-切片右列的宽度。边距为 16 意味着 9-切片的右角和侧面将有 16 像素的宽度。你可以单独设置所有 4 个边距值，来创建有非统一边框的面板。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_top** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

9-切片顶行的高度。边距为 16 意味着 9-切片的顶角和侧面将有 16 像素的高度。你可以单独设置所有 4 个边距值，来创建有非统一边框的面板。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_NinePatchRect_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

要取样的纹理的矩形区域。如果你正在使用一个图集，使用这个属性来定义 9-切片应该使用的区域。所有其他属性都是相对于这个属性而言的。如果矩形为空，NinePatchRect 将使用整个纹理。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_NinePatchRect_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

节点的纹理资源。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_NinePatchRect_method_get_patch_margin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_NinePatchRect_method_get_patch_margin>`

返回指定 :ref:`Side<enum_@GlobalScope_Side>` 的边距大小。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_method_set_patch_margin:

.. rst-class:: classref-method

|void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NinePatchRect_method_set_patch_margin>`

将给定 :ref:`Side<enum_@GlobalScope_Side>` 的边距大小设置为 ``value`` 像素。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
