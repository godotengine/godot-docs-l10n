:github_url: hide

.. _class_RDPipelineRasterizationState:

RDPipelineRasterizationState
============================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管線柵格化狀態（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_RDPipelineRasterizationState_property_cull_mode:

.. rst-class:: classref-property

:ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **cull_mode** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>`\ )
- :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **get_cull_mode**\ (\ )

繪製多邊形時的剔除模式，決定隱藏正面還是反面。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_clamp:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_clamp** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_clamp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_clamp**\ (\ )

每個深度值可以偏移多少的限制。如果為負，則充當最小值；如果為正，則充當最大值。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_constant_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_constant_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_constant_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_constant_factor**\ (\ )

新增到每個深度值的恆定偏移量。在 :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>` 之後應用。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **depth_bias_enabled** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_depth_bias_enabled**\ (\ )

如果為 ``true``\ ，每個生成的深度值將偏移一定量。它是基於 :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>` 和 :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>` 的值生成每個多邊形的特定量。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_slope_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_slope_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_slope_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_slope_factor**\ (\ )

套用至每個多邊形深度斜率的恆定縮放。在 :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>` 之前應用。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_discard_primitives:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **discard_primitives** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_discard_primitives>`

.. rst-class:: classref-property-setget

- |void| **set_discard_primitives**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_discard_primitives**\ (\ )

如果為 ``true``\ ，則會在柵格化階段前立即丟棄圖元。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_enable_depth_clamp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_clamp** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_enable_depth_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_clamp**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_clamp**\ (\ )

如果為 ``true``\ ，則根據關聯視埠的最小和最大深度鉗制深度值。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_front_face:

.. rst-class:: classref-property

:ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **front_face** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_front_face>`

.. rst-class:: classref-property-setget

- |void| **set_front_face**\ (\ value\: :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>`\ )
- :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **get_front_face**\ (\ )

要使用的纏繞順序，決定三角形的哪個面是正面。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_line_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_width** = ``1.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_line_width>`

.. rst-class:: classref-property-setget

- |void| **set_line_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_width**\ (\ )

繪製線段時使用的線寬（單位為圖元）。可能不是所有硬體都支援粗線段。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_patch_control_points:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_control_points** = ``1`` :ref:`🔗<class_RDPipelineRasterizationState_property_patch_control_points>`

.. rst-class:: classref-property-setget

- |void| **set_patch_control_points**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_control_points**\ (\ )

啟用曲面細分繪製面片時，使用的控制點的數量。值越高，品質越高，但是效能開銷也越高。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_wireframe:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **wireframe** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_wireframe>`

.. rst-class:: classref-property-setget

- |void| **set_wireframe**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_wireframe**\ (\ )

如果為 ``true``\ ，則會為三角形進行線框渲染，不進行平面或紋理渲染。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
