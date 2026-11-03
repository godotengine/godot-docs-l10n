:github_url: hide

.. _class_AimModifier3D:

AimModifier3D
=============

**繼承：** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**AimModifier3D** 會旋轉骨骼，使其朝向參考骨骼。

.. rst-class:: classref-introduction-group

說明
----

這是 :ref:`LookAtModifier3D<class_LookAtModifier3D>` 的簡化版本，只支援將骨骼對準參考骨骼，不含角度限制或以時間為基礎的內插等進階選項。

雖然功能精簡，但以平滑追蹤方式實作，且不使用歐拉角，請參閱 :ref:`set_use_euler()<class_AimModifier3D_method_set_use_euler>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_AimModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` | :ref:`get_forward_axis<class_AimModifier3D_method_get_forward_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                    | :ref:`get_primary_rotation_axis<class_AimModifier3D_method_get_primary_rotation_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_relative<class_AimModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_using_euler<class_AimModifier3D_method_is_using_euler>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_using_secondary_rotation<class_AimModifier3D_method_is_using_secondary_rotation>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_forward_axis<class_AimModifier3D_method_set_forward_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_primary_rotation_axis<class_AimModifier3D_method_set_primary_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_relative<class_AimModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_use_euler<class_AimModifier3D_method_set_use_euler>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                              |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_use_secondary_rotation<class_AimModifier3D_method_set_use_secondary_rotation>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AimModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_AimModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

此修改器中的設定項數量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AimModifier3D_method_get_forward_axis:

.. rst-class:: classref-method

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **get_forward_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_get_forward_axis>`

傳回骨骼的前向軸。

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_get_primary_rotation_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_primary_rotation_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_get_primary_rotation_axis>`

傳回第一旋轉的軸向；僅當 :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_relative>`

如果索引為 ``index`` 的設定啟用了相對選項，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_using_euler:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_euler**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_using_euler>`

若使用歐拉角進行旋轉，則傳回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_using_secondary_rotation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_secondary_rotation**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_using_secondary_rotation>`

若使用雙軸進行旋轉，則傳回 ``true``\ ；僅當 :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_forward_axis:

.. rst-class:: classref-method

|void| **set_forward_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ ) :ref:`🔗<class_AimModifier3D_method_set_forward_axis>`

設定骨骼的前向軸。

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_primary_rotation_axis:

.. rst-class:: classref-method

|void| **set_primary_rotation_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_AimModifier3D_method_set_primary_rotation_axis>`

設定第一旋轉的軸向；僅當 :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_relative>`

將索引為 ``index`` 的設定的相對選項設定為 ``enabled``\ 。

如果將 ``enabled`` 設定為 ``true``\ ，則旋轉將相對於該姿勢應用。

如果將 ``enabled`` 設定為 ``false``\ ，則旋轉將相對於靜止狀態應用。這意味著用 **AimModifier3D** 的結果替換目前姿勢。

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_use_euler:

.. rst-class:: classref-method

|void| **set_use_euler**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_use_euler>`

若將 ``enabled`` 設為 ``true``\ ，即使用歐拉角來計算旋轉。

若將 ``enabled`` 設為 ``false``\ ，則改以由前向軸向量與指向參考的向量所形成的弧度來計算旋轉。

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_use_secondary_rotation:

.. rst-class:: classref-method

|void| **set_use_secondary_rotation**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_use_secondary_rotation>`

若將 ``enabled`` 設為 ``true``\ ，將使用雙軸旋轉；僅當 :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` 為 ``true`` 時有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
