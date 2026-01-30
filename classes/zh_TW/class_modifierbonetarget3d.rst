:github_url: hide

.. _class_ModifierBoneTarget3D:

ModifierBoneTarget3D
====================

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

А node that dynamically copies the 3D transform of a bone in its parent :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-introduction-group

說明
----

This node selects a bone in a :ref:`Skeleton3D<class_Skeleton3D>` and attaches to it. This means that the **ModifierBoneTarget3D** node will dynamically copy the 3D transform of the selected bone.

The functionality is similar to :ref:`BoneAttachment3D<class_BoneAttachment3D>`, but this node adopts the :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` cycle and is intended to be used as another :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`'s target.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------+--------+
   | :ref:`int<class_int>`       | :ref:`bone<class_ModifierBoneTarget3D_property_bone>`           | ``-1`` |
   +-----------------------------+-----------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`bone_name<class_ModifierBoneTarget3D_property_bone_name>` | ``""`` |
   +-----------------------------+-----------------------------------------------------------------+--------+

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
