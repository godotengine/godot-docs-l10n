:github_url: hide

.. _class_OpenXRRenderModelExtension:

OpenXRRenderModelExtension
==========================

**继承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

这个类实现了 OpenXR 渲染模型扩展。

.. rst-class:: classref-introduction-group

描述
----

这个类实现了 OpenXR 渲染模型扩展，启用后会维护活动渲染模型列表，提供渲染模型数据接口。

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

信号
----

.. _class_OpenXRRenderModelExtension_signal_render_model_added:

.. rst-class:: classref-signal

**render_model_added**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_added>`

添加新的渲染模型时发出。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_removed:

.. rst-class:: classref-signal

**render_model_removed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_removed>`

移除渲染模型时发出。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed:

.. rst-class:: classref-signal

**render_model_top_level_path_changed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed>`

与渲染模型关联的顶层路径发生改变时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRRenderModelExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_is_active>`

如果支持且已启用 OpenXR 的渲染模型，则返回 ``true``\ 。

\ **注意：**\ 这仅在 OpenXR 已被初始化后返回一个有效值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_create:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **render_model_create**\ (\ render_model_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_create>`

在 OpenXR 中使用渲染模型 ID 创建一个渲染模型对象。

\ **注意：**\ 该函数是为提供渲染模型 ID 的依赖 OpenXR 扩展公开的，以便与渲染模型扩展一起使用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_destroy:

.. rst-class:: classref-method

|void| **render_model_destroy**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_destroy>`

销毁在 OpenXR 中之前使用 :ref:`render_model_create()<class_OpenXRRenderModelExtension_method_render_model_create>` 创建的渲染模型对象。

\ **注意：**\ 该函数是为提供渲染模型 ID 的依赖 OpenXR 扩展公开的，以便与渲染模型扩展一起使用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **render_model_get_all**\ (\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_all>`

返回已向该扩展注册的所有当前活动的渲染模型数组。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **render_model_get_animatable_node_count**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count>`

返回该渲染模型中包含的可动画节点数。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_animatable_node_name**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name>`

返回给定可动画节点的名称。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_animatable_node_transform**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform>`

返回可动画节点的当前局部变换。每帧都会更新。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_confidence:

.. rst-class:: classref-method

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **render_model_get_confidence**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_confidence>`

返回渲染模型跟踪数据的跟踪置信度。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_root_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_root_transform**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_root_transform>`

返回渲染模型的根变换。这是跟踪的位置，相对于 :ref:`XROrigin3D<class_XROrigin3D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **render_model_get_subaction_paths**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths>`

返回 ``render_model`` 的活动子动作路径列表。

\ **注意：**\ 如果与动作绑定的设备与建议的交互绑定不同，则返回的信息显示的是与该设备模拟的交互绑定相关的路径。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_top_level_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_top_level_path**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_top_level_path>`

返回与 ``render_model`` 关联的顶级路径。如果提供了该信息，则可以识别渲染模型是否与玩家的手或其他身体部位相关联。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **render_model_is_animatable_node_visible**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible>`

如果动画节点应当可见，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_new_scene_instance:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **render_model_new_scene_instance**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_new_scene_instance>`

返回包含显示渲染模型所需的所有 :ref:`MeshInstance3D<class_MeshInstance3D>` 的子场景实例。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
