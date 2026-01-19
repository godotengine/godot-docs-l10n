:github_url: hide

.. _class_ParallaxLayer:

ParallaxLayer
=============

**已弃用：** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

使用 :ref:`ParallaxBackground<class_ParallaxBackground>` 的视差滚动层。

.. rst-class:: classref-introduction-group

描述
----

ParallaxLayer 必须是 :ref:`ParallaxBackground<class_ParallaxBackground>` 节点的子节点。每个 ParallaxLayer 都可以设置为相对于相机移动或 :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>` 值。

该节点的子节点将受其滚动偏移量的影响。

\ **注意：**\ 当该节点进入场景后，对其位置和比例的任何改变都将被忽略。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_mirroring<class_ParallaxLayer_property_motion_mirroring>` | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_offset<class_ParallaxLayer_property_motion_offset>`       | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_scale<class_ParallaxLayer_property_motion_scale>`         | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                             | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ParallaxLayer_property_motion_mirroring:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_mirroring** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_mirroring>`

.. rst-class:: classref-property-setget

- |void| **set_mirroring**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_mirroring**\ (\ )

**ParallaxLayer** 重复绘制的间隔，单位为像素。用于创建无限滚动的背景。如果将某个轴设置为 ``0``\ ，那么 **ParallaxLayer** 就只会在那个方向上绘制一次。

\ **注意：**\ 如果想要在重复时让子节点显示的 :ref:`Texture2D<class_Texture2D>` 进行像素级对齐，那么就应当在设置间隔时考虑纹理所使用的缩放。例如你使用 :ref:`Sprite2D<class_Sprite2D>` 节点将 600×600 的纹理进行 ``0.5`` 的缩放，然后希望纹理横向重复，那么就应该将“Mirroring”设置为 ``Vector2(300, 0)``\ 。

\ **注意：**\ 如果视口的某个轴比对应重复轴的两倍还要大，那么就无法无限重复，因为时差图层同一时间只能将该图层绘制两份。计算可见窗口时依据的是父级 :ref:`ParallaxBackground<class_ParallaxBackground>` 的位置，而不是图层自身的位置。因此，使用镜像时，\ **请勿**\ 改变 **ParallaxLayer** 相对于父节点的位置。如果需要修改背景的位置，请改为设置 :ref:`ParallaxBackground<class_ParallaxBackground>` 父节点的 :ref:`CanvasLayer.offset<class_CanvasLayer_property_offset>` 属性。

\ **注意：**\ 虽然这个属性的名叫 Mirroring，是“镜像”的意思，但是并不会对图层做镜像，只会进行重复。

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_offset>`

.. rst-class:: classref-property-setget

- |void| **set_motion_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_offset**\ (\ )

该 ParallaxLayer 的偏移量，相对于父 ParallaxBackground 的 :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxLayer_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_scale**\ (\ )

复制视差图层的运动。如果一个轴被设置为 ``0``\ ，它将不会滚动。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
