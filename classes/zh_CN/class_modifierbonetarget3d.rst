:github_url: hide

.. _class_ModifierBoneTarget3D:

ModifierBoneTarget3D
====================

**继承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

动态复制父级 :ref:`Skeleton3D<class_Skeleton3D>` 中某个骨骼 3D 变换的节点。

.. rst-class:: classref-introduction-group

描述
----

这个节点能够选择 :ref:`Skeleton3D<class_Skeleton3D>` 中的某个骨骼并附加到这个骨骼上。这样 **ModifierBoneTarget3D** 节点就能够动态复制所选骨骼的 3D 变换。

功能类似于 :ref:`BoneAttachment3D<class_BoneAttachment3D>`\ ，但是这个节点使用 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 的周期，适合作为其他 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 的目标。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_ModifierBoneTarget3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_ModifierBoneTarget3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

所附着骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_ModifierBoneTarget3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_ModifierBoneTarget3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

所附着骨骼的名称。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
