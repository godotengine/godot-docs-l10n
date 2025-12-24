:github_url: hide

.. _class_PhysicsServer3DRenderingServerHandler:

PhysicsServer3DRenderingServerHandler
=====================================

**继承：** :ref:`Object<class_Object>`

用于为 :ref:`PhysicsServer3DExtension._soft_body_update_rendering_server()<class_PhysicsServer3DExtension_private_method__soft_body_update_rendering_server>` 提供柔体渲染处理器的类。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_aabb<class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |virtual| |required|                                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_normal<class_PhysicsServer3DRenderingServerHandler_private_method__set_normal>`\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_vertex<class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex>`\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_aabb<class_PhysicsServer3DRenderingServerHandler_method_set_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ )                                                                               |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_normal<class_PhysicsServer3DRenderingServerHandler_method_set_normal>`\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ )                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_vertex<class_PhysicsServer3DRenderingServerHandler_method_set_vertex>`\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ )                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb:

.. rst-class:: classref-method

|void| **_set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb>`

由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 调用以设置 :ref:`SoftBody3D<class_SoftBody3D>` 的边界框。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_normal:

.. rst-class:: classref-method

|void| **_set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_normal>`

由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 调用，以在 ``vertex_id`` 指定的索引处设置 :ref:`SoftBody3D<class_SoftBody3D>` 顶点的法线。

\ **注意：**\ 在 Godot 4.2 之前，\ ``normal`` 参数的类型为 ``const void*``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex:

.. rst-class:: classref-method

|void| **_set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex>`

由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 调用，以在 ``vertex_id`` 指定的索引处设置 :ref:`SoftBody3D<class_SoftBody3D>` 顶点的位置。

\ **注意：**\ 在 Godot 4.2 之前，\ ``vertex`` 参数的类型为 ``const void*``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_aabb:

.. rst-class:: classref-method

|void| **set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_aabb>`

设置该 :ref:`SoftBody3D<class_SoftBody3D>` 的边界框。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_normal:

.. rst-class:: classref-method

|void| **set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_normal>`

在由 ``vertex_id`` 指定的索引处设置该 :ref:`SoftBody3D<class_SoftBody3D>` 顶点的法线。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_vertex>`

在由 ``vertex_id`` 指定的索引处设置该 :ref:`SoftBody3D<class_SoftBody3D>` 顶点的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
