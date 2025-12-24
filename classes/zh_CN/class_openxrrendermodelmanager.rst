:github_url: hide

.. _class_OpenXRRenderModelManager:

OpenXRRenderModelManager
========================

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

辅助节点，能够自动管理渲染模型的显示。

.. rst-class:: classref-introduction-group

描述
----

这个辅助接点会自动管理渲染模型的显示。检测到控制器等手持设备时会新建 :ref:`OpenXRRenderModel<class_OpenXRRenderModel>` 节点，设备失效时会将对应节点移除。

\ **注意：**\ 如果想要进一步控制相关逻辑，你也可以调用 :ref:`OpenXRRenderModelExtension.render_model_get_all()<class_OpenXRRenderModelExtension_method_render_model_get_all>` 获取活动渲染模型的 ID 列表，为各个渲染模型 ID 创建 :ref:`OpenXRRenderModel<class_OpenXRRenderModel>` 实例。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                                 | :ref:`make_local_to_pose<class_OpenXRRenderModelManager_property_make_local_to_pose>` | ``""`` |
   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+
   | :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` | :ref:`tracker<class_OpenXRRenderModelManager_property_tracker>`                       | ``0``  |
   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_OpenXRRenderModelManager_signal_render_model_added:

.. rst-class:: classref-signal

**render_model_added**\ (\ render_model\: :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`\ ) :ref:`🔗<class_OpenXRRenderModelManager_signal_render_model_added>`

渲染模型节点添加为该节点的子节点时发出。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelManager_signal_render_model_removed:

.. rst-class:: classref-signal

**render_model_removed**\ (\ render_model\: :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`\ ) :ref:`🔗<class_OpenXRRenderModelManager_signal_render_model_removed>`

渲染模型子节点即将从该节点下移除时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_OpenXRRenderModelManager_RenderModelTracker:

.. rst-class:: classref-enumeration

enum **RenderModelTracker**: :ref:`🔗<enum_OpenXRRenderModelManager_RenderModelTracker>`

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_ANY** = ``0``

显示所有活动的渲染模型，无论其与什么跟踪器相关。

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_NONE_SET:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_NONE_SET** = ``1``

仅显示与所管理的跟踪器无关的活动渲染模型。

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_LEFT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_LEFT_HAND** = ``2``

仅显示与左手跟踪器相关的活动渲染模型。

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_RIGHT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_RIGHT_HAND** = ``3``

仅显示与右手跟踪器相关的活动渲染模型。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRRenderModelManager_property_make_local_to_pose:

.. rst-class:: classref-property

:ref:`String<class_String>` **make_local_to_pose** = ``""`` :ref:`🔗<class_OpenXRRenderModelManager_property_make_local_to_pose>`

.. rst-class:: classref-property-setget

- |void| **set_make_local_to_pose**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_make_local_to_pose**\ (\ )

将渲染模型的位置设置为相对于该姿势（会对渲染模型容器节点的位置进行调整）。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelManager_property_tracker:

.. rst-class:: classref-property

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **tracker** = ``0`` :ref:`🔗<class_OpenXRRenderModelManager_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>`\ )
- :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **get_tracker**\ (\ )

将渲染模型限制到指定的跟踪器：0 = 所有渲染模型，1 = 渲染模型与某个跟踪器无关，2 = 渲染模型与左手跟踪器相关，3 = 渲染模型与右手跟踪器相关。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
