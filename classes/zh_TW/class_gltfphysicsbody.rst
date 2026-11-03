:github_url: hide

.. _class_GLTFPhysicsBody:

GLTFPhysicsBody
===============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 物理體。

.. rst-class:: classref-introduction-group

說明
----

代表物理體作為 ``OMI_physics_body`` glTF 資料和 Godot 節點之間的中介，並且它的抽象方式允許在未來新增對不同 glTF 物理擴充的支援。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `OMI_physics_body glTF 擴充 <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_body>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`angular_velocity<class_GLTFPhysicsBody_property_angular_velocity>`       | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`String<class_String>`         | :ref:`body_type<class_GLTFPhysicsBody_property_body_type>`                     | ``"rigid"``                          |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`center_of_mass<class_GLTFPhysicsBody_property_center_of_mass>`           | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`inertia_diagonal<class_GLTFPhysicsBody_property_inertia_diagonal>`       | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`inertia_orientation<class_GLTFPhysicsBody_property_inertia_orientation>` | ``Quaternion(0, 0, 0, 1)``           |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`inertia_tensor<class_GLTFPhysicsBody_property_inertia_tensor>`           | ``Basis(0, 0, 0, 0, 0, 0, 0, 0, 0)`` |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`linear_velocity<class_GLTFPhysicsBody_property_linear_velocity>`         | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`           | :ref:`mass<class_GLTFPhysicsBody_property_mass>`                               | ``1.0``                              |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`     | :ref:`from_dictionary<class_GLTFPhysicsBody_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`     | :ref:`from_node<class_GLTFPhysicsBody_method_from_node>`\ (\ body_node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) |static| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`to_dictionary<class_GLTFPhysicsBody_method_to_dictionary>`\ (\ ) |const|                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CollisionObject3D<class_CollisionObject3D>` | :ref:`to_node<class_GLTFPhysicsBody_method_to_node>`\ (\ ) |const|                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFPhysicsBody_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

該物理體的角速度，單位為弧度每秒。僅在物體型別為“rigid”或“vehicle”時使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_body_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **body_type** = ``"rigid"`` :ref:`🔗<class_GLTFPhysicsBody_property_body_type>`

.. rst-class:: classref-property-setget

- |void| **set_body_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_body_type**\ (\ )

物體的型別。

匯入時，控制 Godot 應該生成哪種型別的 :ref:`CollisionObject3D<class_CollisionObject3D>` 節點。有效值有 ``"static"``\ 、\ ``"animatable"``\ 、\ ``"character"``\ 、\ ``"rigid"``\ 、\ ``"vehicle"``\ 、\ ``"trigger"``\ 。

匯出時，會合併為 ``"static"``\ 、\ ``"kinematic"`` 或 ``"dynamic"`` 運動型別，或 ``"trigger"`` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_of_mass**\ (\ )

主體的質心，以米為單位。這是在相對於主體的區域空間中。預設情況下，質心是主體的原點。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_diagonal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **inertia_diagonal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_diagonal>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_diagonal**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_inertia_diagonal**\ (\ )

物理體的慣性強度，單位為千克平方米（kg⋅m²）。這表示繞主軸的慣性，而該軸為慣性張量矩陣的對角線。僅在物體型別為 “rigid” 或 “vehicle” 時使用。

當轉換為 Godot :ref:`RigidBody3D<class_RigidBody3D>` 節點時，如果該值為零，則會自動計算慣性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_orientation:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **inertia_orientation** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_orientation**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_inertia_orientation**\ (\ )

物理體的慣性方向。這定義了慣性主軸相對於物件區域軸的旋轉。僅當物體型別為“剛性”或“車輛”且 :ref:`inertia_diagonal<class_GLTFPhysicsBody_property_inertia_diagonal>` 被設定為非零值時才使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_tensor:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **inertia_tensor** = ``Basis(0, 0, 0, 0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_tensor>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_tensor**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_inertia_tensor**\ (\ )

**已棄用：** 此屬性可能在未來版本中變更或移除。

該物理體的慣性張量，單位為千克平方米（kg⋅m²）。僅在物體型別為“rigid”或“vehicle”時使用。

轉換為 Godot :ref:`RigidBody3D<class_RigidBody3D>` 節點時，如果該值為零，則會自動計算慣性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

該物理體的線速度，單位為米每秒。僅在物體型別為“rigid”或“vehicle”時使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_GLTFPhysicsBody_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

該物理體的質量，單位為千克。僅在物體型別為“rigid”或“vehicle”時使用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFPhysicsBody_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFPhysicsBody_method_from_dictionary>`

通過解析 ``OMI_physics_body`` glTF 擴充格式中給定的 :ref:`Dictionary<class_Dictionary>`\ ，建立新的 GLTFPhysicsBody 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>` **from_node**\ (\ body_node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsBody_method_from_node>`

從給定的 Godot :ref:`CollisionObject3D<class_CollisionObject3D>` 節點新建 GLTFPhysicsBody 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsBody_method_to_dictionary>`

將這個 GLTFPhysicsBody 實例序列化到 :ref:`Dictionary<class_Dictionary>` 中。使用的是 ``OMI_physics_body`` glTF 擴充所需要的格式。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_to_node:

.. rst-class:: classref-method

:ref:`CollisionObject3D<class_CollisionObject3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsBody_method_to_node>`

將這個 GLTFPhysicsBody 實例轉換為 Godot :ref:`CollisionObject3D<class_CollisionObject3D>` 節點。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
