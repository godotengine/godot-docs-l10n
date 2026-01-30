:github_url: hide

.. _class_XROrigin3D:

XROrigin3D
==========

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

AR/VR 的原点。

.. rst-class:: classref-introduction-group

描述
----

这是 AR/VR 系统中的一个特殊节点，会将我们跟踪空间中心的物理位置映射到游戏世界中的虚拟位置。

场景树中可以添加多个原点，但一次只能使用一个。所有 :ref:`XRCamera3D<class_XRCamera3D>`\ 、\ :ref:`XRController3D<class_XRController3D>` 和 :ref:`XRAnchor3D<class_XRAnchor3D>` 节点都应该是该节点的直接子节点，以便空间跟踪正常工作。

当你的角色需要在游戏世界中移动而不在现实世界中移动时，就要更新此节点的位置。现实世界中的运动始终是相对于这个原点的。

例如，如果你的角色正在驾驶汽车，则 **XROrigin3D** 节点应该是这辆车的子节点。或者，如果要实现通过传送系统来移动角色，则应该更改此节点的位置。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`current<class_XROrigin3D_property_current>`         | ``false`` |
   +---------------------------+-----------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`world_scale<class_XROrigin3D_property_world_scale>` | ``1.0``   |
   +---------------------------+-----------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XROrigin3D_property_current:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **current** = ``false`` :ref:`🔗<class_XROrigin3D_property_current>`

.. rst-class:: classref-property-setget

- |void| **set_current**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_current**\ (\ )

如果为 ``true``\ ，则该原点节点目前正被 :ref:`XRServer<class_XRServer>` 使用。一次只能使用一个原点。

.. rst-class:: classref-item-separator

----

.. _class_XROrigin3D_property_world_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **world_scale** = ``1.0`` :ref:`🔗<class_XROrigin3D_property_world_scale>`

.. rst-class:: classref-property-setget

- |void| **set_world_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_world_scale**\ (\ )

游戏世界相对于现实世界的缩放。与 :ref:`XRServer.world_scale<class_XRServer_property_world_scale>` 相同。默认情况下，大多数 AR/VR 平台假定 1 个游戏世界单位等于现实世界的 1 米。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
