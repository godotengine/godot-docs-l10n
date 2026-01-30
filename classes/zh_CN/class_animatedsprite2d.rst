:github_url: hide

.. _class_AnimatedSprite2D:

AnimatedSprite2D
================

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

包含多个纹理作为动画播放帧的 Sprite 节点。

.. rst-class:: classref-introduction-group

描述
----

**AnimatedSprite2D** 与 :ref:`Sprite2D<class_Sprite2D>` 节点类似，但是包含多张纹理，可用作动画帧。动画使用 :ref:`SpriteFrames<class_SpriteFrames>` 资源创建，可以导入图像文件（或包含此类文件的文件夹）为该精灵提供动画帧。可以在编辑器的“动画帧”底部面板中配置 :ref:`SpriteFrames<class_SpriteFrames>` 资源。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`2D 精灵动画 <../tutorials/2d/2d_sprite_animation>`

- `2D Dodge The Creeps 演示 <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`StringName<class_StringName>`     | :ref:`animation<class_AnimatedSprite2D_property_animation>`           | ``&"default"``    |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`             | :ref:`autoplay<class_AnimatedSprite2D_property_autoplay>`             | ``""``            |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`centered<class_AnimatedSprite2D_property_centered>`             | ``true``          |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`flip_h<class_AnimatedSprite2D_property_flip_h>`                 | ``false``         |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`flip_v<class_AnimatedSprite2D_property_flip_v>`                 | ``false``         |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                   | :ref:`frame<class_AnimatedSprite2D_property_frame>`                   | ``0``             |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`               | :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` | ``0.0``           |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`           | :ref:`offset<class_AnimatedSprite2D_property_offset>`                 | ``Vector2(0, 0)`` |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`               | :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>`       | ``1.0``           |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`SpriteFrames<class_SpriteFrames>` | :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>`   |                   |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_playing_speed<class_AnimatedSprite2D_method_get_playing_speed>`\ (\ ) |const|                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_playing<class_AnimatedSprite2D_method_is_playing>`\ (\ ) |const|                                                                                                                           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`pause<class_AnimatedSprite2D_method_pause>`\ (\ )                                                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play<class_AnimatedSprite2D_method_play>`\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play_backwards<class_AnimatedSprite2D_method_play_backwards>`\ (\ name\: :ref:`StringName<class_StringName>` = &""\ )                                                                         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_frame_and_progress<class_AnimatedSprite2D_method_set_frame_and_progress>`\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ )                                      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`stop<class_AnimatedSprite2D_method_stop>`\ (\ )                                                                                                                                               |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_AnimatedSprite2D_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_changed>`

当 :ref:`animation<class_AnimatedSprite2D_property_animation>` 更改时发出。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_finished>`

当动画到达结尾时，或者如果反向播放则到达起点时发出。当动画结束时，它会暂停播放。

\ **注意：**\ 如果动画正在循环播放，则不会发出该信号。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_animation_looped:

.. rst-class:: classref-signal

**animation_looped**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_looped>`

当动画循环播放时发出。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_frame_changed>`

:ref:`frame<class_AnimatedSprite2D_property_frame>` 更改时发出。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_sprite_frames_changed:

.. rst-class:: classref-signal

**sprite_frames_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_sprite_frames_changed>`

当 :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>` 更改时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AnimatedSprite2D_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&"default"`` :ref:`🔗<class_AnimatedSprite2D_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

当前动画，来自 :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>`\ 。如果更改了这个值，会重置 :ref:`frame<class_AnimatedSprite2D_property_frame>` 计数和 :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_autoplay:

.. rst-class:: classref-property

:ref:`String<class_String>` **autoplay** = ``""`` :ref:`🔗<class_AnimatedSprite2D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_autoplay**\ (\ )

场景加载时要播放的动画名称。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_AnimatedSprite2D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

如果为 ``true``\ ，则纹理居中。

\ **注意：**\ 像素风游戏中，纹理在居中后可能会变形。这是因为此时纹理的位置在两个像素之间。要避免这种情况，请将该属性设为 ``false``\ ，或者考虑启用 :ref:`ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_vertices_to_pixel>` 和 :ref:`ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_transforms_to_pixel>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_AnimatedSprite2D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

如果为 ``true``\ ，纹理将被水平翻转。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_AnimatedSprite2D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

如果为 ``true``\ ，纹理将被垂直翻转。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_AnimatedSprite2D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

所显示动画帧的索引。设置这个属性会重置 :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`\ 。如果不希望这样，请使用 :ref:`set_frame_and_progress()<class_AnimatedSprite2D_method_set_frame_and_progress>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_frame_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **frame_progress** = ``0.0`` :ref:`🔗<class_AnimatedSprite2D_property_frame_progress>`

.. rst-class:: classref-property-setget

- |void| **set_frame_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frame_progress**\ (\ )

当前帧过渡到下一帧的进度值，在 ``0.0`` 和 ``1.0`` 之间。如果动画是倒放的，则该值是从 ``1.0`` 到 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AnimatedSprite2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

纹理的绘图偏移量。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedSprite2D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

速度缩放比。例如，如果该值为 ``1``\ ，则动画以正常速度播放。如果它是 ``0.5``\ ，那么它会半速播放。如果是 ``2``\ ，则会以双倍速度播放。

如果设置为负值，则动画反向播放。如果设置为\ ``0``\ ，则动画不会前进。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_sprite_frames:

.. rst-class:: classref-property

:ref:`SpriteFrames<class_SpriteFrames>` **sprite_frames** :ref:`🔗<class_AnimatedSprite2D_property_sprite_frames>`

.. rst-class:: classref-property-setget

- |void| **set_sprite_frames**\ (\ value\: :ref:`SpriteFrames<class_SpriteFrames>`\ )
- :ref:`SpriteFrames<class_SpriteFrames>` **get_sprite_frames**\ (\ )

包含动画的 :ref:`SpriteFrames<class_SpriteFrames>` 资源。可以对 :ref:`SpriteFrames<class_SpriteFrames>` 资源进行加载、编辑、清空、唯一化、保存状态等操作。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AnimatedSprite2D_method_get_playing_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playing_speed**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite2D_method_get_playing_speed>`

返回当前动画的实际播放速度，未播放时则为 ``0``\ 。这个速度是 :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>` 属性乘以调用 :ref:`play()<class_AnimatedSprite2D_method_play>` 时指定的 ``custom_speed`` 参数。

如果当前动画是倒放的，则返回负值。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite2D_method_is_playing>`

如果动画目前正在播放，则返回 ``true``\ （即便 :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>` 和/或 ``custom_speed`` 为 ``0``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_method_pause>`

暂停当前正在播放的动画。会保留 :ref:`frame<class_AnimatedSprite2D_property_frame>` 和 :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`\ ，不带参数调用 :ref:`play()<class_AnimatedSprite2D_method_play>` 或 :ref:`play_backwards()<class_AnimatedSprite2D_method_play_backwards>` 会从当前播放位置恢复播放该动画。

另见 :ref:`stop()<class_AnimatedSprite2D_method_stop>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimatedSprite2D_method_play>`

播放名称键为 ``name`` 的动画。如果 ``custom_speed`` 为负且 ``from_end`` 为 ``true``\ ，则该动画会倒放（等价于 :ref:`play_backwards()<class_AnimatedSprite2D_method_play_backwards>`\ ）。

如果调用这个方法时使用了相同的动画名称 ``name`` 或者没有使用 ``name`` 参数，则会继续播放已暂停的分配动画。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_play_backwards:

.. rst-class:: classref-method

|void| **play_backwards**\ (\ name\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_AnimatedSprite2D_method_play_backwards>`

倒放名称键为 ``name`` 的动画。

这个方法是简写，等价于调用 :ref:`play()<class_AnimatedSprite2D_method_play>` 时使用 ``custom_speed = -1.0`` 和 ``from_end = true``\ ，所以更多信息请参阅其描述。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_set_frame_and_progress:

.. rst-class:: classref-method

|void| **set_frame_and_progress**\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedSprite2D_method_set_frame_and_progress>`

将帧设置为 :ref:`frame<class_AnimatedSprite2D_property_frame>`\ 、帧进度设置为 :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`\ 。与直接设置 :ref:`frame<class_AnimatedSprite2D_property_frame>` 不同，此方法不会隐式地将 :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` 重置为 ``0.0``\ 。

\ **示例：**\ 在保持相同的 :ref:`frame<class_AnimatedSprite2D_property_frame>` 和 :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` 的情况下更改动画：


.. tabs::

 .. code-tab:: gdscript

    var current_frame = animated_sprite.get_frame()
    var current_progress = animated_sprite.get_frame_progress()
    animated_sprite.play("行走动画_换皮版")
    animated_sprite.set_frame_and_progress(current_frame, current_progress)



.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_method_stop>`

停止当前正在播放的动画。会将动画的位置重置为 ``0``\ ，并将 ``custom_speed`` 重置为 ``1.0``\ 。另见 :ref:`pause()<class_AnimatedSprite2D_method_pause>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
