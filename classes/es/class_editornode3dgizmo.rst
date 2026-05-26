:github_url: hide

.. _class_EditorNode3DGizmo:

EditorNode3DGizmo
=================

**Hereda:** :ref:`Node3DGizmo<class_Node3DGizmo>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un gizmo para editar objetos :ref:`Node3D<class_Node3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Gizmo that is used for providing custom visualization and editing (handles and subgizmos) for :ref:`Node3D<class_Node3D>` objects. Can be overridden to create custom gizmos, but for simple gizmos creating an :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>` is usually recommended.

.. rst-class:: classref-reftable-group

Métodos
--------------

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
   | :ref:`bool<class_bool>`                                       | :ref:`is_subgizmo_selected<class_EditorNode3DGizmo_method_is_subgizmo_selected>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                       |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_hidden<class_EditorNode3DGizmo_method_set_hidden>`\ (\ hidden\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                             |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_node_3d<class_EditorNode3DGizmo_method_set_node_3d>`\ (\ node\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                             |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorNode3DGizmo_private_method__begin_handle_action:

.. rst-class:: classref-method

|void| **_begin_handle_action**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__begin_handle_action>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__commit_handle:

.. rst-class:: classref-method

|void| **_commit_handle**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__commit_handle>`

Override this method to commit a handle being edited (handles must have been previously added by :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`). This usually means creating an :ref:`UndoRedo<class_UndoRedo>` action for the change, using the current handle value as "do" and the ``restore`` argument as "undo".

If the ``cancel`` argument is ``true``, the ``restore`` value should be directly set, without any :ref:`UndoRedo<class_UndoRedo>` action.

The ``secondary`` argument is ``true`` when the committed handle is secondary (see :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__commit_subgizmos:

.. rst-class:: classref-method

|void| **_commit_subgizmos**\ (\ ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__commit_subgizmos>`

Override this method to commit a group of subgizmos being edited (see :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>` and :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`). This usually means creating an :ref:`UndoRedo<class_UndoRedo>` action for the change, using the current transforms as "do" and the ``restores`` transforms as "undo".

If the ``cancel`` argument is ``true``, the ``restores`` transforms should be directly set, without any :ref:`UndoRedo<class_UndoRedo>` action.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__get_handle_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_handle_name**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__get_handle_name>`

Override this method to return the name of an edited handle (handles must have been previously added by :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`). Handles can be named for reference to the user when editing.

The ``secondary`` argument is ``true`` when the requested handle is secondary (see :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__get_handle_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_handle_value**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__get_handle_value>`

Override this method to return the current value of a handle. This value will be requested at the start of an edit and used as the ``restore`` argument in :ref:`_commit_handle()<class_EditorNode3DGizmo_private_method__commit_handle>`.

The ``secondary`` argument is ``true`` when the requested handle is secondary (see :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__get_subgizmo_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_subgizmo_transform**\ (\ id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>`

Override this method to return the current transform of a subgizmo. This transform will be requested at the start of an edit and used as the ``restore`` argument in :ref:`_commit_subgizmos()<class_EditorNode3DGizmo_private_method__commit_subgizmos>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__is_handle_highlighted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_handle_highlighted**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__is_handle_highlighted>`

Override this method to return ``true`` whenever the given handle should be highlighted in the editor.

The ``secondary`` argument is ``true`` when the requested handle is secondary (see :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__redraw:

.. rst-class:: classref-method

|void| **_redraw**\ (\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__redraw>`

Override this method to add all the gizmo elements whenever a gizmo update is requested. It's common to call :ref:`clear()<class_EditorNode3DGizmo_method_clear>` at the beginning of this method and then add visual elements depending on the node's properties.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__set_handle:

.. rst-class:: classref-method

|void| **_set_handle**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__set_handle>`

Override this method to update the node properties when the user drags a gizmo handle (previously added with :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`). The provided ``point`` is the mouse position in screen coordinates and the ``camera`` can be used to convert it to raycasts.

The ``secondary`` argument is ``true`` when the edited handle is secondary (see :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__set_subgizmo_transform:

.. rst-class:: classref-method

|void| **_set_subgizmo_transform**\ (\ id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__set_subgizmo_transform>`

Override this method to update the node properties during subgizmo editing (see :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>` and :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`). The ``transform`` is given in the :ref:`Node3D<class_Node3D>`'s local coordinate system.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_subgizmos_intersect_frustum**\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, frustum\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`

Override this method to allow selecting subgizmos using mouse drag box selection. Given a ``camera`` and a ``frustum``, this method should return which subgizmos are contained within the frustum. The ``frustum`` argument consists of an array with all the :ref:`Plane<class_Plane>`\ s that make up the selection frustum. The returned value should contain a list of unique subgizmo identifiers, which can have any non-negative value and will be used in other virtual methods like :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>` or :ref:`_commit_subgizmos()<class_EditorNode3DGizmo_private_method__commit_subgizmos>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray:

.. rst-class:: classref-method

:ref:`int<class_int>` **_subgizmos_intersect_ray**\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>`

Override this method to allow selecting subgizmos using mouse clicks. Given a ``camera`` and a ``point`` in screen coordinates, this method should return which subgizmo should be selected. The returned value should be a unique subgizmo identifier, which can have any non-negative value and will be used in other virtual methods like :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>` or :ref:`_commit_subgizmos()<class_EditorNode3DGizmo_private_method__commit_subgizmos>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_collision_segments:

.. rst-class:: classref-method

|void| **add_collision_segments**\ (\ segments\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_collision_segments>`

Adds the specified ``segments`` to the gizmo's collision shape for picking. Call this method during :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_collision_triangles:

.. rst-class:: classref-method

|void| **add_collision_triangles**\ (\ triangles\: :ref:`TriangleMesh<class_TriangleMesh>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_collision_triangles>`

Adds collision triangles to the gizmo for picking. A :ref:`TriangleMesh<class_TriangleMesh>` can be generated from a regular :ref:`Mesh<class_Mesh>` too. Call this method during :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_handles:

.. rst-class:: classref-method

|void| **add_handles**\ (\ handles\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, billboard\: :ref:`bool<class_bool>` = false, secondary\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_handles>`

Adds a list of handles (points) which can be used to edit the properties of the gizmo's :ref:`Node3D<class_Node3D>`. The ``ids`` argument can be used to specify a custom identifier for each handle, if an empty array is passed, the ids will be assigned automatically from the ``handles`` argument order.

The ``secondary`` argument marks the added handles as secondary, meaning they will normally have lower selection priority than regular handles. When the user is holding the shift key secondary handles will switch to have higher priority than regular handles. This change in priority can be used to place multiple handles at the same point while still giving the user control on their selection.

There are virtual methods which will be called upon editing of these handles. Call this method during :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_lines:

.. rst-class:: classref-method

|void| **add_lines**\ (\ lines\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, billboard\: :ref:`bool<class_bool>` = false, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_lines>`

Adds lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this method during :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_mesh:

.. rst-class:: classref-method

|void| **add_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`, material\: :ref:`Material<class_Material>` = null, transform\: :ref:`Transform3D<class_Transform3D>` = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), skeleton\: :ref:`SkinReference<class_SkinReference>` = null\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_mesh>`

Agregar un mesh al gizmo con el ``material``, ``transform`` local y ``skeleton`` especificado. Llama este función dentro de :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_unscaled_billboard:

.. rst-class:: classref-method

|void| **add_unscaled_billboard**\ (\ material\: :ref:`Material<class_Material>`, default_scale\: :ref:`float<class_float>` = 1, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_unscaled_billboard>`

Añade una billboard sin escala para la visualización. Llame a esta función durante el :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_EditorNode3DGizmo_method_clear>`

Elimina todo lo que hay en el gizmo, incluyendo las mallas, las colisiones y manejadoras.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_get_node_3d:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_node_3d**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_get_node_3d>`

Devuelve el nodo :ref:`Node3D<class_Node3D>` asociado con este gizmo.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_get_plugin:

.. rst-class:: classref-method

:ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>` **get_plugin**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_get_plugin>`

Devuelve el :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>` que posee este gizmo. Es útil para recuperar materiales usando el :ref:`EditorNode3DGizmoPlugin.get_material()<class_EditorNode3DGizmoPlugin_method_get_material>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_get_subgizmo_selection:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_subgizmo_selection**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_get_subgizmo_selection>`

Devuleve una lista de los subgizmos selecionados, Se puede usar para resaltar los elementos selecionados durante el :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_is_subgizmo_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_subgizmo_selected**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_is_subgizmo_selected>`

Devuelve ``true`` si el subgizmo dado está actualmente seleccionado. Se puede usar para resaltar los elementos seleccionados durante el :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_set_hidden:

.. rst-class:: classref-method

|void| **set_hidden**\ (\ hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_set_hidden>`

Establece el estado oculto del aparato. Si es ``true``, el aparato estará oculto. Si es ``false``, se mostrará.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_set_node_3d:

.. rst-class:: classref-method

|void| **set_node_3d**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_set_node_3d>`

Establece el nodo de referencia :ref:`Node3D<class_Node3D>` para el aparato. El ``node`` debe heredar de :ref:`Node3D<class_Node3D>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
