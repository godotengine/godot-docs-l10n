:github_url: hide

.. _class_OpenXRRenderModel:

OpenXRRenderModel
=================

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

该节点会显示 OpenXR 渲染模型。

.. rst-class:: classref-introduction-group

描述
----

该节点会显示 OpenXR 渲染模型，访问与之关联的 GLTF 并处理所有动画数据（需要 XR 运行时支持）。

引入渲染模型是为了正确显示用户手中控制器（或其他设备）的模型，因为 OpenXR 动作映射并不会提供用户所使用的硬件的信息。请注意，虽然可以根据绑定的动作映射配置从一定程度上推测控制器（或设备），这种做法并不安全，因为用户所使用的可能是开发时未知的硬件，此时 OpenXR 就会模拟可用的交互配置。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------+-----------+
   | :ref:`RID<class_RID>` | :ref:`render_model<class_OpenXRRenderModel_property_render_model>` | ``RID()`` |
   +-----------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_top_level_path<class_OpenXRRenderModel_method_get_top_level_path>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_OpenXRRenderModel_signal_render_model_top_level_path_changed:

.. rst-class:: classref-signal

**render_model_top_level_path_changed**\ (\ ) :ref:`🔗<class_OpenXRRenderModel_signal_render_model_top_level_path_changed>`

渲染模型的顶层路径发生改变时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRRenderModel_property_render_model:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **render_model** = ``RID()`` :ref:`🔗<class_OpenXRRenderModel_property_render_model>`

.. rst-class:: classref-property-setget

- |void| **set_render_model**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_render_model**\ (\ )

要加载的渲染模型的 RID，由 :ref:`OpenXRRenderModelExtension.render_model_create()<class_OpenXRRenderModelExtension_method_render_model_create>` 或 :ref:`OpenXRRenderModelExtension.render_model_get_all()<class_OpenXRRenderModelExtension_method_render_model_get_all>` 返回。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRRenderModel_method_get_top_level_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_top_level_path**\ (\ ) |const| :ref:`🔗<class_OpenXRRenderModel_method_get_top_level_path>`

返回与该渲染模型相关的顶层路径。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
