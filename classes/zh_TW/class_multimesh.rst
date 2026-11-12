:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMesh:

MultiMesh
=========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 GPU 實例提供單一網格的高效能多次繪製。

.. rst-class:: classref-introduction-group

說明
----

MultiMesh 提供了低級別的網格產生實體功能。繪製數以千計的 :ref:`MeshInstance3D<class_MeshInstance3D>` 節點可能會很慢，因為每個物件都要提交給 GPU 然後單獨繪製。

MultiMesh 要快得多，因為它可以通過一次繪製呼叫來繪製成千上萬的實例，從而減少 API 的開銷。

缺點是，如果實例之間的距離太遠，效能可能會降低，因為每一個實例總是會被渲染（對於整個物件，它們在空間上被索引為一個）。

由於實例可能具有任何行為，因此用於可見性的 AABB 必須由使用者提供。

\ **注意：**\ MultiMesh 是單個物件，因此適用相同的對每個物件的最大燈光限制。這意味著，一旦最大燈光被一個或多個實例消耗了，其餘的 MultiMesh 實例將\ **不會**\ 接收任何光照。

\ **注意：**\ 在 MultiMesh 中使用的 Blend Shape 將被忽略。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 MultiMeshInstance <../tutorials/3d/using_multi_mesh_instance>`

- :doc:`使用 MultiMesh 進行最佳化 <../tutorials/performance/using_multimesh>`

- :doc:`使用 MultiMeshInstance 動畫化數千條魚 <../tutorials/performance/vertex_animation/animating_thousands_of_fish>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`                            | :ref:`buffer<class_MultiMesh_property_buffer>`                                               | ``PackedFloat32Array()``   |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`                                | :ref:`color_array<class_MultiMesh_property_color_array>`                                     |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                                                        | :ref:`custom_aabb<class_MultiMesh_property_custom_aabb>`                                     | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`                                | :ref:`custom_data_array<class_MultiMesh_property_custom_data_array>`                         |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                                          | :ref:`instance_count<class_MultiMesh_property_instance_count>`                               | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Mesh<class_Mesh>`                                                        | :ref:`mesh<class_MultiMesh_property_mesh>`                                                   |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` | :ref:`physics_interpolation_quality<class_MultiMesh_property_physics_interpolation_quality>` | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                            | :ref:`transform_2d_array<class_MultiMesh_property_transform_2d_array>`                       |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`                            | :ref:`transform_array<class_MultiMesh_property_transform_array>`                             |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`TransformFormat<enum_MultiMesh_TransformFormat>`                         | :ref:`transform_format<class_MultiMesh_property_transform_format>`                           | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`use_colors<class_MultiMesh_property_use_colors>`                                       | ``false``                  |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`use_custom_data<class_MultiMesh_property_use_custom_data>`                             | ``false``                  |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                                          | :ref:`visible_instance_count<class_MultiMesh_property_visible_instance_count>`               | ``-1``                     |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`               | :ref:`get_aabb<class_MultiMesh_method_get_aabb>`\ (\ ) |const|                                                                                                                                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`get_instance_color<class_MultiMesh_method_get_instance_color>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`get_instance_custom_data<class_MultiMesh_method_get_instance_custom_data>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_instance_transform<class_MultiMesh_method_get_instance_transform>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_instance_transform_2d<class_MultiMesh_method_get_instance_transform_2d>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`reset_instance_physics_interpolation<class_MultiMesh_method_reset_instance_physics_interpolation>`\ (\ instance\: :ref:`int<class_int>`\ )                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`reset_instances_physics_interpolation<class_MultiMesh_method_reset_instances_physics_interpolation>`\ (\ )                                                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_buffer_interpolated<class_MultiMesh_method_set_buffer_interpolated>`\ (\ buffer_curr\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, buffer_prev\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_color<class_MultiMesh_method_set_instance_color>`\ (\ instance\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_custom_data<class_MultiMesh_method_set_instance_custom_data>`\ (\ instance\: :ref:`int<class_int>`, custom_data\: :ref:`Color<class_Color>`\ )                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_transform<class_MultiMesh_method_set_instance_transform>`\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_transform_2d<class_MultiMesh_method_set_instance_transform_2d>`\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ )                                              |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_MultiMesh_TransformFormat:

.. rst-class:: classref-enumeration

enum **TransformFormat**: :ref:`🔗<enum_MultiMesh_TransformFormat>`

.. _class_MultiMesh_constant_TRANSFORM_2D:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **TRANSFORM_2D** = ``0``

使用 2D 變換時使用此選項。

.. _class_MultiMesh_constant_TRANSFORM_3D:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **TRANSFORM_3D** = ``1``

使用 3D 變換時使用此選項。

.. rst-class:: classref-item-separator

----

.. _enum_MultiMesh_PhysicsInterpolationQuality:

.. rst-class:: classref-enumeration

enum **PhysicsInterpolationQuality**: :ref:`🔗<enum_MultiMesh_PhysicsInterpolationQuality>`

.. _class_MultiMesh_constant_INTERP_QUALITY_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **INTERP_QUALITY_FAST** = ``0``

始終使用 Basis 線性插值，部分情況下可能產生扭曲問題。

.. _class_MultiMesh_constant_INTERP_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **INTERP_QUALITY_HIGH** = ``1``

盡可能使用 Basis 球面線性插值，否則回退至線性插值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_MultiMesh_property_buffer:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **buffer** = ``PackedFloat32Array()`` :ref:`🔗<class_MultiMesh_property_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_buffer**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_buffer**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_color_array:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **color_array** :ref:`🔗<class_MultiMesh_property_color_array>`

**已棄用：** Accessing this property is very slow. Use :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>` and :ref:`get_instance_color()<class_MultiMesh_method_get_instance_color>` instead.

包含該網格所有實例使用的每種 :ref:`Color<class_Color>` 的陣列。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_MultiMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

為該 MultiMesh 資源自訂 AABB。手動設定該項可以防止高昂的執行時 AABB 重新計算成本。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_custom_data_array:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **custom_data_array** :ref:`🔗<class_MultiMesh_property_custom_data_array>`

**已棄用：** Accessing this property is very slow. Use :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>` and :ref:`get_instance_custom_data()<class_MultiMesh_method_get_instance_custom_data>` instead.

包含該網格的所有實例所使用的每個自訂資料值的陣列，作為 :ref:`PackedColorArray<class_PackedColorArray>`\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_instance_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **instance_count** = ``0`` :ref:`🔗<class_MultiMesh_property_instance_count>`

.. rst-class:: classref-property-setget

- |void| **set_instance_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instance_count**\ (\ )

將被繪製的實例數。這會清除緩衝區，並（重新）調整其大小。之後設定的資料格式或旗標將無效。

預設情況下，所有實例都會被繪製，但可以使用 :ref:`visible_instance_count<class_MultiMesh_property_visible_instance_count>` 來限制它。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MultiMesh_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

要被產生實體的 :ref:`Mesh<class_Mesh>` 資源。

各個實例的外觀可以通過 :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>` 和 :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>` 來修改。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_physics_interpolation_quality:

.. rst-class:: classref-property

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **physics_interpolation_quality** = ``0`` :ref:`🔗<class_MultiMesh_property_physics_interpolation_quality>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_quality**\ (\ value\: :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>`\ )
- :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **get_physics_interpolation_quality**\ (\ )

選擇使用優先考慮速度還是優先考慮品質的插值方式。

如果使用的物理週期率較低（通常低於 20）或物件旋轉率較高，則設為高品質的效果會更好。

\ **注意：**\ 速度優先並不意味著品質較低。除了上述特殊情況之外，其品質應與選擇高品質時類似。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_2d_array:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **transform_2d_array** :ref:`🔗<class_MultiMesh_property_transform_2d_array>`

**已棄用：** Accessing this property is very slow. Use :ref:`set_instance_transform_2d()<class_MultiMesh_method_set_instance_transform_2d>` and :ref:`get_instance_transform_2d()<class_MultiMesh_method_get_instance_transform_2d>` instead.

包含該網格的所有實例所使用的每個 :ref:`Transform2D<class_Transform2D>` 值的陣列，作為 :ref:`PackedVector2Array<class_PackedVector2Array>`\ 。每個變換被分為 3 個 :ref:`Vector2<class_Vector2>` 值，分別對應於變換的 ``x``\ 、\ ``y`` 和 ``origin``\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_array:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **transform_array** :ref:`🔗<class_MultiMesh_property_transform_array>`

**已棄用：** Accessing this property is very slow. Use :ref:`set_instance_transform()<class_MultiMesh_method_set_instance_transform>` and :ref:`get_instance_transform()<class_MultiMesh_method_get_instance_transform>` instead.

包含該網格的所有實例所使用的每個 :ref:`Transform3D<class_Transform3D>` 值的陣列，作為 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。每個變換被分為 4 個 :ref:`Vector3<class_Vector3>` 值，分別對應於變換的 ``x``\ 、\ ``y``\ 、\ ``z`` 和 ``origin``\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_format:

.. rst-class:: classref-property

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **transform_format** = ``0`` :ref:`🔗<class_MultiMesh_property_transform_format>`

.. rst-class:: classref-property-setget

- |void| **set_transform_format**\ (\ value\: :ref:`TransformFormat<enum_MultiMesh_TransformFormat>`\ )
- :ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **get_transform_format**\ (\ )

用於變換網格的變換格式，可以是 2D 或 3D。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_use_colors:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_colors** = ``false`` :ref:`🔗<class_MultiMesh_property_use_colors>`

.. rst-class:: classref-property-setget

- |void| **set_use_colors**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_colors**\ (\ )

如果為 ``true``\ ，則該 **MultiMesh** 將使用顏色資料（參見 :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>`\ ）。只有在 :ref:`instance_count<class_MultiMesh_property_instance_count>` 為 ``0`` 或更少時才能被設定。這意味著需要在設定實例計數之前呼叫該方法，或者暫時將實例計數重設為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_use_custom_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_custom_data** = ``false`` :ref:`🔗<class_MultiMesh_property_use_custom_data>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_data**\ (\ )

如果為 ``true``\ ，則該 **MultiMesh** 將使用自訂資料（參見 :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>`\ ）。只有在 :ref:`instance_count<class_MultiMesh_property_instance_count>` 為 ``0`` 或更少時才能被設定。這意味著需要在設定實例計數之前呼叫該方法，或者暫時將實例計數重設為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_visible_instance_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **visible_instance_count** = ``-1`` :ref:`🔗<class_MultiMesh_property_visible_instance_count>`

.. rst-class:: classref-property-setget

- |void| **set_visible_instance_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_visible_instance_count**\ (\ )

限制繪製的實例數量，-1 會繪製所有的實例。改變這一點並不改變緩衝區的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_MultiMesh_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_MultiMesh_method_get_aabb>`

返回區域空間中的可見性軸對齊包圍框。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_instance_color**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_color>`

取得特定實例的顏色倍數。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_custom_data:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_instance_custom_data**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_custom_data>`

返回已經為特定實例設定的自訂資料。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_instance_transform**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_transform>`

返回指定實例的 :ref:`Transform3D<class_Transform3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_transform_2d:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_instance_transform_2d**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_transform_2d>`

返回指定實例的 :ref:`Transform2D<class_Transform2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_reset_instance_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_instance_physics_interpolation**\ (\ instance\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiMesh_method_reset_instance_physics_interpolation>`

使用\ *物理插值*\ 時，該函式能夠讓你在目前物理週期中阻止對實例進行插值。

這樣你就可以讓實例瞬移，通常在初始放置子彈等實例時使用，防止出現圖形問題。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_reset_instances_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_instances_physics_interpolation**\ (\ ) :ref:`🔗<class_MultiMesh_method_reset_instances_physics_interpolation>`

使用\ *物理插值*\ 時，該函式能夠讓你在目前物理週期中阻止對所有實例進行插值。

這允許你瞬間移動所有實例，通常應在初始放置實例時使用，防止出現圖形問題。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_buffer_interpolated:

.. rst-class:: classref-method

|void| **set_buffer_interpolated**\ (\ buffer_curr\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, buffer_prev\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_MultiMesh_method_set_buffer_interpolated>`

設定 :ref:`buffer<class_MultiMesh_property_buffer>` 屬性的替代做法，可以用於\ *物理插值*\ 。該方法接受兩個陣列，可以一次性設定目前週期和上一週期的資料。渲染器每一影格都會自動插值。

適用於實例順序每個物理週期中都經常會改變的場合，例如粒子系統。

如果實例的順序是連貫的，插值時還是可以用更簡單的設定 :ref:`buffer<class_MultiMesh_property_buffer>` 來代替。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_color:

.. rst-class:: classref-method

|void| **set_instance_color**\ (\ instance\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_color>`

設定一個特定實例的顏色，通過\ *乘以*\ 該網格的現有頂點顏色來設定。這允許每個實例使用不同的顏色。

\ **注意：**\ 各分量在 Forward+ 和 Mobile 渲染方法中都是使用 32 位元儲存的，而在 Compatibility 渲染方法中則為 16 位元。

要使顏色生效，請確保該 **MultiMesh** 上的 :ref:`use_colors<class_MultiMesh_property_use_colors>` 為 ``true``\ ，並且材質上的 :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` 為 ``true``\ 。如果打算設定絕對顏色而不是著色，請確保材質的反照率顏色被設定為純白色 (\ ``Color(1, 1, 1)``)。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_custom_data:

.. rst-class:: classref-method

|void| **set_instance_custom_data**\ (\ instance\: :ref:`int<class_int>`, custom_data\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_custom_data>`

為特定的實例設定自訂資料。\ ``custom_data`` 是一個 :ref:`Color<class_Color>` 型別，僅為了包含 4 個浮點數。

\ **注意：**\ 各個數字在 Forward+ 和 Mobile 渲染方法中都是使用 32 位元儲存的，而在 Compatibility 渲染方法中則為 16 位元。

對於要使用的自訂資料，請確保 :ref:`use_custom_data<class_MultiMesh_property_use_custom_data>` 為 ``true``\ 。

必須使用 ``INSTANCE_CUSTOM`` 在自訂著色器中，手動存取該自訂實例資料。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_transform:

.. rst-class:: classref-method

|void| **set_instance_transform**\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_transform>`

為指定實例設定 :ref:`Transform3D<class_Transform3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_transform_2d:

.. rst-class:: classref-method

|void| **set_instance_transform_2d**\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_transform_2d>`

為指定實例設定 :ref:`Transform2D<class_Transform2D>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
