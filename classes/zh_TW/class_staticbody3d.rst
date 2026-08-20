:github_url: hide

.. _class_StaticBody3D:

StaticBody3D
============

**繼承：** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AnimatableBody3D<class_AnimatableBody3D>`

無法被外力移動的 3D 物理物體。手動移動時不會影響路徑上的其他物體。

.. rst-class:: classref-introduction-group

說明
----

靜態 3D 物理體。無法因外力或接觸而移動，但可以通過程式碼、\ :ref:`AnimationMixer<class_AnimationMixer>`\ （\ :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` 設為 :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`\ ）、\ :ref:`RemoteTransform3D<class_RemoteTransform3D>` 等方法手動移動。

\ **StaticBody3D** 發生移動時，是傳送到新位置上的，不會影響路徑上的其他物理體。如果不想要這樣的行為，請改用 :ref:`AnimatableBody3D<class_AnimatableBody3D>`\ 。

\ **StaticBody3D** 常用於完全靜態的地板、牆壁等物件，也可以用於傳送帶、圓形回轉平台等移動的表面（使用 :ref:`constant_linear_velocity<class_StaticBody3D_property_constant_linear_velocity>` 和 :ref:`constant_angular_velocity<class_StaticBody3D_property_constant_angular_velocity>`\ ）。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

- :doc:`Troubleshooting physics issues <../tutorials/physics/troubleshooting_physics_issues>`

- `3D 物理測試示範 <https://godotengine.org/asset-library/asset/2747>`__

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

- `3D 體素示範 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`constant_angular_velocity<class_StaticBody3D_property_constant_angular_velocity>` | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`constant_linear_velocity<class_StaticBody3D_property_constant_linear_velocity>`   | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>` | :ref:`physics_material_override<class_StaticBody3D_property_physics_material_override>` |                      |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_StaticBody3D_property_constant_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_StaticBody3D_property_constant_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_angular_velocity**\ (\ )

該物體的恒定角速度。不會旋轉該物體，但會影響接觸的物體，就好像這個物體正在旋轉一樣。

.. rst-class:: classref-item-separator

----

.. _class_StaticBody3D_property_constant_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_StaticBody3D_property_constant_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_linear_velocity**\ (\ )

該物體的恒定線速度。不會移動該物體，但會影響接觸的物體，就好像這個物體正在移動一樣。

.. rst-class:: classref-item-separator

----

.. _class_StaticBody3D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_StaticBody3D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

覆寫形體的物理材質。

若爲此屬性指定了某種材質，則會使用該材質代替其他物理材質（比如繼承而來的材質）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
