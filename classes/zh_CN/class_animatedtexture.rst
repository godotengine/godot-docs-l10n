:github_url: hide

.. _class_AnimatedTexture:

AnimatedTexture
===============

**已弃用：** This class does not work properly in current versions and may be removed in the future. There is currently no equivalent workaround.

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于简单帧动画的代理纹理。

.. rst-class:: classref-introduction-group

描述
----

**AnimatedTexture** 是一种用于帧动画的资源格式，其中多个纹理可以自动链接，每个帧都有预定义的延迟。与 :ref:`AnimationPlayer<class_AnimationPlayer>` 或 :ref:`AnimatedSprite2D<class_AnimatedSprite2D>` 不同，它不是 :ref:`Node<class_Node>`\ ，但具有可在任何可以使用 :ref:`Texture2D<class_Texture2D>` 资源的地方使用的优势，例如在 :ref:`TileSet<class_TileSet>` 中。

动画的播放由 :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>` 属性以及每帧的持续时间（见 :ref:`set_frame_duration()<class_AnimatedTexture_method_set_frame_duration>`\ ）控制。动画是循环播放的，即它会在播放完最后一帧后自动从第 0 帧重新开始。

\ **AnimatedTexture** 目前要求所有帧的纹理具有相同的大小，否则较大的纹理将被裁剪以匹配最小的纹理。

\ **注意：**\ AnimatedTexture 不支持使用 :ref:`AtlasTexture<class_AtlasTexture>`\ 。 每个帧都需要是一个单独的 :ref:`Texture2D<class_Texture2D>`\ 。

\ **警告：**\ 当前的实现对于现代渲染器来说效率不高。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`current_frame<class_AnimatedTexture_property_current_frame>` |                                                                                        |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`frames<class_AnimatedTexture_property_frames>`               | ``1``                                                                                  |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`one_shot<class_AnimatedTexture_property_one_shot>`           | ``false``                                                                              |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`pause<class_AnimatedTexture_property_pause>`                 | ``false``                                                                              |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | resource_local_to_scene                                            | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>`     | ``1.0``                                                                                |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`get_frame_duration<class_AnimatedTexture_method_get_frame_duration>`\ (\ frame\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_frame_texture<class_AnimatedTexture_method_get_frame_texture>`\ (\ frame\: :ref:`int<class_int>`\ ) |const|                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_frame_duration<class_AnimatedTexture_method_set_frame_duration>`\ (\ frame\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ )      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_frame_texture<class_AnimatedTexture_method_set_frame_texture>`\ (\ frame\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_AnimatedTexture_constant_MAX_FRAMES:

.. rst-class:: classref-constant

**MAX_FRAMES** = ``256`` :ref:`🔗<class_AnimatedTexture_constant_MAX_FRAMES>`

**AnimatedTexture** 支持的最大帧数。如果动画需要更多帧，请使用 :ref:`AnimationPlayer<class_AnimationPlayer>` 或 :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AnimatedTexture_property_current_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_frame** :ref:`🔗<class_AnimatedTexture_property_current_frame>`

.. rst-class:: classref-property-setget

- |void| **set_current_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_frame**\ (\ )

设置纹理的当前可见帧。在播放时设置此帧会重置当前帧时间，因此新选择的帧将播放为其配置的整个帧持续时间。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **frames** = ``1`` :ref:`🔗<class_AnimatedTexture_property_frames>`

.. rst-class:: classref-property-setget

- |void| **set_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frames**\ (\ )

动画中要使用的帧数。虽然你可以使用 :ref:`set_frame_texture()<class_AnimatedTexture_method_set_frame_texture>` 独立创建帧，但是你需要为动画设置这个值，才能考虑到新帧。最大帧数为 :ref:`MAX_FRAMES<class_AnimatedTexture_constant_MAX_FRAMES>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_AnimatedTexture_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

如果为 ``true``\ ，则动画将只播放一次，并且在到达结尾后将不会循环回到第一帧。请注意，到达终点不会将 :ref:`pause<class_AnimatedTexture_property_pause>` 设置为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_pause:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pause** = ``false`` :ref:`🔗<class_AnimatedTexture_property_pause>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pause**\ (\ )

如果为 ``true``\ ，则动画将暂停在当前位置（即 :ref:`current_frame<class_AnimatedTexture_property_current_frame>`\ ）。将此属性更改为 ``false`` 时，动画将从暂停处继续播放。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedTexture_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

动画速度将乘以该值。如果设置为负值，则动画反向播放。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AnimatedTexture_method_get_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frame_duration**\ (\ frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimatedTexture_method_get_frame_duration>`

返回给定的 ``frame`` 的持续时间，以秒为单位。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_get_frame_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_frame_texture**\ (\ frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimatedTexture_method_get_frame_texture>`

返回给定帧的 :ref:`Texture2D<class_Texture2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_set_frame_duration:

.. rst-class:: classref-method

|void| **set_frame_duration**\ (\ frame\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedTexture_method_set_frame_duration>`

设置任何给定 ``frame`` 的持续时间。最终的持续时间受 :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>` 影响。如果设置为 ``0``\ ，则该帧在播放过程中被跳过。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_set_frame_texture:

.. rst-class:: classref-method

|void| **set_frame_texture**\ (\ frame\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_AnimatedTexture_method_set_frame_texture>`

将 :ref:`Texture2D<class_Texture2D>` 分配给给定的帧。帧 ID 从 0 开始，因此第一帧的 ID 为 0，动画的最后一帧的 ID 为 :ref:`frames<class_AnimatedTexture_property_frames>` - 1。

最多可以定义 :ref:`MAX_FRAMES<class_AnimatedTexture_constant_MAX_FRAMES>` 个纹理，但要记住，只有 0 到 :ref:`frames<class_AnimatedTexture_property_frames>` - 1 的帧会成为动画的一部分。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
