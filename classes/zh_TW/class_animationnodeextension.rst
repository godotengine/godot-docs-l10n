:github_url: hide

.. _class_AnimationNodeExtension:

AnimationNodeExtension
======================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於從 GDScript、C# 或 C++ 擴充 :ref:`AnimationRootNode<class_AnimationRootNode>` 的基底類別。

.. rst-class:: classref-introduction-group

說明
----

**AnimationNodeExtension** 讓 :ref:`AnimationRootNode<class_AnimationRootNode>` 的 API 可供 GDScript、C# 或 C++ 擴充使用。此類別並非直接使用，而是提供給其他類別繼承，以便為 :ref:`AnimationTree<class_AnimationTree>` 系統建立自訂節點。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`_process_animation_node<class_AnimationNodeExtension_private_method__process_animation_node>`\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_remaining_time<class_AnimationNodeExtension_method_get_remaining_time>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static|                                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_looping<class_AnimationNodeExtension_method_is_looping>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static|                                                                                        |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimationNodeExtension_private_method__process_animation_node:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **_process_animation_node**\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_AnimationNodeExtension_private_method__process_animation_node>`

這是供自訂節點覆寫的 :ref:`AnimationNode._process()<class_AnimationNode_private_method__process>` 版本，會回傳已處理動畫資料的 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

\ :ref:`PackedFloat64Array<class_PackedFloat64Array>` 參數包含播放資訊，依序以浮點數表示以下數值：播放時間與增量、開始與結束時間、是否請求跳轉（大於 ``0`` 的浮點數表示已請求）、跳轉是否來自外部（同樣以大於 ``0`` 表示）、目前的 :ref:`LoopedFlag<enum_Animation_LoopedFlag>` 以及目前的混合權重。

函式必須回傳節點時間資訊的 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ，順序為：動畫長度、當前時間位置、增量、\ :ref:`LoopMode<enum_Animation_LoopMode>`\ 、動畫是否即將結束（大於 ``0`` 表示是）以及動畫是否為無限（大於 ``0`` 表示是）。回傳陣列必須包含所有這些數值。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_get_remaining_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_remaining_time**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_get_remaining_time>`

回傳指定節點資訊的動畫剩餘時間。若動畫循環播放，只有當 ``break_loop`` 為 ``true`` 時才會回傳剩餘時間，否則會回傳一個很大的整數值。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_is_looping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_looping**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_is_looping>`

如果給定的 ``node_info`` 動畫正在循環，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
