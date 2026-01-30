:github_url: hide

.. _class_FogVolume:

FogVolume
=========

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

影响世界环境中默认体积雾的区块。

.. rst-class:: classref-introduction-group

描述
----

**FogVolume** 用于将局部雾添加到全局体积雾效果中。如果使用具有负 :ref:`FogMaterial.density<class_FogMaterial_property_density>` 的 :ref:`FogMaterial<class_FogMaterial>`\ ，\ **FogVolume** 也可以从特定区域移除体积雾。

\ **FogVolume** 的性能与它在屏幕上的相对大小以及它所附加的 :ref:`FogMaterial<class_FogMaterial>` 的复杂性直接相关。最好尽可能保持 **FogVolume** 相对较小且简单。

\ **注意：**\ **FogVolume** 只有在 :ref:`Environment.volumetric_fog_enabled<class_Environment_property_volumetric_fog_enabled>` 为 ``true`` 时才会有可见效果。如果不希望雾全局可见（而只是在 **FogVolume** 节点内），请将 :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>` 设置为 ``0.0``\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`体积雾及规模 <../tutorials/3d/volumetric_fog>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Material<class_Material>`                            | :ref:`material<class_FogVolume_property_material>` |                      |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` | :ref:`shape<class_FogVolume_property_shape>`       | ``3``                |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`size<class_FogVolume_property_size>`         | ``Vector3(2, 2, 2)`` |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_FogVolume_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_FogVolume_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

**FogVolume** 使用的 :ref:`Material<class_Material>`\ 。可以是一个内置的 :ref:`FogMaterial<class_FogMaterial>` 或一个自定义的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_shape:

.. rst-class:: classref-property

:ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **shape** = ``3`` :ref:`🔗<class_FogVolume_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>`\ )
- :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **get_shape**\ (\ )

**FogVolume** 的形状。这可以被设置为 :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>` 或 :ref:`RenderingServer.FOG_VOLUME_SHAPE_WORLD<class_RenderingServer_constant_FOG_VOLUME_SHAPE_WORLD>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_FogVolume_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

当 :ref:`shape<class_FogVolume_property_shape>` 为 :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>` 或 :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>`\ 时，该 **FogVolume** 的大小。

\ **注意：**\ 当相机移动或旋转时，薄雾体积可能会出现闪烁。这可以通过增加 :ref:`ProjectSettings.rendering/environment/volumetric_fog/volume_depth<class_ProjectSettings_property_rendering/environment/volumetric_fog/volume_depth>`\ （以性能为代价）或减少 :ref:`Environment.volumetric_fog_length<class_Environment_property_volumetric_fog_length>`\ （无性能成本，但以降低雾的范围为代价）来缓解。或者，\ **FogVolume** 可以做得更厚，并在 :ref:`material<class_FogVolume_property_material>` 中使用较低的密度。

\ **注意：**\ 如果 :ref:`shape<class_FogVolume_property_shape>` 为 :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>` 或 :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`\ ，圆锥体/圆柱体将被调整以适应该大小。不支持通过 :ref:`size<class_FogVolume_property_size>` 属性对圆锥体/圆柱体形状进行非均匀缩放，但可以改为缩放该 **FogVolume** 节点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
