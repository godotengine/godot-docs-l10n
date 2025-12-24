:github_url: hide

.. _class_AnimationMixer:

AnimationMixer
==============

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AnimationPlayer<class_AnimationPlayer>`, :ref:`AnimationTree<class_AnimationTree>`

:ref:`AnimationPlayer<class_AnimationPlayer>` 與 :ref:`AnimationTree<class_AnimationTree>` 的基底類別。

.. rst-class:: classref-introduction-group

說明
----

:ref:`AnimationPlayer<class_AnimationPlayer>` 與 :ref:`AnimationTree<class_AnimationTree>` 管理動畫列表的基底類別，並提供播放與混合的通用屬性及方法。

在延伸類別中建立播放資訊後，混合將由 **AnimationMixer** 處理。

.. rst-class:: classref-introduction-group

教學
----

- `將動畫自 Godot 4.0 移植到 4.3 <https://godotengine.org/article/migrating-animations-from-godot-4-0-to-4-3/>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`active<class_AnimationMixer_property_active>`                                 | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                                                   | :ref:`audio_max_polyphony<class_AnimationMixer_property_audio_max_polyphony>`       | ``32``             |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` | :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`     | :ref:`callback_mode_method<class_AnimationMixer_property_callback_mode_method>`     | ``0``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`   | :ref:`callback_mode_process<class_AnimationMixer_property_callback_mode_process>`   | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`deterministic<class_AnimationMixer_property_deterministic>`                   | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`reset_on_save<class_AnimationMixer_property_reset_on_save>`                   | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>`           | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>`           | ``NodePath("")``   |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_node<class_AnimationMixer_property_root_node>`                           | ``NodePath("..")`` |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_post_process_key_value<class_AnimationMixer_private_method__post_process_key_value>`\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation_library<class_AnimationMixer_method_add_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ )                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`advance<class_AnimationMixer_method_advance>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`capture<class_AnimationMixer_method_capture>`\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ )                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_caches<class_AnimationMixer_method_clear_caches>`\ (\ )                                                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation<class_AnimationMixer_method_find_animation>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation_library<class_AnimationMixer_method_find_animation_library>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationMixer_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationLibrary<class_AnimationLibrary>`                  | :ref:`get_animation_library<class_AnimationMixer_method_get_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_library_list<class_AnimationMixer_method_get_animation_library_list>`\ (\ ) |const|                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_animation_list<class_AnimationMixer_method_get_animation_list>`\ (\ ) |const|                                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position<class_AnimationMixer_method_get_root_motion_position>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position_accumulator<class_AnimationMixer_method_get_root_motion_position_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation<class_AnimationMixer_method_get_root_motion_rotation>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation_accumulator<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale<class_AnimationMixer_method_get_root_motion_scale>`\ (\ ) |const|                                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale_accumulator<class_AnimationMixer_method_get_root_motion_scale_accumulator>`\ (\ ) |const|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationMixer_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation_library<class_AnimationMixer_method_has_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation_library<class_AnimationMixer_method_remove_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation_library<class_AnimationMixer_method_rename_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ )                                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_AnimationMixer_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_finished>`

動畫播放結束時會發出通知。

\ **注意：** 若動畫設定為循環播放，則不會發出此訊號。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_libraries_updated:

.. rst-class:: classref-signal

**animation_libraries_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_libraries_updated>`

動畫庫變更時通知。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_list_changed:

.. rst-class:: classref-signal

**animation_list_changed**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_list_changed>`

動畫列表變更時通知。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_started:

.. rst-class:: classref-signal

**animation_started**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_started>`

Notifies when an animation starts playing.

\ **Note:** This signal is not emitted if an animation is looping.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_caches_cleared:

.. rst-class:: classref-signal

**caches_cleared**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_caches_cleared>`

快取被清除（無論自動或經由 :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>` 手動）時通知。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_applied:

.. rst-class:: classref-signal

**mixer_applied**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_applied>`

混合結果已套用至目標物件時通知。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_updated:

.. rst-class:: classref-signal

**mixer_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_updated>`

屬性相關程序已更新時通知。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AnimationMixer_AnimationCallbackModeProcess:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeProcess**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeProcess>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS** = ``0``

於物理影格處理動畫（見 :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`\ ）。特別適合為剛體等物理物件製作動畫。

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_IDLE** = ``1``

於一般處理影格時處理動畫（見 :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`\ ）。

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_MANUAL** = ``2``

不自動處理動畫。請使用 :ref:`advance()<class_AnimationMixer_method_advance>` 手動進行。

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeMethod:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeMethod**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeMethod>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_DEFERRED** = ``0``

動畫播放期間將方法呼叫批次化，待事件處理完成後一次執行，以避免播放時刪除節點或修改 AnimationPlayer 所造成的錯誤。

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE** = ``1``

動畫播放到該位置時立即呼叫方法。

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeDiscrete:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeDiscrete**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeDiscrete>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT** = ``0``

當混合 :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` 或 :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` 與 :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` 軌道值時，\ :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` 軌道值具有優先權。

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE** = ``1``

當混合 :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` 或 :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` 與 :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` 時，前兩者具有優先權。這是 :ref:`AnimationPlayer<class_AnimationPlayer>` 的預設行為。

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS** = ``2``

總是將 :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` 軌道值視為 :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>`\ ，並使用 :ref:`Animation.INTERPOLATION_NEAREST<class_Animation_constant_INTERPOLATION_NEAREST>`\ 。這是 :ref:`AnimationTree<class_AnimationTree>` 的預設行為。

若值軌道包含不可插值的鍵值型別，內部會改用 :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE>` 與 :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`\ 。

不可插值型別清單：

- :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`\ 

- :ref:`@GlobalScope.TYPE_NODE_PATH<class_@GlobalScope_constant_TYPE_NODE_PATH>`\ 

- :ref:`@GlobalScope.TYPE_RID<class_@GlobalScope_constant_TYPE_RID>`\ 

- :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`\ 

- :ref:`@GlobalScope.TYPE_CALLABLE<class_@GlobalScope_constant_TYPE_CALLABLE>`\ 

- :ref:`@GlobalScope.TYPE_SIGNAL<class_@GlobalScope_constant_TYPE_SIGNAL>`\ 

- :ref:`@GlobalScope.TYPE_DICTIONARY<class_@GlobalScope_constant_TYPE_DICTIONARY>`\ 

- :ref:`@GlobalScope.TYPE_PACKED_BYTE_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_BYTE_ARRAY>`\ 

\ :ref:`@GlobalScope.TYPE_BOOL<class_@GlobalScope_constant_TYPE_BOOL>` 與 :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>` 在混合時會視為 :ref:`@GlobalScope.TYPE_FLOAT<class_@GlobalScope_constant_TYPE_FLOAT>`\ ，取結果時再四捨五入。

對於包含這些型別的陣列或向量，如 :ref:`@GlobalScope.TYPE_PACKED_INT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_INT32_ARRAY>` 或 :ref:`@GlobalScope.TYPE_VECTOR2I<class_@GlobalScope_constant_TYPE_VECTOR2I>`\ ，亦視為 :ref:`@GlobalScope.TYPE_PACKED_FLOAT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_FLOAT32_ARRAY>` 或 :ref:`@GlobalScope.TYPE_VECTOR2<class_@GlobalScope_constant_TYPE_VECTOR2>`\ ，且陣列長度也會插值。

\ :ref:`@GlobalScope.TYPE_STRING<class_@GlobalScope_constant_TYPE_STRING>` 與 :ref:`@GlobalScope.TYPE_STRING_NAME<class_@GlobalScope_constant_TYPE_STRING_NAME>` 會依字元碼及長度做插值，惟鍵間插值與混合插值的演算法略有差異。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimationMixer_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_AnimationMixer_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

若為 ``true``\ ，則 **AnimationMixer** 會進行處理。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_audio_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_max_polyphony** = ``32`` :ref:`🔗<class_AnimationMixer_property_audio_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_audio_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_max_polyphony**\ (\ )

每個指派的 AudioStreamPlayer 可同時播放的聲音數量。

例如，若此值為 ``32`` 且動畫有兩條音訊軌，則兩個 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 各自最多可同時播放 ``32`` 個聲音。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_discrete:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **callback_mode_discrete** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_discrete>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_discrete**\ (\ value\: :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`\ )
- :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **get_callback_mode_discrete**\ (\ )

一般來說，軌道可設為 :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`\ ，以降低更新頻率，通常用於最近鄰插值。

但若與 :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` 混合，則會考慮多種結果。\ :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` 可明確指定，詳見 :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`\ 。

為了讓混合結果更自然，建議設為 :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS>`\ ，於混合時每幀都更新。其他設定主要為相容性，若無混合則可用，但否則可能產生異常畫面。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_method:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **callback_mode_method** = ``0`` :ref:`🔗<class_AnimationMixer_property_callback_mode_method>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_method**\ (\ value\: :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`\ )
- :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **get_callback_mode_method**\ (\ )

「呼叫方法」軌道所使用的呼叫模式。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_process:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **callback_mode_process** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_process>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_process**\ (\ value\: :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`\ )
- :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **get_callback_mode_process**\ (\ )

更新動畫時所用的處理通知。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_deterministic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deterministic** = ``false`` :ref:`🔗<class_AnimationMixer_property_deterministic>`

.. rst-class:: classref-property-setget

- |void| **set_deterministic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deterministic**\ (\ )

若為 ``true``\ ，混合時會使用確定性演算法。總權重不會正規化，結果以初始值（\ ``0`` 或存在時的 ``"RESET"`` 動畫）累加。

這代表混合總量為 ``0.0``\ ，結果即為 ``"RESET"`` 動畫。

若混合動畫間軌道數不同，缺少軌道的動畫視為有初始值。

若為 ``false``\ ，混合不採用確定性演算法。總權重會正規化為 ``1.0``\ 。若動畫間軌道數不同，將不處理缺軌動畫。

\ **注意：**\ 於 :ref:`AnimationTree<class_AnimationTree>` 內，若 :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`\ 、\ :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`\ 、\ :ref:`AnimationNodeSub2<class_AnimationNodeSub2>` 或權重大於 ``1.0``\ ，可能產生非預期結果。

例如 :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` 混合兩個權重為 ``1.0`` 的節點，總權重為 ``2.0``\ ，但會被正規化為 ``1.0``\ ，結果等同 :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>` 權重為 ``0.5``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_reset_on_save:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset_on_save** = ``true`` :ref:`🔗<class_AnimationMixer_property_reset_on_save>`

.. rst-class:: classref-property-setget

- |void| **set_reset_on_save_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reset_on_save_enabled**\ (\ )

此功能由編輯器使用。若設為 ``true``\ ，場景將以重設動畫（鍵為 ``"RESET"`` 的動畫）在時間 0 的狀態儲存，編輯器也會保留儲存前的場景值。

這讓在編輯器中預覽與編輯動畫更方便，只要變更寫在重設動畫中，就不會被存入場景。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **root_motion_local** = ``false`` :ref:`🔗<class_AnimationMixer_property_root_motion_local>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_root_motion_local**\ (\ )

若為 ``true``\ ，則 :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>` 的值於混合前會先作為本地平移值提取。換言之，平移視為於旋轉之後進行。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_track:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_motion_track** = ``NodePath("")`` :ref:`🔗<class_AnimationMixer_property_root_motion_track>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_track**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_motion_track**\ (\ )

用於根運動的動畫軌道路徑。路徑必須是有效的場景樹節點路徑，且需自即將播放動畫之節點的父節點開始指定。\ :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 格式與 :ref:`Animation.track_set_path()<class_Animation_method_track_set_path>` 相同，但必須指定骨骼。

若軌道型別為 :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`\ 、\ :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>` 或 :ref:`Animation.TYPE_SCALE_3D<class_Animation_constant_TYPE_SCALE_3D>`\ ，則變換效果會被視覺上抵銷，動畫看似停留原地。詳見 :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`\ 、\ :ref:`get_root_motion_rotation()<class_AnimationMixer_method_get_root_motion_rotation>`\ 、\ :ref:`get_root_motion_scale()<class_AnimationMixer_method_get_root_motion_scale>` 與 :ref:`RootMotionView<class_RootMotionView>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_node** = ``NodePath("..")`` :ref:`🔗<class_AnimationMixer_property_root_node>`

.. rst-class:: classref-property-setget

- |void| **set_root_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_node**\ (\ )

節點路徑的參照會由此節點作為起點。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimationMixer_private_method__post_process_key_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_post_process_key_value**\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AnimationMixer_private_method__post_process_key_value>`

於播放期間取得鍵後進行處理的虛擬函式。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_add_animation_library:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ ) :ref:`🔗<class_AnimationMixer_method_add_animation_library>`

將 ``library`` 以鍵 ``name`` 加入動畫播放器。

AnimationMixer 預設具有鍵為空字串的全域動畫庫。若要將動畫加入全域動畫庫：


.. tabs::

 .. code-tab:: gdscript

    var global_library = mixer.get_animation_library("")
    global_library.add_animation("animation_name", animation_resource)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_advance:

.. rst-class:: classref-method

|void| **advance**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimationMixer_method_advance>`

手動將動畫推進指定時間（秒）。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_capture:

.. rst-class:: classref-method

|void| **capture**\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ ) :ref:`🔗<class_AnimationMixer_method_capture>`

若 ``name`` 指定的動畫軌道具有 :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` 選項，會將軌道路徑所指物件的當前值快取；若已存在快取則覆蓋舊快取。

之後在 ``duration`` 指定的時間內於播放過程中與目前的動畫混合結果插值，效果如同交叉淡入。

可透過 ``trans_type`` 指定插值曲線。若軌道第一鍵值非零或鍵值不變化，建議使用 :ref:`Tween.TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>`\ ；若鍵值線性變化，則建議 :ref:`Tween.TRANS_QUAD<class_Tween_constant_TRANS_QUAD>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_clear_caches:

.. rst-class:: classref-method

|void| **clear_caches**\ (\ ) :ref:`🔗<class_AnimationMixer_method_clear_caches>`

**AnimationMixer** 會快取動畫節點；若節點消失可能偵測不到，可呼叫 :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>` 強制重新更新快取。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation>`

返回 ``animation`` 的鍵，若未找到則返回空的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation_library:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation_library**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation_library>`

返回包含 ``animation`` 的 :ref:`AnimationLibrary<class_AnimationLibrary>` 的鍵，若未找到則返回空的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation>`

返回鍵為 ``name`` 的 :ref:`Animation<class_Animation>`\ 。若不存在則返回 ``null`` 並記錄錯誤。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library:

.. rst-class:: classref-method

:ref:`AnimationLibrary<class_AnimationLibrary>` **get_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library>`

返回鍵為 ``name`` 的第一個 :ref:`AnimationLibrary<class_AnimationLibrary>`\ ，若未找到則返回 ``null``\ 。

要取得 **AnimationMixer** 的全域動畫庫請使用 ``get_animation_library("")``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_library_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library_list>`

返回已儲存動畫庫的鍵列表。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_list>`

返回已儲存動畫的鍵列表。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position>`

取得 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 位置的運動增量，返回可於其他位置使用之 :ref:`Vector3<class_Vector3>`\ 。

若 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 不是 :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>` 類型之軌道路徑，則返回 ``Vector3(0, 0, 0)``\ 。

另見 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 與 :ref:`RootMotionView<class_RootMotionView>`\ 。

最基本範例：將位置套用至 :ref:`CharacterBody3D<class_CharacterBody3D>`\ ：


.. tabs::

 .. code-tab:: gdscript

    var current_rotation

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            current_rotation = get_quaternion()
            state_machine.travel("Animate")
        var velocity = current_rotation * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



搭配 :ref:`get_root_motion_rotation_accumulator()<class_AnimationMixer_method_get_root_motion_rotation_accumulator>` 可更正確地套用根運動位置並考慮節點旋轉：


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var velocity = (animation_tree.get_root_motion_rotation_accumulator().inverse() * get_quaternion()) * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



若 :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>` 為 ``true``\ ，則返回已乘上反向旋轉的本地平移值。

此時可寫成：


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var velocity = get_quaternion() * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position_accumulator>`

取得 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 位置軌道的混合值，返回可於其他位置使用之 :ref:`Vector3<class_Vector3>`\ 。

當需要保留動畫初始鍵值時相當有用。

例如，若前一幀播放僅含 ``Vector3(0, 0, 0)`` 的動畫，而下一幀播放僅含 ``Vector3(1, 0, 1)`` 的動畫，可如下計算兩者差異：


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_position_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_position_accumulator = animation_tree.get_root_motion_position_accumulator()
        var difference = current_root_motion_position_accumulator - prev_root_motion_position_accumulator
        prev_root_motion_position_accumulator = current_root_motion_position_accumulator
        transform.origin += difference



惟若動畫循環播放，可能出現非預期的不連續跳動，因此僅適用於部分簡易情境。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation>`

取得 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 旋轉的運動增量，返回可於其他位置使用之 :ref:`Quaternion<class_Quaternion>`\ 。

若 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 不是 :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>` 類型之軌道路徑，則返回 ``Quaternion(0, 0, 0, 1)``\ 。

另見 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 與 :ref:`RootMotionView<class_RootMotionView>`\ 。

最基本範例：將旋轉套用至 :ref:`CharacterBody3D<class_CharacterBody3D>`\ ：


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation_accumulator:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`

取得 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 旋轉軌道的混合值，返回可於其他位置使用之 :ref:`Quaternion<class_Quaternion>`\ 。

正確套用根運動位置時需考慮旋轉；詳見 :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`\ 。

此方法亦可用於需要保留動畫初始鍵值的情況。

例如，若前一幀播放僅含 ``Quaternion(0, 0, 0, 1)`` 的動畫，而下一幀播放僅含 ``Quaternion(0, 0.707, 0, 0.707)`` 的動畫，可如下計算差異：


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_rotation_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_rotation_accumulator = animation_tree.get_root_motion_rotation_accumulator()
        var difference = prev_root_motion_rotation_accumulator.inverse() * current_root_motion_rotation_accumulator
        prev_root_motion_rotation_accumulator = current_root_motion_rotation_accumulator
        transform.basis *= Basis(difference)



惟若動畫循環播放，可能出現非預期的不連續跳動，因此僅適用於部分簡易情境。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale>`

取得 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 縮放的運動增量，返回可於其他位置使用之 :ref:`Vector3<class_Vector3>`\ 。

若 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 不是 :ref:`Animation.TYPE_SCALE_3D<class_Animation_constant_TYPE_SCALE_3D>` 類型之軌道路徑，則返回 ``Vector3(0, 0, 0)``\ 。

另見 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 與 :ref:`RootMotionView<class_RootMotionView>`\ 。

最基本範例：將縮放套用至 :ref:`CharacterBody3D<class_CharacterBody3D>`\ ：


.. tabs::

 .. code-tab:: gdscript

    var current_scale = Vector3(1, 1, 1)
    var scale_accum = Vector3(1, 1, 1)

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            current_scale = get_scale()
            scale_accum = Vector3(1, 1, 1)
            state_machine.travel("Animate")
        scale_accum += animation_tree.get_root_motion_scale()
        set_scale(current_scale * scale_accum)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale_accumulator>`

取得 :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` 縮放軌道的混合值，返回可於其他位置使用之 :ref:`Vector3<class_Vector3>`\ 。

例如，若前一幀播放僅含 ``Vector3(1, 1, 1)`` 的動畫，而下一幀播放僅含 ``Vector3(2, 2, 2)`` 的動畫，可如下計算差異：


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_scale_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_scale_accumulator = animation_tree.get_root_motion_scale_accumulator()
        var difference = current_root_motion_scale_accumulator - prev_root_motion_scale_accumulator
        prev_root_motion_scale_accumulator = current_root_motion_scale_accumulator
        transform.basis = transform.basis.scaled(difference)



惟若動畫循環播放，可能出現非預期的不連續跳動，因此僅適用於部分簡易情境。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation>`

若 **AnimationMixer** 已儲存鍵為 ``name`` 的 :ref:`Animation<class_Animation>`\ ，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation_library:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation_library>`

若 **AnimationMixer** 已儲存鍵為 ``name`` 的 :ref:`AnimationLibrary<class_AnimationLibrary>`\ ，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_remove_animation_library:

.. rst-class:: classref-method

|void| **remove_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_remove_animation_library>`

移除與鍵 ``name`` 關聯的 :ref:`AnimationLibrary<class_AnimationLibrary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_rename_animation_library:

.. rst-class:: classref-method

|void| **rename_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_rename_animation_library>`

將鍵為 ``name`` 的 :ref:`AnimationLibrary<class_AnimationLibrary>` 移動至鍵 ``newname``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
