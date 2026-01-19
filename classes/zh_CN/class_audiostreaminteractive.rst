:github_url: hide

.. _class_AudioStreamInteractive:

AudioStreamInteractive
======================

**继承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以可交互的形式播放音乐的音频流，包含若干剪辑和一张过渡表。

.. rst-class:: classref-introduction-group

描述
----

这是一种能够以可交互的形式播放音乐的音频流，包含若干剪辑和一张过渡表。必须先添加剪辑，再使用 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>` 添加过渡规则。这种音频流还导出了一个用于控制 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`\ 、\ :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`\ 、\ :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` 播放的属性参数。

用法是先填充一些剪辑，然后配置过渡表。音频流会根据过渡表选择要播放的剪辑，并根据表中定义的对应过渡规则平滑地将当前音乐过渡到新的剪辑。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`clip_count<class_AudioStreamInteractive_property_clip_count>`     | ``0`` |
   +-----------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`initial_clip<class_AudioStreamInteractive_property_initial_clip>` | ``0`` |
   +-----------------------+-------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`add_transition<class_AudioStreamInteractive_method_add_transition>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`, from_time\: :ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>`, to_time\: :ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>`, fade_mode\: :ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>`, fade_beats\: :ref:`float<class_float>`, use_filler_clip\: :ref:`bool<class_bool>` = false, filler_clip\: :ref:`int<class_int>` = -1, hold_previous\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`erase_transition<class_AudioStreamInteractive_method_erase_transition>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                                                                                                                              |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>`       | :ref:`get_clip_auto_advance<class_AudioStreamInteractive_method_get_clip_auto_advance>`\ (\ clip_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`get_clip_auto_advance_next_clip<class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip>`\ (\ clip_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                       | :ref:`get_clip_name<class_AudioStreamInteractive_method_get_clip_name>`\ (\ clip_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>`                                     | :ref:`get_clip_stream<class_AudioStreamInteractive_method_get_clip_stream>`\ (\ clip_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`get_transition_fade_beats<class_AudioStreamInteractive_method_get_transition_fade_beats>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                    |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>`                     | :ref:`get_transition_fade_mode<class_AudioStreamInteractive_method_get_transition_fade_mode>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`get_transition_filler_clip<class_AudioStreamInteractive_method_get_transition_filler_clip>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` | :ref:`get_transition_from_time<class_AudioStreamInteractive_method_get_transition_from_time>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                           | :ref:`get_transition_list<class_AudioStreamInteractive_method_get_transition_list>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>`     | :ref:`get_transition_to_time<class_AudioStreamInteractive_method_get_transition_to_time>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`has_transition<class_AudioStreamInteractive_method_has_transition>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`is_transition_holding_previous<class_AudioStreamInteractive_method_is_transition_holding_previous>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`is_transition_using_filler_clip<class_AudioStreamInteractive_method_is_transition_using_filler_clip>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`set_clip_auto_advance<class_AudioStreamInteractive_method_set_clip_auto_advance>`\ (\ clip_index\: :ref:`int<class_int>`, mode\: :ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>`\ )                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`set_clip_auto_advance_next_clip<class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip>`\ (\ clip_index\: :ref:`int<class_int>`, auto_advance_next_clip\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                                                                                |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`set_clip_name<class_AudioStreamInteractive_method_set_clip_name>`\ (\ clip_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`set_clip_stream<class_AudioStreamInteractive_method_set_clip_stream>`\ (\ clip_index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ )                                                                                                                                                                                                                                                                                                                                                                                                                |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AudioStreamInteractive_TransitionFromTime:

.. rst-class:: classref-enumeration

enum **TransitionFromTime**: :ref:`🔗<enum_AudioStreamInteractive_TransitionFromTime>`

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_IMMEDIATE** = ``0``

尽快开始过渡，不等待任何特定的时间位置。

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_NEXT_BEAT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_NEXT_BEAT** = ``1``

剪辑播放至下一拍时过渡。

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_NEXT_BAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_NEXT_BAR** = ``2``

剪辑播放至下一节时过渡。

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_END:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_END** = ``3``

剪辑播放完成时过渡。

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_TransitionToTime:

.. rst-class:: classref-enumeration

enum **TransitionToTime**: :ref:`🔗<enum_AudioStreamInteractive_TransitionToTime>`

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_SAME_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_SAME_POSITION** = ``0``

过渡至目标剪辑中的相同位置。适用于两个剪辑长度一致、需要进行过渡的场合。

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_START:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_START** = ``1``

过渡至目标剪辑的开头。

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_FadeMode:

.. rst-class:: classref-enumeration

enum **FadeMode**: :ref:`🔗<enum_AudioStreamInteractive_FadeMode>`

.. _class_AudioStreamInteractive_constant_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_DISABLED** = ``0``

过渡时不使用淡入淡出。适用于从剪辑结尾过渡至剪辑开头，双方均有开头/结尾的情况。

.. _class_AudioStreamInteractive_constant_FADE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_IN** = ``1``

在下一剪辑中使用淡入，播放完当前剪辑。

.. _class_AudioStreamInteractive_constant_FADE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_OUT** = ``2``

在当前剪辑中使用淡出，下一剪辑自行开始。

.. _class_AudioStreamInteractive_constant_FADE_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_CROSS** = ``3``

在剪辑之间使用交叉渐变。

.. _class_AudioStreamInteractive_constant_FADE_AUTOMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_AUTOMATIC** = ``4``

使用根据过渡来源和目标决定的过渡逻辑。建议默认使用这个选项。

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_AutoAdvanceMode:

.. rst-class:: classref-enumeration

enum **AutoAdvanceMode**: :ref:`🔗<enum_AudioStreamInteractive_AutoAdvanceMode>`

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_DISABLED** = ``0``

禁用自动推进（默认）。

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_ENABLED** = ``1``

启用自动推进，必须指定剪辑。

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_RETURN_TO_HOLD:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_RETURN_TO_HOLD** = ``2``

启用自动推进，不指定剪辑，而是恢复播放保持的剪辑（见 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_AudioStreamInteractive_constant_CLIP_ANY:

.. rst-class:: classref-constant

**CLIP_ANY** = ``-1`` :ref:`🔗<class_AudioStreamInteractive_constant_CLIP_ANY>`

该常量表示过渡对来源或目标是任何剪辑的情况均适用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioStreamInteractive_property_clip_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **clip_count** = ``0`` :ref:`🔗<class_AudioStreamInteractive_property_clip_count>`

.. rst-class:: classref-property-setget

- |void| **set_clip_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_clip_count**\ (\ )

该交互式播放器中包含的剪辑数量。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_property_initial_clip:

.. rst-class:: classref-property

:ref:`int<class_int>` **initial_clip** = ``0`` :ref:`🔗<class_AudioStreamInteractive_property_initial_clip>`

.. rst-class:: classref-property-setget

- |void| **set_initial_clip**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_initial_clip**\ (\ )

初始剪辑的索引号，播放该音频流时会首先播放该剪辑。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamInteractive_method_add_transition:

.. rst-class:: classref-method

|void| **add_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`, from_time\: :ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>`, to_time\: :ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>`, fade_mode\: :ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>`, fade_beats\: :ref:`float<class_float>`, use_filler_clip\: :ref:`bool<class_bool>` = false, filler_clip\: :ref:`int<class_int>` = -1, hold_previous\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AudioStreamInteractive_method_add_transition>`

添加两个剪辑之间的过渡。请提供来源剪辑和目标剪辑的索引号，或者使用 :ref:`CLIP_ANY<class_AudioStreamInteractive_constant_CLIP_ANY>` 常量表示过渡自/至任意剪辑。

\* ``from_time`` 表示触发后当前剪辑开始过渡的时机。

\* ``to_time`` 表示下一剪辑开始播放的时间。

\* ``fade_mode`` 表示两个剪辑之间的过渡方式。如果不确定，请使用 :ref:`FADE_AUTOMATIC<class_AudioStreamInteractive_constant_FADE_AUTOMATIC>`\ ，会根据实际情况使用最常见的渐隐类型。

\* ``fade_beats`` 表示过渡所需的节拍数。可以使用小数。

\* ``use_filler_clip`` 表示来源和目标剪辑之间会使用填充剪辑。

\* ``filler_clip`` 为填充剪辑的索引号。

\* 如果使用了 ``hold_previous``\ ，则会记住该剪辑。配合 :ref:`AUTO_ADVANCE_RETURN_TO_HOLD<class_AudioStreamInteractive_constant_AUTO_ADVANCE_RETURN_TO_HOLD>` 使用可以在另一个剪辑播放完成后回到该剪辑。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_erase_transition:

.. rst-class:: classref-method

|void| **erase_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_erase_transition>`

擦除过渡，需要提供剪辑索引号 ``from_clip`` 和 ``to_clip``\ 。两者均可使用 :ref:`CLIP_ANY<class_AudioStreamInteractive_constant_CLIP_ANY>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_auto_advance:

.. rst-class:: classref-method

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **get_clip_auto_advance**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_auto_advance>`

返回剪辑是否启用了自动推进。见 :ref:`set_clip_auto_advance()<class_AudioStreamInteractive_method_set_clip_auto_advance>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_clip_auto_advance_next_clip**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip>`

返回 ``clip_index`` 所引用的剪辑会自动推进至哪个剪辑。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_clip_name**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_name>`

返回剪辑的名称。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_clip_stream**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_stream>`

返回与剪辑关联的 :ref:`AudioStream<class_AudioStream>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_fade_beats:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_transition_fade_beats**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_fade_beats>`

返回过渡的时间，单位为拍（见 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_fade_mode:

.. rst-class:: classref-method

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **get_transition_fade_mode**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_fade_mode>`

返回过渡的模式（见 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_filler_clip:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_transition_filler_clip**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_filler_clip>`

返回过渡的填充剪辑（见 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_from_time:

.. rst-class:: classref-method

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **get_transition_from_time**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_from_time>`

返回过渡的来源时间位置（见 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_transition_list**\ (\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_list>`

返回过渡列表（来源、目标互相穿插）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_to_time:

.. rst-class:: classref-method

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **get_transition_to_time**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_to_time>`

返回过渡的目标时间位置（见 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_has_transition:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_has_transition>`

如果存在给定的过渡则返回 ``true``\ （通过 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>` 添加）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_is_transition_holding_previous:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transition_holding_previous**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_is_transition_holding_previous>`

返回过渡是否使用了\ *保持上一个*\ 功能（见 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_is_transition_using_filler_clip:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transition_using_filler_clip**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_is_transition_using_filler_clip>`

返回过渡是否使用了\ *填充剪辑*\ 功能（见 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_auto_advance:

.. rst-class:: classref-method

|void| **set_clip_auto_advance**\ (\ clip_index\: :ref:`int<class_int>`, mode\: :ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_auto_advance>`

通过更改自动前进模式来设置剪辑是否自动前进。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip:

.. rst-class:: classref-method

|void| **set_clip_auto_advance_next_clip**\ (\ clip_index\: :ref:`int<class_int>`, auto_advance_next_clip\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip>`

设置下一个剪辑的索引，此剪辑完成后将自动前进到该索引。如果正在播放的剪辑循环播放，则自动前进将被忽略。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_name:

.. rst-class:: classref-method

|void| **set_clip_name**\ (\ clip_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_name>`

设置当前剪辑的名称（方便识别）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_stream:

.. rst-class:: classref-method

|void| **set_clip_stream**\ (\ clip_index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_stream>`

设置与当前剪辑关联的 :ref:`AudioStream<class_AudioStream>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
