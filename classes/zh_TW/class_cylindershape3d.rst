:github_url: hide

.. _class_CylinderShape3D:

CylinderShape3D
===============

**繼承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 3D 圓柱體形狀。

.. rst-class:: classref-introduction-group

說明
----

3D 膠囊形狀，旨在用於物理學。通常用於為 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形狀。

\ **注意：**\ 圓柱體碰撞形狀有若干已知的問題。建議改用 :ref:`CapsuleShape3D<class_CapsuleShape3D>` 或 :ref:`BoxShape3D<class_BoxShape3D>`\ 。

\ **效能：**\ **CylinderShape3D** 可以快速檢查碰撞，但比 :ref:`CapsuleShape3D<class_CapsuleShape3D>`\ 、\ :ref:`BoxShape3D<class_BoxShape3D>` 和 **CylinderShape3D** 慢。

.. rst-class:: classref-introduction-group

教學
----

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

- `3D 物理測試示範 <https://godotengine.org/asset-library/asset/2747>`__

- `3D 體素示範 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CylinderShape3D_property_height>` | ``2.0`` |
   +---------------------------+------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CylinderShape3D_property_radius>` | ``0.5`` |
   +---------------------------+------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CylinderShape3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CylinderShape3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

圓柱體的高度。

.. rst-class:: classref-item-separator

----

.. _class_CylinderShape3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CylinderShape3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

圓柱體的半徑。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
