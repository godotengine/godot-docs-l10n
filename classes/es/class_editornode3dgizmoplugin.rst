:github_url: hide

.. _class_EditorNode3DGizmoPlugin:

EditorNode3DGizmoPlugin
=======================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Usado por el editor para definir los tipos de gizmo de Node3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**EditorNode3DGizmoPlugin** te permite definir un nuevo tipo de Gizmo. Hay dos formas principales de hacerlo: extendiendo **EditorNode3DGizmoPlugin** para los gizmos más simples, o creando un nuevo tipo :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`. Véase el tutorial en la documentación para más información.

Para usar **EditorNode3DGizmoPlugin**, registralo usando la función :ref:`EditorPlugin.add_node_3d_gizmo_plugin()<class_EditorPlugin_method_add_node_3d_gizmo_plugin>` primero.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Plugins de gizmos de Node3D <../tutorials/plugins/editor/3d_gizmos>`

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

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

Sobrescribe este método para definir si el gizmo (manejado por el plugin) puede ser escondido o no. Devuelve ``true`` si no está sobrescrito.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__commit_handle:

.. rst-class:: classref-method

|void| **_commit_handle**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`

Override this method to commit a handle being edited (handles must have been previously added by :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` during :ref:`_redraw()<class_EditorNode3DGizmoPlugin_private_method__redraw>`). This usually means creating an :ref:`UndoRedo<class_UndoRedo>` action for the change, using the current handle value as "do" and the ``restore`` argument as "undo".

If the ``cancel`` argument is ``true``, the ``restore`` value should be directly set, without any :ref:`UndoRedo<class_UndoRedo>` action.

The ``secondary`` argument is ``true`` when the committed handle is secondary (see :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information).

Called for this plugin's active gizmos.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos:

.. rst-class:: classref-method

|void| **_commit_subgizmos**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`

Override this method to commit a group of subgizmos being edited (see :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>` and :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`). This usually means creating an :ref:`UndoRedo<class_UndoRedo>` action for the change, using the current transforms as "do" and the ``restores`` transforms as "undo".

If the ``cancel`` argument is ``true``, the ``restores`` transforms should be directly set, without any :ref:`UndoRedo<class_UndoRedo>` action. As with all subgizmo methods, transforms are given in local space respect to the gizmo's Node3D. Called for this plugin's active gizmos.

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

Sobrescribe este método para proporcionar el nombre que aparecerá en el menú de visibilidad del gizmo.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_handle_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_handle_name**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_handle_name>`

Override this method to provide gizmo's handle names. The ``secondary`` argument is ``true`` when the requested handle is secondary (see :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information). Called for this plugin's active gizmos.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_handle_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_handle_value**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_handle_value>`

Override this method to return the current value of a handle. This value will be requested at the start of an edit and used as the ``restore`` argument in :ref:`_commit_handle()<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`.

The ``secondary`` argument is ``true`` when the requested handle is secondary (see :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information).

Called for this plugin's active gizmos.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_priority:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_priority>`

Override this method to set the gizmo's priority. Gizmos with higher priority will have precedence when processing inputs like handles or subgizmos selection.

All built-in editor gizmos return a priority of ``-1``. If not overridden, this method will return ``0``, which means custom gizmos will automatically get higher priority than built-in gizmos.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_subgizmo_transform**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>`

Override this method to return the current transform of a subgizmo. As with all subgizmo methods, the transform should be in local space respect to the gizmo's Node3D. This transform will be requested at the start of an edit and used in the ``restore`` argument in :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`. Called for this plugin's active gizmos.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__has_gizmo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_gizmo**\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`

Sobrescribe este método para definir qué nodos de Node3D tienen un gizmo de este plugin. Cada vez que se añade un nodo :ref:`Node3D<class_Node3D>` a una escena se llama a este método, si devuelve ``true`` el nodo obtiene un :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` genérico asignado y se añade a la lista de gizmos activos de este plugin.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_handle_highlighted**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted>`

Override this method to return ``true`` whenever to given handle should be highlighted in the editor. The ``secondary`` argument is ``true`` when the requested handle is secondary (see :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information). Called for this plugin's active gizmos.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_selectable_when_hidden**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden>`

Override this method to define whether Node3D with this gizmo should be selectable even when the gizmo is hidden.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__redraw:

.. rst-class:: classref-method

|void| **_redraw**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__redraw>`

Override this method to add all the gizmo elements whenever a gizmo update is requested. It's common to call :ref:`EditorNode3DGizmo.clear()<class_EditorNode3DGizmo_method_clear>` at the beginning of this method and then add visual elements depending on the node's properties.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__set_handle:

.. rst-class:: classref-method

|void| **_set_handle**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__set_handle>`

Override this method to update the node's properties when the user drags a gizmo handle (previously added with :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`). The provided ``screen_pos`` is the mouse position in screen coordinates and the ``camera`` can be used to convert it to raycasts.

The ``secondary`` argument is ``true`` when the edited handle is secondary (see :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` for more information).

Called for this plugin's active gizmos.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform:

.. rst-class:: classref-method

|void| **_set_subgizmo_transform**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform>`

Override this method to update the node properties during subgizmo editing (see :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>` and :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`). The ``transform`` is given in the Node3D's local coordinate system. Called for this plugin's active gizmos.

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

Override this method to allow selecting subgizmos using mouse clicks. Given a ``camera`` and a ``screen_pos`` in screen coordinates, this method should return which subgizmo should be selected. The returned value should be a unique subgizmo identifier, which can have any non-negative value and will be used in other virtual methods like :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>` or :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`. Called for this plugin's active gizmos.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_add_material:

.. rst-class:: classref-method

|void| **add_material**\ (\ name\: :ref:`String<class_String>`, material\: :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_add_material>`

Añade un nuevo material a la lista de material interno para el plugin. Entonces se puede acceder a él con :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>`. No debe ser sobreescrito.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_handle_material:

.. rst-class:: classref-method

|void| **create_handle_material**\ (\ name\: :ref:`String<class_String>`, billboard\: :ref:`bool<class_bool>` = false, texture\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_handle_material>`

Creates a handle material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` and used in :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`. Should not be overridden.

You can optionally provide a texture to use instead of the default icon.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_icon_material:

.. rst-class:: classref-method

|void| **create_icon_material**\ (\ name\: :ref:`String<class_String>`, texture\: :ref:`Texture2D<class_Texture2D>`, on_top\: :ref:`bool<class_bool>` = false, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_icon_material>`

Crea un material de iconos con sus variantes (seleccionadas y/o editables) y las añade a la lista de material interno. Se puede acceder a ellas con :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` y utilizarlas en :ref:`EditorNode3DGizmo.add_unscaled_billboard()<class_EditorNode3DGizmo_method_add_unscaled_billboard>`. No debe sobrescribirse.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_material:

.. rst-class:: classref-method

|void| **create_material**\ (\ name\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, billboard\: :ref:`bool<class_bool>` = false, on_top\: :ref:`bool<class_bool>` = false, use_vertex_color\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_material>`

Crea un material sin sombreado con sus variantes (seleccionadas y/o editables) y las añade a la lista de material interno. Se puede acceder a ellas con :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` y utilizarlas en :ref:`EditorNode3DGizmo.add_mesh()<class_EditorNode3DGizmo_method_add_mesh>` y :ref:`EditorNode3DGizmo.add_lines()<class_EditorNode3DGizmo_method_add_lines>`. No debe sobrescribirse.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_get_material:

.. rst-class:: classref-method

:ref:`StandardMaterial3D<class_StandardMaterial3D>` **get_material**\ (\ name\: :ref:`String<class_String>`, gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` = null\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_get_material>`

Obtiene el material de la lista interna de materiales. Si se proporciona un :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, intentará obtener la variable correspondiente (seleccionada y/o editable).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
