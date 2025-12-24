:github_url: hide

.. _class_Bone2D:

Bone2D
======

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

与 :ref:`Skeleton2D<class_Skeleton2D>` 一起使用的关节，能够控制并动画其他节点。

.. rst-class:: classref-introduction-group

描述
----

**Bone2D** 层级结构可以绑定到 :ref:`Skeleton2D<class_Skeleton2D>` 上，控制并动画其他 :ref:`Node2D<class_Node2D>` 节点。

你可以使用 **Bone2D** 和 :ref:`Skeleton2D<class_Skeleton2D>` 节点对使用 :ref:`Polygon2D<class_Polygon2D>` UV 编辑器创建的 2D 网格进行动画。

每个骨骼都有一个 :ref:`rest<class_Bone2D_property_rest>` 变换，你可以用 :ref:`apply_rest()<class_Bone2D_method_apply_rest>` 来重置到这个变换。这些放松姿势是相对于骨骼的父节点而言的。

如果在编辑器中，你可以使用菜单选项设置整个骨架的放松姿势，从代码中，你需要遍历骨骼来设置它们各自的放松姿势。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rest<class_Bone2D_property_rest>` | ``Transform2D(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------------+-----------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_rest<class_Bone2D_method_apply_rest>`\ (\ )                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`get_autocalculate_length_and_angle<class_Bone2D_method_get_autocalculate_length_and_angle>`\ (\ ) |const|                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_bone_angle<class_Bone2D_method_get_bone_angle>`\ (\ ) |const|                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_index_in_skeleton<class_Bone2D_method_get_index_in_skeleton>`\ (\ ) |const|                                                             |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_length<class_Bone2D_method_get_length>`\ (\ ) |const|                                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_skeleton_rest<class_Bone2D_method_get_skeleton_rest>`\ (\ ) |const|                                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_autocalculate_length_and_angle<class_Bone2D_method_set_autocalculate_length_and_angle>`\ (\ auto_calculate\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bone_angle<class_Bone2D_method_set_bone_angle>`\ (\ angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_length<class_Bone2D_method_set_length>`\ (\ length\: :ref:`float<class_float>`\ )                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Bone2D_property_rest:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **rest** = ``Transform2D(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_Bone2D_property_rest>`

.. rst-class:: classref-property-setget

- |void| **set_rest**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_rest**\ (\ )

骨骼的放松变换。你可以使用 :ref:`apply_rest()<class_Bone2D_method_apply_rest>` 将节点的变换重置为这个值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Bone2D_method_apply_rest:

.. rst-class:: classref-method

|void| **apply_rest**\ (\ ) :ref:`🔗<class_Bone2D_method_apply_rest>`

将骨骼重置为放松姿势。相当于将 :ref:`Node2D.transform<class_Node2D_property_transform>` 设置为 :ref:`rest<class_Bone2D_property_rest>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_autocalculate_length_and_angle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_autocalculate_length_and_angle**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_autocalculate_length_and_angle>`

如果该 **Bone2D** 存在骨骼子节点，则返回是否要使用第一个 **Bone2D** 子节点自动计算其长度和骨骼角度。如果没有 **Bone2D** 子节点，则无法自动计算这些值，会打印一条警告。

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_bone_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bone_angle**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_bone_angle>`

返回 **Bone2D** 中骨骼的角度。

\ **注意：**\ 这与 **Bone2D** 的旋转不同。骨骼角度是小工具显示的骨骼旋转，不受 **Bone2D** 的 :ref:`Node2D.transform<class_Node2D_property_transform>` 的影响。

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_index_in_skeleton:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_index_in_skeleton**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_index_in_skeleton>`

返回节点在整个骨架中的索引号。见 :ref:`Skeleton2D<class_Skeleton2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_length>`

返回 **Bone2D** 节点中骨骼的长度。

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_skeleton_rest:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_skeleton_rest**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_skeleton_rest>`

如果节点没有父节点，返回节点的 :ref:`rest<class_Bone2D_property_rest>` :ref:`Transform2D<class_Transform2D>`\ ，或者返回它相对于父节点的放松姿势。

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_autocalculate_length_and_angle:

.. rst-class:: classref-method

|void| **set_autocalculate_length_and_angle**\ (\ auto_calculate\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Bone2D_method_set_autocalculate_length_and_angle>`

当设置为 ``true`` 时，该 **Bone2D** 节点将尝试使用第一个子 **Bone2D** 节点（如果存在）自动计算骨骼角度和长度。如果不存在子节点，\ **Bone2D** 将无法自动计算这些值，并将输出一条警告。

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_bone_angle:

.. rst-class:: classref-method

|void| **set_bone_angle**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Bone2D_method_set_bone_angle>`

设置 **Bone2D** 节点的骨骼角度。这通常设置为从 **Bone2D** 节点到子 **Bone2D** 节点的旋转。

\ **注意：**\ 这与 **Bone2D** 的旋转不同。骨骼角度是 **Bone2D** 小工具显示的骨骼旋转，不受 **Bone2D** 的 :ref:`Node2D.transform<class_Node2D_property_transform>` 的影响。

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_length:

.. rst-class:: classref-method

|void| **set_length**\ (\ length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Bone2D_method_set_length>`

设置该 **Bone2D** 中骨骼的长度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
