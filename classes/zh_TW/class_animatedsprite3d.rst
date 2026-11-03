:github_url: hide

.. _class_AnimatedSprite3D:

AnimatedSprite3D
================

**繼承：** :ref:`SpriteBase3D<class_SpriteBase3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D 世界中的 2D 精靈節點，可使用多張 2D 紋理做動畫。

.. rst-class:: classref-introduction-group

說明
----

**AnimatedSprite3D** 與 :ref:`Sprite3D<class_Sprite3D>` 節點類似，但會使用多張紋理作為動畫 :ref:`sprite_frames<class_AnimatedSprite3D_property_sprite_frames>`\ 。動畫使用 :ref:`SpriteFrames<class_SpriteFrames>` 資源建立，可匯入影像檔（或資料夾）提供影格，並可在編輯器下方的 SpriteFrames 面板中設定。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`2D 精靈動畫（亦適用於 3D） <../tutorials/2d/2d_sprite_animation>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`StringName<class_StringName>`     | :ref:`animation<class_AnimatedSprite3D_property_animation>`           | ``&"default"`` |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`String<class_String>`             | :ref:`autoplay<class_AnimatedSprite3D_property_autoplay>`             | ``""``         |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                   | :ref:`frame<class_AnimatedSprite3D_property_frame>`                   | ``0``          |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`               | :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>` | ``0.0``        |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`               | :ref:`speed_scale<class_AnimatedSprite3D_property_speed_scale>`       | ``1.0``        |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`SpriteFrames<class_SpriteFrames>` | :ref:`sprite_frames<class_AnimatedSprite3D_property_sprite_frames>`   |                |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_playing_speed<class_AnimatedSprite3D_method_get_playing_speed>`\ (\ ) |const|                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_playing<class_AnimatedSprite3D_method_is_playing>`\ (\ ) |const|                                                                                                                           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`pause<class_AnimatedSprite3D_method_pause>`\ (\ )                                                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play<class_AnimatedSprite3D_method_play>`\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play_backwards<class_AnimatedSprite3D_method_play_backwards>`\ (\ name\: :ref:`StringName<class_StringName>` = &""\ )                                                                         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_frame_and_progress<class_AnimatedSprite3D_method_set_frame_and_progress>`\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ )                                      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`stop<class_AnimatedSprite3D_method_stop>`\ (\ )                                                                                                                                               |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_AnimatedSprite3D_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_animation_changed>`

當 :ref:`animation<class_AnimatedSprite3D_property_animation>` 發生變更時觸發。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_animation_finished>`

當動畫播放至結束（倒放則為起點）時觸發，並會暫停播放。

\ **注意：** 若動畫為循環播放則不會發出此訊號。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_signal_animation_looped:

.. rst-class:: classref-signal

**animation_looped**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_animation_looped>`

動畫進入下一次循環時觸發。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_frame_changed>`

當 :ref:`frame<class_AnimatedSprite3D_property_frame>` 改變時觸發。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_signal_sprite_frames_changed:

.. rst-class:: classref-signal

**sprite_frames_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_sprite_frames_changed>`

當 :ref:`sprite_frames<class_AnimatedSprite3D_property_sprite_frames>` 變更時觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimatedSprite3D_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&"default"`` :ref:`🔗<class_AnimatedSprite3D_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

目前動畫來自 :ref:`sprite_frames<class_AnimatedSprite3D_property_sprite_frames>` 資源。若此值變更，\ :ref:`frame<class_AnimatedSprite3D_property_frame>` 與 :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>` 均會被重設。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_autoplay:

.. rst-class:: classref-property

:ref:`String<class_String>` **autoplay** = ``""`` :ref:`🔗<class_AnimatedSprite3D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_autoplay**\ (\ )

場景載入時要播放的動畫鍵名。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_AnimatedSprite3D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

顯示的動畫影格索引。設定此屬性會同時重設 :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>`\ ；若不希望如此，請改用 :ref:`set_frame_and_progress()<class_AnimatedSprite3D_method_set_frame_and_progress>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_frame_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **frame_progress** = ``0.0`` :ref:`🔗<class_AnimatedSprite3D_property_frame_progress>`

.. rst-class:: classref-property-setget

- |void| **set_frame_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frame_progress**\ (\ )

從目前影格過渡到下一影格的進度值，範圍為 ``0.0``\ –\ ``1.0``\ 。若動畫倒放，則值會從 ``1.0`` 遞減至 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedSprite3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

速度倍率。值為 ``1`` 時以正常速度播放；\ ``0.5`` 為半速；\ ``2`` 為兩倍速。

若為負值則反向播放；若為 ``0`` 則動畫停止推進。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_sprite_frames:

.. rst-class:: classref-property

:ref:`SpriteFrames<class_SpriteFrames>` **sprite_frames** :ref:`🔗<class_AnimatedSprite3D_property_sprite_frames>`

.. rst-class:: classref-property-setget

- |void| **set_sprite_frames**\ (\ value\: :ref:`SpriteFrames<class_SpriteFrames>`\ )
- :ref:`SpriteFrames<class_SpriteFrames>` **get_sprite_frames**\ (\ )

包含動畫的 :ref:`SpriteFrames<class_SpriteFrames>` 資源，並可進行載入、編輯、清除、唯一化與儲存等操作。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimatedSprite3D_method_get_playing_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playing_speed**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite3D_method_get_playing_speed>`

回傳目前動畫的實際播放速度，若未播放則為 ``0``\ 。此速度為 :ref:`speed_scale<class_AnimatedSprite3D_property_speed_scale>` 與呼叫 :ref:`play()<class_AnimatedSprite3D_method_play>` 時指定的 ``custom_speed`` 相乘所得。

若動畫以倒放方式播放，則回傳負值。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite3D_method_is_playing>`

若動畫正在播放（即使 :ref:`speed_scale<class_AnimatedSprite3D_property_speed_scale>` 或 ``custom_speed`` 為 ``0``\ ），則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_method_pause>`

暫停目前正在播放的動畫。系統會保留 :ref:`frame<class_AnimatedSprite3D_property_frame>` 與 :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>`\ ，若在無參數下呼叫 :ref:`play()<class_AnimatedSprite3D_method_play>` 或 :ref:`play_backwards()<class_AnimatedSprite3D_method_play_backwards>`\ ，將自目前位置續播。

另請參閱 :ref:`stop()<class_AnimatedSprite3D_method_stop>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimatedSprite3D_method_play>`

播放鍵名為 ``name`` 的動畫。若 ``custom_speed`` 為負數且 ``from_end`` 為 ``true``\ ，將倒放動畫（等同於呼叫 :ref:`play_backwards()<class_AnimatedSprite3D_method_play_backwards>`\ ）。

若以相同 ``name`` 或未指定 ``name`` 呼叫此方法，則已暫停的動畫會續播。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_play_backwards:

.. rst-class:: classref-method

|void| **play_backwards**\ (\ name\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_AnimatedSprite3D_method_play_backwards>`

倒放鍵名為 ``name`` 的動畫。

此方法相當於使用 ``custom_speed = -1.0``\ 、\ ``from_end = true`` 呼叫 :ref:`play()<class_AnimatedSprite3D_method_play>`\ ，詳情請參考該方法說明。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_set_frame_and_progress:

.. rst-class:: classref-method

|void| **set_frame_and_progress**\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedSprite3D_method_set_frame_and_progress>`

同時將 :ref:`frame<class_AnimatedSprite3D_property_frame>` 與 :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>` 設為指定值。與直接設定 :ref:`frame<class_AnimatedSprite3D_property_frame>` 不同，此方法不會自動將 :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>` 重設為 ``0.0``\ 。

\ **範例：** 在保留現有 :ref:`frame<class_AnimatedSprite3D_property_frame>` 與 :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>` 的情況下切換動畫：


.. tabs::

 .. code-tab:: gdscript

    var current_frame = animated_sprite.get_frame()
    var current_progress = animated_sprite.get_frame_progress()
    animated_sprite.play("walk_another_skin")
    animated_sprite.set_frame_and_progress(current_frame, current_progress)



.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_method_stop>`

停止目前動畫。動畫位置將重設為 ``0``\ ，且 ``custom_speed`` 亦重設為 ``1.0``\ 。另請參閱 :ref:`pause()<class_AnimatedSprite3D_method_pause>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
