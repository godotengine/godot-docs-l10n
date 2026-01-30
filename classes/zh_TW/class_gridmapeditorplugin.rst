:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMapEditorPlugin:

GridMapEditorPlugin
===================

**繼承：** :ref:`EditorPlugin<class_EditorPlugin>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Editor for :ref:`GridMap<class_GridMap>` nodes.

.. rst-class:: classref-introduction-group

說明
----

GridMapEditorPlugin provides access to the :ref:`GridMap<class_GridMap>` editor functionality.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_selection<class_GridMapEditorPlugin_method_clear_selection>`\ (\ )                                                                             |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GridMap<class_GridMap>` | :ref:`get_current_grid_map<class_GridMapEditorPlugin_method_get_current_grid_map>`\ (\ ) |const|                                                           |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`get_selected_cells<class_GridMapEditorPlugin_method_get_selected_cells>`\ (\ ) |const|                                                               |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_selected_palette_item<class_GridMapEditorPlugin_method_get_selected_palette_item>`\ (\ ) |const|                                                 |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`get_selection<class_GridMapEditorPlugin_method_get_selection>`\ (\ ) |const|                                                                         |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_selection<class_GridMapEditorPlugin_method_has_selection>`\ (\ ) |const|                                                                         |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_selected_palette_item<class_GridMapEditorPlugin_method_set_selected_palette_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                   |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_selection<class_GridMapEditorPlugin_method_set_selection>`\ (\ begin\: :ref:`Vector3i<class_Vector3i>`, end\: :ref:`Vector3i<class_Vector3i>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GridMapEditorPlugin_method_clear_selection:

.. rst-class:: classref-method

|void| **clear_selection**\ (\ ) :ref:`🔗<class_GridMapEditorPlugin_method_clear_selection>`

Deselects any currently selected cells.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_current_grid_map:

.. rst-class:: classref-method

:ref:`GridMap<class_GridMap>` **get_current_grid_map**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_current_grid_map>`

Returns the :ref:`GridMap<class_GridMap>` node currently edited by the grid map editor.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_selected_cells**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_cells>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the selected cells' coordinates.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_palette_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_palette_item**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_palette_item>`

Returns the index of the selected :ref:`MeshLibrary<class_MeshLibrary>` item in the grid map editor's palette or ``-1`` if no item is selected.

\ **Note:** The indices might not be in the same order as they appear in the editor's interface.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selection>`

Returns the cell coordinate bounds of the current selection. Use :ref:`has_selection()<class_GridMapEditorPlugin_method_has_selection>` to check if there is an active selection.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_has_selection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_has_selection>`

Returns ``true`` if there are selected cells.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selected_palette_item:

.. rst-class:: classref-method

|void| **set_selected_palette_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_set_selected_palette_item>`

Selects the :ref:`MeshLibrary<class_MeshLibrary>` item with the given index in the grid map editor's palette. If a negative index is given, no item will be selected. If a value greater than the last index is given, the last item will be selected.

\ **Note:** The indices might not be in the same order as they appear in the editor's interface.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selection:

.. rst-class:: classref-method

|void| **set_selection**\ (\ begin\: :ref:`Vector3i<class_Vector3i>`, end\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_GridMapEditorPlugin_method_set_selection>`

Selects the cells inside the given bounds from ``begin`` to ``end``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
