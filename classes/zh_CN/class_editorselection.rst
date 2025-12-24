:github_url: hide

.. _class_EditorSelection:

EditorSelection
===============

**继承：** :ref:`Object<class_Object>`

管理编辑器中的 SceneTree 选择。

.. rst-class:: classref-introduction-group

描述
----

这个对象管理编辑器中的 SceneTree 选择。

\ **注意：**\ 这个类不应该直接实例化。相反，使用\ :ref:`EditorInterface.get_selection()<class_EditorInterface_method_get_selection>`\ 访问单例。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`add_node<class_EditorSelection_method_add_node>`\ (\ node\: :ref:`Node<class_Node>`\ )                 |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`clear<class_EditorSelection_method_clear>`\ (\ )                                                       |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_selected_nodes<class_EditorSelection_method_get_selected_nodes>`\ (\ )                             |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_top_selected_nodes<class_EditorSelection_method_get_top_selected_nodes>`\ (\ )                     |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_transformable_selected_nodes<class_EditorSelection_method_get_transformable_selected_nodes>`\ (\ ) |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`remove_node<class_EditorSelection_method_remove_node>`\ (\ node\: :ref:`Node<class_Node>`\ )           |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_EditorSelection_signal_selection_changed:

.. rst-class:: classref-signal

**selection_changed**\ (\ ) :ref:`🔗<class_EditorSelection_signal_selection_changed>`

更改选择时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorSelection_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorSelection_method_add_node>`

将一个节点添加到选择中。

\ **注意：**\ 新选择的节点不会在检查器中自动被编辑。如果你想编辑一个节点，请使用 :ref:`EditorInterface.edit_node()<class_EditorInterface_method_edit_node>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_EditorSelection_method_clear>`

清除选中项。

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_selected_nodes>`

返回所选节点的列表。

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_top_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_top_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_top_selected_nodes>`

返回仅包含顶层选定节点的列表，不包括任何子节点。适用于执行变换操作（移动、旋转等）。

例如节点 A 有一个子节点 B、一个同级节点 C，如果选中这三个节点，那么该方法只会返回 A 和 C。更改 A 的全局变换将影响 B 的全局变换，因此不需要单独更改 B。

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_transformable_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_transformable_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_transformable_selected_nodes>`

**已弃用：** Use :ref:`get_top_selected_nodes()<class_EditorSelection_method_get_top_selected_nodes>` instead.

返回仅包含顶层选定节点的列表，不包括任何子节点。适用于执行变换操作（移动、旋转等）。见 :ref:`get_top_selected_nodes()<class_EditorSelection_method_get_top_selected_nodes>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorSelection_method_remove_node>`

从选择中删除一个节点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
