:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMapEditorPlugin:

GridMapEditorPlugin
===================

**继承：** :ref:`EditorPlugin<class_EditorPlugin>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`GridMap<class_GridMap>` 节点的编辑器。

.. rst-class:: classref-introduction-group

描述
----

GridMapEditorPlugin 提供对 :ref:`GridMap<class_GridMap>` 编辑器功能的访问。

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

方法说明
--------

.. _class_GridMapEditorPlugin_method_clear_selection:

.. rst-class:: classref-method

|void| **clear_selection**\ (\ ) :ref:`🔗<class_GridMapEditorPlugin_method_clear_selection>`

取消选择当前选中的单元格。

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_current_grid_map:

.. rst-class:: classref-method

:ref:`GridMap<class_GridMap>` **get_current_grid_map**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_current_grid_map>`

返回网格地图编辑器当前编辑的 :ref:`GridMap<class_GridMap>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_selected_cells**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_cells>`

返回 :ref:`Vector3i<class_Vector3i>` 数组，表示选中单元格的坐标。

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_palette_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_palette_item**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_palette_item>`

返回网格地图编辑器调色板中选中的 :ref:`MeshLibrary<class_MeshLibrary>` 项目的索引号，未选中项目时返回 ``-1``\ 。

\ **注意：**\ 索引可能与编辑器界面中展示的顺序不一致。

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selection>`

返回当前选中项的单元格坐标边界。请使用 :ref:`has_selection()<class_GridMapEditorPlugin_method_has_selection>` 检查是否存在选中项。

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_has_selection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_has_selection>`

如果存在选中的单元格，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selected_palette_item:

.. rst-class:: classref-method

|void| **set_selected_palette_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_set_selected_palette_item>`

选中网格地图编辑器调色板中索引号对应的 :ref:`MeshLibrary<class_MeshLibrary>` 项目。如果给定的索引为负数，则不选中任何项目。如果给定值超过最后一个索引，则选中最后一个项目。

\ **注意：**\ 索引可能与编辑器界面中展示的顺序不一致。

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selection:

.. rst-class:: classref-method

|void| **set_selection**\ (\ begin\: :ref:`Vector3i<class_Vector3i>`, end\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_GridMapEditorPlugin_method_set_selection>`

选中从 ``begin`` 到 ``end`` 范围内的单元格。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
