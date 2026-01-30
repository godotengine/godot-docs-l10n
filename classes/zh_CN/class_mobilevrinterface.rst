:github_url: hide

.. _class_MobileVRInterface:

MobileVRInterface
=================

**继承：** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

通用移动 VR 实现。

.. rst-class:: classref-introduction-group

描述
----

这是一个通用的移动 VR 实现，你需要提供有关所用手机和 HMD 的详细信息。它不依赖于任何现有框架。这是我们拥有的最基本的接口。为了获得最佳效果，你需要一部带有陀螺仪和加速度计的手机。

请注意，即使没有位置跟踪，相机也会假定头戴设备处于 1.85 米的高度。可以通过设置 :ref:`eye_height<class_MobileVRInterface_property_eye_height>` 来更改该设置。

可以按如下方式初始化该接口：

::

    var interface = XRServer.find_interface("Native mobile")
    if interface and interface.initialize():
        get_viewport().use_xr = true

\ **注意：**\ 在 Android 上必须启用 :ref:`ProjectSettings.input_devices/sensors/enable_accelerometer<class_ProjectSettings_property_input_devices/sensors/enable_accelerometer>`\ 、\ :ref:`ProjectSettings.input_devices/sensors/enable_gravity<class_ProjectSettings_property_input_devices/sensors/enable_gravity>`\ 、\ :ref:`ProjectSettings.input_devices/sensors/enable_gyroscope<class_ProjectSettings_property_input_devices/sensors/enable_gyroscope>` 和 :ref:`ProjectSettings.input_devices/sensors/enable_magnetometer<class_ProjectSettings_property_input_devices/sensors/enable_magnetometer>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`display_to_lens<class_MobileVRInterface_property_display_to_lens>` | ``4.0``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`display_width<class_MobileVRInterface_property_display_width>`     | ``14.5``                                                                           |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`eye_height<class_MobileVRInterface_property_eye_height>`           | ``1.85``                                                                           |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`iod<class_MobileVRInterface_property_iod>`                         | ``6.0``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`k1<class_MobileVRInterface_property_k1>`                           | ``0.215``                                                                          |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`k2<class_MobileVRInterface_property_k2>`                           | ``0.215``                                                                          |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                          | :ref:`offset_rect<class_MobileVRInterface_property_offset_rect>`         | ``Rect2(0, 0, 1, 1)``                                                              |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`oversample<class_MobileVRInterface_property_oversample>`           | ``1.5``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`vrs_min_radius<class_MobileVRInterface_property_vrs_min_radius>`   | ``20.0``                                                                           |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`vrs_strength<class_MobileVRInterface_property_vrs_strength>`       | ``1.0``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` | xr_play_area_mode                                                        | ``1`` (overrides :ref:`XRInterface<class_XRInterface_property_xr_play_area_mode>`) |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MobileVRInterface_property_display_to_lens:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_to_lens** = ``4.0`` :ref:`🔗<class_MobileVRInterface_property_display_to_lens>`

.. rst-class:: classref-property-setget

- |void| **set_display_to_lens**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_to_lens**\ (\ )

显示器与设备内部镜片之间的距离，单位为厘米。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_display_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_width** = ``14.5`` :ref:`🔗<class_MobileVRInterface_property_display_width>`

.. rst-class:: classref-property-setget

- |void| **set_display_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_width**\ (\ )

显示器的宽度，单位为厘米。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_eye_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **eye_height** = ``1.85`` :ref:`🔗<class_MobileVRInterface_property_eye_height>`

.. rst-class:: classref-property-setget

- |void| **set_eye_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_eye_height**\ (\ )

相机相对于地面所处的高度（即相对于 :ref:`XROrigin3D<class_XROrigin3D>` 节点）。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_iod:

.. rst-class:: classref-property

:ref:`float<class_float>` **iod** = ``6.0`` :ref:`🔗<class_MobileVRInterface_property_iod>`

.. rst-class:: classref-property-setget

- |void| **set_iod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_iod**\ (\ )

眼间距离，也称为瞳孔间距离。左眼和右眼瞳孔之间的距离。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_k1:

.. rst-class:: classref-property

:ref:`float<class_float>` **k1** = ``0.215`` :ref:`🔗<class_MobileVRInterface_property_k1>`

.. rst-class:: classref-property-setget

- |void| **set_k1**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_k1**\ (\ )

k1 镜头因子是定义所使用镜头强度的两个常量之一，并直接影响镜头失真效果。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_k2:

.. rst-class:: classref-property

:ref:`float<class_float>` **k2** = ``0.215`` :ref:`🔗<class_MobileVRInterface_property_k2>`

.. rst-class:: classref-property-setget

- |void| **set_k2**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_k2**\ (\ )

k2 镜头因子，见 k1。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_offset_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **offset_rect** = ``Rect2(0, 0, 1, 1)`` :ref:`🔗<class_MobileVRInterface_property_offset_rect>`

.. rst-class:: classref-property-setget

- |void| **set_offset_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_offset_rect**\ (\ )

设置相对于正在渲染的区域的偏移矩形。1 的长度表示该轴上的整个渲染区域。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_oversample:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversample** = ``1.5`` :ref:`🔗<class_MobileVRInterface_property_oversample>`

.. rst-class:: classref-property-setget

- |void| **set_oversample**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_oversample**\ (\ )

过采样设置。由于镜头失真，我们必须以比屏幕自然分辨率更高的质量渲染我们的缓冲区。介于 1.5 和 2.0 之间的值通常可以提供良好的结果，但会牺牲性能。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_MobileVRInterface_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

如果 VRS 用作屏幕大小的百分比，则焦点周围可保证完全质量的最小半径。

\ **注意：**\ 仅限 Mobile 和 Forward+ 渲染器。需要将 :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` 设置为 :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_MobileVRInterface_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

用于计算 VRS 密度图的强度。该值越大，VRS 越明显。这会以牺牲质量为代价来提高性能。

\ **注意：**\ 仅限 Mobile 和 Forward+ 渲染器。需要将 :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` 设置为 :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
