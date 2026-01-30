:github_url: hide

.. _class_EditorNode3DGizmoPlugin:

EditorNode3DGizmoPlugin
=======================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

編輯器用來定義 Node3D 小工具型別的類。

.. rst-class:: classref-introduction-group

說明
----

**EditorNode3DGizmoPlugin** 允許定義一種新的小工具型別。定義主要有兩種方法：比較簡單的小工具可以擴充 **EditorNode3DGizmoPlugin**\ ，否則可以建立新的 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 型別。有關詳細資訊，請參閱文件中的教學。

要使用 **EditorNode3DGizmoPlugin**\ ，請先使用 :ref:`EditorPlugin.add_node_3d_gizmo_plugin()<class_EditorPlugin_method_add_node_3d_gizmo_plugin>` 方法註冊它。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`Node3D 小工具外掛程式 <../tutorials/plugins/editor/3d_gizmos>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_begin_handle_action<class_EditorNode3DGizmoPlugin_private_method__begin_handle_action>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_can_be_hidden<class_EditorNode3DGizmoPlugin_private_method__can_be_hidden>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_commit_handle<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual|                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_commit_subgizmos<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`   | :ref:`_create_gizmo<class_EditorNode3DGizmoPlugin_private_method__create_gizmo>`\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const|                                                                                                                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                         | :ref:`_get_gizmo_name<class_EditorNode3DGizmoPlugin_private_method__get_gizmo_name>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                         | :ref:`_get_handle_name<class_EditorNode3DGizmoPlugin_private_method__get_handle_name>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`_get_handle_value<class_EditorNode3DGizmoPlugin_private_method__get_handle_value>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_priority<class_EditorNode3DGizmoPlugin_private_method__get_priority>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`_get_subgizmo_transform<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_has_gizmo<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const|                                                                                                                                                                                               |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_is_handle_highlighted<class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                               |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_is_selectable_when_hidden<class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_redraw<class_EditorNode3DGizmoPlugin_private_method__redraw>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ ) |virtual|                                                                                                                                                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_set_handle<class_EditorNode3DGizmoPlugin_private_method__set_handle>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual|                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_set_subgizmo_transform<class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual|                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`_subgizmos_intersect_frustum<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, frustum_planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const|                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_subgizmos_intersect_ray<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_material<class_EditorNode3DGizmoPlugin_method_add_material>`\ (\ name\: :ref:`String<class_String>`, material\: :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ )                                                                                                                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_handle_material<class_EditorNode3DGizmoPlugin_method_create_handle_material>`\ (\ name\: :ref:`String<class_String>`, billboard\: :ref:`bool<class_bool>` = false, texture\: :ref:`Texture2D<class_Texture2D>` = null\ )                                                                                                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_icon_material<class_EditorNode3DGizmoPlugin_method_create_icon_material>`\ (\ name\: :ref:`String<class_String>`, texture\: :ref:`Texture2D<class_Texture2D>`, on_top\: :ref:`bool<class_bool>` = false, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ )                                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_material<class_EditorNode3DGizmoPlugin_method_create_material>`\ (\ name\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, billboard\: :ref:`bool<class_bool>` = false, on_top\: :ref:`bool<class_bool>` = false, use_vertex_color\: :ref:`bool<class_bool>` = false\ )                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StandardMaterial3D<class_StandardMaterial3D>` | :ref:`get_material<class_EditorNode3DGizmoPlugin_method_get_material>`\ (\ name\: :ref:`String<class_String>`, gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` = null\ )                                                                                                                                                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorNode3DGizmoPlugin_private_method__begin_handle_action:

.. rst-class:: classref-method

|void| **_begin_handle_action**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__begin_handle_action>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__can_be_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_be_hidden**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__can_be_hidden>`

覆蓋該方法，以定義是否可以隱藏該外掛程式處理的小工具。如果未被覆蓋，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__commit_handle:

.. rst-class:: classref-method

|void| **_commit_handle**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`

覆蓋該方法，以提交正在編輯的控柄（控柄必須是先前在 :ref:`_redraw()<class_EditorNode3DGizmoPlugin_private_method__redraw>` 期間通過 :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` 新增的）。這通常意味著為該更改建立一個 :ref:`UndoRedo<class_UndoRedo>` 動作，將目前控柄值用作“做”，並將 ``restore`` 參數用作“撤銷”。

如果 ``cancel`` 參數為 ``true``\ ，則 ``restore`` 值應被直接設置，無需任何 :ref:`UndoRedo<class_UndoRedo>` 動作。

當提交的控柄為次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多信息，請參閱 :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。

為該外掛程式的活動小工具而呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos:

.. rst-class:: classref-method

|void| **_commit_subgizmos**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`

覆蓋該方法，以提交一組正在編輯的子小工具（參見 :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>` 和 :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`\ ）。這通常意味著為該更改建立一個 :ref:`UndoRedo<class_UndoRedo>` 動作，將目前變換用作“做”，並將 ``restores`` 變換用作“撤銷”。

如果 ``cancel`` 參數為 ``true``\ ，則 ``restores`` 變換應被直接設定，無需任何 :ref:`UndoRedo<class_UndoRedo>` 動作。對於所有子小工具方法，變換是在與小工具的 Node3D 相關的局部空間中給出的。為該外掛程式的活動小工具而呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__create_gizmo:

.. rst-class:: classref-method

:ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` **_create_gizmo**\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__create_gizmo>`

Override this method to return a custom :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` for the 3D nodes of your choice, return ``null`` for the rest of nodes. See also :ref:`_has_gizmo()<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_gizmo_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_gizmo_name**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_gizmo_name>`

覆蓋該方法，以提供將出現在小工具可見性功能表中的名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_handle_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_handle_name**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_handle_name>`

覆蓋該方法，以提供小工具的控柄名稱。當請求的控柄是次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多資訊，請參閱 :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。為該外掛程式的活動小工具而呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_handle_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_handle_value**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_handle_value>`

覆蓋該方法，以返回一個控柄的目前值。該值將在編輯開始時被請求，並用作 :ref:`_commit_handle()<class_EditorNode3DGizmoPlugin_private_method__commit_handle>` 中的 ``restore`` 參數。

當請求的控柄是次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多信息，請參閱 :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。

為該外掛程式的活動小工具而呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_priority:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_priority>`

覆蓋該方法，以設定該小工具的優先順序。具有更高優先順序的小工具，將在處理控柄或子小工具選擇等輸入時具有優先權。

所有內建編輯器小工具都會返回 ``-1`` 的優先順序。如果未被覆蓋，該方法將返回 ``0``\ ，這意味著自訂小工具將自動獲得比內建小工具更高的優先順序。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_subgizmo_transform**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>`

覆蓋該方法，以返回子小工具的目前變換。對於所有子小工具方法，變換應該在相對於小工具的 Node3D 的局部空間中。此變換將在編輯開始時被請求，並在 :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>` 中的 ``restore`` 參數中使用。為該外掛程式的活動小工具而呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__has_gizmo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_gizmo**\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`

覆蓋該方法，以定義哪些 Node3D 節點具有來自該外掛程式的小工具。每當將 :ref:`Node3D<class_Node3D>` 節點新增到場景時，該方法都會被呼叫，如果它返回 ``true``\ ，則該節點將被分配一個通用的 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ ，並被新增到該外掛程式的活動小工具列表中。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_handle_highlighted**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted>`

覆蓋該方法，以在編輯器中高亮顯示給定控柄時返回 ``true``\ 。當請求的控柄是次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多資訊，請參閱 :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。為該外掛程式的活動小工具而呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_selectable_when_hidden**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden>`

覆蓋該方法，以定義具有該小工具的 Node3D 是否應該是可選的，即使該小工具被隱藏。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__redraw:

.. rst-class:: classref-method

|void| **_redraw**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__redraw>`

覆蓋該方法，以在每當請求小工具更新時新增所有小工具元素。通常在該方法的開頭調用 :ref:`EditorNode3DGizmo.clear()<class_EditorNode3DGizmo_method_clear>`\ ，然後根據節點的屬性新增可視元素。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__set_handle:

.. rst-class:: classref-method

|void| **_set_handle**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__set_handle>`

覆蓋該方法，以在使用者拖動小工具控柄（控柄是之前使用 :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` 新增的）時更新節點的屬性。提供的 ``screen_pos`` 是螢幕座標中的滑鼠位置， ``camera`` 可用於將其轉換為射線投射。

當編輯的控柄是次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多信息，請參閱 :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。

為該外掛程式的活動小工具而呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform:

.. rst-class:: classref-method

|void| **_set_subgizmo_transform**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform>`

覆蓋該方法，以在子小工具編輯期間更新節點屬性（參見 :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>` 和 :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`\ ）。\ ``transform`` 在 Node3D 的局部坐標系中給出。為該外掛程式的活動小工具而呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_subgizmos_intersect_frustum**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, frustum_planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`

Override this method to allow selecting subgizmos using mouse drag box selection. Given a ``camera`` and ``frustum_planes``, this method should return which subgizmos are contained within the frustums. The ``frustum_planes`` argument consists of an array with all the :ref:`Plane<class_Plane>`\ s that make up the selection frustum. The returned value should contain a list of unique subgizmo identifiers, these identifiers can have any non-negative value and will be used in other virtual methods like :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>` or :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`. Called for this plugin's active gizmos.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray:

.. rst-class:: classref-method

:ref:`int<class_int>` **_subgizmos_intersect_ray**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>`

覆蓋該方法，以允許使用滑鼠點擊選擇子小工具。給定螢幕座標中的 ``camera`` 和 ``screen_pos`` 時，該方法應返回應選擇哪個子小工具。返回值應該是一個唯一的子小工具識別字，它可以有任何非負值，並將用於其他虛方法，如 :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>` 或 :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`\ 。為該外掛程式的活動小工具而呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_add_material:

.. rst-class:: classref-method

|void| **add_material**\ (\ name\: :ref:`String<class_String>`, material\: :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_add_material>`

將新材質新增到該外掛程式的內部材質列表中。然後可以使用 :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` 存取它。不應被重寫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_handle_material:

.. rst-class:: classref-method

|void| **create_handle_material**\ (\ name\: :ref:`String<class_String>`, billboard\: :ref:`bool<class_bool>` = false, texture\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_handle_material>`

建立具有變體（選定的和/或可編輯的）的控柄材質，並將它們新增到內部材質列表中。然後可以使用 :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` 存取它們，並在 :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` 中使用它們。不應被重寫。

可以選擇提供一個要使用的紋理代替預設圖示。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_icon_material:

.. rst-class:: classref-method

|void| **create_icon_material**\ (\ name\: :ref:`String<class_String>`, texture\: :ref:`Texture2D<class_Texture2D>`, on_top\: :ref:`bool<class_bool>` = false, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_icon_material>`

建立具有變體（選定的和/或可編輯的）的圖示材質，並將它們新增到內部材質列表中。然後可以使用 :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` 存取它們，並在 :ref:`EditorNode3DGizmo.add_unscaled_billboard()<class_EditorNode3DGizmo_method_add_unscaled_billboard>` 中使用它們。不應被重寫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_material:

.. rst-class:: classref-method

|void| **create_material**\ (\ name\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, billboard\: :ref:`bool<class_bool>` = false, on_top\: :ref:`bool<class_bool>` = false, use_vertex_color\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_material>`

建立具有變體（選定的和/或可編輯的）的未著色材質，並將它們新增到內部材質列表中。然後可以使用 :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` 存取它們，並在 :ref:`EditorNode3DGizmo.add_mesh()<class_EditorNode3DGizmo_method_add_mesh>` 和 :ref:`EditorNode3DGizmo.add_lines()<class_EditorNode3DGizmo_method_add_lines>` 中使用。不應被重寫。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_get_material:

.. rst-class:: classref-method

:ref:`StandardMaterial3D<class_StandardMaterial3D>` **get_material**\ (\ name\: :ref:`String<class_String>`, gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` = null\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_get_material>`

從內部材質列表中獲取材質。如果提供了一個 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ ，它將嘗試獲取相應的變體（選定的和/或可編輯的）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
