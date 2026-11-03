:github_url: hide

.. _class_SpriteFrames:

SpriteFrames
============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

精靈影格庫，用於 AnimatedSprite2D 和 AnimatedSprite3D。

.. rst-class:: classref-introduction-group

說明
----

:ref:`AnimatedSprite2D<class_AnimatedSprite2D>` 和 :ref:`AnimatedSprite3D<class_AnimatedSprite3D>` 節點的精靈影格庫。包含影格和用於播放的動畫資訊。

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

動畫只播放一次，播放到末尾時就會停止；如果是倒放，則播放到開頭時停止。

.. _class_SpriteFrames_constant_LOOP_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **LOOP_LINEAR** = ``1``

當動畫到達結尾時，會從開頭重新開始；如果逆序播放，則從結尾重新開始，從而實現連續不斷的循環。

.. _class_SpriteFrames_constant_LOOP_PINGPONG:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **LOOP_PINGPONG** = ``2``

動畫每次到達結尾或開頭時都會交替播放方向，反復進行正向播放和逆向播放。

\ **注意：** :ref:`AnimatedSprite2D<class_AnimatedSprite2D>` 和 :ref:`AnimatedSprite3D<class_AnimatedSprite3D>` 在動畫循環的每一端，僅播放一次首影格/尾影格的完整時長（而不是兩次，即不會在正向和逆向播放方向各播放一次）。

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

向 ``anim`` 動畫中新增一影格。如果 ``at_position`` 為 ``-1``\ ，則該影格會新增至該動畫的末尾。\ ``duration`` 指定的是相對時長，詳見 :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>`\ 。

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

將動畫 ``anim_from`` 複製為名叫 ``anim_to`` 的新動畫。如果 ``anim_to`` 已存在或 ``anim_from`` 不存在則會失敗。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_animation_loop**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_loop>`

**已棄用：** Use :ref:`get_animation_loop_mode()<class_SpriteFrames_method_get_animation_loop_mode>` instead.

如果 ``get_animation_loop_mode(anim) == LOOP_LINEAR``\ （即取得到的動畫循環模式為線性循環），則回傳 ``true``\ 。否則，回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_loop_mode:

.. rst-class:: classref-method

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **get_animation_loop_mode**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_loop_mode>`

回傳 ``anim`` 動畫的循環模式。

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

如果 ``loop`` 為 ``false``\ ，則等同於 ``set_animation_loop_mode(LOOP_NONE)``\ ；

如果 ``loop`` 為 ``true``\ ，則等同於 ``set_animation_loop_mode(LOOP_LINEAR)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_loop_mode:

.. rst-class:: classref-method

|void| **set_animation_loop_mode**\ (\ anim\: :ref:`StringName<class_StringName>`, loop_mode\: :ref:`LoopMode<enum_SpriteFrames_LoopMode>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_loop_mode>`

為 ``anim`` 動畫設定 ``loop_mode``\ （循環模式）。

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

設定 ``anim`` 動畫中索引為 ``idx`` 的影格的紋理 ``texture`` 和持續時間 ``duration``\ 。\ ``duration`` 指定的是相對時長，詳見 :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
