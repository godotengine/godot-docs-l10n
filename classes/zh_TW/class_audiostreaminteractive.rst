:github_url: hide

.. _class_AudioStreamInteractive:

AudioStreamInteractive
======================

**繼承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

可互動播放音樂的音訊串流，結合片段與轉場表。

.. rst-class:: classref-introduction-group

說明
----

這是一種可互動播放音樂的音訊串流，能結合片段與轉場表。必須先加入片段，再透過 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>` 設定轉場規則。此外，此串流會匯出一個屬性，讓你可透過 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`\ 、\ :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` 或 :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` 來控制播放。

使用方式為先填入多個片段，再設定轉場表。之後會依轉場表中定義的規則選擇片段播放，音樂將會從目前片段順暢地銜接到下一個片段。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_AudioStreamInteractive_TransitionFromTime:

.. rst-class:: classref-enumeration

enum **TransitionFromTime**: :ref:`🔗<enum_AudioStreamInteractive_TransitionFromTime>`

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_IMMEDIATE** = ``0``

儘快開始轉場，不等待特定時間位置。

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_NEXT_BEAT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_NEXT_BEAT** = ``1``

當播放位置到達下一拍時進行轉場。

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_NEXT_BAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_NEXT_BAR** = ``2``

當播放位置到達下一小節時進行轉場。

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_END:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_END** = ``3``

當目前片段播放結束時進行轉場。

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_TransitionToTime:

.. rst-class:: classref-enumeration

enum **TransitionToTime**: :ref:`🔗<enum_AudioStreamInteractive_TransitionToTime>`

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_SAME_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_SAME_POSITION** = ``0``

轉場到目的片段的相同位置。當兩片段長度完全相同且需要在它們之間淡化時很有用。

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_START:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_START** = ``1``

轉場到目的片段的開始。

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_FadeMode:

.. rst-class:: classref-enumeration

enum **FadeMode**: :ref:`🔗<enum_AudioStreamInteractive_FadeMode>`

.. _class_AudioStreamInteractive_constant_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_DISABLED** = ``0``

轉場時不使用淡入淡出。適用於片段結尾接片段開頭，且各片段本身已有開場／結尾的情況。

.. _class_AudioStreamInteractive_constant_FADE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_IN** = ``1``

讓目前片段播畢，並在下一個片段使用淡入。

.. _class_AudioStreamInteractive_constant_FADE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_OUT** = ``2``

在目前片段使用淡出，下一個片段將自行開始。

.. _class_AudioStreamInteractive_constant_FADE_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_CROSS** = ``3``

在片段之間使用交叉淡化。

.. _class_AudioStreamInteractive_constant_FADE_AUTOMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_AUTOMATIC** = ``4``

依來源／目的自動選擇淡化邏輯。建議預設使用此模式。

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_AutoAdvanceMode:

.. rst-class:: classref-enumeration

enum **AutoAdvanceMode**: :ref:`🔗<enum_AudioStreamInteractive_AutoAdvanceMode>`

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_DISABLED** = ``0``

停用自動前進（預設）。

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_ENABLED** = ``1``

啟用自動前進，必須指定片段。

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_RETURN_TO_HOLD:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_RETURN_TO_HOLD** = ``2``

啟用自動前進，但不指定片段，而是回到保持的片段（參見 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_AudioStreamInteractive_constant_CLIP_ANY:

.. rst-class:: classref-constant

**CLIP_ANY** = ``-1`` :ref:`🔗<class_AudioStreamInteractive_constant_CLIP_ANY>`

此常數表示在特定轉場中，任何片段都可作為來源或目的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioStreamInteractive_property_clip_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **clip_count** = ``0`` :ref:`🔗<class_AudioStreamInteractive_property_clip_count>`

.. rst-class:: classref-property-setget

- |void| **set_clip_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_clip_count**\ (\ )

此互動播放器包含的片段數量。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_property_initial_clip:

.. rst-class:: classref-property

:ref:`int<class_int>` **initial_clip** = ``0`` :ref:`🔗<class_AudioStreamInteractive_property_initial_clip>`

.. rst-class:: classref-property-setget

- |void| **set_initial_clip**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_initial_clip**\ (\ )

初始片段的索引，串流開始播放時會先播放此片段。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioStreamInteractive_method_add_transition:

.. rst-class:: classref-method

|void| **add_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`, from_time\: :ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>`, to_time\: :ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>`, fade_mode\: :ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>`, fade_beats\: :ref:`float<class_float>`, use_filler_clip\: :ref:`bool<class_bool>` = false, filler_clip\: :ref:`int<class_int>` = -1, hold_previous\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AudioStreamInteractive_method_add_transition>`

在兩個片段之間加入轉場。請傳入來源與目的片段的索引，或使用常數 :ref:`CLIP_ANY<class_AudioStreamInteractive_constant_CLIP_ANY>` 表示自/向任何片段的轉場。

\* ``from_time``\ ：觸發後，轉場在目前片段的何時開始。

\* ``to_time``\ ：下一個片段從何處開始播放。

\* ``fade_mode``\ ：片段間的淡入淡出方式。如無特別需求，使用 :ref:`FADE_AUTOMATIC<class_AudioStreamInteractive_constant_FADE_AUTOMATIC>` 即可，這會依情況選擇最常用的淡化模式。

\* ``fade_beats``\ ：淡入淡出將持續多少拍，可使用小數。

\* ``use_filler_clip``\ ：是否在來源與目的片段之間插入填充片段。

\* ``filler_clip``\ ：填充片段的索引。

\* 若指定 ``hold_previous``\ ，則此片段會被記住，可與 :ref:`AUTO_ADVANCE_RETURN_TO_HOLD<class_AudioStreamInteractive_constant_AUTO_ADVANCE_RETURN_TO_HOLD>` 搭配，在其他片段播放完後回到此片段。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_erase_transition:

.. rst-class:: classref-method

|void| **erase_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_erase_transition>`

提供 ``from_clip`` 與 ``to_clip`` 的片段索引即可刪除轉場。兩者皆可使用 :ref:`CLIP_ANY<class_AudioStreamInteractive_constant_CLIP_ANY>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_auto_advance:

.. rst-class:: classref-method

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **get_clip_auto_advance**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_auto_advance>`

返回指定片段是否啟用自動前進。參見 :ref:`set_clip_auto_advance()<class_AudioStreamInteractive_method_set_clip_auto_advance>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_clip_auto_advance_next_clip**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip>`

返回索引為 ``clip_index`` 的片段將自動前進到的目標片段索引。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_clip_name**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_name>`

返回片段的名稱。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_clip_stream**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_stream>`

返回與片段關聯的 :ref:`AudioStream<class_AudioStream>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_fade_beats:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_transition_fade_beats**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_fade_beats>`

返回轉場所需的時間（拍數）（參見 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_fade_mode:

.. rst-class:: classref-method

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **get_transition_fade_mode**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_fade_mode>`

返回轉場的模式（參見 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_filler_clip:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_transition_filler_clip**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_filler_clip>`

返回轉場所使用的填充片段（參見 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_from_time:

.. rst-class:: classref-method

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **get_transition_from_time**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_from_time>`

返回轉場的來源時間位置（參見 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_transition_list**\ (\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_list>`

返回轉場清單（來源與目的交錯排列）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_to_time:

.. rst-class:: classref-method

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **get_transition_to_time**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_to_time>`

返回轉場的目的時間位置（參見 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_has_transition:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_has_transition>`

若指定的轉場已存在（由 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>` 新增），則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_is_transition_holding_previous:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transition_holding_previous**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_is_transition_holding_previous>`

返回轉場是否使用 *保持前一片段* 功能（參見 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_is_transition_using_filler_clip:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transition_using_filler_clip**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_is_transition_using_filler_clip>`

返回轉場是否使用 *填充片段* 功能（參見 :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_auto_advance:

.. rst-class:: classref-method

|void| **set_clip_auto_advance**\ (\ clip_index\: :ref:`int<class_int>`, mode\: :ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_auto_advance>`

設定片段的自動前進模式。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip:

.. rst-class:: classref-method

|void| **set_clip_auto_advance_next_clip**\ (\ clip_index\: :ref:`int<class_int>`, auto_advance_next_clip\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip>`

設定此片段播畢後將自動前進到的下一個片段索引。若該片段會循環播放，則自動前進將被忽略。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_name:

.. rst-class:: classref-method

|void| **set_clip_name**\ (\ clip_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_name>`

設定目前片段的名稱（便於辨識）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_stream:

.. rst-class:: classref-method

|void| **set_clip_stream**\ (\ clip_index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_stream>`

設定目前片段關聯的 :ref:`AudioStream<class_AudioStream>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
