:github_url: hide

.. _class_Light2D:

Light2D
=======

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`DirectionalLight2D<class_DirectionalLight2D>`, :ref:`PointLight2D<class_PointLight2D>`

在 2D 环境中投射光线。

.. rst-class:: classref-introduction-group

描述
----

在 2D 环境中投射光线。光线由颜色、能量值、模式（见常量）以及其他各种参数（与范围和阴影有关）来定义。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`2D 灯光和阴影 <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`BlendMode<enum_Light2D_BlendMode>`       | :ref:`blend_mode<class_Light2D_property_blend_mode>`                       | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                      | :ref:`color<class_Light2D_property_color>`                                 | ``Color(1, 1, 1, 1)`` |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`editor_only<class_Light2D_property_editor_only>`                     | ``false``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`enabled<class_Light2D_property_enabled>`                             | ``true``              |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                      | :ref:`energy<class_Light2D_property_energy>`                               | ``1.0``               |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`   | ``1``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_layer_max<class_Light2D_property_range_layer_max>`             | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_layer_min<class_Light2D_property_range_layer_min>`             | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_z_max<class_Light2D_property_range_z_max>`                     | ``1024``              |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_z_min<class_Light2D_property_range_z_min>`                     | ``-1024``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                      | :ref:`shadow_color<class_Light2D_property_shadow_color>`                   | ``Color(0, 0, 0, 0)`` |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`shadow_enabled<class_Light2D_property_shadow_enabled>`               | ``false``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`ShadowFilter<enum_Light2D_ShadowFilter>` | :ref:`shadow_filter<class_Light2D_property_shadow_filter>`                 | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                      | :ref:`shadow_filter_smooth<class_Light2D_property_shadow_filter_smooth>`   | ``0.0``               |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`shadow_item_cull_mask<class_Light2D_property_shadow_item_cull_mask>` | ``1``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_height<class_Light2D_method_get_height>`\ (\ ) |const|                             |
   +---------------------------+----------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_height<class_Light2D_method_set_height>`\ (\ height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Light2D_ShadowFilter:

.. rst-class:: classref-enumeration

enum **ShadowFilter**: :ref:`🔗<enum_Light2D_ShadowFilter>`

.. _class_Light2D_constant_SHADOW_FILTER_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_NONE** = ``0``

不对阴影贴图应用过滤。提供较硬的阴影边缘，渲染速度最快。见 :ref:`shadow_filter<class_Light2D_property_shadow_filter>`\ 。

.. _class_Light2D_constant_SHADOW_FILTER_PCF5:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_PCF5** = ``1``

对阴影贴图使用百分比接近过滤（5 个样本）。与硬阴影渲染相比较慢。见 :ref:`shadow_filter<class_Light2D_property_shadow_filter>`\ 。

.. _class_Light2D_constant_SHADOW_FILTER_PCF13:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_PCF13** = ``2``

对阴影贴图使用百分比接近过滤（13 个样本）。最慢的阴影过滤模式，应谨慎使用。见 :ref:`shadow_filter<class_Light2D_property_shadow_filter>`\ 。

.. rst-class:: classref-item-separator

----

.. _enum_Light2D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_Light2D_BlendMode>`

.. _class_Light2D_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_ADD** = ``0``

将 Light2D 对应的像素值与其下方的像素值相加。这是灯的常见行为。

.. _class_Light2D_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_SUB** = ``1``

将 Light2D 对应的像素值减去其下方的像素值，产生反光效果。

.. _class_Light2D_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_MIX** = ``2``

通过线性插值将 Light2D 对应的像素值与其下方的像素值混合。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Light2D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_Light2D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_Light2D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_Light2D_BlendMode>`\ )
- :ref:`BlendMode<enum_Light2D_BlendMode>` **get_blend_mode**\ (\ )

该 Light2D 的混合模式。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Light2D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

该 Light2D 的颜色 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``false`` :ref:`🔗<class_Light2D_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_only**\ (\ )

如果为 ``true``\ ，Light2D 将只在编辑场景时出现。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_Light2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果为 ``true``\ ，Light2D 会发光。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_Light2D_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

Light2D 的能量值。该值越大，光线就越强。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_item_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_item_cull_mask** = ``1`` :ref:`🔗<class_Light2D_property_range_item_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_item_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_cull_mask**\ (\ )

层遮罩。\ :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` 与之匹配的对象才会被该 Light2D 影响。另见 :ref:`shadow_item_cull_mask<class_Light2D_property_shadow_item_cull_mask>`\ ，影响的是哪些对象能够投射阴影。

\ **注意：**\ :ref:`DirectionalLight2D<class_DirectionalLight2D>` 会忽略 :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`\ ，始终对 2D 节点进行照明，无论其 :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` 的取值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_layer_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_layer_max** = ``0`` :ref:`🔗<class_Light2D_property_range_layer_max>`

.. rst-class:: classref-property-setget

- |void| **set_layer_range_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_range_max**\ (\ )

受 Light2D 影响的对象的最大层数值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_layer_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_layer_min** = ``0`` :ref:`🔗<class_Light2D_property_range_layer_min>`

.. rst-class:: classref-property-setget

- |void| **set_layer_range_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_range_min**\ (\ )

受 Light2D 影响的对象的最小层数值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_z_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_z_max** = ``1024`` :ref:`🔗<class_Light2D_property_range_z_max>`

.. rst-class:: classref-property-setget

- |void| **set_z_range_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_range_max**\ (\ )

受 Light2D 影响的物体的最大 ``z`` 值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_z_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_z_min** = ``-1024`` :ref:`🔗<class_Light2D_property_range_z_min>`

.. rst-class:: classref-property-setget

- |void| **set_z_range_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_range_min**\ (\ )

受 Light2D 影响的物体的最小 ``z`` 值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_Light2D_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

该 Light2D 投下的影子的颜色 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_enabled** = ``false`` :ref:`🔗<class_Light2D_property_shadow_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shadow_enabled**\ (\ )

如果为 ``true``\ ，则该 Light2D 将投下阴影。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_filter:

.. rst-class:: classref-property

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **shadow_filter** = ``0`` :ref:`🔗<class_Light2D_property_shadow_filter>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_filter**\ (\ value\: :ref:`ShadowFilter<enum_Light2D_ShadowFilter>`\ )
- :ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **get_shadow_filter**\ (\ )

阴影过滤类型。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_filter_smooth:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_filter_smooth** = ``0.0`` :ref:`🔗<class_Light2D_property_shadow_filter_smooth>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_smooth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shadow_smooth**\ (\ )

阴影的平滑值。更高的值将导致更柔和的阴影，代价是在阴影渲染中可能出现可见的条纹。只有在 :ref:`shadow_filter<class_Light2D_property_shadow_filter>` 为 :ref:`SHADOW_FILTER_PCF5<class_Light2D_constant_SHADOW_FILTER_PCF5>` 或 :ref:`SHADOW_FILTER_PCF13<class_Light2D_constant_SHADOW_FILTER_PCF13>` 时，\ :ref:`shadow_filter_smooth<class_Light2D_property_shadow_filter_smooth>` 才有效果。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_item_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_item_cull_mask** = ``1`` :ref:`🔗<class_Light2D_property_shadow_item_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_item_shadow_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_shadow_cull_mask**\ (\ )

阴影遮罩。与 :ref:`LightOccluder2D<class_LightOccluder2D>` 一起使用以投射阴影。只有匹配 :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` 的遮挡物才会投射阴影。另见 :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`\ ，它影响哪些对象可以\ *接收*\ 光。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Light2D_method_get_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_height**\ (\ ) |const| :ref:`🔗<class_Light2D_method_get_height>`

返回该灯光的高度，用于 2D 法线映射。见 :ref:`PointLight2D.height<class_PointLight2D_property_height>` 和 :ref:`DirectionalLight2D.height<class_DirectionalLight2D_property_height>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_method_set_height:

.. rst-class:: classref-method

|void| **set_height**\ (\ height\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Light2D_method_set_height>`

设置该灯光的高度，用于 2D 法线映射。见 :ref:`PointLight2D.height<class_PointLight2D_property_height>` 和 :ref:`DirectionalLight2D.height<class_DirectionalLight2D_property_height>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
