:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**繼承：** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一個根據 XR 追蹤資料自動定位自身的相機節點。

.. rst-class:: classref-introduction-group

說明
----

一個根據 XR 追蹤資料自動定位自身的相機節點。

與 :ref:`XRController3D<class_XRController3D>` 相比，渲染執行緒能夠存取更新的追蹤資料，因此 **XRCamera3D** 節點的位置可能會比用於渲染的位置滯後幾毫秒。

\ **注意：** 如果 :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` 為 ``true``\ ，則大多數相機屬性都會被啟用的 :ref:`XRInterface<class_XRInterface>` 重寫。唯一可信的屬性是近裁面和遠裁面。

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
