:github_url: hide

.. _class_VoxelGI:

VoxelGI
=======

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

实时全局光照（GI）探测。

.. rst-class:: classref-introduction-group

描述
----

**VoxelGI** 用于为场景提供高质量的实时的间接光照和反射。它们预先计算发光物体的效果和静态几何体的效果，以实时模拟复杂光线的行为。\ **VoxelGI** 需要经过烘焙才能产生可见的效果。然而，一旦烘焙，动态对象将接收来自它们的光。此外，灯光可以是完全动态的，也可以是烘焙的。

\ **注意：**\ **VoxelGI** 只支持 Forward+ 渲染方式，不支持 Mobile 或 Compatibility。

\ **程序生成：**\ **VoxelGI** 可以在导出的项目中烘焙，这使得它适用于程序生成或用户构建的关卡，只要所有几何体都预先生成即可。对于在游戏过程中随时生成几何图形的游戏，SDFGI 更合适（参见 :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ）。

\ **性能：**\ **VoxelGI** 对 GPU 要求比较高，不适合集成显卡等低端硬件（可以考虑改用 :ref:`LightmapGI<class_LightmapGI>`\ ）。要提高性能，请在项目设置中，调整 :ref:`ProjectSettings.rendering/global_illumination/voxel_gi/quality<class_ProjectSettings_property_rendering/global_illumination/voxel_gi/quality>`\ ，并启用 :ref:`ProjectSettings.rendering/global_illumination/gi/use_half_resolution<class_ProjectSettings_property_rendering/global_illumination/gi/use_half_resolution>`\ 。要为低端硬件提供后备方案，请考虑在项目的选项菜单中，添加一个选项，以禁用 **VoxelGI**\ 。\ **VoxelGI** 节点可以通过隐藏而禁用。

\ **注意：**\ 网格应该有足够厚的壁（避免单面墙）以避免漏光。对于内部关卡，请将关卡几何体封装在一个足够大的盒子中，并桥接循环边以闭合网格。为了进一步防止漏光，还可以策略性地放置临时 :ref:`MeshInstance3D<class_MeshInstance3D>` 节点，并将其 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 设置为 :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`\ 。然后可以在烘焙 **VoxelGI** 节点后，隐藏这些临时节点。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用体素全局光照 <../tutorials/3d/global_illumination/using_voxel_gi>`

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_VoxelGI_property_camera_attributes>` |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`VoxelGIData<class_VoxelGIData>`           | :ref:`data<class_VoxelGI_property_data>`                           |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`size<class_VoxelGI_property_size>`                           | ``Vector3(20, 20, 20)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Subdiv<enum_VoxelGI_Subdiv>`              | :ref:`subdiv<class_VoxelGI_property_subdiv>`                       | ``1``                   |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake<class_VoxelGI_method_bake>`\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`debug_bake<class_VoxelGI_method_debug_bake>`\ (\ )                                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VoxelGI_Subdiv:

.. rst-class:: classref-enumeration

enum **Subdiv**: :ref:`🔗<enum_VoxelGI_Subdiv>`

.. _class_VoxelGI_constant_SUBDIV_64:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_64** = ``0``

使用 64 分区，这是最低的质量设置，但也是最快的。如果你能使用它，特别是在低端硬件上使用它。

.. _class_VoxelGI_constant_SUBDIV_128:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_128** = ``1``

使用 128 个分区。这是默认的质量设置。

.. _class_VoxelGI_constant_SUBDIV_256:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_256** = ``2``

使用 256 个分区。

.. _class_VoxelGI_constant_SUBDIV_512:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_512** = ``3``

使用 512 个分区。这是最高的质量设置，但也是最慢的。在低端硬件上，这可能会导致 GPU 停顿。

.. _class_VoxelGI_constant_SUBDIV_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_MAX** = ``4``

代表 :ref:`Subdiv<enum_VoxelGI_Subdiv>` 举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VoxelGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_VoxelGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

指定烘焙所使用的曝光级别的 :ref:`CameraAttributes<class_CameraAttributes>` 资源。自动曝光和非曝光属性会被忽略。曝光设置应当用于降低烘焙时的动态范围。如果曝光过高，\ **VoxelGI** 会产生色带问题，也可能出现过曝问题。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_data:

.. rst-class:: classref-property

:ref:`VoxelGIData<class_VoxelGIData>` **data** :ref:`🔗<class_VoxelGI_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_probe_data**\ (\ value\: :ref:`VoxelGIData<class_VoxelGIData>`\ )
- :ref:`VoxelGIData<class_VoxelGIData>` **get_probe_data**\ (\ )

为该 **VoxelGI** 存放数据的 :ref:`VoxelGIData<class_VoxelGIData>` 资源。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_VoxelGI_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The size of the area covered by the **VoxelGI**. This must be ``1.0`` or greater on each axis.

\ **Note:** If you make the size larger without increasing the number of subdivisions with :ref:`subdiv<class_VoxelGI_property_subdiv>`, the size of each cell will increase and result in less detailed lighting.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_subdiv:

.. rst-class:: classref-property

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **subdiv** = ``1`` :ref:`🔗<class_VoxelGI_property_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_subdiv**\ (\ value\: :ref:`Subdiv<enum_VoxelGI_Subdiv>`\ )
- :ref:`Subdiv<enum_VoxelGI_Subdiv>` **get_subdiv**\ (\ )

对 **VoxelGI** 操作的栅格进行细分的次数。数字越大，细节越精细，因此视觉质量越高，而数字越小则性能越好。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VoxelGI_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_VoxelGI_method_bake>`

烘焙来自所有标记为 :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` 的 :ref:`GeometryInstance3D<class_GeometryInstance3D>` 以及标记为 :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` 或 :ref:`Light3D.BAKE_DYNAMIC<class_Light3D_constant_BAKE_DYNAMIC>` 的 :ref:`Light3D<class_Light3D>` 的效果。如果 ``create_visual_debug`` 为 ``true``\ ，则烘焙光照后会生成一个 :ref:`MultiMesh<class_MultiMesh>`\ ，用立方体代表各个实体单元格，每个立方体都使用对应单元格的反照率颜色着色。这样就对 **VoxelGI** 的数据进行了可视化，可以用来调试可能发生的问题。

\ **注意：**\ 编辑器和导出后的项目中都可以使用 :ref:`bake()<class_VoxelGI_method_bake>`\ 。因此可用于程序式生成或用户构建的关卡。对于大多数场景，烘焙 **VoxelGI** 节点一般需要 5 到 20 秒。降低 :ref:`subdiv<class_VoxelGI_property_subdiv>` 可以加速烘焙。

\ **注意：**\ :ref:`GeometryInstance3D<class_GeometryInstance3D>` 和 :ref:`Light3D<class_Light3D>` 节点必须在调用 :ref:`bake()<class_VoxelGI_method_bake>` 前完全就绪。如果这些节点是程序式生成的，而烘焙后的 **VoxelGI** 中缺失部分网格和灯光，请使用 ``call_deferred("bake")``\ ，不要直接调用 :ref:`bake()<class_VoxelGI_method_bake>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_method_debug_bake:

.. rst-class:: classref-method

|void| **debug_bake**\ (\ ) :ref:`🔗<class_VoxelGI_method_debug_bake>`

在启用 ``create_visual_debug`` 的情况下调用 :ref:`bake()<class_VoxelGI_method_bake>` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
