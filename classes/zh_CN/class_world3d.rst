:github_url: hide

.. _class_World3D:

World3D
=======

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

包含 3D 世界所有组件的资源，例如可视场景和物理空间。

.. rst-class:: classref-introduction-group

描述
----

这个类包含所有与世界相关的内容：物理空间、可视场景和音频空间。3D 节点会将它们的资源注册到当前的 3D 世界中。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`发射射线 <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`                   | :ref:`camera_attributes<class_World3D_property_camera_attributes>`       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` | :ref:`direct_space_state<class_World3D_property_direct_space_state>`     |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`                             | :ref:`environment<class_World3D_property_environment>`                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`                             | :ref:`fallback_environment<class_World3D_property_fallback_environment>` |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`navigation_map<class_World3D_property_navigation_map>`             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`scenario<class_World3D_property_scenario>`                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`space<class_World3D_property_space>`                               |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_World3D_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_World3D_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

:ref:`Camera3D<class_Camera3D>` 上未设置时 :ref:`CameraAttributes<class_CameraAttributes>` 时默认使用的资源。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **direct_space_state** :ref:`🔗<class_World3D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **get_direct_space_state**\ (\ )

直接访问该世界的物理 3D 空间状态。可用于查询当前和可能的碰撞。在多线程物理中使用时，仅可在主线程的 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 中访问。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_World3D_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

该 World3D 的 :ref:`Environment<class_Environment>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_fallback_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **fallback_environment** :ref:`🔗<class_World3D_property_fallback_environment>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_fallback_environment**\ (\ )

在 :ref:`environment<class_World3D_property_environment>` 失败或丢失时，World3D 所使用的回退环境。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World3D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

这个世界的导航地图的 :ref:`RID<class_RID>`\ 。由 :ref:`NavigationServer3D<class_NavigationServer3D>` 使用。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_scenario:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **scenario** :ref:`🔗<class_World3D_property_scenario>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_scenario**\ (\ )

该 World3D 的可视场景。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World3D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

该 World3D 的物理空间。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
