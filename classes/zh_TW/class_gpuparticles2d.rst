:github_url: hide

.. _class_GPUParticles2D:

GPUParticles2D
==============

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

2D 粒子發射器。

.. rst-class:: classref-introduction-group

說明
----

2D 粒子節點，用於建立各種粒子系統和效果。\ **GPUParticles2D** 是一個發射器，特點是以給定的速度生成一定數量的粒子。

使用 :ref:`process_material<class_GPUParticles2D_property_process_material>` 屬性來新增一個配置粒子的外觀和行為的 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`\ 。或者，你可以新增一個套用於所有粒子的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

2D 粒子可以與 :ref:`LightOccluder2D<class_LightOccluder2D>` 節點碰撞（注意：它們不會與 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 節點碰撞）。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`粒子系統（2D） <../tutorials/2d/particle_systems_2d>`

- `2D 粒子演示 <https://godotengine.org/asset-library/asset/2724>`__

- `2D Dodge The Creeps 演示（玩家身後的拖尾使用的是 GPUParticles2D） <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`amount<class_GPUParticles2D_property_amount>`                                         | ``8``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`                             | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`collision_base_size<class_GPUParticles2D_property_collision_base_size>`               | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` | :ref:`draw_order<class_GPUParticles2D_property_draw_order>`                                 | ``1``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`emitting<class_GPUParticles2D_property_emitting>`                                     | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`explosiveness<class_GPUParticles2D_property_explosiveness>`                           | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>`                                   | ``30``                          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`fract_delta<class_GPUParticles2D_property_fract_delta>`                               | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`interp_to_end<class_GPUParticles2D_property_interp_to_end>`                           | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`interpolate<class_GPUParticles2D_property_interpolate>`                               | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`lifetime<class_GPUParticles2D_property_lifetime>`                                     | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`local_coords<class_GPUParticles2D_property_local_coords>`                             | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`one_shot<class_GPUParticles2D_property_one_shot>`                                     | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`preprocess<class_GPUParticles2D_property_preprocess>`                                 | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Material<class_Material>`                 | :ref:`process_material<class_GPUParticles2D_property_process_material>`                     |                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`randomness<class_GPUParticles2D_property_randomness>`                                 | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`seed<class_GPUParticles2D_property_seed>`                                             | ``0``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`speed_scale<class_GPUParticles2D_property_speed_scale>`                               | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`sub_emitter<class_GPUParticles2D_property_sub_emitter>`                               | ``NodePath("")``                |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Texture2D<class_Texture2D>`               | :ref:`texture<class_GPUParticles2D_property_texture>`                                       |                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>`                           | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`trail_lifetime<class_GPUParticles2D_property_trail_lifetime>`                         | ``0.3``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>` | ``4``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`                         | ``8``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>`                         | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Rect2<class_Rect2>`                       | :ref:`visibility_rect<class_GPUParticles2D_property_visibility_rect>`                       | ``Rect2(-100, -100, 200, 200)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`capture_rect<class_GPUParticles2D_method_capture_rect>`\ (\ ) |const|                                                                                                                                                                                          |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`convert_from_particles<class_GPUParticles2D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                                                                                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`emit_particle<class_GPUParticles2D_method_emit_particle>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, velocity\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`request_particles_process<class_GPUParticles2D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0\ )                                                                       |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`restart<class_GPUParticles2D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                               |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_GPUParticles2D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles2D_signal_finished>`

所有活動粒子完成處理時發出。立即重啓發射週期請呼叫 :ref:`restart()<class_GPUParticles2D_method_restart>`\ 。

停用 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 時不會發出該訊號，因為會持續發出並處理粒子。

\ **注意：**\ 由於粒子是在 GPU 上計算的，所以 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 的發射器在收到該訊號後可能存在一小段特殊時期，在此期間將 :ref:`emitting<class_GPUParticles2D_property_emitting>` 設為 ``true`` 無法重啓發射週期。改成呼叫 :ref:`restart()<class_GPUParticles2D_method_restart>` 就可以避免這段延遲。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_GPUParticles2D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles2D_DrawOrder>`

.. _class_GPUParticles2D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

粒子按發射順序繪製。

.. _class_GPUParticles2D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

粒子按照剩餘壽命的順序繪製。換句話說，壽命最長的粒子被繪製在前面。

.. _class_GPUParticles2D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

粒子按照剩餘壽命的相反順序繪製。換句話說，壽命最短的粒子被繪製在前面。

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles2D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles2D_EmitFlags>`

.. _class_GPUParticles2D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

粒子在指定位置開始。

.. _class_GPUParticles2D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

粒子以指定的旋轉和縮放開始。

.. _class_GPUParticles2D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

粒子從指定的速度向量開始，該向量定義了發射方向和速度。

.. _class_GPUParticles2D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

粒子以指定的顏色開始。

.. _class_GPUParticles2D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

粒子以指定的 ``CUSTOM`` 資料開始。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GPUParticles2D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles2D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

一個發射週期內發射的粒子數。有效發射速率為每秒 ``(amount * amount_ratio) / lifetime`` 個粒子。較高的值會增加 GPU 要求，即使在給定時間並非所有粒子都可見或 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 減少。

\ **注意：**\ 更改該值將導致粒子系統重新啟動。為了避免這種情況，請更改 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

實際應該發射的粒子的比率。如果被設定為低於 ``1.0`` 的值，則會將整個生命週期內發射的粒子數量設定為 ``amount * amount_ratio``\ 。與更改 :ref:`amount<class_GPUParticles2D_property_amount>` 不同，發射時更改 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 不會影響已發射的粒子，也不會導致粒子系統重新啟動。\ :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 可用於建立使發射粒子的數量隨時間變化的效果。

\ **注意：**\ 減少 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 不會帶來效能優勢，因為無論 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 是多少，都需要為粒子總數 :ref:`amount<class_GPUParticles2D_property_amount>` 分配和處理資源。如果你不打算在粒子發射時更改發射的粒子數量，請確保將 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 設定為 ``1`` 並根據你的喜好更改 :ref:`amount<class_GPUParticles2D_property_amount>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

粒子碰撞半徑的乘數。\ ``1.0`` 對應於該精靈的大小。如果碰撞時粒子似乎沈入地下，請增加該值。如果粒子在碰撞時出現漂浮，請減小該值。僅當 :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 為 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` 時有效。

\ **注意：**\ 粒子始終具有球形碰撞形狀。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **draw_order** = ``1`` :ref:`🔗<class_GPUParticles2D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **get_draw_order**\ (\ )

粒子繪製順序。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles2D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

如果為 ``true``\ ，則正在發射粒子。\ :ref:`emitting<class_GPUParticles2D_property_emitting>` 可用於啟動和停止粒子發射。但是，如果 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 為 ``true``\ ，則將 :ref:`emitting<class_GPUParticles2D_property_emitting>` 設定為 ``true`` 將不會重新啟動該發射循環，除非所有活動粒子都已完成處理。一旦所有活動粒子完成處理，可以使用 :ref:`finished<class_GPUParticles2D_signal_finished>` 訊號來收取通知。

\ **注意：**\ 對於 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 發射器，由於粒子是在 GPU 上計算的，因此在收到 :ref:`finished<class_GPUParticles2D_signal_finished>` 訊號後可能會有一段短暫的時間，在此期間將其設定為 ``true`` 將不會重新啟動發射循環。

\ **提示：**\ 如果你的 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 發射器需要在收到 :ref:`finished<class_GPUParticles2D_signal_finished>` 訊號後立即重新啟動發射粒子，請考慮呼叫 :ref:`restart()<class_GPUParticles2D_method_restart>` 而不是設定 :ref:`emitting<class_GPUParticles2D_property_emitting>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

粒子在單個發射週期中的發射有多急。如果大於 ``0``\ ，則在下一個發射週期開始之前，發射會出現一個間隔。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles2D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

粒子系統的畫面播放速率被固定為一個值。例如，將值更改為 2 會使粒子以每秒 2 影格的速度渲染。請注意，這並不會降低粒子系統本身的類比速度。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles2D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

如果為 ``為true``\ ，則使用分數差異量 delta 計算，將具有更平滑的粒子顯示效果。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

導致該節點中的所有粒子插值到其生命週期結束時。

\ **注意：**\ 這僅在與 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` 一起使用時才有效。對於自訂處理程序著色器，需要手動實作。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles2D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

啟用粒子插值，當\ :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` 低於螢幕更新率時，使粒子運動更平滑。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

每個粒子存在的時間（以秒為單位）。有效發射速率為每秒 ``(amount * amount_ratio) / lifetime`` 個粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles2D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

如果為 ``true``\ ，則粒子使用父節點的座標空間（稱為區域座標）。這將導致粒子在移動或旋轉時沿著 **GPUParticles2D** 節點（及其父節點）移動和旋轉。如果為 ``false``\ ，則粒子使用全域座標；當移動或旋轉時，它們不會沿著 **GPUParticles2D** 節點（及其父節點）移動或旋轉。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles2D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

如果為 ``true``\ ，則只發生一個發射週期。如果在某個週期內設定為 ``true``\ ，則發射將在該週期結束時停止。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

粒子系統啟動時彷彿已經執行了這麼多秒。

\ **注意：**\ 如果設定為較高的數字可能會非常耗費資源，因為它需要每秒執行與 :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` 相等次數的粒子著色器（如果 :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` 為 0 則為 30 次）。在極端情況下，這甚至可能導致 GPU 崩潰，因為在單個影格中完成的工作量過大。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles2D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

用於處理粒子的 :ref:`Material<class_Material>` 。可以是 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` 或 :ref:`ShaderMaterial<class_ShaderMaterial>` 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

發射壽命隨機率。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles2D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

設定粒子系統所使用的隨機數種子。僅在 :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

粒子系統的運作速度的縮放率。\ ``0`` 值可用於暫停粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles2D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

到將被用作子發射器（請參閱 :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`\ ）的另一個 **GPUParticles2D** 節點的路徑。子發射器可被用於實現煙花、碰撞火花、氣泡彈出水滴等效果。

\ **注意：**\ 當 :ref:`sub_emitter<class_GPUParticles2D_property_sub_emitter>` 被設定時，該目標 **GPUParticles2D** 節點將不再自行發射粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_GPUParticles2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

粒子紋理。如果為 ``null``\ ，則粒子將是大小為 1×1 像素的正方形。

\ **注意：**\ 要使用翻頁紋理，請將新的 :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` 分配給 **GPUParticles2D** 的 :ref:`CanvasItem.material<class_CanvasItem_property_material>` 屬性，然後啟用 :ref:`CanvasItemMaterial.particles_animation<class_CanvasItemMaterial_property_particles_animation>` 並設定 :ref:`CanvasItemMaterial.particles_anim_h_frames<class_CanvasItemMaterial_property_particles_anim_h_frames>`\ 、\ :ref:`CanvasItemMaterial.particles_anim_v_frames<class_CanvasItemMaterial_property_particles_anim_v_frames>` 和 :ref:`CanvasItemMaterial.particles_anim_loop<class_CanvasItemMaterial_property_particles_anim_loop>` 來匹配該翻頁紋理。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles2D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

如果\ ``true`` ，可以使用網格換膚系統來啟用粒子軌跡。

\ **注意：**\ 與\ :ref:`GPUParticles3D<class_GPUParticles3D>`\ 不同的是，trail sections和subdivisions的數量是通過屬性\ :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`\ 和\ :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>`\ 設定的。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles2D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

代表粒子軌跡的時間量（以秒為單位）。僅當 :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_section_subdivisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_section_subdivisions** = ``4`` :ref:`🔗<class_GPUParticles2D_property_trail_section_subdivisions>`

.. rst-class:: classref-property-setget

- |void| **set_trail_section_subdivisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_section_subdivisions**\ (\ )

用於粒子尾跡渲染的細分數。較高的值可以產生更平滑的尾跡曲線，但由於增加了網格的複雜度，因此會犧牲效能。另見 :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`\ 。僅當 :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_sections** = ``8`` :ref:`🔗<class_GPUParticles2D_property_trail_sections>`

.. rst-class:: classref-property-setget

- |void| **set_trail_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_sections**\ (\ )

用於粒子軌跡渲染的部分數。較高的值可以產生更平滑的尾跡曲線，但由於增加了網格的複雜度，因此會犧牲效能。另見 :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>`\ 。僅當 :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles2D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

如果為 ``true``\ ，則每次模擬中粒子會使用 :ref:`seed<class_GPUParticles2D_property_seed>` 中定義的種子。適用於需要在重放時保持視覺效果一致的情況，例如使用 Movie Maker 模式時。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_visibility_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **visibility_rect** = ``Rect2(-100, -100, 200, 200)`` :ref:`🔗<class_GPUParticles2D_property_visibility_rect>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_visibility_rect**\ (\ )

:ref:`Rect2<class_Rect2>` 確定節點的區域，該區域需要在螢幕上可見才能使粒子系統處於活動狀態。

如果當節點進入/退出螢幕時粒子突然出現/消失，則增長矩形。\ :ref:`Rect2<class_Rect2>` 可以通過程式碼或使用 **Particles → Generate Visibility Rect** 編輯器工具生成。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GPUParticles2D_method_capture_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **capture_rect**\ (\ ) |const| :ref:`🔗<class_GPUParticles2D_method_capture_rect>`

傳回一個包含所有現有粒子位置的矩形。

\ **注意：** 當使用執行緒渲染時，此方法會同步渲染執行緒。經常呼叫可能會對效能產生負面影響。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles2D_method_convert_from_particles>`

設定該節點的屬性以配對給定的 **GPUParticles2D** 節點，該給定節點已分配了一個 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, velocity\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles2D_method_emit_particle>`

發射單個粒子。是否應用 ``xform``\ 、\ ``velocity``\ 、\ ``color`` 和 ``custom`` 取決於 ``flags`` 的值。見 :ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>`\ 。

預設的 ParticleProcessMaterial 會覆蓋 ``color``\ ，使用 ``custom`` 的內容作為 ``(rotation, age, animation, lifetime)``\ 。

\ **注意：**\ :ref:`emit_particle()<class_GPUParticles2D_method_emit_particle>` 只有 Forward+ 和 Mobile 渲染方法支援，Compatibility 不支援。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0\ ) :ref:`🔗<class_GPUParticles2D_method_request_particles_process>`

請求粒子在單影格內額外處理指定的時間。

\ ``process_time`` 定義了粒子在發射（emitting）開啟狀態下將要模擬的時間。\ ``process_time_residual`` 定義了粒子在發射關閉狀態下，為了維持模擬效果將要額外處理的時間。當把 :ref:`speed_scale<class_GPUParticles2D_property_speed_scale>` 設定為 ``0.0`` 並結合使用時，這個方法非常適用於對粒子系統的時間軸進行‘搜尋’（seek，即跳轉到特定時間點）。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GPUParticles2D_method_restart>`

重新開始粒子發射週期，清除現存粒子。要避免粒子從視埠中憑空消失，請在呼叫前等待 :ref:`finished<class_GPUParticles2D_signal_finished>` 訊號。

\ **注意：**\ 只有 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 的發射器會發出 :ref:`finished<class_GPUParticles2D_signal_finished>` 訊號。

如果 ``keep_seed`` 為 ``true``\ ，則會保留目前的隨機數種子。適用於跳轉播放。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
