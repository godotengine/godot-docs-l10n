:github_url: hide

.. _class_RDSamplerState:

RDSamplerState
==============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

取樣器狀態（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_RDSamplerState_property_anisotropy_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anisotropy_max** = ``1.0`` :ref:`🔗<class_RDSamplerState_property_anisotropy_max>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropy_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_anisotropy_max**\ (\ )

取樣時能夠使用的最大各向異性。僅在 :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` 為 ``true`` 時有效。值越高，傾斜角度下得到的取樣越銳利，但性能開銷也越大（由於顯存頻寬的原因）。這個值可能受到使用的圖形硬體的限制。大多數圖形硬體最多僅支援 ``16.0``\ 。

如果 :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>` 為 ``1.0``\ ，則會強制禁用各向異性，即便 :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` 為 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_border_color:

.. rst-class:: classref-property

:ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **border_color** = ``2`` :ref:`🔗<class_RDSamplerState_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>`\ )
- :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **get_border_color**\ (\ )

對取樣器範圍外進行取樣，並且 :ref:`repeat_u<class_RDSamplerState_property_repeat_u>`\ 、\ :ref:`repeat_v<class_RDSamplerState_property_repeat_v>` 或 :ref:`repeat_w<class_RDSamplerState_property_repeat_w>` 的模式禁用了重複時，返回的邊框顏色。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_compare_op:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **compare_op** = ``7`` :ref:`🔗<class_RDSamplerState_property_compare_op>`

.. rst-class:: classref-property-setget

- |void| **set_compare_op**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_compare_op**\ (\ )

要使用的比較運算。僅在 :ref:`enable_compare<class_RDSamplerState_property_enable_compare>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_enable_compare:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_compare** = ``false`` :ref:`🔗<class_RDSamplerState_property_enable_compare>`

.. rst-class:: classref-property-setget

- |void| **set_enable_compare**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_compare**\ (\ )

如果為 ``true``\ ，則返回值基於 :ref:`compare_op<class_RDSamplerState_property_compare_op>` 定義的比較運算。這種做法基於硬體，因此比手動在著色器中執行要快。例如，算繪陰影貼圖時就會對陰影取樣器的深度值進行比較運算。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

要使用的 mipmap LOD 偏置。正值會讓取樣器在給定距離處更模糊，而負值會讓取樣器在給定距離處更銳利（有可能看上去會很顆粒化）。推薦值在 ``-0.5`` 到 ``0.0`` 之間。僅在取樣器的 mipmap 可用時有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mag_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mag_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mag_filter**\ (\ )

The sampler's magnification filter. It is the filtering method used when sampling texels that appear bigger than on-screen pixels.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_max_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_lod** = ``1e+20`` :ref:`🔗<class_RDSamplerState_property_max_lod>`

.. rst-class:: classref-property-setget

- |void| **set_max_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_lod**\ (\ )

用於顯示的最大 mipmap LOD 偏置（最低解析度）。僅在取樣器有 mipmap 可用時有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **min_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_min_filter**\ (\ )

The sampler's minification filter. It is the filtering method used when sampling texels that appear smaller than on-screen pixels.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_lod** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_min_lod>`

.. rst-class:: classref-property-setget

- |void| **set_min_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_lod**\ (\ )

用於顯示的最小 mipmap LOD 偏置（最高解析度）。僅在取樣器有 mipmap 可用時有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mip_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mip_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mip_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mip_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mip_filter**\ (\ )

Mipmap 使用的篩選方法。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_u:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_u** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_u>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_u**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_u**\ (\ )

沿著 UV 座標 U 軸的重複模式。影響取樣超出 UV 邊界時的返回值。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_v:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_v** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_v>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_v**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_v**\ (\ )

沿著 UV 座標 V 軸的重複模式。影響取樣超出 UV 邊界時的返回值。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_w:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_w** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_w>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_w**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_w**\ (\ )

沿著 UV 座標 W 軸的重複模式。影響取樣超出 UV 邊界時的返回值。僅對 3D 取樣器有效。

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_unnormalized_uvw:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unnormalized_uvw** = ``false`` :ref:`🔗<class_RDSamplerState_property_unnormalized_uvw>`

.. rst-class:: classref-property-setget

- |void| **set_unnormalized_uvw**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_unnormalized_uvw**\ (\ )

If ``true``, the texture will be sampled with coordinates ranging from 0 to the texture's resolution. Otherwise, the coordinates will be normalized and range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_use_anisotropy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_anisotropy** = ``false`` :ref:`🔗<class_RDSamplerState_property_use_anisotropy>`

.. rst-class:: classref-property-setget

- |void| **set_use_anisotropy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_anisotropy**\ (\ )

如果為 ``true``\ ，則執行各向異性取樣。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
