:github_url: hide

.. _class_GLTFPhysicsShape:

GLTFPhysicsShape
================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 物理形狀。

.. rst-class:: classref-introduction-group

說明
----

代表由 ``OMI_physics_shape`` 或 ``OMI_collider`` glTF 擴充定義的物理形狀。這個類是 glTF 資料與 Godot 節點的中介，並且經過了抽象，支援將來新增不同 glTF 物理擴充。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `OMI_physics_shape glTF 擴充 <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_shape>`__

- `OMI_collider glTF 擴充 <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/Archived/OMI_collider>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`height<class_GLTFPhysicsShape_property_height>`               | ``2.0``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>` | :ref:`importer_mesh<class_GLTFPhysicsShape_property_importer_mesh>` |                      |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                 | :ref:`is_trigger<class_GLTFPhysicsShape_property_is_trigger>`       | ``false``            |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                   | :ref:`mesh_index<class_GLTFPhysicsShape_property_mesh_index>`       | ``-1``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`radius<class_GLTFPhysicsShape_property_radius>`               | ``0.5``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`             | :ref:`shape_type<class_GLTFPhysicsShape_property_shape_type>`       | ``""``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`           | :ref:`size<class_GLTFPhysicsShape_property_size>`                   | ``Vector3(1, 1, 1)`` |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_dictionary<class_GLTFPhysicsShape_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_node<class_GLTFPhysicsShape_method_from_node>`\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_resource<class_GLTFPhysicsShape_method_from_resource>`\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static|       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`to_dictionary<class_GLTFPhysicsShape_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CollisionShape3D<class_CollisionShape3D>` | :ref:`to_node<class_GLTFPhysicsShape_method_to_node>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape3D<class_Shape3D>`                   | :ref:`to_resource<class_GLTFPhysicsShape_method_to_resource>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFPhysicsShape_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_GLTFPhysicsShape_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

形狀的高度，單位為米。僅在形狀型別為 ``"capsule"`` 或 ``"cylinder"`` 時使用。這個值不能為負數，並且對於 ``"capsule"`` 而言應當至少是半徑的兩倍。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_importer_mesh:

.. rst-class:: classref-property

:ref:`ImporterMesh<class_ImporterMesh>` **importer_mesh** :ref:`🔗<class_GLTFPhysicsShape_property_importer_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_importer_mesh**\ (\ value\: :ref:`ImporterMesh<class_ImporterMesh>`\ )
- :ref:`ImporterMesh<class_ImporterMesh>` **get_importer_mesh**\ (\ )

形狀的 :ref:`ImporterMesh<class_ImporterMesh>` 資源。僅在形狀型別為 ``"hull"``\ （凸包）和 ``"trimesh"``\ （凹三角網格）時使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_is_trigger:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_trigger** = ``false`` :ref:`🔗<class_GLTFPhysicsShape_property_is_trigger>`

.. rst-class:: classref-property-setget

- |void| **set_is_trigger**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_trigger**\ (\ )

如果為 ``true``\ ，則表示這個形狀是觸發器。對於 Godot 而言，這意味著該形狀應當是 :ref:`Area3D<class_Area3D>` 節點的子節點。

這是 :ref:`to_node()<class_GLTFPhysicsShape_method_to_node>` 方法中唯一沒有用到的變數，應該單獨用來確定要將生成的節點新增到哪個節點之下。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_mesh_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **mesh_index** = ``-1`` :ref:`🔗<class_GLTFPhysicsShape_property_mesh_index>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mesh_index**\ (\ )

形狀網格在 glTF 檔案中的索引。僅在形狀型別為 ``"hull"``\ （凸包）和 ``"trimesh"``\ （凹三角網格）時使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_GLTFPhysicsShape_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

形狀的半徑，單位為米。僅在形狀型別為 ``"capsule"``\ 、\ ``"cylinder"`` 或 ``"sphere"`` 時使用。這個值不應為負數。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_shape_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **shape_type** = ``""`` :ref:`🔗<class_GLTFPhysicsShape_property_shape_type>`

.. rst-class:: classref-property-setget

- |void| **set_shape_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_shape_type**\ (\ )

這個形狀所代表的形狀型別。有效取值有 ``"box"``\ 、\ ``"capsule"``\ 、\ ``"cylinder"``\ 、\ ``"sphere"``\ 、\ ``"hull"``\ 、\ ``"trimesh"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_GLTFPhysicsShape_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

形狀的大小，單位為米。僅在碰撞體型別為 ``"box"`` 時使用，代表盒子的 ``"diameter"``\ （直徑）。這個值不應為負數。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFPhysicsShape_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_dictionary>`

通過解析給定的 :ref:`Dictionary<class_Dictionary>` 新建 GLTFPhysicsShape 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_node**\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_node>`

根據給定的 Godot :ref:`CollisionShape3D<class_CollisionShape3D>` 節點新建 GLTFPhysicsShape 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_resource:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_resource**\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_resource>`

根據給定的 Godot :ref:`Shape3D<class_Shape3D>` 節點新建 GLTFPhysicsShape 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsShape_method_to_dictionary>`

將該 GLTFPhysicsShape 實例序列化為 :ref:`Dictionary<class_Dictionary>`\ ，其格式由 ``OMI_physics_shape`` 定義。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_node:

.. rst-class:: classref-method

:ref:`CollisionShape3D<class_CollisionShape3D>` **to_node**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_node>`

將這個 GLTFPhysicsShape 實例轉換為 Godot :ref:`CollisionShape3D<class_CollisionShape3D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_resource:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **to_resource**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_resource>`

將這個 GLTFPhysicsShape 實例轉換為 Godot :ref:`Shape3D<class_Shape3D>` 節點。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
