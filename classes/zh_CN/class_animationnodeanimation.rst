:github_url: hide

.. _class_AnimationNodeAnimation:

AnimationNodeAnimation
======================

**继承：** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的输入动画。

.. rst-class:: classref-introduction-group

描述
----

一种添加到 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的资源。只有一个输出端口，使用的是 :ref:`animation<class_AnimationNodeAnimation_property_animation>` 属性。可用作 :ref:`AnimationNode<class_AnimationNode>` 的输入，将动画混合在一起。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

- `3D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2748>`__

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`advance_on_start<class_AnimationNodeAnimation_property_advance_on_start>`       | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>`                   | :ref:`animation<class_AnimationNodeAnimation_property_animation>`                     | ``&""``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`LoopMode<enum_Animation_LoopMode>`              | :ref:`loop_mode<class_AnimationNodeAnimation_property_loop_mode>`                     |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` | :ref:`play_mode<class_AnimationNodeAnimation_property_play_mode>`                     | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`start_offset<class_AnimationNodeAnimation_property_start_offset>`               |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`stretch_time_scale<class_AnimationNodeAnimation_property_stretch_time_scale>`   |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>`         |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AnimationNodeAnimation_PlayMode:

.. rst-class:: classref-enumeration

enum **PlayMode**: :ref:`🔗<enum_AnimationNodeAnimation_PlayMode>`

.. _class_AnimationNodeAnimation_constant_PLAY_MODE_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **PLAY_MODE_FORWARD** = ``0``

正序播放动画。

.. _class_AnimationNodeAnimation_constant_PLAY_MODE_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **PLAY_MODE_BACKWARD** = ``1``

逆序播放动画。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AnimationNodeAnimation_property_advance_on_start:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **advance_on_start** = ``false`` :ref:`🔗<class_AnimationNodeAnimation_property_advance_on_start>`

.. rst-class:: classref-property-setget

- |void| **set_advance_on_start**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_advance_on_start**\ (\ )

若为\ ``true``\ ，在收到一个从头播放某个动画的请求时，第一帧会被绘制，但仅仅是被处理，而回放会从第二帧开始。

另见\ :ref:`AnimationPlayer.play()<class_AnimationPlayer_method_play>`\ 的注意事项。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&""`` :ref:`🔗<class_AnimationNodeAnimation_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

作为输出使用的动画。它是 :ref:`AnimationTree.anim_player<class_AnimationTree_property_anim_player>` 提供的动画之一。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_loop_mode:

.. rst-class:: classref-property

:ref:`LoopMode<enum_Animation_LoopMode>` **loop_mode** :ref:`🔗<class_AnimationNodeAnimation_property_loop_mode>`

.. rst-class:: classref-property-setget

- |void| **set_loop_mode**\ (\ value\: :ref:`LoopMode<enum_Animation_LoopMode>`\ )
- :ref:`LoopMode<enum_Animation_LoopMode>` **get_loop_mode**\ (\ )

如果 :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` 为 ``true``\ ，则会用该值覆盖原始 :ref:`Animation<class_Animation>` 资源的循环设置。

\ **注意：**\ 如果 :ref:`Animation.loop_mode<class_Animation_property_loop_mode>` 未设置为循环，就不会遵守 :ref:`Animation.track_set_interpolation_loop_wrap()<class_Animation_method_track_set_interpolation_loop_wrap>` 选项。如果无法得到想要的行为，请考虑制作 :ref:`Animation<class_Animation>` 资源的副本并修改其循环设置。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_play_mode:

.. rst-class:: classref-property

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **play_mode** = ``0`` :ref:`🔗<class_AnimationNodeAnimation_property_play_mode>`

.. rst-class:: classref-property-setget

- |void| **set_play_mode**\ (\ value\: :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>`\ )
- :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **get_play_mode**\ (\ )

确定动画的播放方向。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_start_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **start_offset** :ref:`🔗<class_AnimationNodeAnimation_property_start_offset>`

.. rst-class:: classref-property-setget

- |void| **set_start_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_start_offset**\ (\ )

如果\ :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>`\ 为\ ``true``\ ，则偏移动画的开始位置。

这对于调整三维行走动画中最先迈出的脚步非常有用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_stretch_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch_time_scale** :ref:`🔗<class_AnimationNodeAnimation_property_stretch_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretching_time_scale**\ (\ )

如果\ ``true``\ ，则缩放时间，使\ :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>`\ 中指定的长度为一个周期。

这对于匹配行走和跑步动画的周期非常有用。

如果\ ``false``\ ，则尊重原始动画长度。如果将循环设置为\ :ref:`loop_mode<class_AnimationNodeAnimation_property_loop_mode>`\ ，动画将在\ :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>`\ 中循环。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_timeline_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **timeline_length** :ref:`🔗<class_AnimationNodeAnimation_property_timeline_length>`

.. rst-class:: classref-property-setget

- |void| **set_timeline_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_timeline_length**\ (\ )

自定义时间轴的长度。

如果 :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` 为 ``true``\ ，则会对动画的起始位置进行偏移。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_use_custom_timeline:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_custom_timeline** = ``false`` :ref:`🔗<class_AnimationNodeAnimation_property_use_custom_timeline>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_timeline**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_timeline**\ (\ )

如果为 ``true``\ ，则 :ref:`AnimationNode<class_AnimationNode>` 会根据 :ref:`Animation<class_Animation>` 资源提供动画并调整部分参数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
