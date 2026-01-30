:github_url: hide

.. _class_StaticBody2D:

StaticBody2D
============

**繼承：** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AnimatableBody2D<class_AnimatableBody2D>`

無法被外力移動的 2D 物理物體。手動移動時不會影響路徑上的其他物體。

.. rst-class:: classref-introduction-group

說明
----

靜態 2D 物理體。無法因外力或接觸而移動，但可以通過程式碼、\ :ref:`AnimationMixer<class_AnimationMixer>`\ （\ :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` 設為 :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`\ ）、\ :ref:`RemoteTransform2D<class_RemoteTransform2D>` 等方法手動移動。

\ **StaticBody2D** 發生移動時，是傳送到新位置上的，不會影響路徑上的其他物理體。如果不想要這樣的行為，請改用 :ref:`AnimatableBody2D<class_AnimatableBody2D>`\ 。

\ **StaticBody2D** 常用於完全靜態的地板、牆壁等物件，也可以用於傳送帶、圓形回轉平台等移動的表面（使用 :ref:`constant_linear_velocity<class_StaticBody2D_property_constant_linear_velocity>` 和 :ref:`constant_angular_velocity<class_StaticBody2D_property_constant_angular_velocity>`\ ）。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

- :doc:`Troubleshooting physics issues <../tutorials/physics/troubleshooting_physics_issues>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                     | :ref:`constant_angular_velocity<class_StaticBody2D_property_constant_angular_velocity>` | ``0.0``           |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                 | :ref:`constant_linear_velocity<class_StaticBody2D_property_constant_linear_velocity>`   | ``Vector2(0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>` | :ref:`physics_material_override<class_StaticBody2D_property_physics_material_override>` |                   |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_StaticBody2D_property_constant_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **constant_angular_velocity** = ``0.0`` :ref:`🔗<class_StaticBody2D_property_constant_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_constant_angular_velocity**\ (\ )

該物體的恒定角速度。不會旋轉該物體，但會影響接觸的物體，就好像這個物體正在旋轉一樣。

.. rst-class:: classref-item-separator

----

.. _class_StaticBody2D_property_constant_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **constant_linear_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_StaticBody2D_property_constant_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_constant_linear_velocity**\ (\ )

該物體的恒定線速度。不會移動該物體，但會影響接觸的物體，就好像這個物體正在移動一樣。

.. rst-class:: classref-item-separator

----

.. _class_StaticBody2D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_StaticBody2D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

物體的物理材質。

如果為該屬性指定了一種材質，則將使用該材質代替任何其他物理材質，例如繼承的材質。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
