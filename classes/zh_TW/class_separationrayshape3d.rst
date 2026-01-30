:github_url: hide

.. _class_SeparationRayShape3D:

SeparationRayShape3D
====================

**繼承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 3D 射線形狀，會嘗試將自己與其他碰撞體分開。

.. rst-class:: classref-introduction-group

說明
----

A 3D ray shape, intended for use in physics. Usually used to provide a shape for a :ref:`CollisionShape3D<class_CollisionShape3D>`. When a **SeparationRayShape3D** collides with an object, it tries to separate itself from it by moving its endpoint to the collision point. For example, a **SeparationRayShape3D** next to a character can allow it to instantly move up when touching stairs.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`length<class_SeparationRayShape3D_property_length>`                 | ``1.0``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`slide_on_slope<class_SeparationRayShape3D_property_slide_on_slope>` | ``false`` |
   +---------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SeparationRayShape3D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``1.0`` :ref:`🔗<class_SeparationRayShape3D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

射線的長度。

.. rst-class:: classref-item-separator

----

.. _class_SeparationRayShape3D_property_slide_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_slope** = ``false`` :ref:`🔗<class_SeparationRayShape3D_property_slide_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_slope**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_slide_on_slope**\ (\ )

如果為 ``false``\ （預設值），則形狀始終分離，並返回一條沿其自身方向的法線。

如果為 ``true``\ ，則該形狀可以返回正確的法線，並在任何方向上分離，允許在斜坡上滑動。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
