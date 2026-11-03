:github_url: hide

.. _class_XROrigin3D:

XROrigin3D
==========

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

AR/VR 的原點。

.. rst-class:: classref-introduction-group

說明
----

這是 AR/VR 系統中的一個特殊節點，會將我們追蹤空間中心的物理位置映射到遊戲世界中的虛擬位置。

場景樹中可以新增多個原點，但一次只能使用一個。所有 :ref:`XRCamera3D<class_XRCamera3D>`\ 、\ :ref:`XRController3D<class_XRController3D>` 和 :ref:`XRAnchor3D<class_XRAnchor3D>` 節點都應該是該節點的直接子節點，以便空間追蹤正常工作。

當你的角色需要在遊戲世界中移動而不在現實世界中移動時，就要更新此節點的位置。現實世界中的運動始終是相對於這個原點的。

例如，如果你的角色正在駕駛汽車，則 **XROrigin3D** 節點應該是這輛車的子節點。或者，如果要實作通過傳送系統來移動角色，則應該更改此節點的位置。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_XROrigin3D_property_current:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **current** = ``false`` :ref:`🔗<class_XROrigin3D_property_current>`

.. rst-class:: classref-property-setget

- |void| **set_current**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_current**\ (\ )

如果為 ``true``\ ，則該原點節點目前正被 :ref:`XRServer<class_XRServer>` 使用。一次只能使用一個原點。

.. rst-class:: classref-item-separator

----

.. _class_XROrigin3D_property_world_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **world_scale** = ``1.0`` :ref:`🔗<class_XROrigin3D_property_world_scale>`

.. rst-class:: classref-property-setget

- |void| **set_world_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_world_scale**\ (\ )

遊戲世界相對於現實世界的縮放。與 :ref:`XRServer.world_scale<class_XRServer_property_world_scale>` 相同。預設情況下，大多數 AR/VR 平台假定 1 個遊戲世界單位等於現實世界的 1 米。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
