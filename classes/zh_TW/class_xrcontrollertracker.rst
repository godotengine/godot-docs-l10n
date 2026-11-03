:github_url: hide

.. _class_XRControllerTracker:

XRControllerTracker
===================

**繼承：** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

追蹤控制器。

.. rst-class:: classref-introduction-group

說明
----

該物件的實例表示被追蹤的控制器。

當控制器被打開，並且 :ref:`XRInterface<class_XRInterface>` 檢測到它們時，該物件的實例會自動被新增到可通過 :ref:`XRServer<class_XRServer>` 存取的活動追蹤物件清單中。

\ :ref:`XRController3D<class_XRController3D>` 使用該型別的物件，應在你的專案中使用。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+------+-------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>` | type | ``2`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +-----------------------------------------------+------+-------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
