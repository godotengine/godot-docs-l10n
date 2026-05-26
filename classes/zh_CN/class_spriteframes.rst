:github_url: hide

.. _class_SpriteFrames:

SpriteFrames
============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

精灵帧库，用于 AnimatedSprite2D 和 AnimatedSprite3D。

.. rst-class:: classref-introduction-group

描述
----

:ref:`AnimatedSprite2D<class_AnimatedSprite2D>` 和 :ref:`AnimatedSprite3D<class_AnimatedSprite3D>` 节点的精灵帧库。包含帧和用于播放的动画信息。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_animation<class_SpriteFrames_method_add_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`\ )                                                                                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_frame<class_SpriteFrames_method_add_frame>`\ (\ anim\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0, at_position\: :ref:`int<class_int>` = -1\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_SpriteFrames_method_clear>`\ (\ anim\: :ref:`StringName<class_StringName>`\ )                                                                                                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_all<class_SpriteFrames_method_clear_all>`\ (\ )                                                                                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`duplicate_animation<class_SpriteFrames_method_duplicate_animation>`\ (\ anim_from\: :ref:`StringName<class_StringName>`, anim_to\: :ref:`StringName<class_StringName>`\ )                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`get_animation_loop<class_SpriteFrames_method_get_animation_loop>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoopMode<enum_SpriteFrames_LoopMode>`       | :ref:`get_animation_loop_mode<class_SpriteFrames_method_get_animation_loop_mode>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_animation_names<class_SpriteFrames_method_get_animation_names>`\ (\ ) |const|                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                         | :ref:`get_animation_speed<class_SpriteFrames_method_get_animation_speed>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                        |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_frame_count<class_SpriteFrames_method_get_frame_count>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                         | :ref:`get_frame_duration<class_SpriteFrames_method_get_frame_duration>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                 | :ref:`get_frame_texture<class_SpriteFrames_method_get_frame_texture>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_animation<class_SpriteFrames_method_has_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_animation<class_SpriteFrames_method_remove_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`\ )                                                                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_frame<class_SpriteFrames_method_remove_frame>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ )                                                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`rename_animation<class_SpriteFrames_method_rename_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ )                                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_animation_loop<class_SpriteFrames_method_set_animation_loop>`\ (\ anim\: :ref:`StringName<class_StringName>`, loop\: :ref:`bool<class_bool>`\ )                                                                                  |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_animation_loop_mode<class_SpriteFrames_method_set_animation_loop_mode>`\ (\ anim\: :ref:`StringName<class_StringName>`, loop_mode\: :ref:`LoopMode<enum_SpriteFrames_LoopMode>`\ )                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_animation_speed<class_SpriteFrames_method_set_animation_speed>`\ (\ anim\: :ref:`StringName<class_StringName>`, fps\: :ref:`float<class_float>`\ )                                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_frame<class_SpriteFrames_method_set_frame>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0\ )              |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_SpriteFrames_LoopMode:

.. rst-class:: classref-enumeration

enum **LoopMode**: :ref:`🔗<enum_SpriteFrames_LoopMode>`

.. _class_SpriteFrames_constant_LOOP_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **LOOP_NONE** = ``0``

The animation plays once and stops when it reaches the end, or the start if played in reverse.

.. _class_SpriteFrames_constant_LOOP_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **LOOP_LINEAR** = ``1``

The animation restarts from the beginning when it reaches the end, or from the end if played in reverse, repeating continuously.

.. _class_SpriteFrames_constant_LOOP_PINGPONG:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **LOOP_PINGPONG** = ``2``

The animation alternates direction each time it reaches the end or start, playing forward and then in reverse repeatedly.

\ **Note:** Both :ref:`AnimatedSprite2D<class_AnimatedSprite2D>` and :ref:`AnimatedSprite3D<class_AnimatedSprite3D>` play the first/last frame for its duration only once at each end of the animation loop (instead of twice, once per forward/backward animation direction).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SpriteFrames_method_add_animation:

.. rst-class:: classref-method

|void| **add_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_add_animation>`

向库中添加新动画 ``anim``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_add_frame:

.. rst-class:: classref-method

|void| **add_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0, at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SpriteFrames_method_add_frame>`

向 ``anim`` 动画中添加一帧。如果 ``at_position`` 为 ``-1``\ ，则该帧会添加至该动画的末尾。\ ``duration`` 指定的是相对时长，详见 :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_clear>`

删除 ``anim`` 动画中的所有帧。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_clear_all:

.. rst-class:: classref-method

|void| **clear_all**\ (\ ) :ref:`🔗<class_SpriteFrames_method_clear_all>`

移除所有动画。将创建名为 ``default`` 的空动画。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_duplicate_animation:

.. rst-class:: classref-method

|void| **duplicate_animation**\ (\ anim_from\: :ref:`StringName<class_StringName>`, anim_to\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_duplicate_animation>`

将动画 ``anim_from`` 复制为名叫 ``anim_to`` 的新动画。如果 ``anim_to`` 已存在或 ``anim_from`` 不存在则会失败。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_animation_loop**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_loop>`

**已弃用：** Use :ref:`get_animation_loop_mode()<class_SpriteFrames_method_get_animation_loop_mode>` instead.

Returns ``true`` if ``get_animation_loop_mode(anim) == LOOP_LINEAR``. Otherwise, returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_loop_mode:

.. rst-class:: classref-method

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **get_animation_loop_mode**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_loop_mode>`

Returns the loop mode for the ``anim`` animation.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_animation_names**\ (\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_names>`

返回一个包含每个动画的名称的数组。值按字母顺序排列。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_animation_speed**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_speed>`

返回 ``anim`` 动画的速度，单位为帧每秒。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_count**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_count>`

返回 ``anim`` 动画中的帧数。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frame_duration**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_duration>`

返回 ``anim`` 动画中 ``idx`` 帧的相对持续时间（默认为 ``1.0``\ ）。例如，持续时间为 ``2.0`` 的帧的显示长度是持续时间为 ``1.0`` 的帧的两倍。可以使用如下公式计算某一帧的绝对持续时间（单位为秒）：

::

    absolute_duration = relative_duration / (animation_fps * abs(playing_speed))

在这个例子中，\ ``playing_speed`` 是 :ref:`AnimatedSprite2D.get_playing_speed()<class_AnimatedSprite2D_method_get_playing_speed>` 或 :ref:`AnimatedSprite3D.get_playing_speed()<class_AnimatedSprite3D_method_get_playing_speed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_frame_texture**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_texture>`

返回 ``anim`` 动画中帧索引为 ``idx`` 的纹理。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_has_animation>`

如果 ``anim`` 动画存在，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_remove_animation:

.. rst-class:: classref-method

|void| **remove_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_remove_animation>`

移除 ``anim`` 动画。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_remove_frame:

.. rst-class:: classref-method

|void| **remove_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpriteFrames_method_remove_frame>`

移除 ``anim`` 动画中索引为 ``idx`` 的帧。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_rename_animation:

.. rst-class:: classref-method

|void| **rename_animation**\ (\ anim\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_rename_animation>`

将 ``anim`` 动画的名称更改为 ``newname``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_loop:

.. rst-class:: classref-method

|void| **set_animation_loop**\ (\ anim\: :ref:`StringName<class_StringName>`, loop\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_loop>`

**已弃用：** Use :ref:`set_animation_loop_mode()<class_SpriteFrames_method_set_animation_loop_mode>` instead.

If ``loop`` is ``false`` equivalent to ``set_animation_loop_mode(LOOP_NONE)``.

If ``loop`` is ``true`` equivalent to ``set_animation_loop_mode(LOOP_LINEAR)``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_loop_mode:

.. rst-class:: classref-method

|void| **set_animation_loop_mode**\ (\ anim\: :ref:`StringName<class_StringName>`, loop_mode\: :ref:`LoopMode<enum_SpriteFrames_LoopMode>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_loop_mode>`

Sets the ``loop_mode`` for the ``anim`` animation.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_speed:

.. rst-class:: classref-method

|void| **set_animation_speed**\ (\ anim\: :ref:`StringName<class_StringName>`, fps\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_speed>`

设置 ``anim`` 动画的速度，单位为帧每秒。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_frame:

.. rst-class:: classref-method

|void| **set_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_SpriteFrames_method_set_frame>`

设置 ``anim`` 动画中索引为 ``idx`` 的帧的纹理 ``texture`` 和持续时间 ``duration``\ 。\ ``duration`` 指定的是相对时长，详见 :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
