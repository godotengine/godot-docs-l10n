:github_url: hide

.. _class_SplineIK3D:

SplineIK3D
==========

**繼承：** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` for aligning bones along a :ref:`Path3D<class_Path3D>`.

.. rst-class:: classref-introduction-group

說明
----

A :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` for aligning bones along a :ref:`Path3D<class_Path3D>`. The smoothness of the fitting depends on the :ref:`Curve3D.bake_interval<class_Curve3D_property_bake_interval>`.

If you want the :ref:`Path3D<class_Path3D>` to attach to a specific bone, it is recommended to place a :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>` before the **SplineIK3D** in the :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` list (children of the :ref:`Skeleton3D<class_Skeleton3D>`), and then place a :ref:`Path3D<class_Path3D>` as the :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`'s child.

Bone twist is determined based on the :ref:`Curve3D.get_point_tilt()<class_Curve3D_method_get_point_tilt>`.

If the root bone joint and the start point of the :ref:`Curve3D<class_Curve3D>` are separated, it assumes that there is a linear line segment between them. This means that the vector pointing toward the start point of the :ref:`Curve3D<class_Curve3D>` takes precedence over the shortest intersection point along the :ref:`Curve3D<class_Curve3D>`.

If the end bone joint exceeds the path length, it is bent as close as possible to the end point of the :ref:`Curve3D<class_Curve3D>`.

\ **Note:** All the methods in this class take an ``index`` parameter. This parameter specifies which setting list entry to return if the IK has multiple entries (e.g. ``settings/<index>/root_bone_name``).

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_SplineIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_SplineIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

The number of settings.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SplineIK3D_method_get_path_3d:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_3d**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_path_3d>`

Returns the node path of the :ref:`Path3D<class_Path3D>` which is describing the path.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_in:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_in>`

Returns the tilt interpolation method used between the root bone and the start point of the :ref:`Curve3D<class_Curve3D>` when they are apart. See also :ref:`set_tilt_fade_in()<class_SplineIK3D_method_set_tilt_fade_in>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_out:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_out>`

Returns the tilt interpolation method used between the end bone and the end point of the :ref:`Curve3D<class_Curve3D>` when they are apart. See also :ref:`set_tilt_fade_out()<class_SplineIK3D_method_set_tilt_fade_out>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_is_tilt_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tilt_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_is_tilt_enabled>`

Returns if the tilt property of the :ref:`Curve3D<class_Curve3D>` affects the bone twist.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_path_3d:

.. rst-class:: classref-method

|void| **set_path_3d**\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SplineIK3D_method_set_path_3d>`

Sets the node path of the :ref:`Path3D<class_Path3D>` which is describing the path.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_enabled:

.. rst-class:: classref-method

|void| **set_tilt_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_enabled>`

Sets if the tilt property of the :ref:`Curve3D<class_Curve3D>` should affect the bone twist.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_in:

.. rst-class:: classref-method

|void| **set_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_in>`

If ``size`` is greater than ``0``, the tilt is interpolated between ``size`` start bones from the start point of the :ref:`Curve3D<class_Curve3D>` when they are apart.

If ``size`` is equal ``0``, the tilts between the root bone head and the start point of the :ref:`Curve3D<class_Curve3D>` are unified with a tilt of the start point of the :ref:`Curve3D<class_Curve3D>`.

If ``size`` is less than ``0``, the tilts between the root bone and the start point of the :ref:`Curve3D<class_Curve3D>` are ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_out:

.. rst-class:: classref-method

|void| **set_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_out>`

If ``size`` is greater than ``0``, the tilt is interpolated between ``size`` end bones from the end point of the :ref:`Curve3D<class_Curve3D>` when they are apart.

If ``size`` is equal ``0``, the tilts between the end bone tail and the end point of the :ref:`Curve3D<class_Curve3D>` are unified with a tilt of the end point of the :ref:`Curve3D<class_Curve3D>`.

If ``size`` is less than ``0``, the tilts between the end bone and the end point of the :ref:`Curve3D<class_Curve3D>` are ``0.0``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
