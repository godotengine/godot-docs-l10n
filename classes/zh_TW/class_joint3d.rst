:github_url: hide

.. _class_Joint3D:

Joint3D
=======

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`ConeTwistJoint3D<class_ConeTwistJoint3D>`, :ref:`Generic6DOFJoint3D<class_Generic6DOFJoint3D>`, :ref:`HingeJoint3D<class_HingeJoint3D>`, :ref:`PinJoint3D<class_PinJoint3D>`, :ref:`SliderJoint3D<class_SliderJoint3D>`

所有 3D 物理關節的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

3D 物理中所有關節的抽象基底類別。3D 關節將兩個物理體（\ :ref:`node_a<class_Joint3D_property_node_a>` 和 :ref:`node_b<class_Joint3D_property_node_b>`\ ）綁定在一起並應用約束。如果僅定義一個物體，則將其附加到固定的 :ref:`StaticBody3D<class_StaticBody3D>` 上，而沒有碰撞形狀。

.. rst-class:: classref-introduction-group

教學
----

- `3D 貨車鎮演示 <https://store.godotengine.org/asset/godot-foundation/truck-town-demo/>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`exclude_nodes_from_collision<class_Joint3D_property_exclude_nodes_from_collision>` | ``true``         |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_a<class_Joint3D_property_node_a>`                                             | ``NodePath("")`` |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_b<class_Joint3D_property_node_b>`                                             | ``NodePath("")`` |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`solver_priority<class_Joint3D_property_solver_priority>`                           | ``1``            |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_rid<class_Joint3D_method_get_rid>`\ (\ ) |const| |
   +-----------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Joint3D_property_exclude_nodes_from_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_nodes_from_collision** = ``true`` :ref:`🔗<class_Joint3D_property_exclude_nodes_from_collision>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_nodes_from_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_nodes_from_collision**\ (\ )

如果為 ``true``\ ，則綁定在一起的兩個物體不會相互碰撞。

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_a:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_a** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_a>`

.. rst-class:: classref-property-setget

- |void| **set_node_a**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_a**\ (\ )

連接到關節的第一個節點（A）的路徑。該節點必須繼承自 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ 。

如果留空且設定了 :ref:`node_b<class_Joint3D_property_node_b>`\ ，則該物體將連接到固定的 :ref:`StaticBody3D<class_StaticBody3D>`\ ，且沒有碰撞形狀。

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_b:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_b** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_b>`

.. rst-class:: classref-property-setget

- |void| **set_node_b**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_b**\ (\ )

連接到關節的第二個節點（B）的路徑。該節點必須繼承自 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ 。

如果留空且設定了 :ref:`node_a<class_Joint3D_property_node_a>`\ ，則該物體將連接到固定的 :ref:`StaticBody3D<class_StaticBody3D>`\ ，且沒有碰撞形狀。

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_solver_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **solver_priority** = ``1`` :ref:`🔗<class_Joint3D_property_solver_priority>`

.. rst-class:: classref-property-setget

- |void| **set_solver_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_solver_priority**\ (\ )

The priority specifies how accurately a joint is solved. Generally, higher values improve accuracy. This has very different implementations between Godot Physics and Jolt Physics:

\ **Godot Physics:** *Values above 1 have a performance impact*. Joint is solved ``max(1, solver_priority) * iterations`` times. A value of ``4`` would solve the same joint *4× additional times per physics step*.

\ **Jolt Physics:** Aside from sorting the joints, there is no performance impact with higher values. Joints with *high* priorities are solved *later*. A value of ``4`` would solve *after priorities of 0, 1, 2, and 3*. Later joints have the final say between the two bodies they connect.

Negative values are not allowed and will be silently ``max(0, solver_priority)`` when set.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Joint3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Joint3D_method_get_rid>`

從 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 回傳關節的內部 :ref:`RID<class_RID>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
