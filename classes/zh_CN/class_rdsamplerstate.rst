:github_url: hide

.. _class_RDSamplerState:

RDSamplerState
==============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

采样器状态（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

这个对象由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>`     | ``1.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` | :ref:`border_color<class_RDSamplerState_property_border_color>`         | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`       | :ref:`compare_op<class_RDSamplerState_property_compare_op>`             | ``7``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`enable_compare<class_RDSamplerState_property_enable_compare>`     | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`lod_bias<class_RDSamplerState_property_lod_bias>`                 | ``0.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`mag_filter<class_RDSamplerState_property_mag_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`max_lod<class_RDSamplerState_property_max_lod>`                   | ``1e+20`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`min_filter<class_RDSamplerState_property_min_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`min_lod<class_RDSamplerState_property_min_lod>`                   | ``0.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`mip_filter<class_RDSamplerState_property_mip_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_u<class_RDSamplerState_property_repeat_u>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_v<class_RDSamplerState_property_repeat_v>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_w<class_RDSamplerState_property_repeat_w>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`unnormalized_uvw<class_RDSamplerState_property_unnormalized_uvw>` | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>`     | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDSamplerState_property_anisotropy_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anisotropy_max** = ``1.0`` :ref:`🔗<class_RDSamplerState_property_anisotropy_max>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropy_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_anisotropy_max**\ (\ )

采样时能够使用的最大各向异性。仅在 :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` 为 ``true`` 时有效。值越高，倾斜角度下得到的采样越锐利，但性能开销也越大（由于显存带宽的原因）。这个值可能受到使用的图形硬件的限制。大多数图形硬件最多仅支持 ``16.0``\ 。

如果 :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>` 为 ``1.0``\ ，则会强制禁用各向异性，即便 :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` 为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_border_color:

.. rst-class:: classref-property

:ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **border_color** = ``2`` :ref:`🔗<class_RDSamplerState_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>`\ )
- :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **get_border_color**\ (\ )

对采样器范围外进行采样，并且 :ref:`repeat_u<class_RDSamplerState_property_repeat_u>`\ 、\ :ref:`repeat_v<class_RDSamplerState_property_repeat_v>` 或 :ref:`repeat_w<class_RDSamplerState_property_repeat_w>` 的模式禁用了重复时，返回的边框颜色。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_compare_op:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **compare_op** = ``7`` :ref:`🔗<class_RDSamplerState_property_compare_op>`

.. rst-class:: classref-property-setget

- |void| **set_compare_op**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_compare_op**\ (\ )

要使用的比较运算。仅在 :ref:`enable_compare<class_RDSamplerState_property_enable_compare>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_enable_compare:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_compare** = ``false`` :ref:`🔗<class_RDSamplerState_property_enable_compare>`

.. rst-class:: classref-property-setget

- |void| **set_enable_compare**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_compare**\ (\ )

如果为 ``true``\ ，则返回值基于 :ref:`compare_op<class_RDSamplerState_property_compare_op>` 定义的比较运算。这种做法基于硬件，因此比手动在着色器中执行要快。例如，渲染阴影贴图时就会对阴影采样器的深度值进行比较运算。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

要使用的 mipmap LOD 偏置。正值会让采样器在给定距离处更模糊，而负值会让采样器在给定距离处更锐利（有可能看上去会很颗粒化）。推荐值在 ``-0.5`` 到 ``0.0`` 之间。仅在采样器的 mipmap 可用时有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mag_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mag_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mag_filter**\ (\ )

采样器的放大过滤器。如果采样的纹素比屏幕像素显示得大，就会使用这个过滤方法。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_max_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_lod** = ``1e+20`` :ref:`🔗<class_RDSamplerState_property_max_lod>`

.. rst-class:: classref-property-setget

- |void| **set_max_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_lod**\ (\ )

用于显示的最大 mipmap LOD 偏置（最低分辨率）。仅在采样器有 mipmap 可用时有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **min_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_min_filter**\ (\ )

采样器的缩小过滤器。如果采样的纹素比屏幕像素显示得小，就会使用这个过滤方法。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_lod** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_min_lod>`

.. rst-class:: classref-property-setget

- |void| **set_min_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_lod**\ (\ )

用于显示的最小 mipmap LOD 偏置（最高分辨率）。仅在采样器有 mipmap 可用时有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mip_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mip_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mip_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mip_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mip_filter**\ (\ )

Mipmap 使用的过滤方法。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_u:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_u** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_u>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_u**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_u**\ (\ )

沿着 UV 坐标 U 轴的重复模式。影响采样超出 UV 边界时的返回值。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_v:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_v** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_v>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_v**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_v**\ (\ )

沿着 UV 坐标 V 轴的重复模式。影响采样超出 UV 边界时的返回值。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_w:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_w** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_w>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_w**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_w**\ (\ )

沿着 UV 坐标 W 轴的重复模式。影响采样超出 UV 边界时的返回值。仅对 3D 采样器有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_unnormalized_uvw:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unnormalized_uvw** = ``false`` :ref:`🔗<class_RDSamplerState_property_unnormalized_uvw>`

.. rst-class:: classref-property-setget

- |void| **set_unnormalized_uvw**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_unnormalized_uvw**\ (\ )

如果为 ``true``\ ，则纹理将使用范围从 0 到纹理分辨率的坐标进行采样。否则，坐标将被归一化，范围从 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_use_anisotropy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_anisotropy** = ``false`` :ref:`🔗<class_RDSamplerState_property_use_anisotropy>`

.. rst-class:: classref-property-setget

- |void| **set_use_anisotropy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_anisotropy**\ (\ )

如果为 ``true``\ ，则执行各向异性采样。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
