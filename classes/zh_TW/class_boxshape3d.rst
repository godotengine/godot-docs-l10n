:github_url: hide

.. _class_BoxShape3D:

BoxShape3D
==========

**繼承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 3D 盒形資源。

.. rst-class:: classref-introduction-group

說明
----

3D 盒子形狀，旨在用於物理學。通常用於為 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形狀。

\ **效能：**\ **BoxShape3D** 可以快速偵測碰撞，比 :ref:`CapsuleShape3D<class_CapsuleShape3D>` 和 :ref:`CylinderShape3D<class_CylinderShape3D>` 快，但比 :ref:`SphereShape3D<class_SphereShape3D>` 慢。

.. rst-class:: classref-introduction-group

教學
----

- `3D 物理測試示範 <https://godotengine.org/asset-library/asset/2747>`__

- `3D 動力學角色演示 <https://godotengine.org/asset-library/asset/2739>`__

- `3D 平台跳躍示範 <https://godotengine.org/asset-library/asset/2748>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_BoxShape3D_property_size>` | ``Vector3(1, 1, 1)`` |
   +-------------------------------+---------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_BoxShape3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_BoxShape3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

該盒子的寬度、高度和深度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
