:github_url: hide

.. _class_SpringBoneCollisionCapsule3D:

SpringBoneCollisionCapsule3D
============================

**繼承：** :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

與 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 互動的膠囊形狀碰撞體。

.. rst-class:: classref-introduction-group

說明
----

與 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 互動的膠囊形狀碰撞體。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`         | ``0.5``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`inside<class_SpringBoneCollisionCapsule3D_property_inside>`         | ``false`` |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_SpringBoneCollisionCapsule3D_property_mid_height>` |           |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`         | ``0.1``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SpringBoneCollisionCapsule3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.5`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

膠囊體的總高度，包括半球。

\ **注意：**\ 膠囊體的 :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` 必須至少為其 :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` 的兩倍。否則，膠囊體將變為球體。如果 :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` 小於 :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` 的兩倍，則屬性將調整為有效值。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **inside** = ``false`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_inside>`

.. rst-class:: classref-property-setget

- |void| **set_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_inside**\ (\ )

如果為 ``true``\ ，則碰撞會讓關節困在碰撞中。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

膠囊的高度，不包括兩個半球。這是膠囊中間圓柱部分的高度，即兩個半球球心之間的距離。這是對 :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` 的封裝。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.1`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

膠囊體的半徑。

\ **注意：**\ 膠囊體的 :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` 不能大於其 :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` 的一半。否則，膠囊體將變為球體。如果 :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` 大於 :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` 的一半，則屬性將調整為有效值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
