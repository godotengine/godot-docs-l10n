:github_url: hide

.. _class_VisualShader:

VisualShader
============

**繼承：** :ref:`Shader<class_Shader>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

帶有視覺化編輯器的自訂著色器程式。

.. rst-class:: classref-introduction-group

說明
----

這類提供了一個類似圖形的視覺化編輯器，用於建立\ :ref:`Shader<class_Shader>`\ 。雖然\ **VisualShader** 不需要編碼，但它們與腳本著色器共用相同的邏輯。它們使用\ :ref:`VisualShaderNode<class_VisualShaderNode>` 可以相互連接以控制著色器的流程。視覺著色器圖在幕後轉換為腳本著色器。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用視覺化著色器 <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`graph_offset<class_VisualShader_property_graph_offset>` |
   +-------------------------------+---------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_node<class_VisualShader_method_add_node>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, node\: :ref:`VisualShaderNode<class_VisualShaderNode>`, position\: :ref:`Vector2<class_Vector2>`, id\: :ref:`int<class_int>`\ )                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_varying<class_VisualShader_method_add_varying>`\ (\ name\: :ref:`String<class_String>`, mode\: :ref:`VaryingMode<enum_VisualShader_VaryingMode>`, type\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ )                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`attach_node_to_frame<class_VisualShader_method_attach_node_to_frame>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, frame\: :ref:`int<class_int>`\ )                                                                                  |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_connect_nodes<class_VisualShader_method_can_connect_nodes>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const|   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`connect_nodes<class_VisualShader_method_connect_nodes>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ )                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`connect_nodes_forced<class_VisualShader_method_connect_nodes_forced>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ )     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`detach_node_from_frame<class_VisualShader_method_detach_node_from_frame>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ )                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`disconnect_nodes<class_VisualShader_method_disconnect_nodes>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ )             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VisualShaderNode<class_VisualShaderNode>`                  | :ref:`get_node<class_VisualShader_method_get_node>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_node_connections<class_VisualShader_method_get_node_connections>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const|                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_node_list<class_VisualShader_method_get_node_list>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const|                                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                    | :ref:`get_node_position<class_VisualShader_method_get_node_position>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const|                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_valid_node_id<class_VisualShader_method_get_valid_node_id>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const|                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_varying<class_VisualShader_method_has_varying>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_node_connection<class_VisualShader_method_is_node_connection>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_node<class_VisualShader_method_remove_node>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ )                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_varying<class_VisualShader_method_remove_varying>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`replace_node<class_VisualShader_method_replace_node>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, new_class\: :ref:`StringName<class_StringName>`\ )                                                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_mode<class_VisualShader_method_set_mode>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ )                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_node_position<class_VisualShader_method_set_node_position>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShader_Type:

.. rst-class:: classref-enumeration

enum **Type**: :ref:`🔗<enum_VisualShader_Type>`

.. _class_VisualShader_constant_TYPE_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_VERTEX** = ``0``

頂點著色器，對頂點進行操作。

.. _class_VisualShader_constant_TYPE_FRAGMENT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FRAGMENT** = ``1``

片段著色器，對片段（圖元）進行操作。

.. _class_VisualShader_constant_TYPE_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_LIGHT** = ``2``

用於光線計算的著色器。

.. _class_VisualShader_constant_TYPE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START** = ``3``

粒子著色器的“開始”階段所使用的函式。

.. _class_VisualShader_constant_TYPE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS** = ``4``

粒子著色器的“處理”階段所使用的函式。

.. _class_VisualShader_constant_TYPE_COLLIDE:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_COLLIDE** = ``5``

粒子著色器的“碰撞”階段所使用的函式（粒子碰撞處理器）。

.. _class_VisualShader_constant_TYPE_START_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START_CUSTOM** = ``6``

粒子著色器的“開始”階段所使用的函式，帶自訂輸出。

.. _class_VisualShader_constant_TYPE_PROCESS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS_CUSTOM** = ``7``

粒子著色器的“處理”階段所使用的函式，帶自訂輸出。

.. _class_VisualShader_constant_TYPE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_SKY** = ``8``

3D 環境中天空的著色器。

.. _class_VisualShader_constant_TYPE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FOG** = ``9``

為體積霧貼圖的每個片段體素運作的一種計算著色器。

.. _class_VisualShader_constant_TYPE_TEXTURE_BLIT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_TEXTURE_BLIT** = ``10``

A shader used to process blit calls to a DrawableTexture.

.. _class_VisualShader_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_MAX** = ``11``

代表 :ref:`Type<enum_VisualShader_Type>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingMode:

.. rst-class:: classref-enumeration

enum **VaryingMode**: :ref:`🔗<enum_VisualShader_VaryingMode>`

.. _class_VisualShader_constant_VARYING_MODE_VERTEX_TO_FRAG_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_VERTEX_TO_FRAG_LIGHT** = ``0``

Varying 從 ``Vertex`` 函式傳到 ``Fragment`` 和 ``Light`` 函式。

.. _class_VisualShader_constant_VARYING_MODE_FRAG_TO_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_FRAG_TO_LIGHT** = ``1``

Varying 從 ``Fragment`` 函式傳到 ``Light`` 函式。

.. _class_VisualShader_constant_VARYING_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_MAX** = ``2``

代表 :ref:`VaryingMode<enum_VisualShader_VaryingMode>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingType:

.. rst-class:: classref-enumeration

enum **VaryingType**: :ref:`🔗<enum_VisualShader_VaryingType>`

.. _class_VisualShader_constant_VARYING_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_FLOAT** = ``0``

Varying 的型別為 :ref:`float<class_float>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_INT** = ``1``

Varying 的型別為 :ref:`int<class_int>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_UINT** = ``2``

Varying 的型別為無符號 :ref:`int<class_int>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_2D** = ``3``

Varying 的型別為 :ref:`Vector2<class_Vector2>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_3D** = ``4``

Varying 的型別為 :ref:`Vector3<class_Vector3>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_4D** = ``5``

Varying 的型別為 :ref:`Vector2<class_Vector2>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_BOOLEAN** = ``6``

Varying 的型別為 :ref:`bool<class_bool>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_TRANSFORM** = ``7``

Varying 的型別為 :ref:`Transform2D<class_Transform2D>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_MAX** = ``8``

代表 :ref:`VaryingType<enum_VisualShader_VaryingType>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_VisualShader_constant_NODE_ID_INVALID:

.. rst-class:: classref-constant

**NODE_ID_INVALID** = ``-1`` :ref:`🔗<class_VisualShader_constant_NODE_ID_INVALID>`

Indicates an invalid **VisualShader** node.

.. _class_VisualShader_constant_NODE_ID_OUTPUT:

.. rst-class:: classref-constant

**NODE_ID_OUTPUT** = ``0`` :ref:`🔗<class_VisualShader_constant_NODE_ID_OUTPUT>`

Indicates an output node of **VisualShader**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShader_property_graph_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **graph_offset** :ref:`🔗<class_VisualShader_property_graph_offset>`

.. rst-class:: classref-property-setget

- |void| **set_graph_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ )

**已棄用：** This property does nothing and always equals to zero.

Deprecated.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisualShader_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, node\: :ref:`VisualShaderNode<class_VisualShaderNode>`, position\: :ref:`Vector2<class_Vector2>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_add_node>`

向著色器中新增指定的節點 ``node``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_add_varying:

.. rst-class:: classref-method

|void| **add_varying**\ (\ name\: :ref:`String<class_String>`, mode\: :ref:`VaryingMode<enum_VisualShader_VaryingMode>`, type\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ ) :ref:`🔗<class_VisualShader_method_add_varying>`

向著色器中新增新的 varying 值節點。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_attach_node_to_frame:

.. rst-class:: classref-method

|void| **attach_node_to_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, frame\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_attach_node_to_frame>`

Attaches the given node to the given frame.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_can_connect_nodes:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_can_connect_nodes>`

如果指定節點和埠可以連接在一起，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes>`

連接指定的節點和埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes_forced:

.. rst-class:: classref-method

|void| **connect_nodes_forced**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes_forced>`

連接指定的節點和埠，即使它們無法連接。這樣的連接是無效的，將不能正常工作。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_detach_node_from_frame:

.. rst-class:: classref-method

|void| **detach_node_from_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_detach_node_from_frame>`

Detaches the given node from the frame it is attached to.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_disconnect_nodes:

.. rst-class:: classref-method

|void| **disconnect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_disconnect_nodes>`

連接指定的節點和埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node:

.. rst-class:: classref-method

:ref:`VisualShaderNode<class_VisualShaderNode>` **get_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node>`

返回具有指定 ``type`` 和 ``id`` 的著色器節點實例。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_node_connections**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_connections>`

返回具有指定型別的連接節點的列表。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_node_list**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_list>`

返回著色器中具有指定型別的所有節點的列表。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_position>`

返回指定節點在著色器圖中的位置。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_valid_node_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_valid_node_id**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_valid_node_id>`

返回能夠加入到著色器圖中的下一個有效節點 ID。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_has_varying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_varying**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShader_method_has_varying>`

如果著色器中存在名為 ``name`` 的 varying 則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_is_node_connection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_connection**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_is_node_connection>`

如果指定的節點和埠連接存在，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_remove_node>`

從著色器中刪除指定的節點。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_varying:

.. rst-class:: classref-method

|void| **remove_varying**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShader_method_remove_varying>`

返回名為 ``name`` 的 varying 值節點。如果不存在該名稱的節點則輸出錯誤。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_replace_node:

.. rst-class:: classref-method

|void| **replace_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, new_class\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_VisualShader_method_replace_node>`

將指定節點替換為新型別的節點。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_mode:

.. rst-class:: classref-method

|void| **set_mode**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) :ref:`🔗<class_VisualShader_method_set_mode>`

設定該著色器的模式。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VisualShader_method_set_node_position>`

設定指定節點的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
