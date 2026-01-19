:github_url: hide

.. _class_World3D:

World3D
=======

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

包含 3D 世界所有元件的資源，例如可視場景和物理空間。

.. rst-class:: classref-introduction-group

說明
----

這個類包含所有與世界相關的內容：物理空間、可視場景和音訊空間。3D 節點會將它們的資源註冊到目前的 3D 世界中。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`發射射線 <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`                   | :ref:`camera_attributes<class_World3D_property_camera_attributes>`       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` | :ref:`direct_space_state<class_World3D_property_direct_space_state>`     |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`                             | :ref:`environment<class_World3D_property_environment>`                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`                             | :ref:`fallback_environment<class_World3D_property_fallback_environment>` |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`navigation_map<class_World3D_property_navigation_map>`             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`scenario<class_World3D_property_scenario>`                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`space<class_World3D_property_space>`                               |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_World3D_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_World3D_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

:ref:`Camera3D<class_Camera3D>` 上未設定時 :ref:`CameraAttributes<class_CameraAttributes>` 時預設使用的資源。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **direct_space_state** :ref:`🔗<class_World3D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **get_direct_space_state**\ (\ )

直接存取該世界的物理 3D 空間狀態。可用於查詢目前和可能的碰撞。在多執行緒物理中使用時，僅可在主執行緒的 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 中存取。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_World3D_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

該 World3D 的 :ref:`Environment<class_Environment>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_fallback_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **fallback_environment** :ref:`🔗<class_World3D_property_fallback_environment>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_fallback_environment**\ (\ )

在 :ref:`environment<class_World3D_property_environment>` 失敗或丟失時，World3D 所使用的退回環境。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World3D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

這個世界的導覽地圖的 :ref:`RID<class_RID>`\ 。由 :ref:`NavigationServer3D<class_NavigationServer3D>` 使用。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_scenario:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **scenario** :ref:`🔗<class_World3D_property_scenario>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_scenario**\ (\ )

該 World3D 的可視場景。

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World3D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

該 World3D 的物理空間。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
