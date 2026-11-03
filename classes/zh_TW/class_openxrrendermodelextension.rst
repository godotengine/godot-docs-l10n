:github_url: hide

.. _class_OpenXRRenderModelExtension:

OpenXRRenderModelExtension
==========================

**繼承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

這個類實作了 OpenXR 渲染模型擴充。

.. rst-class:: classref-introduction-group

說明
----

這個類實作了 OpenXR 渲染模型擴充，啟用後會維護活動渲染模型清單，提供渲染模型資料介面。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`is_active<class_OpenXRRenderModelExtension_method_is_active>`\ (\ ) |const|                                                                                                                                        |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                     | :ref:`render_model_create<class_OpenXRRenderModelExtension_method_render_model_create>`\ (\ render_model_id\: :ref:`int<class_int>`\ )                                                                                   |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`render_model_destroy<class_OpenXRRenderModelExtension_method_render_model_destroy>`\ (\ render_model\: :ref:`RID<class_RID>`\ )                                                                                    |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]        | :ref:`render_model_get_all<class_OpenXRRenderModelExtension_method_render_model_get_all>`\ (\ )                                                                                                                          |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`render_model_get_animatable_node_count<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                        |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`render_model_get_animatable_node_name<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name>`\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const|           |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                     | :ref:`render_model_get_animatable_node_transform<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform>`\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` | :ref:`render_model_get_confidence<class_OpenXRRenderModelExtension_method_render_model_get_confidence>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                              |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                     | :ref:`render_model_get_root_transform<class_OpenXRRenderModelExtension_method_render_model_get_root_transform>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`         | :ref:`render_model_get_subaction_paths<class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths>`\ (\ render_model\: :ref:`RID<class_RID>`\ )                                                            |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`render_model_get_top_level_path<class_OpenXRRenderModelExtension_method_render_model_get_top_level_path>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`render_model_is_animatable_node_visible<class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible>`\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const|       |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                               | :ref:`render_model_new_scene_instance<class_OpenXRRenderModelExtension_method_render_model_new_scene_instance>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_OpenXRRenderModelExtension_signal_render_model_added:

.. rst-class:: classref-signal

**render_model_added**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_added>`

新增新的渲染模型時發出。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_removed:

.. rst-class:: classref-signal

**render_model_removed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_removed>`

移除渲染模型時發出。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed:

.. rst-class:: classref-signal

**render_model_top_level_path_changed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed>`

與渲染模型關聯的頂層路徑發生改變時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRRenderModelExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_is_active>`

如果支援且已啟用 OpenXR 的渲染模型，則回傳 ``true``\ 。

\ **注意：**\ 這僅在 OpenXR 已被初始化後回傳一個有效值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_create:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **render_model_create**\ (\ render_model_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_create>`

在 OpenXR 中使用渲染模型 ID 建立一個渲染模型物件。

\ **注意：**\ 該函式是為提供渲染模型 ID 的相依性 OpenXR 擴充公開的，以便與渲染模型擴充一起使用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_destroy:

.. rst-class:: classref-method

|void| **render_model_destroy**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_destroy>`

銷毀在 OpenXR 中之前使用 :ref:`render_model_create()<class_OpenXRRenderModelExtension_method_render_model_create>` 建立的渲染模型物件。

\ **注意：**\ 該函式是為提供渲染模型 ID 的相依性 OpenXR 擴充公開的，以便與渲染模型擴充一起使用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **render_model_get_all**\ (\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_all>`

回傳已向該擴充注冊的所有目前活動的渲染模型陣列。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **render_model_get_animatable_node_count**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count>`

回傳該渲染模型中包含的可動畫節點數。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_animatable_node_name**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name>`

回傳給定可動畫節點的名稱。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_animatable_node_transform**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform>`

回傳可動畫節點的目前區域變換。每影格都會更新。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_confidence:

.. rst-class:: classref-method

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **render_model_get_confidence**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_confidence>`

回傳渲染模型追蹤資料的追蹤置信度。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_root_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_root_transform**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_root_transform>`

回傳渲染模型的根變換。這是追蹤的位置，相對於 :ref:`XROrigin3D<class_XROrigin3D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **render_model_get_subaction_paths**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths>`

回傳 ``render_model`` 的活動子動作路徑清單。

\ **注意：**\ 如果與動作綁定的裝置與建議的互動綁定不同，則回傳的資訊顯示的是與該裝置模擬的互動綁定相關的路徑。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_top_level_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_top_level_path**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_top_level_path>`

回傳與 ``render_model`` 關聯的頂級路徑。如果提供了該資訊，則可以識別渲染模型是否與玩家的手或其他身體部位相關聯。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **render_model_is_animatable_node_visible**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible>`

如果動畫節點應當可見，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_new_scene_instance:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **render_model_new_scene_instance**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_new_scene_instance>`

回傳包含顯示渲染模型所需的所有 :ref:`MeshInstance3D<class_MeshInstance3D>` 的子場景實例。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
