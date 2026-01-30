:github_url: hide

.. _class_PhysicsServer3DRenderingServerHandler:

PhysicsServer3DRenderingServerHandler
=====================================

**繼承：** :ref:`Object<class_Object>`

用於為 :ref:`PhysicsServer3DExtension._soft_body_update_rendering_server()<class_PhysicsServer3DExtension_private_method__soft_body_update_rendering_server>` 提供柔體算繪處理器的類。

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

方法說明
--------

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb:

.. rst-class:: classref-method

|void| **_set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb>`

由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 呼叫設定 :ref:`SoftBody3D<class_SoftBody3D>` 的邊界框。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_normal:

.. rst-class:: classref-method

|void| **_set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_normal>`

由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 呼叫，以在 ``vertex_id`` 指定的索引處設定 :ref:`SoftBody3D<class_SoftBody3D>` 頂點的法線。

\ **注意：** 在 Godot 4.2 之前，\ ``normal`` 參數的型別為 ``const void*``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex:

.. rst-class:: classref-method

|void| **_set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex>`

由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 呼叫，以在 ``vertex_id`` 指定的索引處設定 :ref:`SoftBody3D<class_SoftBody3D>` 頂點的位置。

\ **注意：** 在 Godot 4.2 之前，\ ``vertex`` 參數的型別為 ``const void*``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_aabb:

.. rst-class:: classref-method

|void| **set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_aabb>`

返回文字邊界框的大小。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_normal:

.. rst-class:: classref-method

|void| **set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_normal>`

Sets the normal for the :ref:`SoftBody3D<class_SoftBody3D>` vertex at the index specified by ``vertex_id``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_vertex>`

Sets the position for the :ref:`SoftBody3D<class_SoftBody3D>` vertex at the index specified by ``vertex_id``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
