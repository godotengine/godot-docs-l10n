:github_url: hide

.. _class_SplineIK3D:

SplineIK3D
==========

**繼承：** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於沿 :ref:`Path3D<class_Path3D>` 對齊骨骼的 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ 。

.. rst-class:: classref-introduction-group

說明
----

一種用於沿 :ref:`Path3D<class_Path3D>`\ （3D路徑）對齊骨骼的 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ （3D骨骼修改器）。擬合的平滑度取決於 :ref:`Curve3D.bake_interval<class_Curve3D_property_bake_interval>`\ （曲線3D的烘焙間隔）。

如果你希望 :ref:`Path3D<class_Path3D>` 附著在某個特定的骨骼上，建議將 :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`\ （修改器骨骼目標3D）放在 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 清單（\ :ref:`Skeleton3D<class_Skeleton3D>` 的子節點）中 **SplineIK3D** 的前面，然後將 :ref:`Path3D<class_Path3D>` 作為 :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>` 的子節點放置。

骨骼的扭轉由 :ref:`Curve3D.get_point_tilt()<class_Curve3D_method_get_point_tilt>`\ （曲線3D取得點傾斜度）方法決定。

如果根骨骼關節與 :ref:`Curve3D<class_Curve3D>`\ （曲線3D）的起點是分離的，它會假設兩者之間存在一條直線段。這意味著，指向 :ref:`Curve3D<class_Curve3D>` 起點的向量，其優先級會高於沿 :ref:`Curve3D<class_Curve3D>` 的最短交點。

如果末端骨骼關節超出了路徑的長度，它會盡可能地向著 :ref:`Curve3D<class_Curve3D>` 的終點彎曲。

\ **注意：** 該類中的所有方法都帶有一個 ``index``\ （索引）參數。如果 IK（反向動力學）有多個條目（例如 ``settings//root_bone_name``\ ），該參數用於指定要回傳哪一個設定清單條目。

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

設定的數量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SplineIK3D_method_get_path_3d:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_3d**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_path_3d>`

回傳描述路徑的 :ref:`Path3D<class_Path3D>` 的節點路徑。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_in:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_in>`

根骨骼與 :ref:`Curve3D<class_Curve3D>` 起始點不重合時，回傳它們之間使用的傾斜插值方法。另見 :ref:`set_tilt_fade_in()<class_SplineIK3D_method_set_tilt_fade_in>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_out:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_out>`

當末端骨骼和 :ref:`Curve3D<class_Curve3D>` 的終點不重合時，回傳它們之間使用的傾斜插值的方法。另見 :ref:`set_tilt_fade_out()<class_SplineIK3D_method_set_tilt_fade_out>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_is_tilt_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tilt_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_is_tilt_enabled>`

回傳 :ref:`Curve3D<class_Curve3D>` 的傾斜屬性是否影響骨骼扭轉。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_path_3d:

.. rst-class:: classref-method

|void| **set_path_3d**\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SplineIK3D_method_set_path_3d>`

設定描述路徑的 :ref:`Path3D<class_Path3D>` 的節點路徑。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_enabled:

.. rst-class:: classref-method

|void| **set_tilt_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_enabled>`

設定 :ref:`Curve3D<class_Curve3D>` 的傾斜屬性是否應該影響骨骼的扭轉。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_in:

.. rst-class:: classref-method

|void| **set_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_in>`

如果 ``size`` 大於 ``0``\ ，則當它們彼此分離時，傾斜角度會在從 :ref:`Curve3D<class_Curve3D>` 起始點起的 ``size`` 個起始骨骼之間進行插值計算。

如果 ``size`` 等於 ``0``\ ，則根骨骼頭部和 :ref:`Curve3D<class_Curve3D>` 起始點之間的傾斜角度將與 :ref:`Curve3D<class_Curve3D>` 起始點的傾斜角度保持一致。

如果 ``size`` 小於 ``0``\ ，則根骨骼和 :ref:`Curve3D<class_Curve3D>` 起始點之間的傾斜角度為 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_out:

.. rst-class:: classref-method

|void| **set_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_out>`

如果 ``size`` 大於 ``0``\ ，則當它們彼此分離時，傾斜角度會在從 :ref:`Curve3D<class_Curve3D>` 終點起的 ``size`` 個末端骨骼之間進行插值計算。

如果 ``size`` 等於 ``0``\ ，則末端骨骼尾部與 :ref:`Curve3D<class_Curve3D>` 終點之間的傾斜角度將與 :ref:`Curve3D<class_Curve3D>` 終點的傾斜角度保持一致。

如果 ``size`` 小於 ``0``\ ，則末端骨骼與 :ref:`Curve3D<class_Curve3D>` 終點之間的傾斜角度為 ``0.0``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
