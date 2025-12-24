:github_url: hide

.. _class_AnimatableBody2D:

AnimatableBody2D
================

**继承：** :ref:`StaticBody2D<class_StaticBody2D>` **<** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

无法被外力移动的 2D 物理物体。手动移动时会影响路径上的其他物体。

.. rst-class:: classref-introduction-group

描述
----

可动画的 2D 物理物体。无法因外力和接触而移动，但可以通过代码、\ :ref:`AnimationMixer<class_AnimationMixer>`\ （\ :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` 设为 :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`\ ）、\ :ref:`RemoteTransform2D<class_RemoteTransform2D>` 等方法手动移动。

\ **AnimatableBody2D** 发生移动时，会对线速度和角速度进行估算，并用于影响其路径上的其他物理物体。因此适用于移动平台、门等移动的对象。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`物理介绍 <../tutorials/physics/physics_introduction>`

- :doc:`排查物理问题 <../tutorials/physics/troubleshooting_physics_issues>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`sync_to_physics<class_AnimatableBody2D_property_sync_to_physics>` | ``true`` |
   +-------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AnimatableBody2D_property_sync_to_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync_to_physics** = ``true`` :ref:`🔗<class_AnimatableBody2D_property_sync_to_physics>`

.. rst-class:: classref-property-setget

- |void| **set_sync_to_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sync_to_physics_enabled**\ (\ )

如果为 ``true``\ ，则物体的运动将与物理帧同步。当通过 :ref:`AnimationPlayer<class_AnimationPlayer>` 为运动设置动画时，例如在移动的平台上，这个功能很有用。\ **不要**\ 与\ :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>`\ 一起使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
