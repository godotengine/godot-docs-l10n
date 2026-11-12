:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**继承：** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一个根据 XR 跟踪数据自动定位自身的相机节点。

.. rst-class:: classref-introduction-group

描述
----

A camera node which automatically positions itself based on XR tracking data.

\ **Note:** Due to the nature of headsets, camera positioning needs to update every frame even when your game is paused. :ref:`Node.process_mode<class_Node_property_process_mode>` must be set to :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                        | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ProcessMode<enum_Node_ProcessMode>`                           | process_mode                                      | ``3`` (overrides :ref:`Node<class_Node_property_process_mode>`)               |
   +---------------------------------------------------------------------+---------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`tracker<class_XRCamera3D_property_tracker>` | ``&"head"``                                                                   |
   +---------------------------------------------------------------------+---------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRCamera3D_property_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tracker** = ``&"head"`` :ref:`🔗<class_XRCamera3D_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker**\ (\ )

The name of the camera tracker we're bound to. Which trackers are available is not known during design time.

The default tracker refers to the HMD position of the main player. Consult the documentation of the :ref:`XRInterface<class_XRInterface>` for any additional trackers. There may be additional tracked headsets for multiplayer systems or a tracker may be available for a physical camera in a mixed reality scenario.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
