:github_url: hide

.. _class_SkeletonModification2D:

SkeletonModification2D
======================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>`, :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>`, :ref:`SkeletonModification2DJiggle<class_SkeletonModification2DJiggle>`, :ref:`SkeletonModification2DLookAt<class_SkeletonModification2DLookAt>`, :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>`, :ref:`SkeletonModification2DStackHolder<class_SkeletonModification2DStackHolder>`, :ref:`SkeletonModification2DTwoBoneIK<class_SkeletonModification2DTwoBoneIK>`

對 :ref:`Skeleton2D<class_Skeleton2D>` 中的 :ref:`Bone2D<class_Bone2D>` 進行操作的資源的基底類別。

.. rst-class:: classref-introduction-group

說明
----

該資源提供了一個可以擴充的介面，因此在 :ref:`Skeleton2D<class_Skeleton2D>` 中的 :ref:`Bone2D<class_Bone2D>` 節點上運作的程式碼可以被混合並配對在一起，以建立複雜的互動。

這用於為 Godot 提供一套靈活而強大的反向運動學解決方案，該解決方案可以適用許多不同的用途。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`enabled<class_SkeletonModification2D_property_enabled>`               | ``true`` |
   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`execution_mode<class_SkeletonModification2D_property_execution_mode>` | ``0``    |
   +-------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_draw_editor_gizmo<class_SkeletonModification2D_private_method__draw_editor_gizmo>`\ (\ ) |virtual|                                                                                                        |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_execute<class_SkeletonModification2D_private_method__execute>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                                                                         |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_setup_modification<class_SkeletonModification2D_private_method__setup_modification>`\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual|          |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`clamp_angle<class_SkeletonModification2D_method_clamp_angle>`\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_editor_draw_gizmo<class_SkeletonModification2D_method_get_editor_draw_gizmo>`\ (\ ) |const|                                                                                                            |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_is_setup<class_SkeletonModification2D_method_get_is_setup>`\ (\ ) |const|                                                                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_modification_stack<class_SkeletonModification2D_method_get_modification_stack>`\ (\ )                                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_editor_draw_gizmo<class_SkeletonModification2D_method_set_editor_draw_gizmo>`\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ )                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_is_setup<class_SkeletonModification2D_method_set_is_setup>`\ (\ is_setup\: :ref:`bool<class_bool>`\ )                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SkeletonModification2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_SkeletonModification2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

如果為 ``true``\ ，則該修改器的 :ref:`_execute()<class_SkeletonModification2D_private_method__execute>` 函式將被該 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 呼叫。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_property_execution_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **execution_mode** = ``0`` :ref:`🔗<class_SkeletonModification2D_property_execution_mode>`

.. rst-class:: classref-property-setget

- |void| **set_execution_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_execution_mode**\ (\ )

修改器的執行模式。會告訴修改器堆疊何時執行該修改器。某修修改器存在只能在特定執行模式下可用的設定。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonModification2D_private_method__draw_editor_gizmo:

.. rst-class:: classref-method

|void| **_draw_editor_gizmo**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__draw_editor_gizmo>`

用於繪製\ **編輯器專用**\ 的修改器小工具。此函式只會在 Godot 編輯器中呼叫，並且可以被覆蓋，來繪製自訂小工具。

\ **注意：**\ 你需要使用來自 :ref:`SkeletonModificationStack2D.get_skeleton()<class_SkeletonModificationStack2D_method_get_skeleton>` 的 Skeleton2D 及其繪製函式，因為 **SkeletonModification2D** 資源本身無法進行繪製。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__execute:

.. rst-class:: classref-method

|void| **_execute**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__execute>`

執行給定的修改器。修改器在此時執行應執行的函式。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__setup_modification:

.. rst-class:: classref-method

|void| **_setup_modification**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__setup_modification>`

安裝修改器時呼叫。修改器在此時執行初始化。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_clamp_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **clamp_angle**\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_clamp_angle>`

接受角度並將其鉗制在傳入的 ``min`` 和 ``max`` 範圍內。\ ``invert`` 會逆向鉗制該角度，將其鉗制在給定範圍之外。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_editor_draw_gizmo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_editor_draw_gizmo**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_editor_draw_gizmo>`

返回這個修改器是否會在 Godot 編輯器中呼叫 :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` 繪製針對修改器的小工具。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_is_setup>`

返回此修改器是否已被成功安裝。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) :ref:`🔗<class_SkeletonModification2D_method_get_modification_stack>`

返回該修改器綁定的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。你可以通過這個修改器堆疊來訪問修改器所操作的 Skeleton2D。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_editor_draw_gizmo:

.. rst-class:: classref-method

|void| **set_editor_draw_gizmo**\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_editor_draw_gizmo>`

設定這個修改器是否會在 Godot 編輯器中呼叫 :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` 繪製針對修改器的小工具。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_is_setup:

.. rst-class:: classref-method

|void| **set_is_setup**\ (\ is_setup\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_is_setup>`

允許你手動設定該修改器的安裝狀態。這個函式應很少使用，因為該修改器所綁定的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 應該對該修改器進行安裝。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
