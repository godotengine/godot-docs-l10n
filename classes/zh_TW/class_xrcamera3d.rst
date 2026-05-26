:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**繼承：** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A camera node which automatically positions itself based on XR tracking data.

.. rst-class:: classref-introduction-group

說明
----

A camera node which automatically positions itself based on XR tracking data.

In contrast to :ref:`XRController3D<class_XRController3D>`, the render thread has access to more up-to-date tracking data, and the location of the **XRCamera3D** node can lag a few milliseconds behind what is used for rendering.

\ **Note:** If :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` is ``true``, most of the camera properties are overridden by the active :ref:`XRInterface<class_XRInterface>`. The only properties that can be trusted are the near and far planes.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
