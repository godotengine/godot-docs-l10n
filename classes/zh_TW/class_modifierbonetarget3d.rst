:github_url: hide

.. _class_ModifierBoneTarget3D:

ModifierBoneTarget3D
====================

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

動態複製父級 :ref:`Skeleton3D<class_Skeleton3D>` 中某個骨骼 3D 變換的節點。

.. rst-class:: classref-introduction-group

說明
----

這個節點能夠選擇 :ref:`Skeleton3D<class_Skeleton3D>` 中的某個骨骼並附加到這個骨骼上。這樣 **ModifierBoneTarget3D** 節點就能夠動態複製所選骨骼的 3D 變換。

功能類似於 :ref:`BoneAttachment3D<class_BoneAttachment3D>`\ ，但是這個節點使用 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 的週期，適合作為其他 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 的目標。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`bone<class_ModifierBoneTarget3D_property_bone>`           | ``-1``                                                                        |
   +---------------------------------------------------------------------+-----------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                         | :ref:`bone_name<class_ModifierBoneTarget3D_property_bone_name>` | ``""``                                                                        |
   +---------------------------------------------------------------------+-----------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                      | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ModifierBoneTarget3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_ModifierBoneTarget3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

所附著骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_ModifierBoneTarget3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_ModifierBoneTarget3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

所附著骨骼的名稱。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
