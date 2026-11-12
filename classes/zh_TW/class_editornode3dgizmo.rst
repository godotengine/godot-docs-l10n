:github_url: hide

.. _class_EditorNode3DGizmo:

EditorNode3DGizmo
=================

**繼承：** :ref:`Node3DGizmo<class_Node3DGizmo>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於編輯 :ref:`Node3D<class_Node3D>` 物件的小工具。

.. rst-class:: classref-introduction-group

說明
----

可用於為 :ref:`Node3D<class_Node3D>` 物件提供自訂視覺化和編輯功能（控柄和子小工具）的小工具。可以被覆蓋以建立自訂小工具，但對於簡單的小工具而言，通常建議建立 :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_begin_handle_action<class_EditorNode3DGizmo_private_method__begin_handle_action>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_commit_handle<class_EditorNode3DGizmo_private_method__commit_handle>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_commit_subgizmos<class_EditorNode3DGizmo_private_method__commit_subgizmos>`\ (\ ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual|                                                       |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                   | :ref:`_get_handle_name<class_EditorNode3DGizmo_private_method__get_handle_name>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                 | :ref:`_get_handle_value<class_EditorNode3DGizmo_private_method__get_handle_value>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                                                                      |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                         | :ref:`_get_subgizmo_transform<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`_is_handle_highlighted<class_EditorNode3DGizmo_private_method__is_handle_highlighted>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_redraw<class_EditorNode3DGizmo_private_method__redraw>`\ (\ ) |virtual|                                                                                                                                                                                                                                                   |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_set_handle<class_EditorNode3DGizmo_private_method__set_handle>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual|                                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_set_subgizmo_transform<class_EditorNode3DGizmo_private_method__set_subgizmo_transform>`\ (\ id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual|                                                                                                                                    |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`               | :ref:`_subgizmos_intersect_frustum<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, frustum\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const|                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`_subgizmos_intersect_ray<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>`\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_collision_segments<class_EditorNode3DGizmo_method_add_collision_segments>`\ (\ segments\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                                                                                                                                                       |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_collision_triangles<class_EditorNode3DGizmo_method_add_collision_triangles>`\ (\ triangles\: :ref:`TriangleMesh<class_TriangleMesh>`\ )                                                                                                                                                                                |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_handles<class_EditorNode3DGizmo_method_add_handles>`\ (\ handles\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, billboard\: :ref:`bool<class_bool>` = false, secondary\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_lines<class_EditorNode3DGizmo_method_add_lines>`\ (\ lines\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, billboard\: :ref:`bool<class_bool>` = false, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ )                                                 |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_mesh<class_EditorNode3DGizmo_method_add_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`, material\: :ref:`Material<class_Material>` = null, transform\: :ref:`Transform3D<class_Transform3D>` = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), skeleton\: :ref:`SkinReference<class_SkinReference>` = null\ )              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_unscaled_billboard<class_EditorNode3DGizmo_method_add_unscaled_billboard>`\ (\ material\: :ref:`Material<class_Material>`, default_scale\: :ref:`float<class_float>` = 1, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ )                                                                                  |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`clear<class_EditorNode3DGizmo_method_clear>`\ (\ )                                                                                                                                                                                                                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                                   | :ref:`get_node_3d<class_EditorNode3DGizmo_method_get_node_3d>`\ (\ ) |const|                                                                                                                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>` | :ref:`get_plugin<class_EditorNode3DGizmo_method_get_plugin>`\ (\ ) |const|                                                                                                                                                                                                                                                       |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`               | :ref:`get_subgizmo_selection<class_EditorNode3DGizmo_method_get_subgizmo_selection>`\ (\ ) |const|                                                                                                                                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`is_selected<class_EditorNode3DGizmo_method_is_selected>`\ (\ ) |const|                                                                                                                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`is_subgizmo_selected<class_EditorNode3DGizmo_method_is_subgizmo_selected>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                       |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_hidden<class_EditorNode3DGizmo_method_set_hidden>`\ (\ hidden\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                             |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_node_3d<class_EditorNode3DGizmo_method_set_node_3d>`\ (\ node\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                             |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorNode3DGizmo_private_method__begin_handle_action:

.. rst-class:: classref-method

|void| **_begin_handle_action**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__begin_handle_action>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__commit_handle:

.. rst-class:: classref-method

|void| **_commit_handle**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__commit_handle>`

覆蓋該方法，以提交一個正在編輯的控柄（控柄必須是之前通過 :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` 新增的）。這通常意味著為該修改建立一個 :ref:`UndoRedo<class_UndoRedo>` 動作，將目前控柄值用作“做”，並將 ``restore`` 參數用作“復原”。

如果 ``cancel`` 參數為 ``true``\ ，則應直接設定 ``restore`` 值，而不需要任何 :ref:`UndoRedo<class_UndoRedo>` 動作。

當提交的控柄為次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多資訊，請參閱 :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__commit_subgizmos:

.. rst-class:: classref-method

|void| **_commit_subgizmos**\ (\ ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__commit_subgizmos>`

覆蓋該方法，以提交一組正在編輯的子小工具（參見 :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>` 和 :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`\ ）。這通常意味著為該更改建立一個 :ref:`UndoRedo<class_UndoRedo>` 動作，將目前變換用作“做”，並將 ``restores`` 變換用作“復原”。

如果 ``cancel`` 參數為 ``true``\ ，則\ ``restores`` 變換應被直接設定 ，而無需任何 :ref:`UndoRedo<class_UndoRedo>` 動作。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__get_handle_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_handle_name**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__get_handle_name>`

覆蓋該方法，以返回編輯的控柄的名稱（控柄必須先前通過 :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` 添加的）。可以命名控柄以供使用者在編輯時引用。

當請求的控柄是次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多資訊，請參閱 :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__get_handle_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_handle_value**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__get_handle_value>`

覆蓋該方法，以返回一個控柄的目前值。該值將在編輯開始時被請求，並用作 :ref:`_commit_handle()<class_EditorNode3DGizmo_private_method__commit_handle>` 中的 ``restore`` 參數。

當請求的控柄是次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多資訊，請參閱 :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__get_subgizmo_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_subgizmo_transform**\ (\ id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>`

覆蓋該方法，以返回子小工具的目前變換。該變換將在編輯開始時被請求，並用作 :ref:`_commit_subgizmos()<class_EditorNode3DGizmo_private_method__commit_subgizmos>` 中的 ``restore`` 參數。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__is_handle_highlighted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_handle_highlighted**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__is_handle_highlighted>`

覆蓋該方法，只要給定的控柄應該在編輯器中被高亮顯示時就返回 ``true``\ 。

當請求的控柄是次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多資訊，請參閱 :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__redraw:

.. rst-class:: classref-method

|void| **_redraw**\ (\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__redraw>`

覆蓋該方法，每當請求小工具更新時將新增所有小工具元素。通常在該方法的開頭呼叫 :ref:`clear()<class_EditorNode3DGizmo_method_clear>`\ ，然後根據節點的屬性新增可視元素。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__set_handle:

.. rst-class:: classref-method

|void| **_set_handle**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__set_handle>`

覆蓋該方法，當使用者拖動小工具控柄（之前使用 :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` 新增的）時更新節點屬性。提供的 ``point`` 是螢幕座標中的滑鼠位置， ``camera`` 可用於將其轉換為射線投射。

當編輯的控柄是次要控柄時，\ ``secondary`` 參數為 ``true``\ （有關更多資訊，請參閱 :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__set_subgizmo_transform:

.. rst-class:: classref-method

|void| **_set_subgizmo_transform**\ (\ id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__set_subgizmo_transform>`

覆蓋該方法，以在子小工具編輯期間更新節點屬性（參見 :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>` 和 :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`\ ）。\ ``transform`` 是在 :ref:`Node3D<class_Node3D>` 的區域座標系中給出的。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_subgizmos_intersect_frustum**\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, frustum\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`

覆蓋該方法，以允許使用滑鼠拖動框選來選擇子小工具。給定一個 ``camera`` 和一個 ``frustum``\ ，這個方法應該回傳哪些子小工具包含在錐體中。\ ``frustum`` 參數由一個陣列組成，其中包含構成選擇錐體的所有 :ref:`Plane<class_Plane>`\ 。回傳的值應該包含一個唯一的子小工具標識符清單，它可以有任何非負值，並將用於其他虛方法，如 :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>` 或 :ref:`_commit_subgizmos()<class_EditorNode3DGizmo_private_method__commit_subgizmos>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray:

.. rst-class:: classref-method

:ref:`int<class_int>` **_subgizmos_intersect_ray**\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>`

覆蓋該方法，以允許使用滑鼠點選選擇子小工具。給定螢幕座標中的 ``camera`` 和 ``point`` 時，該方法應返回應選擇哪個子小工具。返回值應該是一個唯一的子小工具識別字，它可以有任何非負值，並將用於其他虛方法，如 :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>` 或 :ref:`_commit_subgizmos()<class_EditorNode3DGizmo_private_method__commit_subgizmos>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_collision_segments:

.. rst-class:: classref-method

|void| **add_collision_segments**\ (\ segments\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_collision_segments>`

將指定的 ``segments`` 新增到小工具的碰撞形狀以進行拾取。在 :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>` 期間呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_collision_triangles:

.. rst-class:: classref-method

|void| **add_collision_triangles**\ (\ triangles\: :ref:`TriangleMesh<class_TriangleMesh>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_collision_triangles>`

將碰撞三角形新增到小工具以進行拾取。\ :ref:`TriangleMesh<class_TriangleMesh>` 也可以從常規 :ref:`Mesh<class_Mesh>` 生成。在 :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>` 期間呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_handles:

.. rst-class:: classref-method

|void| **add_handles**\ (\ handles\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, billboard\: :ref:`bool<class_bool>` = false, secondary\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_handles>`

新增可用於編輯該小工具的 :ref:`Node3D<class_Node3D>` 屬性的一組控柄（點）。\ ``ids`` 參數可用於為每個控柄指定一個自訂的標識符，如果傳遞了一個空的陣列，id 將按照 ``handles`` 參數順序自動分配。

\ ``secondary`` 參數將新增的控柄標記為次要控柄，這意味著它們通常比普通控柄具有更低的選擇優先級。當使用者按住 Shift 鍵時，次要控柄將被切換為比普通控柄具有更高的優先級。這種優先級的變化可用於在同一點放置多個控柄，同時仍讓使用者控制他們的選擇。

這些虛方法將在編輯這些控柄時被呼叫。在 :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>` 期間將呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_lines:

.. rst-class:: classref-method

|void| **add_lines**\ (\ lines\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, billboard\: :ref:`bool<class_bool>` = false, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_lines>`

為小工具新增使用給定材質的線段（一對對點的集合）。線段將用於展示和選擇。請在 :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>` 期間呼叫此方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_mesh:

.. rst-class:: classref-method

|void| **add_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`, material\: :ref:`Material<class_Material>` = null, transform\: :ref:`Transform3D<class_Transform3D>` = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), skeleton\: :ref:`SkinReference<class_SkinReference>` = null\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_mesh>`

為小工具新增網格，可以指定材質 ``material``\ 、本地變換 ``transform`` 和骨架 ``skeleton``\ 。請在 :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>` 期間呼叫此方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_unscaled_billboard:

.. rst-class:: classref-method

|void| **add_unscaled_billboard**\ (\ material\: :ref:`Material<class_Material>`, default_scale\: :ref:`float<class_float>` = 1, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_unscaled_billboard>`

新增未縮放的公告板，將用於展示和選擇。請在 :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>` 期間呼叫此方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_EditorNode3DGizmo_method_clear>`

移除小工具中的一切，包括網格、碰撞和控柄。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_get_node_3d:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_node_3d**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_get_node_3d>`

返回與這個小工具關聯的 :ref:`Node3D<class_Node3D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_get_plugin:

.. rst-class:: classref-method

:ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>` **get_plugin**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_get_plugin>`

返回擁有該小工具的 :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`\ 。可以在使用 :ref:`EditorNode3DGizmoPlugin.get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` 取得材質時使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_get_subgizmo_selection:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_subgizmo_selection**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_get_subgizmo_selection>`

返回目前選定的子小工具的列表。可用於在 :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>` 期間高亮顯示所選元素。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_is_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_selected**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_is_selected>`

Returns ``true`` if this gizmo is currently selected. Can be used to write custom visualization logic during :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_is_subgizmo_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_subgizmo_selected**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_is_subgizmo_selected>`

如果給定的子小工具是目前所選定的，則返回 ``true``\ 。可用於在 :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>` 期間高亮顯示所選元素。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_set_hidden:

.. rst-class:: classref-method

|void| **set_hidden**\ (\ hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_set_hidden>`

設定該小工具的隱藏狀態。如果為 ``true``\ ，則該小工具將被隱藏。如果為 ``false`` 則會顯示。

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_set_node_3d:

.. rst-class:: classref-method

|void| **set_node_3d**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_set_node_3d>`

設定該小工具參考的 :ref:`Node3D<class_Node3D>` 節點。\ ``node`` 必須繼承自 :ref:`Node3D<class_Node3D>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
