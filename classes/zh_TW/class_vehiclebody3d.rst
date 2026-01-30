:github_url: hide

.. _class_VehicleBody3D:

VehicleBody3D
=============

**繼承：** :ref:`RigidBody3D<class_RigidBody3D>` **<** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

類比汽車行為的 3D 物理體。

.. rst-class:: classref-introduction-group

說明
----

This physics body implements all the physics logic needed to simulate a car. It is based on the raycast vehicle system commonly found in physics engines. Aside from a :ref:`CollisionShape3D<class_CollisionShape3D>` for the main body of the vehicle, you must also add a :ref:`VehicleWheel3D<class_VehicleWheel3D>` node for each wheel. You should also add a :ref:`MeshInstance3D<class_MeshInstance3D>` to this node for the 3D model of the vehicle, but this model should generally not include meshes for the wheels. You can control the vehicle by using the :ref:`brake<class_VehicleBody3D_property_brake>`, :ref:`engine_force<class_VehicleBody3D_property_engine_force>`, and :ref:`steering<class_VehicleBody3D_property_steering>` properties. The position or orientation of this node shouldn't be changed directly.

\ **Note:** The local forward for this node is :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`.

\ **Note:** The origin point of your VehicleBody3D will determine the center of gravity of your vehicle. To make the vehicle more grounded, the origin point is usually kept low, moving the :ref:`CollisionShape3D<class_CollisionShape3D>` and :ref:`MeshInstance3D<class_MeshInstance3D>` upwards.

\ **Note:** This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you may have to write your own physics integration using :ref:`CharacterBody3D<class_CharacterBody3D>` or :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

- :doc:`Troubleshooting physics issues <../tutorials/physics/troubleshooting_physics_issues>`

- `3D 貨車鎮演示 <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_VehicleBody3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

通過施加一個制動力使車輛減速。只有當車輪接觸到表面時，車輛才會減速。使車輛充分減速所需的力，取決於車輛的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>`\ 。對於一個品質被設定為 1000 的車輛，嘗試使用 25 - 30 範圍內的值進行緊急制動。

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

通過施加一個引擎力來加速車輛。只有當 :ref:`VehicleWheel3D.use_as_traction<class_VehicleWheel3D_property_use_as_traction>` 被設定為 ``true`` 的車輪與表面接觸時，車輛才會加速。車輛的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` 對車輛的加速度有影響。對於品質被設定為 1000 的車輛，請嘗試使用 25 - 50 範圍內的加速度值。

\ **注意：**\ 模擬沒有考慮齒輪的影響，如果想要類比齒輪，需要為其新增邏輯。

負值將導致車輛倒車。

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

車輛的轉向角。將該屬性設定為非零值將導致車輛在移動時轉彎。\ :ref:`VehicleWheel3D.use_as_steering<class_VehicleWheel3D_property_use_as_steering>` 設定為 ``true`` 的車輪將自動旋轉。

\ **注意：**\ 該屬性在屬性檢視器中以度為單位進行編輯。在程式碼中，該屬性以弧度單位設置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
