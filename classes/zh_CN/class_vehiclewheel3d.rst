:github_url: hide

.. _class_VehicleWheel3D:

VehicleWheel3D
==============

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于 :ref:`VehicleBody3D<class_VehicleBody3D>` 的 3D 物理体，能够模拟车轮的行为。

.. rst-class:: classref-introduction-group

描述
----

作为 :ref:`VehicleBody3D<class_VehicleBody3D>` 子节点使用的节点，能够模拟车辆其中一个车轮的行为。这个节点还充当了碰撞器，能够检测车轮是否与某个表面接触。

\ **注意：**\ 该类存在已知问题，并非旨在提供逼真的 3D 车辆物理效果。如果想要高级车辆物理，可能必须使用其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 类来编写自己的物理整合函数。

.. rst-class:: classref-introduction-group

教程
----

- `3D 货车镇演示 <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`brake<class_VehicleWheel3D_property_brake>`                               | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`   | ``0.83``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_relaxation<class_VehicleWheel3D_property_damping_relaxation>`     | ``0.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`engine_force<class_VehicleWheel3D_property_engine_force>`                 | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                      | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`steering<class_VehicleWheel3D_property_steering>`                         | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_max_force<class_VehicleWheel3D_property_suspension_max_force>` | ``6000.0``                                                                    |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_stiffness<class_VehicleWheel3D_property_suspension_stiffness>` | ``5.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_travel<class_VehicleWheel3D_property_suspension_travel>`       | ``0.2``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_steering<class_VehicleWheel3D_property_use_as_steering>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_traction<class_VehicleWheel3D_property_use_as_traction>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_friction_slip<class_VehicleWheel3D_property_wheel_friction_slip>`   | ``10.5``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_radius<class_VehicleWheel3D_property_wheel_radius>`                 | ``0.5``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_rest_length<class_VehicleWheel3D_property_wheel_rest_length>`       | ``0.15``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_roll_influence<class_VehicleWheel3D_property_wheel_roll_influence>` | ``0.1``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`   | :ref:`get_contact_body<class_VehicleWheel3D_method_get_contact_body>`\ (\ ) |const|     |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_normal<class_VehicleWheel3D_method_get_contact_normal>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_point<class_VehicleWheel3D_method_get_contact_point>`\ (\ ) |const|   |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_rpm<class_VehicleWheel3D_method_get_rpm>`\ (\ ) |const|                       |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_skidinfo<class_VehicleWheel3D_method_get_skidinfo>`\ (\ ) |const|             |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_in_contact<class_VehicleWheel3D_method_is_in_contact>`\ (\ ) |const|           |
   +-------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VehicleWheel3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

通过施加制动力使车轮减速。车轮只有在与表面接触时才会减速。使车辆充分减速所需的力，取决于车辆的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>`\ 。对于质量被设置为 1000 的车辆，尝试使用 25 - 30 范围内的值进行紧急制动。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_compression:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_compression** = ``0.83`` :ref:`🔗<class_VehicleWheel3D_property_damping_compression>`

.. rst-class:: classref-property-setget

- |void| **set_damping_compression**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_compression**\ (\ )

悬挂弹簧处于压缩状态时施加的阻尼，此时的车轮在相对于车辆向上移动。单位为牛顿·秒每毫米（N⋅s/mm）或兆克每秒（Mg/s）。这个值应该在 0.0（无阻尼）和 1.0 之间，但也可能更高。值为 0.0 表示汽车会持续弹跳，因为弹簧能够保持能量。普通汽车设为 0.3 左右、赛车设为 0.5 左右比较好。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_relaxation** = ``0.88`` :ref:`🔗<class_VehicleWheel3D_property_damping_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_damping_relaxation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_relaxation**\ (\ )

悬挂弹簧回弹或伸展时施加的阻尼，此时的车轮在相对于车辆向下移动。单位为牛顿·秒每毫米（N⋅s/mm）或兆克每秒（Mg/s）。这个值应该在 0.0（无阻尼）和 1.0 之间，但也可能更高。这个值应该始终略高于 :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>` 属性。对于 :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>` 值为 0.3 的情况，请尝试将放松值设为 0.5。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

通过施加引擎力使车轮加速。车轮只有在与表面接触时才会加速。车辆的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` 对车辆的加速度有影响。对于质量被设置为 1000 的车辆，请尝试使用 25 - 50 范围内的加速度值。

\ **注意：**\ 模拟没有考虑齿轮的影响，如果想要模拟齿轮，需要为其添加逻辑。

负值将导致车轮倒转。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

车轮的转向角，单位：弧度。将该属性设置为非零值将导致车辆在移动时转向。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_max_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_max_force** = ``6000.0`` :ref:`🔗<class_VehicleWheel3D_property_suspension_max_force>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_max_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_max_force**\ (\ )

弹簧所能承受的最大力。该值应高于 :ref:`VehicleBody3D<class_VehicleBody3D>` 的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` 的四分之一，否则该弹簧无法承载车辆的重量。大约 3 到 4 倍这个数字的值通常会获得良好的结果。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_stiffness** = ``5.88`` :ref:`🔗<class_VehicleWheel3D_property_suspension_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_stiffness**\ (\ )

悬挂的刚度，测量单位为牛顿每毫米（N/mm）或兆克每平方秒（Mg/s²）。越野车使用低于 50 的值，赛车使用 50 到 100 之间的值，类似于一级方程式赛车的车辆请尝试使用 200 左右的值。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_travel:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_travel** = ``0.2`` :ref:`🔗<class_VehicleWheel3D_property_suspension_travel>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_travel**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_travel**\ (\ )

这是悬架可以移动的距离。由于Godot 的单位相当于米，所以保持这个设置相对较低。根据汽车的类型，试试 0.1 和 0.3 之间的值。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_steering:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_steering** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_steering>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_steering**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_steering**\ (\ )

如果为 ``true``\ ，当汽车转向时这个轮子会转动。该值与 :ref:`VehicleBody3D.steering<class_VehicleBody3D_property_steering>` 结合使用，如果使用的是各个车轮的 :ref:`steering<class_VehicleWheel3D_property_steering>` 值，则该值将被忽略。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_traction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_traction** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_traction>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_traction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_traction**\ (\ )

如果为 ``true``\ ，该车轮会将引擎力传递到地面以推动车辆前进。该值与 :ref:`VehicleBody3D.engine_force<class_VehicleBody3D_property_engine_force>` 结合使用，如果使用的是各个车轮的 :ref:`engine_force<class_VehicleWheel3D_property_engine_force>` 值，则该值将被忽略。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_friction_slip:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_friction_slip** = ``10.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_friction_slip>`

.. rst-class:: classref-property-setget

- |void| **set_friction_slip**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction_slip**\ (\ )

这决定了这个轮子的抓地力有多大。它与车轮所接触的表面的摩擦力设置相结合。0.0 意味着没有抓地力，1.0 是正常抓地力。对于漂移车的设置，尝试将后轮的抓地力设置得比前轮略低，或者使用较低的数值来模拟轮胎的磨损。

在开始时最好将其设置为 1.0。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_radius** = ``0.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

轮子的半径，单位是米。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_rest_length** = ``0.15`` :ref:`🔗<class_VehicleWheel3D_property_wheel_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_rest_length**\ (\ )

这是轮子从原点下降的距离，以米为单位。不要把这个设置为 0.0，然后把车轮移到位置上，而是把车轮的原点（Godot 中的小工具）移到车轮触底时的位置，然后使用剩余长度将轮子向下移动到汽车静止时它应该所处位置。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_roll_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_roll_influence** = ``0.1`` :ref:`🔗<class_VehicleWheel3D_property_wheel_roll_influence>`

.. rst-class:: classref-property-setget

- |void| **set_roll_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_roll_influence**\ (\ )

该值会影响车辆的滚动。如果将所有车轮都设置为 1.0，车辆将抵抗车身侧倾，而值为 0.0 则容易翻车。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VehicleWheel3D_method_get_contact_body:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_contact_body**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_body>`

如果接触的实体节点在树中有效，则返回接触的实体节点，如 :ref:`Node3D<class_Node3D>`\ 。目前，不支持 :ref:`GridMap<class_GridMap>`\ ，因此该节点将始终为 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 类型。

如果车轮没有与表面接触，或者接触的实体不是 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ ，则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_normal**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_normal>`

如果轮子与物体接触，则返回悬挂碰撞的法线，使用世界空间。如果轮子没有与任何物体接触，则返回一个指向悬挂轴方向、朝向车辆的向量，使用世界空间。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_point**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_point>`

如果轮子与物体接触，则返回悬挂的碰撞点，使用世界空间。如果轮子没有与任何物体接触，则返回轮子射线投射的最大点，使用世界空间，该点由 ``wheel_rest_length + wheel_radius`` 定义。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_rpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rpm**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_rpm>`

返回轮子的旋转速度，单位为每分钟转数。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_skidinfo:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skidinfo**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_skidinfo>`

返回一个介于 0.0 和 1.0 之间的值，表示这个轮子是否打滑。0.0 表示打滑（车轮失去了抓地力，例如冰雪地形），1.0 表示不打滑（车轮有充分的抓地力，例如干燥的沥青路）。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_is_in_contact:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_contact**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_is_in_contact>`

如果轮子与表面接触，返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
