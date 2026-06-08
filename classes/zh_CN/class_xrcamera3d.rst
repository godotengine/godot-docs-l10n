:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**继承：** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一个根据 XR 跟踪数据自动定位自身的相机节点。

.. rst-class:: classref-introduction-group

描述
----

一个根据 XR 跟踪数据自动定位自身的相机节点。

与 :ref:`XRController3D<class_XRController3D>` 相比，渲染线程能够访问更新的跟踪数据，因此 **XRCamera3D** 节点的位置可能会比用于渲染的位置滞后几毫秒。

\ **注意：** 如果 :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` 为 ``true``\ ，则大多数相机属性都会被激活的 :ref:`XRInterface<class_XRInterface>` 重写。唯一可信的属性是近裁面和远裁面。

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
