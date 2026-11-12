:github_url: hide

.. _class_MeshLibrary:

MeshLibrary
===========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

網格庫。

.. rst-class:: classref-introduction-group

說明
----

網格庫包含一個 :ref:`Mesh<class_Mesh>` 資源列表，每個資源都有一個名稱和 ID。每個專案還可以包括碰撞和導覽形狀。這個資源在 :ref:`GridMap<class_GridMap>` 中使用。

.. rst-class:: classref-introduction-group

教學
----

- `3D 動力學角色演示 <https://godotengine.org/asset-library/asset/2739>`__

- `3D 平台跳躍示範 <https://godotengine.org/asset-library/asset/2748>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`String<class_String>`                 | :ref:`item/{index}/category<class_MeshLibrary_property_item/{index}/category>`                                   | ``&""``                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                     | :ref:`item/{index}/mesh<class_MeshLibrary_property_item/{index}/mesh>`                                           |                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`item/{index}/mesh_cast_shadow<class_MeshLibrary_property_item/{index}/mesh_cast_shadow>`                   | ``1``                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`       | :ref:`item/{index}/mesh_transform<class_MeshLibrary_property_item/{index}/mesh_transform>`                       | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`String<class_String>`                 | :ref:`item/{index}/name<class_MeshLibrary_property_item/{index}/name>`                                           | ``""``                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`item/{index}/navigation_layers<class_MeshLibrary_property_item/{index}/navigation_layers>`                 | ``1``                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NavigationMesh<class_NavigationMesh>` | :ref:`item/{index}/navigation_mesh<class_MeshLibrary_property_item/{index}/navigation_mesh>`                     |                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`       | :ref:`item/{index}/navigation_mesh_transform<class_MeshLibrary_property_item/{index}/navigation_mesh_transform>` | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`           | :ref:`item/{index}/preview<class_MeshLibrary_property_item/{index}/preview>`                                     |                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`item/{index}/shapes<class_MeshLibrary_property_item/{index}/shapes>`                                       | ``[]``                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`clear<class_MeshLibrary_method_clear>`\ (\ )                                                                                                                                                                      |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`create_item<class_MeshLibrary_method_create_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`find_item_by_name<class_MeshLibrary_method_find_item_by_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                    | :ref:`get_item_category<class_MeshLibrary_method_get_item_category>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_item_count<class_MeshLibrary_method_get_item_count>`\ (\ ) |const|                                                                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                        | :ref:`get_item_list<class_MeshLibrary_method_get_item_list>`\ (\ ) |const|                                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                | :ref:`get_item_mesh<class_MeshLibrary_method_get_item_mesh>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>` | :ref:`get_item_mesh_cast_shadow<class_MeshLibrary_method_get_item_mesh_cast_shadow>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_item_mesh_transform<class_MeshLibrary_method_get_item_mesh_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`get_item_name<class_MeshLibrary_method_get_item_name>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_item_navigation_layers<class_MeshLibrary_method_get_item_navigation_layers>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationMesh<class_NavigationMesh>`                            | :ref:`get_item_navigation_mesh<class_MeshLibrary_method_get_item_navigation_mesh>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_item_navigation_mesh_transform<class_MeshLibrary_method_get_item_navigation_mesh_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                        |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                      | :ref:`get_item_preview<class_MeshLibrary_method_get_item_preview>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                              | :ref:`get_item_shapes<class_MeshLibrary_method_get_item_shapes>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_last_unused_item_id<class_MeshLibrary_method_get_last_unused_item_id>`\ (\ ) |const|                                                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_item<class_MeshLibrary_method_remove_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_category<class_MeshLibrary_method_set_item_category>`\ (\ id\: :ref:`int<class_int>`, category\: :ref:`StringName<class_StringName>`\ )                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh<class_MeshLibrary_method_set_item_mesh>`\ (\ id\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh_cast_shadow<class_MeshLibrary_method_set_item_mesh_cast_shadow>`\ (\ id\: :ref:`int<class_int>`, shadow_casting_setting\: :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`\ ) |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh_transform<class_MeshLibrary_method_set_item_mesh_transform>`\ (\ id\: :ref:`int<class_int>`, mesh_transform\: :ref:`Transform3D<class_Transform3D>`\ )                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_name<class_MeshLibrary_method_set_item_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                      |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_layers<class_MeshLibrary_method_set_item_navigation_layers>`\ (\ id\: :ref:`int<class_int>`, navigation_layers\: :ref:`int<class_int>`\ )                                                     |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_mesh<class_MeshLibrary_method_set_item_navigation_mesh>`\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ )                                     |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_mesh_transform<class_MeshLibrary_method_set_item_navigation_mesh_transform>`\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`Transform3D<class_Transform3D>`\ )                       |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_preview<class_MeshLibrary_method_set_item_preview>`\ (\ id\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                                                       |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_shapes<class_MeshLibrary_method_set_item_shapes>`\ (\ id\: :ref:`int<class_int>`, shapes\: :ref:`Array<class_Array>`\ )                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_MeshLibrary_property_item/{index}/category:

.. rst-class:: classref-property

:ref:`String<class_String>` **item/{index}/category** = ``&""`` :ref:`🔗<class_MeshLibrary_property_item/{index}/category>`

The item's category. Used to organize meshes in the :ref:`GridMap<class_GridMap>` editor. A category can include ``/`` as a delimiter to create subcategories.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **item/{index}/mesh** :ref:`🔗<class_MeshLibrary_property_item/{index}/mesh>`

The item's mesh. Used by other parts of the engine (e.g. :ref:`GridMap<class_GridMap>`, which displays them in a 3D tile).

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/mesh_cast_shadow:

.. rst-class:: classref-property

:ref:`int<class_int>` **item/{index}/mesh_cast_shadow** = ``1`` :ref:`🔗<class_MeshLibrary_property_item/{index}/mesh_cast_shadow>`

The shadow casting mode used by the item's mesh. See :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/mesh_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **item/{index}/mesh_transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_MeshLibrary_property_item/{index}/mesh_transform>`

The transform to apply to the item's mesh.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **item/{index}/name** = ``""`` :ref:`🔗<class_MeshLibrary_property_item/{index}/name>`

The item's name, shown in the editor. It can also be used to look up the item later using :ref:`find_item_by_name()<class_MeshLibrary_method_find_item_by_name>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **item/{index}/navigation_layers** = ``1`` :ref:`🔗<class_MeshLibrary_property_item/{index}/navigation_layers>`

The item's navigation layers bitmask.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/navigation_mesh:

.. rst-class:: classref-property

:ref:`NavigationMesh<class_NavigationMesh>` **item/{index}/navigation_mesh** :ref:`🔗<class_MeshLibrary_property_item/{index}/navigation_mesh>`

The item's navigation mesh.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/navigation_mesh_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **item/{index}/navigation_mesh_transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_MeshLibrary_property_item/{index}/navigation_mesh_transform>`

The transform to apply to the item's navigation mesh.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/preview:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **item/{index}/preview** :ref:`🔗<class_MeshLibrary_property_item/{index}/preview>`

The texture to use as the item's preview icon in the editor.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/shapes:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **item/{index}/shapes** = ``[]`` :ref:`🔗<class_MeshLibrary_property_item/{index}/shapes>`

The item's collision shapes. The array should consist of :ref:`Shape3D<class_Shape3D>` objects, each followed by a :ref:`Transform3D<class_Transform3D>` that will be applied to it. For shapes that should not have a transform, use :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_MeshLibrary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshLibrary_method_clear>`

清除庫。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_create_item:

.. rst-class:: classref-method

|void| **create_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_create_item>`

使用給定的 ID 在庫中建立一個新項。

你可以從 :ref:`get_last_unused_item_id()<class_MeshLibrary_method_get_last_unused_item_id>` 取得一個未使用的 ID。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_find_item_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_item_by_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_find_item_by_name>`

回傳具有給定名稱的第一個項目，如果未找到任何項目，則回傳 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_category:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_item_category**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_category>`

Returns the category for a specific item ``id``. See also :ref:`set_item_category()<class_MeshLibrary_method_set_item_category>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_count**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_count>`

回傳庫（library）中目前包含的項目數量。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_item_list**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_list>`

返回正在使用的專案 ID 列表。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_item_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh>`

返回該專案的網格。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_cast_shadow:

.. rst-class:: classref-method

:ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>` **get_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_cast_shadow>`

回傳該項的陰影投射模式。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_transform>`

返回套用到專案網格的變換。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_name**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_name>`

返回該項的名稱。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_layers>`

返回該項的導覽層位元遮罩。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh:

.. rst-class:: classref-method

:ref:`NavigationMesh<class_NavigationMesh>` **get_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh>`

返回該項的導覽網格。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh_transform>`

返回套用於該項導覽網格的變換。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_preview:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_preview**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_preview>`

在編輯器中運作時，返回生成的專案預覽（等軸透視中的 3D 渲染）。在一個運作的項目中使用時，返回手動定義的專案預覽，該專案預覽可以使用 :ref:`set_item_preview()<class_MeshLibrary_method_set_item_preview>` 設定。如果在一個運作的專案中，沒有手動設定預覽，則返回一個空的 :ref:`Texture2D<class_Texture2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_shapes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_item_shapes**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_shapes>`

返回某個專案的碰撞形狀。

該陣列由每個 :ref:`Shape3D<class_Shape3D>` 後跟其 :ref:`Transform3D<class_Transform3D>` 組成。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_last_unused_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_last_unused_item_id**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_last_unused_item_id>`

取得新項未使用的 ID。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_remove_item>`

刪除專案。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_category:

.. rst-class:: classref-method

|void| **set_item_category**\ (\ id\: :ref:`int<class_int>`, category\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_category>`

Sets the ``category`` for a specific item ``id`` for organization in the :ref:`GridMap<class_GridMap>` editor. A category can include ``/`` as a delimiter to create subcategories.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh:

.. rst-class:: classref-method

|void| **set_item_mesh**\ (\ id\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh>`

設定該項的網格。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_cast_shadow:

.. rst-class:: classref-method

|void| **set_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`, shadow_casting_setting\: :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_cast_shadow>`

將該項的陰影投射模式設定為 ``shadow_casting_setting``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`, mesh_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_transform>`

設定要套用到專案網格的變換。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_name:

.. rst-class:: classref-method

|void| **set_item_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_name>`

設定該項的名稱。

這個名稱會顯示在編輯器中。稍後還可以使用 :ref:`find_item_by_name()<class_MeshLibrary_method_find_item_by_name>` 來搜尋該項。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_layers:

.. rst-class:: classref-method

|void| **set_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`, navigation_layers\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_layers>`

設定該項的導覽層位元遮罩。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh>`

設定該項的導覽網格。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh_transform>`

設定套用於該項的導覽網格的變換。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_preview:

.. rst-class:: classref-method

|void| **set_item_preview**\ (\ id\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_preview>`

在編輯器中設定要用作該項預覽圖示的紋理。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_shapes:

.. rst-class:: classref-method

|void| **set_item_shapes**\ (\ id\: :ref:`int<class_int>`, shapes\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_shapes>`

設定某個專案的碰撞形狀。

該陣列應由 :ref:`Shape3D<class_Shape3D>` 物件組成，每個物件後跟一個將套用於它的 :ref:`Transform3D<class_Transform3D>`\ 。對於不應具有變換的形狀，請使用 :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
