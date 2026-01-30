:github_url: hide

.. _class_PhysicsShapeQueryParameters3D:

PhysicsShapeQueryParameters3D
=============================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Provides parameters for :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`'s methods.

.. rst-class:: classref-introduction-group

說明
----

By changing various properties of this object, such as the shape, you can configure the parameters for :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`'s methods.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsShapeQueryParameters3D_property_collide_with_areas>`   | ``false``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsShapeQueryParameters3D_property_collide_with_bodies>` | ``true``                                            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsShapeQueryParameters3D_property_collision_mask>`           | ``4294967295``                                      |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsShapeQueryParameters3D_property_exclude>`                         | ``[]``                                              |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`margin<class_PhysicsShapeQueryParameters3D_property_margin>`                           | ``0.0``                                             |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                      | :ref:`motion<class_PhysicsShapeQueryParameters3D_property_motion>`                           | ``Vector3(0, 0, 0)``                                |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Resource<class_Resource>`                    | :ref:`shape<class_PhysicsShapeQueryParameters3D_property_shape>`                             |                                                     |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`RID<class_RID>`                              | :ref:`shape_rid<class_PhysicsShapeQueryParameters3D_property_shape_rid>`                     | ``RID()``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`              | :ref:`transform<class_PhysicsShapeQueryParameters3D_property_transform>`                     | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PhysicsShapeQueryParameters3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

如果為 ``true``\ ，則查詢將考慮 :ref:`Area3D<class_Area3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

如果為 ``true``\ ，則查詢將考慮 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

查詢將偵測的實體層（作為位元遮罩）。預設情況下，會偵測所有碰撞層。有關詳細信息，請參閱文件中的 `《碰撞層和遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

The list of object :ref:`RID<class_RID>`\ s that will be excluded from collisions. Use :ref:`CollisionObject3D.get_rid()<class_CollisionObject3D_method_get_rid>` to get the :ref:`RID<class_RID>` associated with a :ref:`CollisionObject3D<class_CollisionObject3D>`-derived node.

\ **Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then assign it to the property again.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

形狀的碰撞邊距。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_motion:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **motion** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_motion**\ (\ )

正在查詢的形狀的運動。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_shape:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **shape** :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_shape**\ (\ )

將用於碰撞/相交查詢的 :ref:`Shape3D<class_Shape3D>`\ 。儲存的是實際的引用，可以避免該形狀在進行查詢時被釋放，因此請優先使用這個屬性，而不是 :ref:`shape_rid<class_PhysicsShapeQueryParameters3D_property_shape_rid>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_shape_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **shape_rid** = ``RID()`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_shape_rid>`

.. rst-class:: classref-property-setget

- |void| **set_shape_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_shape_rid**\ (\ )

The queried shape's :ref:`RID<class_RID>` that will be used for collision/intersection queries. Use this over :ref:`shape<class_PhysicsShapeQueryParameters3D_property_shape>` if you want to optimize for performance using the Servers API:


.. tabs::

 .. code-tab:: gdscript

    var shape_rid = PhysicsServer3D.sphere_shape_create()
    var radius = 2.0
    PhysicsServer3D.shape_set_data(shape_rid, radius)

    var params = PhysicsShapeQueryParameters3D.new()
    params.shape_rid = shape_rid

    # Execute physics queries here...

    # Release the shape when done with physics queries.
    PhysicsServer3D.free_rid(shape_rid)

 .. code-tab:: csharp

    RID shapeRid = PhysicsServer3D.SphereShapeCreate();
    float radius = 2.0f;
    PhysicsServer3D.ShapeSetData(shapeRid, radius);

    var params = new PhysicsShapeQueryParameters3D();
    params.ShapeRid = shapeRid;

    // Execute physics queries here...

    // Release the shape when done with physics queries.
    PhysicsServer3D.FreeRid(shapeRid);



.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

被查詢形狀的變換矩陣。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
