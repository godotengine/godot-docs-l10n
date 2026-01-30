:github_url: hide

.. _class_ParallaxBackground:

ParallaxBackground
==================

**已弃用：** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**继承：** :ref:`CanvasLayer<class_CanvasLayer>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于创建视差滚动背景的节点。

.. rst-class:: classref-introduction-group

描述
----

ParallaxBackground 使用一个或多个 :ref:`ParallaxLayer<class_ParallaxLayer>` 子节点来创建视差效果。每个 :ref:`ParallaxLayer<class_ParallaxLayer>` 可以使用 :ref:`ParallaxLayer.motion_offset<class_ParallaxLayer_property_motion_offset>` 以不同的速度移动。这在 2D 游戏中可以创造一种深度错觉。如果没有与 :ref:`Camera2D<class_Camera2D>` 一起使用，你必须手动计算 :ref:`scroll_offset<class_ParallaxBackground_property_scroll_offset>`\ 。

\ **注意：**\ 每个 **ParallaxBackground** 都是在各自的 :ref:`Viewport<class_Viewport>` 中绘制的，无法在不同 :ref:`Viewport<class_Viewport>` 之间共享，见 :ref:`CanvasLayer.custom_viewport<class_CanvasLayer_property_custom_viewport>`\ 。在分屏游戏等使用多个 :ref:`Viewport<class_Viewport>` 的场景下，你需要每个需要绘制的 :ref:`Viewport<class_Viewport>` 创建单独的 **ParallaxBackground**\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | layer                                                                                         | ``-100`` (overrides :ref:`CanvasLayer<class_CanvasLayer_property_layer>`) |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_base_offset<class_ParallaxBackground_property_scroll_base_offset>`               | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_base_scale<class_ParallaxBackground_property_scroll_base_scale>`                 | ``Vector2(1, 1)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`scroll_ignore_camera_zoom<class_ParallaxBackground_property_scroll_ignore_camera_zoom>` | ``false``                                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_limit_begin<class_ParallaxBackground_property_scroll_limit_begin>`               | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_limit_end<class_ParallaxBackground_property_scroll_limit_end>`                   | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_offset<class_ParallaxBackground_property_scroll_offset>`                         | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ParallaxBackground_property_scroll_base_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_base_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_base_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_base_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_base_offset**\ (\ )

所有 :ref:`ParallaxLayer<class_ParallaxLayer>` 子元素的基本位置偏移。

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_base_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_base_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxBackground_property_scroll_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_base_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_base_scale**\ (\ )

所有 :ref:`ParallaxLayer<class_ParallaxLayer>` 子元素的基本移动比例。

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_ignore_camera_zoom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_ignore_camera_zoom** = ``false`` :ref:`🔗<class_ParallaxBackground_property_scroll_ignore_camera_zoom>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_camera_zoom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignore_camera_zoom**\ (\ )

为 ``true`` 时，\ :ref:`ParallaxLayer<class_ParallaxLayer>` 子元素将不受相机缩放级别的影响。

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_limit_begin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_limit_begin** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_limit_begin>`

.. rst-class:: classref-property-setget

- |void| **set_limit_begin**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_begin**\ (\ )

开始滚动的左上角限制。如果相机超出这个限制，背景将停止滚动。必须低于 :ref:`scroll_limit_end<class_ParallaxBackground_property_scroll_limit_end>` 才能工作。

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_limit_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_limit_end** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_limit_end>`

.. rst-class:: classref-property-setget

- |void| **set_limit_end**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_end**\ (\ )

右下角限制滚动结束。如果相机超出这个限制，背景将停止滚动。必须高于 :ref:`scroll_limit_begin<class_ParallaxBackground_property_scroll_limit_begin>` 才能工作。

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_offset**\ (\ )

视差背景的滚动值。使用 :ref:`Camera2D<class_Camera2D>` 时会自动计算，但也可用于手动管理无相机时的滚动。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
