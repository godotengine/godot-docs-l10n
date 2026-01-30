:github_url: hide

.. _class_OccluderInstance3D:

OccluderInstance3D
==================

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

为 3D 节点提供遮挡剔除，可以提高封闭区域的性能。

.. rst-class:: classref-introduction-group

描述
----

遮挡剔除可以通过隐藏被其他对象遮挡的几何体，来提高封闭/半开放区域的渲染性能。

遮挡剔除系统大多是静态的。\ **OccluderInstance3D** 可以在运行时移动或隐藏，但这样做会触发可能需要几帧的背景重新计算。建议仅偶尔移动 **OccluderInstance3D**\ （例如，出于程序生成目的），而不是每帧都这样做。

遮挡剔除系统的工作原理是，使用 `Embree <https://www.embree.org/>`__ 在 CPU 上并行渲染遮挡物，将结果绘制到一个低分辨率缓冲区，然后使用它来单独剔除 3D 的节点。在 3D 编辑器中，可以通过选择 3D 视口左上角的\ **透视图 > 显示高级... > 遮挡剔除缓冲区**\ ，来预览遮挡剔除缓冲区。可以在项目设置中调整遮挡剔除缓冲区的质量。

\ **烘焙：**\ 选择一个 **OccluderInstance3D** 节点，然后使用 3D 编辑器顶部的\ **烘焙遮挡物**\ 按钮。只考虑不透明的材质；遮挡器生成将忽略透明材质（alpha 混合或 alpha 测试）。

\ **注意：**\ 遮挡剔除只有在 :ref:`ProjectSettings.rendering/occlusion_culling/use_occlusion_culling<class_ProjectSettings_property_rendering/occlusion_culling/use_occlusion_culling>` 为 ``true`` 时才有效。启用遮挡剔除会消耗一定的 CPU。仅当确实打算使用遮挡剔除时才启用它。具有很少或没有物体，将阻挡视口的大型开放场景，通常不会从遮挡剔除中受益更多。与遮挡剔除相比，大型开放场景通常从网格 LOD 和可见性范围（\ :ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 和 :ref:`GeometryInstance3D.visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`\ ）中受益更多。

\ **注意：**\ 由于内存限制，Web 导出模板中默认不支持遮挡剔除。编译自定义 Web 导出模板时使用 ``module_raycast_enabled=yes`` 可以启用。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`遮挡剔除 <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`               | :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`                                       | ``4294967295`` |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`           | :ref:`bake_simplification_distance<class_OccluderInstance3D_property_bake_simplification_distance>` | ``0.1``        |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`Occluder3D<class_Occluder3D>` | :ref:`occluder<class_OccluderInstance3D_property_occluder>`                                         |                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_OccluderInstance3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_OccluderInstance3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OccluderInstance3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_OccluderInstance3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

烘焙遮挡物时要考虑的可视层。只有其 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` 与该 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 匹配的 :ref:`MeshInstance3D<class_MeshInstance3D>`\ ，才会被包含在生成的遮挡物网格中。默认情况下，所有具有\ *不透明*\ 材质的对象，都将被考虑用于遮挡物烘焙。

为了提高性能并避免伪影，建议将动态对象、小对象和固定装置从烘焙过程中排除，方法是将它们移动到一个单独的可视层，并在 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 中排除该层。

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_bake_simplification_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_simplification_distance** = ``0.1`` :ref:`🔗<class_OccluderInstance3D_property_bake_simplification_distance>`

.. rst-class:: classref-property-setget

- |void| **set_bake_simplification_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_simplification_distance**\ (\ )

用于简化生成的遮挡物多边形的简化距离（单位为 3D 单位）。更高的值会导致遮挡物网格的细节更少，这会提高性能但会降低剔除精度。

遮挡物几何体是在 CPU 上渲染的，因此保持其几何体尽可能简单很重要。由于缓冲区以低分辨率渲染，因此细节较少的遮挡网格通常仍能正常工作。默认值相当激进，因此如果遇到误报（即使相机可见的对象也被遮挡），可能必须降低该属性。\ ``0.01`` 的值将保守地起作用，并将保持几何体\ *感知*\ 在遮挡剔除缓冲区中不受影响。根据场景的不同，与完全禁用简化相比，\ ``0.01`` 的值仍能显著简化网格。

将该属性设置为 ``0.0`` 将会完全禁用简化，但仍会合并位置完全相同的顶点。网格也将被重新索引以减少顶点和索引的数量。

\ **注意：**\ 这在底层使用了 `meshoptimizer <https://meshoptimizer.org/>`__ 库，类似于 LOD 生成。

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_occluder:

.. rst-class:: classref-property

:ref:`Occluder3D<class_Occluder3D>` **occluder** :ref:`🔗<class_OccluderInstance3D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder**\ (\ value\: :ref:`Occluder3D<class_Occluder3D>`\ )
- :ref:`Occluder3D<class_Occluder3D>` **get_occluder**\ (\ )

这个 **OccluderInstance3D** 的遮挡器资源。要生成遮挡器资源，你可以先选中 **OccluderInstance3D** 节点，然后使用编辑器顶部的\ **烘焙遮挡器**\ 按钮。

你还可以通过在“检查器”中为 :ref:`occluder<class_OccluderInstance3D_property_occluder>` 属性添加新的 :ref:`PolygonOccluder3D<class_PolygonOccluder3D>` 资源来绘制自己的 2D 遮挡器多边形。

另外，你也可以选择要使用的基本遮挡器：\ :ref:`QuadOccluder3D<class_QuadOccluder3D>`\ 、\ :ref:`BoxOccluder3D<class_BoxOccluder3D>`\ 、\ :ref:`SphereOccluder3D<class_SphereOccluder3D>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OccluderInstance3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OccluderInstance3D_method_get_bake_mask_value>`

返回是否启用了 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 的指定层，该层由给定的一个介于 1 和 32 之间的 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OccluderInstance3D_method_set_bake_mask_value>`

基于 ``value``\ ，启用或禁用 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 中的指定层，该层由给定的一个介于 1 和 32 之间的 ``layer_number`` 指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
