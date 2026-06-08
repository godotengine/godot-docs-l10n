:github_url: hide

.. _class_SplineIK3D:

SplineIK3D
==========

**继承：** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于沿 :ref:`Path3D<class_Path3D>` 对齐骨骼的 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ 。

.. rst-class:: classref-introduction-group

描述
----

一种用于沿 :ref:`Path3D<class_Path3D>`\ （3D路径）对齐骨骼的 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ （3D骨骼修改器）。拟合的平滑度取决于 :ref:`Curve3D.bake_interval<class_Curve3D_property_bake_interval>`\ （曲线3D的烘焙间隔）。

如果你希望 :ref:`Path3D<class_Path3D>` 附着在某个特定的骨骼上，建议将 :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`\ （修改器骨骼目标3D）放在 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 列表（\ :ref:`Skeleton3D<class_Skeleton3D>` 的子节点）中 **SplineIK3D** 的前面，然后将 :ref:`Path3D<class_Path3D>` 作为 :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>` 的子节点放置。

骨骼的扭转由 :ref:`Curve3D.get_point_tilt()<class_Curve3D_method_get_point_tilt>`\ （曲线3D获取点倾斜度）方法决定。

如果根骨骼关节与 :ref:`Curve3D<class_Curve3D>`\ （曲线3D）的起点是分离的，它会假设两者之间存在一条直线段。这意味着，指向 :ref:`Curve3D<class_Curve3D>` 起点的向量，其优先级会高于沿 :ref:`Curve3D<class_Curve3D>` 的最短交点。

如果末端骨骼关节超出了路径的长度，它会尽可能地向着 :ref:`Curve3D<class_Curve3D>` 的终点弯曲。

\ **注意：** 该类中的所有方法都带有一个 ``index``\ （索引）参数。如果 IK（反向动力学）有多个条目（例如 ``settings//root_bone_name``\ ），该参数用于指定要返回哪一个设置列表条目。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_SplineIK3D_property_setting_count>` | ``0`` |
   +-----------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_path_3d<class_SplineIK3D_method_get_path_3d>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                      |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tilt_fade_in<class_SplineIK3D_method_get_tilt_fade_in>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                            |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tilt_fade_out<class_SplineIK3D_method_get_tilt_fade_out>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_tilt_enabled<class_SplineIK3D_method_is_tilt_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                              |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_path_3d<class_SplineIK3D_method_set_path_3d>`\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ )   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_tilt_enabled<class_SplineIK3D_method_set_tilt_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_tilt_fade_in<class_SplineIK3D_method_set_tilt_fade_in>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ )      |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_tilt_fade_out<class_SplineIK3D_method_set_tilt_fade_out>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ )    |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SplineIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_SplineIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

设置的数量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SplineIK3D_method_get_path_3d:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_3d**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_path_3d>`

返回描述路径的 :ref:`Path3D<class_Path3D>` 的节点路径。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_in:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_in>`

根骨骼与 :ref:`Curve3D<class_Curve3D>` 起始点不重合时，返回它们之间使用的倾斜插值方法。另见 :ref:`set_tilt_fade_in()<class_SplineIK3D_method_set_tilt_fade_in>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_out:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_out>`

当末端骨骼和 :ref:`Curve3D<class_Curve3D>` 的终点不重合时，返回它们之间使用的倾斜插值的方法。另见 :ref:`set_tilt_fade_out()<class_SplineIK3D_method_set_tilt_fade_out>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_is_tilt_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tilt_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_is_tilt_enabled>`

返回 :ref:`Curve3D<class_Curve3D>` 的倾斜属性是否影响骨骼扭转。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_path_3d:

.. rst-class:: classref-method

|void| **set_path_3d**\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SplineIK3D_method_set_path_3d>`

设置描述路径的 :ref:`Path3D<class_Path3D>` 的节点路径。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_enabled:

.. rst-class:: classref-method

|void| **set_tilt_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_enabled>`

设置 :ref:`Curve3D<class_Curve3D>` 的倾斜属性是否应该影响骨骼的扭转。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_in:

.. rst-class:: classref-method

|void| **set_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_in>`

如果 ``size`` 大于 ``0``\ ，则当它们彼此分离时，倾斜角度会在从 :ref:`Curve3D<class_Curve3D>` 起始点起的 ``size`` 个起始骨骼之间进行插值计算。

如果 ``size`` 等于 ``0``\ ，则根骨骼头部和 :ref:`Curve3D<class_Curve3D>` 起始点之间的倾斜角度将与 :ref:`Curve3D<class_Curve3D>` 起始点的倾斜角度保持一致。

如果 ``size`` 小于 ``0``\ ，则根骨骼和 :ref:`Curve3D<class_Curve3D>` 起始点之间的倾斜角度为 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_out:

.. rst-class:: classref-method

|void| **set_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_out>`

如果 ``size`` 大于 ``0``\ ，则当它们彼此分离时，倾斜角度会在从 :ref:`Curve3D<class_Curve3D>` 终点起的 ``size`` 个末端骨骼之间进行插值计算。

如果 ``size`` 等于 ``0``\ ，则末端骨骼尾部与 :ref:`Curve3D<class_Curve3D>` 终点之间的倾斜角度将与 :ref:`Curve3D<class_Curve3D>` 终点的倾斜角度保持一致。

如果 ``size`` 小于 ``0``\ ，则末端骨骼与 :ref:`Curve3D<class_Curve3D>` 终点之间的倾斜角度为 ``0.0``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
