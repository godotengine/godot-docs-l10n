:github_url: hide

.. _class_RDPipelineDepthStencilState:

RDPipelineDepthStencilState
===========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管線的深度/範本狀態（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

**RDPipelineDepthStencilState** 控制的是在使用 :ref:`RenderingDevice<class_RenderingDevice>` 對深度和範本進行取樣時，如何進行深度和範本的比較。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`   | :ref:`back_op_compare<class_RDPipelineDepthStencilState_property_back_op_compare>`               | ``7``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`back_op_compare_mask<class_RDPipelineDepthStencilState_property_back_op_compare_mask>`     | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`back_op_depth_fail<class_RDPipelineDepthStencilState_property_back_op_depth_fail>`         | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`back_op_fail<class_RDPipelineDepthStencilState_property_back_op_fail>`                     | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`back_op_pass<class_RDPipelineDepthStencilState_property_back_op_pass>`                     | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`back_op_reference<class_RDPipelineDepthStencilState_property_back_op_reference>`           | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`back_op_write_mask<class_RDPipelineDepthStencilState_property_back_op_write_mask>`         | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`   | :ref:`depth_compare_operator<class_RDPipelineDepthStencilState_property_depth_compare_operator>` | ``7``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_range_max<class_RDPipelineDepthStencilState_property_depth_range_max>`               | ``0.0``   |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_range_min<class_RDPipelineDepthStencilState_property_depth_range_min>`               | ``0.0``   |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>`         | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_test<class_RDPipelineDepthStencilState_property_enable_depth_test>`           | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_write<class_RDPipelineDepthStencilState_property_enable_depth_write>`         | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_stencil<class_RDPipelineDepthStencilState_property_enable_stencil>`                 | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`   | :ref:`front_op_compare<class_RDPipelineDepthStencilState_property_front_op_compare>`             | ``7``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`front_op_compare_mask<class_RDPipelineDepthStencilState_property_front_op_compare_mask>`   | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`front_op_depth_fail<class_RDPipelineDepthStencilState_property_front_op_depth_fail>`       | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`front_op_fail<class_RDPipelineDepthStencilState_property_front_op_fail>`                   | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`front_op_pass<class_RDPipelineDepthStencilState_property_front_op_pass>`                   | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`front_op_reference<class_RDPipelineDepthStencilState_property_front_op_reference>`         | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`front_op_write_mask<class_RDPipelineDepthStencilState_property_front_op_write_mask>`       | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDPipelineDepthStencilState_property_back_op_compare:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **back_op_compare** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_compare>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_compare**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_back_op_compare**\ (\ )

The method used for comparing the previous back stencil value and :ref:`back_op_reference<class_RDPipelineDepthStencilState_property_back_op_reference>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_compare_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_compare_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_compare_mask>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_compare_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_compare_mask**\ (\ )

Selects which bits from the back stencil value will be compared.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_depth_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_depth_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_depth_fail>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_depth_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_depth_fail**\ (\ )

The operation to perform on the stencil buffer for back pixels that pass the stencil test but fail the depth test.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_fail>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_fail**\ (\ )

The operation to perform on the stencil buffer for back pixels that fail the stencil test.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_pass:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_pass** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_pass>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_pass**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_pass**\ (\ )

The operation to perform on the stencil buffer for back pixels that pass the stencil test.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_reference:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_reference** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_reference>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_reference**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_reference**\ (\ )

The value the previous back stencil value will be compared to.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_write_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_write_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_write_mask>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_write_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_write_mask**\ (\ )

Selects which bits from the back stencil value will be changed.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_compare_operator:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **depth_compare_operator** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_compare_operator>`

.. rst-class:: classref-property-setget

- |void| **set_depth_compare_operator**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_depth_compare_operator**\ (\ )

The method used for comparing the previous and current depth values.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_range_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_range_max** = ``0.0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_range_max>`

.. rst-class:: classref-property-setget

- |void| **set_depth_range_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_range_max**\ (\ )

The maximum depth that returns ``true`` for :ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_range_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_range_min** = ``0.0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_range_min>`

.. rst-class:: classref-property-setget

- |void| **set_depth_range_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_range_min**\ (\ )

The minimum depth that returns ``true`` for :ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_range:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_range** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_range>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_range**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_range**\ (\ )

If ``true``, each depth value will be tested to see if it is between :ref:`depth_range_min<class_RDPipelineDepthStencilState_property_depth_range_min>` and :ref:`depth_range_max<class_RDPipelineDepthStencilState_property_depth_range_max>`. If it is outside of these values, it is discarded.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_test** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_test**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_test**\ (\ )

如果為 ``true``\ ，則會啟用深度測試，能夠讓物件根據深度自動被其他物件遮擋。這樣物件就能夠被其他物件部分遮擋。如果為 ``false``\ ，則會按照繪制順序顯示（類似 Godot 的 2D 算繪器）。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_write:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_write** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_write>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_write**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_write**\ (\ )

If ``true``, writes to the depth buffer whenever the depth test returns ``true``. Only works when enable_depth_test is also ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_stencil:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_stencil** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_stencil>`

.. rst-class:: classref-property-setget

- |void| **set_enable_stencil**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_stencil**\ (\ )

If ``true``, enables stencil testing. There are separate stencil buffers for front-facing triangles and back-facing triangles. See properties that begin with "front_op" and properties with "back_op" for each.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_compare:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **front_op_compare** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_compare>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_compare**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_front_op_compare**\ (\ )

The method used for comparing the previous front stencil value and :ref:`front_op_reference<class_RDPipelineDepthStencilState_property_front_op_reference>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_compare_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_compare_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_compare_mask>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_compare_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_compare_mask**\ (\ )

Selects which bits from the front stencil value will be compared.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_depth_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_depth_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_depth_fail>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_depth_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_depth_fail**\ (\ )

The operation to perform on the stencil buffer for front pixels that pass the stencil test but fail the depth test.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_fail>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_fail**\ (\ )

The operation to perform on the stencil buffer for front pixels that fail the stencil test.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_pass:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_pass** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_pass>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_pass**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_pass**\ (\ )

The operation to perform on the stencil buffer for front pixels that pass the stencil test.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_reference:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_reference** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_reference>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_reference**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_reference**\ (\ )

The value the previous front stencil value will be compared to.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_write_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_write_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_write_mask>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_write_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_write_mask**\ (\ )

Selects which bits from the front stencil value will be changed.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
