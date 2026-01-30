:github_url: hide

.. _class_Parallax2D:

Parallax2D
==========

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于创建视差滚动背景的节点。

.. rst-class:: classref-introduction-group

描述
----

**Parallax2D** 可用于创造视差效果。使用 :ref:`scroll_scale<class_Parallax2D_property_scroll_scale>` 可以在相机移动时，以不同的相对速度移动，这样就在 2D 游戏中创造出了深度的错觉。如果需要手动滚动，也可以使用 :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` 忽略 :ref:`Camera2D<class_Camera2D>` 的位置。

\ **注意：**\ 如果 :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` 为 ``false`` 或者修改了 :ref:`screen_offset<class_Parallax2D_property_screen_offset>`\ ，那么该节点进入场景树后发生的任何位移都会被覆盖。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`2D 视差 <../tutorials/2d/2d_parallax>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`autoscroll<class_Parallax2D_property_autoscroll>`                     | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`follow_viewport<class_Parallax2D_property_follow_viewport>`           | ``true``                                                                      |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` | ``false``                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`limit_begin<class_Parallax2D_property_limit_begin>`                   | ``Vector2(-10000000, -10000000)``                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`limit_end<class_Parallax2D_property_limit_end>`                       | ``Vector2(10000000, 10000000)``                                               |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                  | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`repeat_size<class_Parallax2D_property_repeat_size>`                   | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`repeat_times<class_Parallax2D_property_repeat_times>`                 | ``1``                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`screen_offset<class_Parallax2D_property_screen_offset>`               | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`scroll_offset<class_Parallax2D_property_scroll_offset>`               | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`scroll_scale<class_Parallax2D_property_scroll_scale>`                 | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Parallax2D_property_autoscroll:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **autoscroll** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_autoscroll>`

.. rst-class:: classref-property-setget

- |void| **set_autoscroll**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_autoscroll**\ (\ )

偏移量自动滚动的速度，单位为像素每秒。

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_follow_viewport:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_viewport** = ``true`` :ref:`🔗<class_Parallax2D_property_follow_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_viewport**\ (\ )

如果为 ``true``\ ，则会根据当前相机的位置对 **Parallax2D** 进行偏移。如果 **Parallax2D** 所处的 :ref:`CanvasLayer<class_CanvasLayer>` 与当前相机不同，也可以使用 :ref:`CanvasLayer.follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>` 进行匹配。

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_ignore_camera_scroll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_camera_scroll** = ``false`` :ref:`🔗<class_Parallax2D_property_ignore_camera_scroll>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_camera_scroll**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignore_camera_scroll**\ (\ )

如果为 ``true``\ ，则 **Parallax2D** 的位置不受相机位置的影响。

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_limit_begin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **limit_begin** = ``Vector2(-10000000, -10000000)`` :ref:`🔗<class_Parallax2D_property_limit_begin>`

.. rst-class:: classref-property-setget

- |void| **set_limit_begin**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_begin**\ (\ )

开始滚动的左上角限制。如果相机超出这个限制，\ **Parallax2D** 将停止滚动。必须低于 :ref:`limit_end<class_Parallax2D_property_limit_end>` 减去视口大小才能正常工作。

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_limit_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **limit_end** = ``Vector2(10000000, 10000000)`` :ref:`🔗<class_Parallax2D_property_limit_end>`

.. rst-class:: classref-property-setget

- |void| **set_limit_end**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_end**\ (\ )

滚动结束的右下角限制。如果相机超出这个限制，\ **Parallax2D** 将停止滚动。必须高于 :ref:`limit_begin<class_Parallax2D_property_limit_begin>` 和视口大小的总和才能工作。

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_repeat_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **repeat_size** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_repeat_size>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_repeat_size**\ (\ )

根据这个值将每个子节点的 :ref:`Texture2D<class_Texture2D>` 进行重复和偏移。滚动时该节点的位置会发生循环，取值大于屏幕尺寸时就会造成背景无限滚动的错觉。某个轴如果为 ``0``\ ，则 :ref:`Texture2D<class_Texture2D>` 不会重复。

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_repeat_times:

.. rst-class:: classref-property

:ref:`int<class_int>` **repeat_times** = ``1`` :ref:`🔗<class_Parallax2D_property_repeat_times>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_times**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_repeat_times**\ (\ )

覆盖纹理重复的次数。每个纹理副本都会相对于前一个往后挪 :ref:`repeat_size<class_Parallax2D_property_repeat_size>`\ 。适用于相机远离的情况。

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_screen_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_screen_offset>`

.. rst-class:: classref-property-setget

- |void| **set_screen_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_offset**\ (\ )

用于滚动 **Parallax2D** 的偏移量。\ :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` 为 ``false`` 时这个值会自动更新。

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_scroll_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_scroll_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_offset**\ (\ )

**Parallax2D** 的偏移量。与 :ref:`screen_offset<class_Parallax2D_property_screen_offset>` 和 :ref:`Node2D.position<class_Node2D_property_position>` 类似，但是不会被覆盖。

\ **注意：**\ 如果 :ref:`repeat_size<class_Parallax2D_property_repeat_size>` 大于 ``0``\ ，则这个值会发生循环。

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_scroll_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Parallax2D_property_scroll_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_scale**\ (\ )

**Parallax2D** 最终偏移量的乘数。可用于模拟相对于相机的距离。

例如，\ ``1`` 的值表示滚动速度与相机相同。大于 ``1`` 的值表示滚动速度更快，使物体看起来更近。小于 ``1`` 的值表示滚动速度更慢，使物体看起来更远，而 ``0`` 的值表示物体完全停止。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
