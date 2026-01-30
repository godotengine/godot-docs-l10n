:github_url: hide

.. _class_AnimationNodeBlendTree:

AnimationNodeBlendTree
======================

**繼承：** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

由多種 :ref:`AnimationNode<class_AnimationNode>` 形成的子樹，可用於複雜動畫。由 :ref:`AnimationTree<class_AnimationTree>` 使用。

.. rst-class:: classref-introduction-group

說明
----

這個動畫節點可以包含任何其他類型的動畫節點子樹，例如 :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`\ 、\ :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`\ 、\ :ref:`AnimationNodeBlend3<class_AnimationNodeBlend3>`\ 、\ :ref:`AnimationNodeOneShot<class_AnimationNodeOneShot>` 等。這是最常用的動畫節點根之一。

預設會建立一個名為 ``output`` 的 :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` 節點。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`graph_offset<class_AnimationNodeBlendTree_property_graph_offset>` | ``Vector2(0, 0)`` |
   +-------------------------------+-------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_node<class_AnimationNodeBlendTree_method_add_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`connect_node<class_AnimationNodeBlendTree_method_connect_node>`\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`, output_node\: :ref:`StringName<class_StringName>`\ )       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`disconnect_node<class_AnimationNodeBlendTree_method_disconnect_node>`\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`\ )                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>`                        | :ref:`get_node<class_AnimationNodeBlendTree_method_get_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_node_list<class_AnimationNodeBlendTree_method_get_node_list>`\ (\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                    | :ref:`get_node_position<class_AnimationNodeBlendTree_method_get_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_node<class_AnimationNodeBlendTree_method_has_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_node<class_AnimationNodeBlendTree_method_remove_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_node<class_AnimationNodeBlendTree_method_rename_node>`\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_node_position<class_AnimationNodeBlendTree_method_set_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_AnimationNodeBlendTree_signal_node_changed:

.. rst-class:: classref-signal

**node_changed**\ (\ node_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_signal_node_changed>`

當輸入埠資訊變更時觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_AnimationNodeBlendTree_constant_CONNECTION_OK:

.. rst-class:: classref-constant

**CONNECTION_OK** = ``0`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_OK>`

連線成功。

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_INPUT** = ``1`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT>`

輸入節點為 ``null``\ 。

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT_INDEX:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_INPUT_INDEX** = ``2`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT_INDEX>`

指定的輸入埠超出範圍。

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_OUTPUT:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_OUTPUT** = ``3`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_OUTPUT>`

輸出節點為 ``null``\ 。

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_SAME_NODE:

.. rst-class:: classref-constant

**CONNECTION_ERROR_SAME_NODE** = ``4`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_SAME_NODE>`

輸入與輸出節點相同。

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_CONNECTION_EXISTS:

.. rst-class:: classref-constant

**CONNECTION_ERROR_CONNECTION_EXISTS** = ``5`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_CONNECTION_EXISTS>`

指定的連線已存在。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimationNodeBlendTree_property_graph_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **graph_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AnimationNodeBlendTree_property_graph_offset>`

.. rst-class:: classref-property-setget

- |void| **set_graph_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ )

所有子動畫節點的全域偏移量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimationNodeBlendTree_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_add_node>`

在給定的 ``position`` 新增一個 :ref:`AnimationNode<class_AnimationNode>`\ 。\ ``name`` 用於後續識別該子動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_connect_node:

.. rst-class:: classref-method

|void| **connect_node**\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`, output_node\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_connect_node>`

將一個 :ref:`AnimationNode<class_AnimationNode>` 的輸出連接到另一個 :ref:`AnimationNode<class_AnimationNode>`\ ，並接到 ``input_index`` 指定的輸入埠。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_disconnect_node:

.. rst-class:: classref-method

|void| **disconnect_node**\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_disconnect_node>`

斷開連到指定輸入端的動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **get_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node>`

返回名稱為 ``name`` 的子動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_node_list**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node_list>`

返回一個列表，內含此混合樹中所有子動畫節點的名稱。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node_position>`

返回名稱為 ``name`` 的子動畫節點的位置。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_has_node>`

如果存在名稱為 ``name`` 的子動畫節點，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_remove_node>`

移除子動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_rename_node:

.. rst-class:: classref-method

|void| **rename_node**\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_rename_node>`

更改子動畫節點的名稱。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_set_node_position>`

修改子動畫節點的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
