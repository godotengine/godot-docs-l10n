:github_url: hide

.. _class_XRVRS:

XRVRS
=====

**继承：** :ref:`Object<class_Object>`

XR 接口用于生成 VRS 图像的辅助类。

.. rst-class:: classref-introduction-group

描述
----

各种 XR 接口使用该类来生成可用于加速渲染的 VRS 纹理。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_min_radius<class_XRVRS_property_vrs_min_radius>`       | ``20.0``               |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`vrs_render_region<class_XRVRS_property_vrs_render_region>` | ``Rect2i(0, 0, 0, 0)`` |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_strength<class_XRVRS_property_vrs_strength>`           | ``1.0``                |
   +-----------------------------+------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`make_vrs_texture<class_XRVRS_method_make_vrs_texture>`\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRVRS_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_XRVRS_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

如果 VRS 用作屏幕尺寸大小的百分比，则焦点周围可保证完整质量的最小半径。

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_render_region:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **vrs_render_region** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_XRVRS_property_vrs_render_region>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_render_region**\ (\ value\: :ref:`Rect2i<class_Rect2i>`\ )
- :ref:`Rect2i<class_Rect2i>` **get_vrs_render_region**\ (\ )

生成时 VRS 纹理缩放至的渲染区域。

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_XRVRS_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

计算 VRS 密度图时使用的强度。该值越大，VRS 越明显。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_XRVRS_method_make_vrs_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **make_vrs_texture**\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_XRVRS_method_make_vrs_texture>`

根据由我们的 VRS 图块大小调整的渲染 ``target_size`` 生成 VRS 纹理。对于传入 ``eye_foci`` 的每个眼睛焦点，都会创建一个层。焦点应位于 NDC 中。

结果将被缓存，请求具有不变参数和设置的 VRS 纹理将返回该缓存的 RID。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
