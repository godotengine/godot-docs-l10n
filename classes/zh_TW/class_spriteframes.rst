:github_url: hide

.. _class_SpriteFrames:

SpriteFrames
============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

精靈影格庫，用於 AnimatedSprite2D 和 AnimatedSprite3D。

.. rst-class:: classref-introduction-group

說明
----

:ref:`AnimatedSprite2D<class_AnimatedSprite2D>` 和 :ref:`AnimatedSprite3D<class_AnimatedSprite3D>` 節點的精靈影格庫。包含影格和用於播放的動畫信息。

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

列舉
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

方法說明
--------

.. _class_SpriteFrames_method_add_animation:

.. rst-class:: classref-method

|void| **add_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_add_animation>`

向庫中新增新動畫 ``anim``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_add_frame:

.. rst-class:: classref-method

|void| **add_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0, at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SpriteFrames_method_add_frame>`

Adds a frame to the ``anim`` animation. If ``at_position`` is ``-1``, the frame will be added to the end of the animation. ``duration`` specifies the relative duration, see :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>` for details.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_clear>`

刪除 ``anim`` 動畫中的所有影格。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_clear_all:

.. rst-class:: classref-method

|void| **clear_all**\ (\ ) :ref:`🔗<class_SpriteFrames_method_clear_all>`

移除所有動畫。將建立名為 ``default`` 的空動畫。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_duplicate_animation:

.. rst-class:: classref-method

|void| **duplicate_animation**\ (\ anim_from\: :ref:`StringName<class_StringName>`, anim_to\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_duplicate_animation>`

Duplicates the animation ``anim_from`` to a new animation named ``anim_to``. Fails if ``anim_to`` already exists, or if ``anim_from`` does not exist.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_animation_loop**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_loop>`

**已棄用：** Use :ref:`get_animation_loop_mode()<class_SpriteFrames_method_get_animation_loop_mode>` instead.

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

返回一個包含每個動畫的名稱的陣列。值按字母順序排列。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_animation_speed**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_speed>`

返回 ``anim`` 動畫的速度，單位為影格每秒。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_count**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_count>`

返回 ``anim`` 動畫中的影格數。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frame_duration**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_duration>`

返回 ``anim`` 動畫中 ``idx`` 影格的相對持續時間（預設為 ``1.0``\ ）。例如，持續時間為 ``2.0`` 的影格的顯示長度是持續時間為 ``1.0`` 的影格的兩倍。可以使用如下公式計算某一影格的絕對持續時間（單位為秒）：

::

    absolute_duration = relative_duration / (animation_fps * abs(playing_speed))

在這個例子中，\ ``playing_speed`` 是 :ref:`AnimatedSprite2D.get_playing_speed()<class_AnimatedSprite2D_method_get_playing_speed>` 或 :ref:`AnimatedSprite3D.get_playing_speed()<class_AnimatedSprite3D_method_get_playing_speed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_frame_texture**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_texture>`

返回 ``anim`` 動畫中影格索引為 ``idx`` 的紋理。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_has_animation>`

如果 ``anim`` 動畫存在，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_remove_animation:

.. rst-class:: classref-method

|void| **remove_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_remove_animation>`

移除 ``anim`` 動畫。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_remove_frame:

.. rst-class:: classref-method

|void| **remove_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpriteFrames_method_remove_frame>`

移除 ``anim`` 動畫中索引為 ``idx`` 的影格。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_rename_animation:

.. rst-class:: classref-method

|void| **rename_animation**\ (\ anim\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_rename_animation>`

將 ``anim`` 動畫的名稱更改為 ``newname``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_loop:

.. rst-class:: classref-method

|void| **set_animation_loop**\ (\ anim\: :ref:`StringName<class_StringName>`, loop\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_loop>`

**已棄用：** Use :ref:`set_animation_loop_mode()<class_SpriteFrames_method_set_animation_loop_mode>` instead.

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

設定 ``anim`` 動畫的速度，單位為影格每秒。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_frame:

.. rst-class:: classref-method

|void| **set_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_SpriteFrames_method_set_frame>`

Sets the ``texture`` and the ``duration`` of the frame ``idx`` in the ``anim`` animation. ``duration`` specifies the relative duration, see :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>` for details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
