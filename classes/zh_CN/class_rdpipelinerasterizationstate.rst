:github_url: hide

.. _class_RDPipelineRasterizationState:

RDPipelineRasterizationState
============================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管线栅格化状态（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

这个对象由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>`   | :ref:`cull_mode<class_RDPipelineRasterizationState_property_cull_mode>`                                   | ``0``     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_bias_clamp<class_RDPipelineRasterizationState_property_depth_bias_clamp>`                     | ``0.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>` | ``0.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`depth_bias_enabled<class_RDPipelineRasterizationState_property_depth_bias_enabled>`                 | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`       | ``0.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`discard_primitives<class_RDPipelineRasterizationState_property_discard_primitives>`                 | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_clamp<class_RDPipelineRasterizationState_property_enable_depth_clamp>`                 | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` | :ref:`front_face<class_RDPipelineRasterizationState_property_front_face>`                                 | ``0``     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`line_width<class_RDPipelineRasterizationState_property_line_width>`                                 | ``1.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`patch_control_points<class_RDPipelineRasterizationState_property_patch_control_points>`             | ``1``     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`wireframe<class_RDPipelineRasterizationState_property_wireframe>`                                   | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDPipelineRasterizationState_property_cull_mode:

.. rst-class:: classref-property

:ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **cull_mode** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>`\ )
- :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **get_cull_mode**\ (\ )

绘制多边形时的剔除模式，决定隐藏正面还是反面。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_clamp:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_clamp** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_clamp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_clamp**\ (\ )

每个深度值可以偏移多少的限制。如果为负，则充当最小值；如果为正，则充当最大值。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_constant_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_constant_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_constant_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_constant_factor**\ (\ )

添加到每个深度值的恒定偏移量。在 :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>` 之后应用。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **depth_bias_enabled** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_depth_bias_enabled**\ (\ )

如果为 ``true``\ ，每个生成的深度值将偏移一定量。它是基于 :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>` 和 :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>` 的值生成每个多边形的特定量。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_slope_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_slope_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_slope_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_slope_factor**\ (\ )

应用于每个多边形深度斜率的恒定缩放。在 :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>` 之前应用。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_discard_primitives:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **discard_primitives** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_discard_primitives>`

.. rst-class:: classref-property-setget

- |void| **set_discard_primitives**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_discard_primitives**\ (\ )

如果为 ``true``\ ，则会在栅格化阶段前立即丢弃图元。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_enable_depth_clamp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_clamp** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_enable_depth_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_clamp**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_clamp**\ (\ )

如果为 ``true``\ ，则根据关联视口的最小和最大深度钳制深度值。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_front_face:

.. rst-class:: classref-property

:ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **front_face** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_front_face>`

.. rst-class:: classref-property-setget

- |void| **set_front_face**\ (\ value\: :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>`\ )
- :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **get_front_face**\ (\ )

要使用的缠绕顺序，决定三角形的哪个面是正面。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_line_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_width** = ``1.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_line_width>`

.. rst-class:: classref-property-setget

- |void| **set_line_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_width**\ (\ )

绘制线段时使用的线宽（单位为像素）。可能不是所有硬件都支持粗线段。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_patch_control_points:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_control_points** = ``1`` :ref:`🔗<class_RDPipelineRasterizationState_property_patch_control_points>`

.. rst-class:: classref-property-setget

- |void| **set_patch_control_points**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_control_points**\ (\ )

启用曲面细分绘制面片时，使用的控制点的数量。值越高，质量越高，但是性能开销也越高。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_wireframe:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **wireframe** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_wireframe>`

.. rst-class:: classref-property-setget

- |void| **set_wireframe**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_wireframe**\ (\ )

如果为 ``true``\ ，则会为三角形进行线框渲染，不进行平面或纹理渲染。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
