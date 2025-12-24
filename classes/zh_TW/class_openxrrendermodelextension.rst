:github_url: hide

.. _class_OpenXRRenderModelExtension:

OpenXRRenderModelExtension
==========================

**繼承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

This class implements the OpenXR Render Model Extension.

.. rst-class:: classref-introduction-group

說明
----

This class implements the OpenXR Render Model Extension, if enabled it will maintain a list of active render models and provides an interface to the render model data.

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

Emitted when a new render model is added.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_removed:

.. rst-class:: classref-signal

**render_model_removed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_removed>`

Emitted when a render model is removed.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed:

.. rst-class:: classref-signal

**render_model_top_level_path_changed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed>`

Emitted when the top level path associated with a render model changed.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRRenderModelExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_is_active>`

Returns ``true`` if OpenXR's render model extension is supported and enabled.

\ **Note:** This only returns a valid value after OpenXR has been initialized.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_create:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **render_model_create**\ (\ render_model_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_create>`

Creates a render model object within OpenXR using a render model id.

\ **Note:** This function is exposed for dependent OpenXR extensions that provide render model ids to be used with the render model extension.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_destroy:

.. rst-class:: classref-method

|void| **render_model_destroy**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_destroy>`

Destroys a render model object within OpenXR that was previously created with :ref:`render_model_create()<class_OpenXRRenderModelExtension_method_render_model_create>`.

\ **Note:** This function is exposed for dependent OpenXR extensions that provide render model ids to be used with the render model extension.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **render_model_get_all**\ (\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_all>`

Returns an array of all currently active render models registered with this extension.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **render_model_get_animatable_node_count**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count>`

Returns the number of animatable nodes this render model has.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_animatable_node_name**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name>`

Returns the name of the given animatable node.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_animatable_node_transform**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform>`

Returns the current local transform for an animatable node. This is updated every frame.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_confidence:

.. rst-class:: classref-method

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **render_model_get_confidence**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_confidence>`

Returns the tracking confidence of the tracking data for the render model.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_root_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_root_transform**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_root_transform>`

Returns the root transform of a render model. This is the tracked position relative to our :ref:`XROrigin3D<class_XROrigin3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **render_model_get_subaction_paths**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths>`

Returns a list of active subaction paths for this ``render_model``.

\ **Note:** If different devices are bound to your actions than available in suggested interaction bindings, this information shows paths related to the interaction bindings being mimicked by that device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_top_level_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_top_level_path**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_top_level_path>`

Returns the top level path associated with this ``render_model``. If provided this identifies whether the render model is associated with the player's hands or other body part.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **render_model_is_animatable_node_visible**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible>`

Returns ``true`` if this animatable node should be visible.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_new_scene_instance:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **render_model_new_scene_instance**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_new_scene_instance>`

Returns an instance of a subscene that contains all :ref:`MeshInstance3D<class_MeshInstance3D>` nodes that allow you to visualize the render model.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
