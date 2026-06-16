:github_url: hide

.. _class_SpotLight3D:

SpotLight3D
===========

**继承：** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

聚光灯，如反射器聚光灯或灯笼。

.. rst-class:: classref-introduction-group

描述
----

聚光灯是一种 :ref:`Light3D<class_Light3D>` 节点，向指定的方向发出圆锥形的灯光。光线会随距离增大而衰减。衰减可以通过修改 :ref:`Light3D<class_Light3D>` 的能量、半径、衰减参数进行控制。

灯光的发射方向是该节点全局基的 -Z 方向。如果光源未旋转，则灯光向前发射，照亮 3D 模型的正面（见 :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` 和 :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`\ ）。

\ **注意：**\ 使用 Mobile 渲染方法时，单个网格资源只能用到 8 盏聚光灯。尝试对单个网格资源使用超过 8 盏聚光灯会导致聚光灯在相机移动时产生闪烁。使用 Compatibility 渲染方法时，单个网格资源默认只能用到 8 盏聚光灯，但可以通过调整 :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>` 增加。

\ **注意：**\ 使用 Mobile 或 Compatibility 渲染方法时，聚光灯只能影响可见 AABB 与灯光 AABB 相交的网格。如果使用了着色器将网格进行了变形，超出了 AABB 的范围，则必须将该网格的 :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` 增大。否则灯光在该网格上可能不可见。

.. rst-class:: classref-introduction-group

教程
----

- `3D 灯光与阴影 <../tutorials/3d/lights_and_shadows.html#spot-light>`__

- :doc:`伪造全局光照 <../tutorials/3d/global_illumination/faking_global_illumination>`

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | light_specular                                                                   | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_bias                                                                      | ``0.03`` (overrides :ref:`Light3D<class_Light3D_property_shadow_bias>`)       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_normal_bias                                                               | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle<class_SpotLight3D_property_spot_angle>`                         | ``45.0``                                                                      |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>` | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`             | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_range<class_SpotLight3D_property_spot_range>`                         | ``5.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SpotLight3D_property_spot_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle** = ``45.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

聚光灯的夹角，单位为度。这是夹角的半径，即从 -Z 轴锥形中心到锥形边缘的角度。默认角度半径为 45 度，对应的角度直径为 90 度。

\ **注意：**\ :ref:`spot_angle<class_SpotLight3D_property_spot_angle>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>` 的影响（无论是灯光本身还是父级节点的缩放）。

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_angle_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

聚光灯的\ *角度*\ 衰减曲线。另见 :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

控制聚光灯的距离衰减函数。

值为 ``0.0`` 将在大部分范围内保持恒定亮度，但会平滑地衰减范围边缘的光线。对于物理上准确的灯光，请使用值 ``2.0``\ ，因为它会产生正确的平方反比衰减。

\ **注意：**\ 将衰减设置为 ``2.0`` 或更高可能会导致远处的物体接收到最少的光线，即使在范围内也是如此。例如，在 ``4096`` 的范围内，\ ``100`` 单位处的物体会衰减 ``0.0001`` 倍。默认亮度为 ``1``\ ，光线在该距离处不可见。

\ **注意：**\ 使用负值或高于 ``10.0`` 的值可能会导致意外结果。

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_range** = ``5.0`` :ref:`🔗<class_SpotLight3D_property_spot_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

聚光灯可以达到的最大范围。请注意，根据使用的 :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`\ ，有效照明区域可能看起来更小。无论 :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>` 为何值，光都不会到达此范围之外的任何东西。

\ **注意：**\ :ref:`spot_angle<class_SpotLight3D_property_spot_angle>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>` 的影响（无论是该灯光的缩放还是其父节点的缩放）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
