:github_url: hide

.. _class_GLTFPhysicsBody:

GLTFPhysicsBody
===============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Represents a glTF physics body.

.. rst-class:: classref-introduction-group

說明
----

Represents a physics body as an intermediary between the ``OMI_physics_body`` glTF data and Godot's nodes, and it's abstracted in a way that allows adding support for different glTF physics extensions in the future.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `OMI_physics_body glTF extension <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_body>`__

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

The type of the body.

When importing, this controls what type of :ref:`CollisionObject3D<class_CollisionObject3D>` node Godot should generate. Valid values are ``"static"``, ``"animatable"``, ``"character"``, ``"rigid"``, ``"vehicle"``, and ``"trigger"``.

When exporting, this will be squashed down to one of ``"static"``, ``"kinematic"``, or ``"dynamic"`` motion types, or the ``"trigger"`` property.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_of_mass**\ (\ )

主體的質心，以米為單位。這是在相對於主體的局部空間中。預設情況下，質心是主體的原點。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_diagonal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **inertia_diagonal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_diagonal>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_diagonal**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_inertia_diagonal**\ (\ )

The inertia strength of the physics body, in kilogram meter squared (kg⋅m²). This represents the inertia around the principle axes, the diagonal of the inertia tensor matrix. This is only used when the body type is "rigid" or "vehicle".

When converted to a Godot :ref:`RigidBody3D<class_RigidBody3D>` node, if this value is zero, then the inertia will be calculated automatically.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_orientation:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **inertia_orientation** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_orientation**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_inertia_orientation**\ (\ )

The inertia orientation of the physics body. This defines the rotation of the inertia's principle axes relative to the object's local axes. This is only used when the body type is "rigid" or "vehicle" and :ref:`inertia_diagonal<class_GLTFPhysicsBody_property_inertia_diagonal>` is set to a non-zero value.

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

Creates a new GLTFPhysicsBody instance by parsing the given :ref:`Dictionary<class_Dictionary>` in the ``OMI_physics_body`` glTF extension format.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>` **from_node**\ (\ body_node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsBody_method_from_node>`

Creates a new GLTFPhysicsBody instance from the given Godot :ref:`CollisionObject3D<class_CollisionObject3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsBody_method_to_dictionary>`

Serializes this GLTFPhysicsBody instance into a :ref:`Dictionary<class_Dictionary>`. It will be in the format expected by the ``OMI_physics_body`` glTF extension.

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
