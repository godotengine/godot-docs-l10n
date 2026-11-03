:github_url: hide

.. _class_MobileVRInterface:

MobileVRInterface
=================

**繼承：** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

通用移動 VR 實作。

.. rst-class:: classref-introduction-group

說明
----

這是一個通用的移動 VR 實作，你需要提供有關所用手機和 HMD 的詳細資訊。它不取決於任何現有框架。這是我們擁有的最基本的介面。為了獲得最佳效果，你需要一部帶有陀螺儀和加速度計的手機。

請注意，即使沒有位置追蹤，相機也會假定頭戴裝置處於 1.85 米的高度。可以通過設定 :ref:`eye_height<class_MobileVRInterface_property_eye_height>` 來更改該設定。

可以按如下方式初始化該介面：

::

    var interface = XRServer.find_interface("Native mobile")
    if interface and interface.initialize():
        get_viewport().use_xr = true

\ **注意：**\ 在 Android 上必須啟用 :ref:`ProjectSettings.input_devices/sensors/enable_accelerometer<class_ProjectSettings_property_input_devices/sensors/enable_accelerometer>`\ 、\ :ref:`ProjectSettings.input_devices/sensors/enable_gravity<class_ProjectSettings_property_input_devices/sensors/enable_gravity>`\ 、\ :ref:`ProjectSettings.input_devices/sensors/enable_gyroscope<class_ProjectSettings_property_input_devices/sensors/enable_gyroscope>` 和 :ref:`ProjectSettings.input_devices/sensors/enable_magnetometer<class_ProjectSettings_property_input_devices/sensors/enable_magnetometer>`\ 。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_MobileVRInterface_property_display_to_lens:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_to_lens** = ``4.0`` :ref:`🔗<class_MobileVRInterface_property_display_to_lens>`

.. rst-class:: classref-property-setget

- |void| **set_display_to_lens**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_to_lens**\ (\ )

顯示器與裝置內部鏡片之間的距離，單位為釐米。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_display_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_width** = ``14.5`` :ref:`🔗<class_MobileVRInterface_property_display_width>`

.. rst-class:: classref-property-setget

- |void| **set_display_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_width**\ (\ )

顯示器的寬度，單位為釐米。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_eye_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **eye_height** = ``1.85`` :ref:`🔗<class_MobileVRInterface_property_eye_height>`

.. rst-class:: classref-property-setget

- |void| **set_eye_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_eye_height**\ (\ )

相機相對於地面所處的高度（即相對於 :ref:`XROrigin3D<class_XROrigin3D>` 節點）。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_iod:

.. rst-class:: classref-property

:ref:`float<class_float>` **iod** = ``6.0`` :ref:`🔗<class_MobileVRInterface_property_iod>`

.. rst-class:: classref-property-setget

- |void| **set_iod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_iod**\ (\ )

眼間距離，也稱為瞳孔間距離。左眼和右眼瞳孔之間的距離。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_k1:

.. rst-class:: classref-property

:ref:`float<class_float>` **k1** = ``0.215`` :ref:`🔗<class_MobileVRInterface_property_k1>`

.. rst-class:: classref-property-setget

- |void| **set_k1**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_k1**\ (\ )

k1 鏡頭因數是定義所使用鏡頭強度的兩個常數之一，並直接影響鏡頭失真效果。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_k2:

.. rst-class:: classref-property

:ref:`float<class_float>` **k2** = ``0.215`` :ref:`🔗<class_MobileVRInterface_property_k2>`

.. rst-class:: classref-property-setget

- |void| **set_k2**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_k2**\ (\ )

k2 鏡頭因數，見 k1。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_offset_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **offset_rect** = ``Rect2(0, 0, 1, 1)`` :ref:`🔗<class_MobileVRInterface_property_offset_rect>`

.. rst-class:: classref-property-setget

- |void| **set_offset_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_offset_rect**\ (\ )

設定相對於正在渲染的區域的偏移矩形。1 的長度表示該軸上的整個渲染區域。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_oversample:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversample** = ``1.5`` :ref:`🔗<class_MobileVRInterface_property_oversample>`

.. rst-class:: classref-property-setget

- |void| **set_oversample**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_oversample**\ (\ )

過取樣設定。由於鏡頭失真，我們必須以比螢幕自然解析度更高的品質渲染我們的緩衝區。介於 1.5 和 2.0 之間的值通常可以提供良好的結果，但會犧牲效能。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_MobileVRInterface_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

如果 VRS 用作螢幕大小的百分比，則焦點周圍可保證完全品質的最小半徑。

\ **注意：**\ 僅限 Mobile 和 Forward+ 渲染器。需要將 :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` 設定為 :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_MobileVRInterface_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

用於計算 VRS 密度圖的強度。該值越大，VRS 越明顯。這會以犧牲品質為代價來提高效能。

\ **注意：**\ 僅限 Mobile 和 Forward+ 渲染器。需要將 :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` 設定為 :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
