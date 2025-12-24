:github_url: hide

.. _class_VisualInstance3D:

VisualInstance3D
================

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`Decal<class_Decal>`, :ref:`FogVolume<class_FogVolume>`, :ref:`GeometryInstance3D<class_GeometryInstance3D>`, :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>`, :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>`, :ref:`Light3D<class_Light3D>`, :ref:`LightmapGI<class_LightmapGI>`, :ref:`OccluderInstance3D<class_OccluderInstance3D>`, :ref:`OpenXRVisibilityMask<class_OpenXRVisibilityMask>`, :ref:`ReflectionProbe<class_ReflectionProbe>`, :ref:`RootMotionView<class_RootMotionView>`, :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>`, :ref:`VoxelGI<class_VoxelGI>`

所有可视 3D 节点的父节点。

.. rst-class:: classref-introduction-group

描述
----

**VisualInstance3D** 可用于将资源连接到视觉表示。所有的可视化 3D 节点都继承自 **VisualInstance3D**\ 。一般来说，你不应该直接访问 **VisualInstance3D** 的属性，因为它们是由继承自 **VisualInstance3D** 的节点访问和管理的。\ **VisualInstance3D** 是 :ref:`RenderingServer<class_RenderingServer>` 实例的节点表示。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`layers<class_VisualInstance3D_property_layers>`                                   | ``1``   |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`sorting_offset<class_VisualInstance3D_property_sorting_offset>`                   | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`bool<class_bool>`   | :ref:`sorting_use_aabb_center<class_VisualInstance3D_property_sorting_use_aabb_center>` |         |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`_get_aabb<class_VisualInstance3D_private_method__get_aabb>`\ (\ ) |virtual| |const|                                                                    |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`get_aabb<class_VisualInstance3D_method_get_aabb>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_base<class_VisualInstance3D_method_get_base>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_instance<class_VisualInstance3D_method_get_instance>`\ (\ ) |const|                                                                                |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_layer_mask_value<class_VisualInstance3D_method_get_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_base<class_VisualInstance3D_method_set_base>`\ (\ base\: :ref:`RID<class_RID>`\ )                                                                  |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_layer_mask_value<class_VisualInstance3D_method_set_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualInstance3D_property_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **layers** = ``1`` :ref:`🔗<class_VisualInstance3D_property_layers>`

.. rst-class:: classref-property-setget

- |void| **set_layer_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_mask**\ (\ )

绘制该 **VisualInstance3D** 的渲染层。

\ :ref:`Camera3D<class_Camera3D>` 的剔除掩码包含该 **VisualInstance3D** 所设置的任何渲染层时，该对象才在该相机中可见。

对于 :ref:`Light3D<class_Light3D>`\ ，可以用于控制指定的灯光能够影响哪些 **VisualInstance3D**\ 。对于 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，可以用于控制哪些粒子受到吸引器的影响。对于 :ref:`Decal<class_Decal>`\ ，可以用于控制哪些 **VisualInstance3D** 受到指定贴花的影响。

要在脚本中更加方便地调整 :ref:`layers<class_VisualInstance3D_property_layers>`\ ，请使用 :ref:`get_layer_mask_value()<class_VisualInstance3D_method_get_layer_mask_value>` 和 :ref:`set_layer_mask_value()<class_VisualInstance3D_method_set_layer_mask_value>`\ 。

\ **注意：**\ :ref:`VoxelGI<class_VoxelGI>`\ 、SDFGI、\ :ref:`LightmapGI<class_LightmapGI>` 在确定全局光照影响时始终会考虑所有渲染层。如果不希望这样，请将网格的 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 设置为 :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>`\ ，将灯光的 :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` 设置为 :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>`\ ，这样就能从全局光照中剔除。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **sorting_offset** = ``0.0`` :ref:`🔗<class_VisualInstance3D_property_sorting_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sorting_offset**\ (\ )

按深度排序时该 **VisualInstance3D** 的深度将调整的量。使用与引擎相同的单位（通常是米）。将其调整为更高的值，将使 **VisualInstance3D** 可靠地绘制在位于同一位置的其他 **VisualInstance3D** 之上。为确保它始终绘制在它周围的其他对象之上（不位于同一位置），请将值设置为大于该 **VisualInstance3D** 与附近其他 **VisualInstance3D** 之间的距离值。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_use_aabb_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sorting_use_aabb_center** :ref:`🔗<class_VisualInstance3D_property_sorting_use_aabb_center>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_use_aabb_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sorting_use_aabb_center**\ (\ )

如果为 ``true``\ ，则该对象会根据其 :ref:`AABB<class_AABB>` 中心点排序。否则会根据其全局位置排序。

对 3D 模型而言，根据 :ref:`AABB<class_AABB>` 的中心点排序一般更为精确。使用 :ref:`GPUParticles3D<class_GPUParticles3D>` 和 :ref:`CPUParticles3D<class_CPUParticles3D>` 时，根据位置排序能够更好地控制绘制顺序。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VisualInstance3D_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualInstance3D_private_method__get_aabb>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_aabb>`

返回此 **VisualInstance3D** 的 :ref:`AABB<class_AABB>`\ （也叫边界框）。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_base:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_base**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_base>`

返回与此 **VisualInstance3D** 相关联的资源的 RID。例如，如果该节点是 :ref:`MeshInstance3D<class_MeshInstance3D>`\ ，则会返回相关联的 :ref:`Mesh<class_Mesh>` 的 RID。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_instance**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_instance>`

返回这个实例的 RID。这个 RID 与 :ref:`RenderingServer.instance_create()<class_RenderingServer_method_instance_create>` 返回的 RID 相同。如果你想为这个 **VisualInstance3D** 直接调用 :ref:`RenderingServer<class_RenderingServer>` 函数，就需要这个 RID。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_layer_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_layer_mask_value>`

返回是否启用了 :ref:`layers<class_VisualInstance3D_property_layers>` 的指定层，该层由一个介于 1 和 20 之间的 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_base:

.. rst-class:: classref-method

|void| **set_base**\ (\ base\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_base>`

设置由该 **VisualInstance3D** 实例化的资源，这将改变引擎在底层对该 **VisualInstance3D** 的处理方式。相当于 :ref:`RenderingServer.instance_set_base()<class_RenderingServer_method_instance_set_base>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_layer_mask_value:

.. rst-class:: classref-method

|void| **set_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_layer_mask_value>`

基于 ``value``\ ，启用或禁用 :ref:`layers<class_VisualInstance3D_property_layers>` 中的指定层，该层由一个介于 1 和 20 之间的给定 ``layer_number`` 指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
