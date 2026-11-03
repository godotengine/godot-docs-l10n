:github_url: hide

.. _class_XRAnchor3D:

XRAnchor3D
==========

**繼承：** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

AR 空間中的錨點。

.. rst-class:: classref-introduction-group

說明
----

**XRAnchor3D** 點是一個 :ref:`XRNode3D<class_XRNode3D>`\ ，它將由 AR 平台識別的真實世界位置映射到遊戲世界中的某個位置。例如，只要 ARKit 中的平面檢測處於開啟狀態，ARKit 就會識別和更新平面（桌子、地板等）的位置，並為它們建立錨點。

該節點通過其唯一 ID 映射到其中一個錨點。當收到新錨點可用的訊號時，應該將該節點新增到該錨點的場景中。可以預定義節點並設定ID；節點將簡單地保持在 ``(0, 0, 0)`` 上，直到識別出一個平面。

請記住，只要啟用了平面檢測，錨點的大小、位置和方向都會隨著檢測邏輯瞭解更多關於真實世界的資訊而更新，尤其是在只有部分表面在視野內時。

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
