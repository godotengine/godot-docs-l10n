:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**繼承：** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一個根據 XR 追蹤資料自動定位自身的相機節點。

.. rst-class:: classref-introduction-group

說明
----

A camera node which automatically positions itself based on XR tracking data.

\ **Note:** Due to the nature of headsets, camera positioning needs to update every frame even when your game is paused. :ref:`Node.process_mode<class_Node_property_process_mode>` must be set to :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_XRCamera3D_property_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tracker** = ``&"head"`` :ref:`🔗<class_XRCamera3D_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker**\ (\ )

The name of the camera tracker we're bound to. Which trackers are available is not known during design time.

The default tracker refers to the HMD position of the main player. Consult the documentation of the :ref:`XRInterface<class_XRInterface>` for any additional trackers. There may be additional tracked headsets for multiplayer systems or a tracker may be available for a physical camera in a mixed reality scenario.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
