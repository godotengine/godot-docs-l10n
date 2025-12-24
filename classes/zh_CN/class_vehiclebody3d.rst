:github_url: hide

.. _class_VehicleBody3D:

VehicleBody3D
=============

**继承：** :ref:`RigidBody3D<class_RigidBody3D>` **<** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

模拟汽车行为的 3D 物理体。

.. rst-class:: classref-introduction-group

描述
----

该节点实现了模拟汽车所需的所有物理逻辑。它基于物理引擎中常见的射线投射的车辆系统。除了需要为车身添加一个 :ref:`CollisionShape3D<class_CollisionShape3D>` 之外，你还必须为每个车轮添加一个 :ref:`VehicleWheel3D<class_VehicleWheel3D>` 节点。你还应该为车辆的 3D 模型的向这个节点添加一个 :ref:`MeshInstance3D<class_MeshInstance3D>`\ ，但该模型通常不应该包含车轮的网格。你可以使用 :ref:`brake<class_VehicleBody3D_property_brake>`\ 、\ :ref:`engine_force<class_VehicleBody3D_property_engine_force>` 和 :ref:`steering<class_VehicleBody3D_property_steering>` 属性来控制车辆。不应该直接更改该节点的位置和朝向。

\ **注意：**\ 该节点的局部前进方向为 :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`\ 。

\ **注意：**\ VehicleBody3D 的原点将决定车辆的重心。为了让车辆能够更好地贴地，通常会将原点保持在较低的位置，并将 :ref:`CollisionShape3D<class_CollisionShape3D>` 和 :ref:`MeshInstance3D<class_MeshInstance3D>` 向上移动。

\ **注意：**\ 该类存在已知问题，并非旨在提供逼真的 3D 车辆物理效果。如果想要高级车辆物理，可能必须使用 :ref:`CharacterBody3D<class_CharacterBody3D>` 或 :ref:`RigidBody3D<class_RigidBody3D>` 类来编写自己的物理整合函数。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`物理介绍 <../tutorials/physics/physics_introduction>`

- :doc:`排查物理问题 <../tutorials/physics/troubleshooting_physics_issues>`

- `3D 货车镇演示 <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`brake<class_VehicleBody3D_property_brake>`               | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`engine_force<class_VehicleBody3D_property_engine_force>` | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | mass                                                           | ``40.0`` (overrides :ref:`RigidBody3D<class_RigidBody3D_property_mass>`) |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`steering<class_VehicleBody3D_property_steering>`         | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VehicleBody3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

通过施加一个制动力使车辆减速。只有当车轮接触到表面时，车辆才会减速。使车辆充分减速所需的力，取决于车辆的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>`\ 。对于一个质量被设置为 1000 的车辆，尝试使用 25 - 30 范围内的值进行紧急制动。

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

通过施加一个引擎力来加速车辆。只有当 :ref:`VehicleWheel3D.use_as_traction<class_VehicleWheel3D_property_use_as_traction>` 被设置为 ``true`` 的车轮与表面接触时，车辆才会加速。车辆的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` 对车辆的加速度有影响。对于质量被设置为 1000 的车辆，请尝试使用 25 - 50 范围内的加速度值。

\ **注意：**\ 模拟没有考虑齿轮的影响，如果想要模拟齿轮，需要为其添加逻辑。

负值将导致车辆倒车。

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

车辆的转向角。将该属性设置为非零值将导致车辆在移动时转弯。\ :ref:`VehicleWheel3D.use_as_steering<class_VehicleWheel3D_property_use_as_steering>` 设置为 ``true`` 的车轮将自动旋转。

\ **注意：**\ 该属性在检查器中以度为单位进行编辑。在代码中，该属性以弧度单位设置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
