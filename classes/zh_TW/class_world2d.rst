:github_url: hide

.. _class_World2D:

World2D
=======

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一種保存了所有 2D 世界元件的資源，例如畫布和物理運算空間。

.. rst-class:: classref-introduction-group

說明
----

這個類包含所有與 2D 世界相關的內容：物理空間、可視場景和音訊空間。2D 節點會將它們的資源註冊到目前的 2D 世界中。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`發射射線 <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`canvas<class_World2D_property_canvas>`                         |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` | :ref:`direct_space_state<class_World2D_property_direct_space_state>` |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`navigation_map<class_World2D_property_navigation_map>`         |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`space<class_World2D_property_space>`                           |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_World2D_property_canvas:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **canvas** :ref:`🔗<class_World2D_property_canvas>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_canvas**\ (\ )

這個世界的畫布資源的 :ref:`RID<class_RID>`\ 。由 :ref:`RenderingServer<class_RenderingServer>` 用於 2D 繪製。

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **direct_space_state** :ref:`🔗<class_World2D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **get_direct_space_state**\ (\ )

直接存取該世界的物理 3D 空間狀態。可用於查詢目前和可能的碰撞。在多執行緒物理中使用時，僅可在主執行緒的 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 中存取。

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World2D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

這個世界的導覽地圖的 :ref:`RID<class_RID>`\ 。由 :ref:`NavigationServer2D<class_NavigationServer2D>` 使用。

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World2D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

這個世界物理空間資源的 :ref:`RID<class_RID>`\ 。由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 用於 2D 物理，將其視為一個空間和一個區域。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
