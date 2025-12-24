:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**继承：** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

应用了一些 AR/VR 规则的相机节点，例如位置跟踪。

.. rst-class:: classref-introduction-group

描述
----

这是用于我们相机的一种辅助 3D 节点；请注意，如果立体渲染适用（VR-HMD），则大多数相机属性都会被忽略，因为 HMD 信息会覆盖它们。可以信任的属性只有近平面和远平面。

如果此类跟踪可用，则该节点的位置和方向由 XR 服务器自动更新，以表示 HMD 的位置，因此可以被游戏逻辑使用。请注意，与 XR 控制器相比，渲染线程可以访问 HMD 的最新跟踪数据，因此 XRCamera3D 的位置可能比用于渲染的位置滞后几毫秒。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
