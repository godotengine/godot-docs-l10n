:github_url: hide

.. _class_XRAnchor3D:

XRAnchor3D
==========

**繼承：** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

AR 空間中的錨點。

.. rst-class:: classref-introduction-group

說明
----

The **XRAnchor3D** point is an :ref:`XRNode3D<class_XRNode3D>` that maps a real world location identified by the AR platform to a position within the game world. For example, as long as plane detection in ARKit is on, ARKit will identify and update the position of planes (tables, floors, etc.) and create anchors for them.

This node is mapped to one of the anchors through its unique ID. When you receive a signal that a new anchor is available, you should add this node to your scene for that anchor. You can predefine nodes and set the ID; the nodes will simply remain on ``(0, 0, 0)`` until a plane is recognized.

Keep in mind that, as long as plane detection is enabled, the size, placing and orientation of an anchor will be updated as the detection logic learns more about the real world out there especially if only part of the surface is in view.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`     | :ref:`get_plane<class_XRAnchor3D_method_get_plane>`\ (\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_size<class_XRAnchor3D_method_get_size>`\ (\ ) |const|   |
   +-------------------------------+-------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRAnchor3D_method_get_plane:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_plane**\ (\ ) |const| :ref:`🔗<class_XRAnchor3D_method_get_plane>`

返回一個與我們的錨點對齊的平面；方便進行交集測試。

.. rst-class:: classref-item-separator

----

.. _class_XRAnchor3D_method_get_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_size**\ (\ ) |const| :ref:`🔗<class_XRAnchor3D_method_get_size>`

返回偵測到的平面的估計尺寸。比如當錨點與現實世界中的一張桌子有關時，這就是該桌子表面的估計尺寸。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
