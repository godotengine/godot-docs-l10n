:github_url: hide

.. _class_AnimationNodeTransition:

AnimationNodeTransition
=======================

**繼承：** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AnimationTree<class_AnimationTree>` 中連接兩個 :ref:`AnimationNode<class_AnimationNode>` 的過渡。

.. rst-class:: classref-introduction-group

說明
----

適用於不需要較進階的 :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` 的情況的簡易狀態機。可將動畫接到輸入，並指定過渡時間。

設定請求並變更動畫播放後，過渡節點會在下一個處理影格將其 ``transition_request`` 值設為空字串，藉此自動清除請求。

\ **注意：** 使用交叉淡入時，\ ``current_state`` 與 ``current_index`` 會在淡入一開始就即刻切換到下一個狀態。


.. tabs::

 .. code-tab:: gdscript

    # 播放連接至 "state_2" 埠的子動畫。
    animation_tree.set("parameters/Transition/transition_request", "state_2")
    # 另一種寫法（結果相同）。
    animation_tree["parameters/Transition/transition_request"] = "state_2"

    # 取得目前狀態名稱（唯讀）。
    animation_tree.get("parameters/Transition/current_state")
    # 另一種寫法（結果相同）。
    animation_tree["parameters/Transition/current_state"]

    # 取得目前狀態索引（唯讀）。
    animation_tree.get("parameters/Transition/current_index")
    # 另一種寫法（結果相同）。
    animation_tree["parameters/Transition/current_index"]

 .. code-tab:: csharp

    // 播放連接至 "state_2" 埠的子動畫。
    animationTree.Set("parameters/Transition/transition_request", "state_2");

    // 取得目前狀態名稱（唯讀）。
    animationTree.Get("parameters/Transition/current_state");

    // 取得目前狀態索引（唯讀）。
    animationTree.Get("parameters/Transition/current_index");



.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

- `3D 平台跳躍示範 <https://godotengine.org/asset-library/asset/2748>`__

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`allow_transition_to_self<class_AnimationNodeTransition_property_allow_transition_to_self>` | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`input_count<class_AnimationNodeTransition_property_input_count>`                           | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>` | :ref:`xfade_curve<class_AnimationNodeTransition_property_xfade_curve>`                           |           |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`xfade_time<class_AnimationNodeTransition_property_xfade_time>`                             | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_input_loop_broken_at_end<class_AnimationNodeTransition_method_is_input_loop_broken_at_end>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_input_reset<class_AnimationNodeTransition_method_is_input_reset>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_input_set_as_auto_advance<class_AnimationNodeTransition_method_is_input_set_as_auto_advance>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_input_as_auto_advance<class_AnimationNodeTransition_method_set_input_as_auto_advance>`\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_input_break_loop_at_end<class_AnimationNodeTransition_method_set_input_break_loop_at_end>`\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_input_reset<class_AnimationNodeTransition_method_set_input_reset>`\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimationNodeTransition_property_allow_transition_to_self:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_transition_to_self** = ``false`` :ref:`🔗<class_AnimationNodeTransition_property_allow_transition_to_self>`

.. rst-class:: classref-property-setget

- |void| **set_allow_transition_to_self**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_transition_to_self**\ (\ )

若為 ``true``\ ，允許過渡到自身狀態；若在輸入啟用了重設選項，動畫將重新開始。若為 ``false``\ ，則過渡到自身狀態時不會有任何效果。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_property_input_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **input_count** = ``0`` :ref:`🔗<class_AnimationNodeTransition_property_input_count>`

.. rst-class:: classref-property-setget

- |void| **set_input_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_input_count**\ (\ )

此動畫節點已啟用的輸入埠數量。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_property_xfade_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **xfade_curve** :ref:`🔗<class_AnimationNodeTransition_property_xfade_curve>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_xfade_curve**\ (\ )

決定動畫交叉淡入淡出的緩動方式。若留空則為線性過渡。應為單位 :ref:`Curve<class_Curve>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_property_xfade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **xfade_time** = ``0.0`` :ref:`🔗<class_AnimationNodeTransition_property_xfade_time>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_xfade_time**\ (\ )

各輸入所連接動畫之間的交叉淡入時間（秒）。

\ **注意：**\ **AnimationNodeTransition** 會在淡入開始後立即將目前狀態切換為下一個狀態。剩餘的精確時間只能由主要動畫推算。當 :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` 被視為最上游時，\ :ref:`xfade_time<class_AnimationNodeTransition_property_xfade_time>` 不會因下游的 delta 而縮放。另見 :ref:`AnimationNodeOneShot.fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimationNodeTransition_method_is_input_loop_broken_at_end:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_loop_broken_at_end**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeTransition_method_is_input_loop_broken_at_end>`

返回動畫是否會在迴圈週期結束時中斷迴圈以進行過渡。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_is_input_reset:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_reset**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeTransition_method_is_input_reset>`

返回當動畫自另一段動畫過渡而來時，該動畫是否會重新開始播放。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_is_input_set_as_auto_advance:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_set_as_auto_advance**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeTransition_method_is_input_set_as_auto_advance>`

若指定的 ``input`` 索引已啟用自動前進，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_set_input_as_auto_advance:

.. rst-class:: classref-method

|void| **set_input_as_auto_advance**\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNodeTransition_method_set_input_as_auto_advance>`

啟用或停用指定 ``input`` 索引的自動前進。啟用後，節點在動畫播放一次後會切換到下一個輸入；若為最後一個輸入，則會循環回第一個。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_set_input_break_loop_at_end:

.. rst-class:: classref-method

|void| **set_input_break_loop_at_end**\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNodeTransition_method_set_input_break_loop_at_end>`

如果為 ``true``\ ，即使動畫設定為循環，也會在本迴圈結束時中斷迴圈以進行轉場。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_set_input_reset:

.. rst-class:: classref-method

|void| **set_input_reset**\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNodeTransition_method_set_input_reset>`

若為 ``true``\ ，過渡至目標動畫時會重新開始播放。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
