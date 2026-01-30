:github_url: hide

.. _class_RDPipelineDepthStencilState:

RDPipelineDepthStencilState
===========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管线的深度/模板状态（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

**RDPipelineDepthStencilState** 控制的是在使用 :ref:`RenderingDevice<class_RenderingDevice>` 对深度和模板进行采样时，如何进行深度和模板的比较。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_RDPipelineDepthStencilState_property_back_op_compare:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **back_op_compare** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_compare>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_compare**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_back_op_compare**\ (\ )

用于比较前一个背面模板值和 :ref:`back_op_reference<class_RDPipelineDepthStencilState_property_back_op_reference>` 的方法。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_compare_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_compare_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_compare_mask>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_compare_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_compare_mask**\ (\ )

选择将比较背面模板值中的哪些位。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_depth_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_depth_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_depth_fail>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_depth_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_depth_fail**\ (\ )

对通过模板测试但未通过深度测试的背面像素的模板缓冲区执行的操作。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_fail>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_fail**\ (\ )

对未通过模板测试的背面像素的模板缓冲区执行的操作。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_pass:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_pass** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_pass>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_pass**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_pass**\ (\ )

对通过模板测试的背面像素的模板缓冲区执行的操作。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_reference:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_reference** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_reference>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_reference**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_reference**\ (\ )

将与前一个背面模板值进行比较的值。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_write_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_write_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_write_mask>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_write_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_write_mask**\ (\ )

选择背面模板值中的哪些位将被更改。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_compare_operator:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **depth_compare_operator** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_compare_operator>`

.. rst-class:: classref-property-setget

- |void| **set_depth_compare_operator**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_depth_compare_operator**\ (\ )

用于比较前一个和当前深度值的方法。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_range_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_range_max** = ``0.0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_range_max>`

.. rst-class:: classref-property-setget

- |void| **set_depth_range_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_range_max**\ (\ )

:ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>` 将返回 ``true`` 的最大深度。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_range_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_range_min** = ``0.0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_range_min>`

.. rst-class:: classref-property-setget

- |void| **set_depth_range_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_range_min**\ (\ )

:ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>` 将返回 ``true`` 的最小深度。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_range:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_range** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_range>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_range**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_range**\ (\ )

如果为 ``true``\ ，则将测试每个深度值以查看它是否在 :ref:`depth_range_min<class_RDPipelineDepthStencilState_property_depth_range_min>` 和 :ref:`depth_range_max<class_RDPipelineDepthStencilState_property_depth_range_max>` 之间。如果超出这些值，则将其丢弃。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_test** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_test**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_test**\ (\ )

如果为 ``true``\ ，则会启用深度测试，能够让对象根据深度自动被其他对象遮挡。这样对象就能够被其他对象部分遮挡。如果为 ``false``\ ，则对象会按照绘制顺序显示（类似 Godot 的 2D 渲染器）。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_write:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_write** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_write>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_write**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_write**\ (\ )

如果为 ``true``\ ，则每当深度测试返回 ``true`` 时写入深度缓冲区。仅当 enable_depth_test 也为 ``true`` 时才有效。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_stencil:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_stencil** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_stencil>`

.. rst-class:: classref-property-setget

- |void| **set_enable_stencil**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_stencil**\ (\ )

如果为 ``true``\ ，则启用模板测试。正面三角形和背面三角形有单独的模板缓冲区。请参阅每个以“front_op”开头和以“back_op”开头的属性。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_compare:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **front_op_compare** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_compare>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_compare**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_front_op_compare**\ (\ )

该方法用于比较前一个正面模板值和 :ref:`front_op_reference<class_RDPipelineDepthStencilState_property_front_op_reference>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_compare_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_compare_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_compare_mask>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_compare_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_compare_mask**\ (\ )

选择正面模板值中的哪些位将被比较。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_depth_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_depth_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_depth_fail>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_depth_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_depth_fail**\ (\ )

对通过模板测试但未通过深度测试的正面像素的模板缓冲区执行的操作。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_fail>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_fail**\ (\ )

对模板缓冲区中未通过模板测试的正面像素执行的操作。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_pass:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_pass** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_pass>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_pass**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_pass**\ (\ )

对通过模板测试的正面像素的模板缓冲区执行的操作。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_reference:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_reference** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_reference>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_reference**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_reference**\ (\ )

将与前一个正面模板值进行比较的值。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_write_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_write_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_write_mask>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_write_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_write_mask**\ (\ )

选择正面模板值中的哪些位将被更改。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
