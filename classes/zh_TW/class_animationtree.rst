:github_url: hide

.. _class_AnimationTree:

AnimationTree
=============

**繼承：** :ref:`AnimationMixer<class_AnimationMixer>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於在 :ref:`AnimationPlayer<class_AnimationPlayer>` 內實現進階動畫過渡的節點。

.. rst-class:: classref-introduction-group

說明
----

用於在 :ref:`AnimationPlayer<class_AnimationPlayer>` 中處理進階動畫過渡的節點。

\ **注意：** 當與 :ref:`AnimationPlayer<class_AnimationPlayer>` 連結後，該 :ref:`AnimationPlayer<class_AnimationPlayer>` 的部分屬性與方法將無法如預期運作。播放與過渡應僅透過 **AnimationTree** 及其內部 :ref:`AnimationNode<class_AnimationNode>` 來控制；\ :ref:`AnimationPlayer<class_AnimationPlayer>` 節點僅用於新增、刪除及編輯動畫。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`advance_expression_base_node<class_AnimationTree_property_advance_expression_base_node>` | ``NodePath(".")``                                                                             |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`anim_player<class_AnimationTree_property_anim_player>`                                   | ``NodePath("")``                                                                              |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` | callback_mode_discrete                                                                         | ``2`` (overrides :ref:`AnimationMixer<class_AnimationMixer_property_callback_mode_discrete>`) |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                                 | deterministic                                                                                  | ``true`` (overrides :ref:`AnimationMixer<class_AnimationMixer_property_deterministic>`)       |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AnimationRootNode<class_AnimationRootNode>`                                       | :ref:`tree_root<class_AnimationTree_property_tree_root>`                                       |                                                                                               |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` | :ref:`get_process_callback<class_AnimationTree_method_get_process_callback>`\ (\ ) |const|                                                                              |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`set_process_callback<class_AnimationTree_method_set_process_callback>`\ (\ mode\: :ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>`\ ) |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_AnimationTree_signal_animation_player_changed:

.. rst-class:: classref-signal

**animation_player_changed**\ (\ ) :ref:`🔗<class_AnimationTree_signal_animation_player_changed>`

當 :ref:`anim_player<class_AnimationTree_property_anim_player>` 變更時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AnimationTree_AnimationProcessCallback:

.. rst-class:: classref-enumeration

enum **AnimationProcessCallback**: :ref:`🔗<enum_AnimationTree_AnimationProcessCallback>`

.. _class_AnimationTree_constant_ANIMATION_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **ANIMATION_PROCESS_PHYSICS** = ``0``

**已棄用：** See :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`.



.. _class_AnimationTree_constant_ANIMATION_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **ANIMATION_PROCESS_IDLE** = ``1``

**已棄用：** See :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_IDLE<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_IDLE>`.



.. _class_AnimationTree_constant_ANIMATION_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **ANIMATION_PROCESS_MANUAL** = ``2``

**已棄用：** See :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_MANUAL<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_MANUAL>`.



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimationTree_property_advance_expression_base_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **advance_expression_base_node** = ``NodePath(".")`` :ref:`🔗<class_AnimationTree_property_advance_expression_base_node>`

.. rst-class:: classref-property-setget

- |void| **set_advance_expression_base_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_advance_expression_base_node**\ (\ )

若內部未明確指定，則此為用來評估 :ref:`AnimationNode<class_AnimationNode>` :ref:`Expression<class_Expression>` 的 :ref:`Node<class_Node>` 路徑。

.. rst-class:: classref-item-separator

----

.. _class_AnimationTree_property_anim_player:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **anim_player** = ``NodePath("")`` :ref:`🔗<class_AnimationTree_property_anim_player>`

.. rst-class:: classref-property-setget

- |void| **set_animation_player**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_animation_player**\ (\ )

用於播放動畫之 :ref:`AnimationPlayer<class_AnimationPlayer>` 的路徑。

.. rst-class:: classref-item-separator

----

.. _class_AnimationTree_property_tree_root:

.. rst-class:: classref-property

:ref:`AnimationRootNode<class_AnimationRootNode>` **tree_root** :ref:`🔗<class_AnimationTree_property_tree_root>`

.. rst-class:: classref-property-setget

- |void| **set_tree_root**\ (\ value\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ )
- :ref:`AnimationRootNode<class_AnimationRootNode>` **get_tree_root**\ (\ )

此 **AnimationTree** 的根動畫節點。詳見 :ref:`AnimationRootNode<class_AnimationRootNode>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimationTree_method_get_process_callback:

.. rst-class:: classref-method

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **get_process_callback**\ (\ ) |const| :ref:`🔗<class_AnimationTree_method_get_process_callback>`

**已棄用：** Use :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` instead.

回傳用來更新動畫的處理通知類型。

.. rst-class:: classref-item-separator

----

.. _class_AnimationTree_method_set_process_callback:

.. rst-class:: classref-method

|void| **set_process_callback**\ (\ mode\: :ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>`\ ) :ref:`🔗<class_AnimationTree_method_set_process_callback>`

**已棄用：** Use :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` instead.

設定用於更新動畫的處理通知類型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
