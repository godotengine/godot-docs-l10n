:github_url: hide

.. _class_VisualShader:

VisualShader
============

**继承：** :ref:`Shader<class_Shader>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

带有可视化编辑器的自定义着色器程序。

.. rst-class:: classref-introduction-group

描述
----

该类提供了一个类似图形的可视化编辑器，用于创建 :ref:`Shader<class_Shader>`\ 。尽管 **VisualShader** 不需要编码，但它们与脚本着色器共享相同的逻辑。它们使用可以相互连接的 :ref:`VisualShaderNode<class_VisualShaderNode>` 来控制着色器的流。可视化着色器图在幕后被转换为脚本着色器。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用可视化着色器 <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_VisualShader_Type:

.. rst-class:: classref-enumeration

enum **Type**: :ref:`🔗<enum_VisualShader_Type>`

.. _class_VisualShader_constant_TYPE_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_VERTEX** = ``0``

顶点着色器，对顶点进行操作。

.. _class_VisualShader_constant_TYPE_FRAGMENT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FRAGMENT** = ``1``

片段着色器，对片段（像素）进行操作。

.. _class_VisualShader_constant_TYPE_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_LIGHT** = ``2``

用于光线计算的着色器。

.. _class_VisualShader_constant_TYPE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START** = ``3``

粒子着色器的“开始”阶段所使用的函数。

.. _class_VisualShader_constant_TYPE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS** = ``4``

粒子着色器的“处理”阶段所使用的函数。

.. _class_VisualShader_constant_TYPE_COLLIDE:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_COLLIDE** = ``5``

粒子着色器的“碰撞”阶段所使用的函数（粒子碰撞处理器）。

.. _class_VisualShader_constant_TYPE_START_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START_CUSTOM** = ``6``

粒子着色器的“开始”阶段所使用的函数，带自定义输出。

.. _class_VisualShader_constant_TYPE_PROCESS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS_CUSTOM** = ``7``

粒子着色器的“处理”阶段所使用的函数，带自定义输出。

.. _class_VisualShader_constant_TYPE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_SKY** = ``8``

3D 环境中天空的着色器。

.. _class_VisualShader_constant_TYPE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FOG** = ``9``

为体积雾贴图的每个片段体素运行的一种计算着色器。

.. _class_VisualShader_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_MAX** = ``10``

代表 :ref:`Type<enum_VisualShader_Type>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingMode:

.. rst-class:: classref-enumeration

enum **VaryingMode**: :ref:`🔗<enum_VisualShader_VaryingMode>`

.. _class_VisualShader_constant_VARYING_MODE_VERTEX_TO_FRAG_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_VERTEX_TO_FRAG_LIGHT** = ``0``

Varying 从 ``Vertex`` 函数传到 ``Fragment`` 和 ``Light`` 函数。

.. _class_VisualShader_constant_VARYING_MODE_FRAG_TO_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_FRAG_TO_LIGHT** = ``1``

Varying 从 ``Fragment`` 函数传到 ``Light`` 函数。

.. _class_VisualShader_constant_VARYING_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_MAX** = ``2``

代表 :ref:`VaryingMode<enum_VisualShader_VaryingMode>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingType:

.. rst-class:: classref-enumeration

enum **VaryingType**: :ref:`🔗<enum_VisualShader_VaryingType>`

.. _class_VisualShader_constant_VARYING_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_FLOAT** = ``0``

Varying 的类型为 :ref:`float<class_float>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_INT** = ``1``

Varying 的类型为 :ref:`int<class_int>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_UINT** = ``2``

Varying 的类型为无符号 :ref:`int<class_int>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_2D** = ``3``

Varying 的类型为 :ref:`Vector2<class_Vector2>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_3D** = ``4``

Varying 的类型为 :ref:`Vector3<class_Vector3>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_4D** = ``5``

Varying 的类型为 :ref:`Vector2<class_Vector2>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_BOOLEAN** = ``6``

Varying 的类型为 :ref:`bool<class_bool>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_TRANSFORM** = ``7``

Varying 的类型为 :ref:`Transform2D<class_Transform2D>`\ 。

.. _class_VisualShader_constant_VARYING_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_MAX** = ``8``

代表 :ref:`VaryingType<enum_VisualShader_VaryingType>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_VisualShader_constant_NODE_ID_INVALID:

.. rst-class:: classref-constant

**NODE_ID_INVALID** = ``-1`` :ref:`🔗<class_VisualShader_constant_NODE_ID_INVALID>`

表示无效的 **VisualShader** 节点。

.. _class_VisualShader_constant_NODE_ID_OUTPUT:

.. rst-class:: classref-constant

**NODE_ID_OUTPUT** = ``0`` :ref:`🔗<class_VisualShader_constant_NODE_ID_OUTPUT>`

表示 **VisualShader** 的输出节点。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShader_property_graph_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **graph_offset** :ref:`🔗<class_VisualShader_property_graph_offset>`

.. rst-class:: classref-property-setget

- |void| **set_graph_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ )

**已弃用：** This property does nothing and always equals to zero.

已弃用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VisualShader_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, node\: :ref:`VisualShaderNode<class_VisualShaderNode>`, position\: :ref:`Vector2<class_Vector2>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_add_node>`

向着色器中添加指定的节点 ``node``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_add_varying:

.. rst-class:: classref-method

|void| **add_varying**\ (\ name\: :ref:`String<class_String>`, mode\: :ref:`VaryingMode<enum_VisualShader_VaryingMode>`, type\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ ) :ref:`🔗<class_VisualShader_method_add_varying>`

向着色器中添加新的 varying 值节点。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_attach_node_to_frame:

.. rst-class:: classref-method

|void| **attach_node_to_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, frame\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_attach_node_to_frame>`

将给定的节点附加到给定的框。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_can_connect_nodes:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_can_connect_nodes>`

如果指定节点和端口可以连接在一起，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes>`

连接指定的节点和端口。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes_forced:

.. rst-class:: classref-method

|void| **connect_nodes_forced**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes_forced>`

连接指定的节点和端口，即使它们无法连接。这样的连接是无效的，将不能正常工作。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_detach_node_from_frame:

.. rst-class:: classref-method

|void| **detach_node_from_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_detach_node_from_frame>`

将给定节点与其所附加的框分离。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_disconnect_nodes:

.. rst-class:: classref-method

|void| **disconnect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_disconnect_nodes>`

连接指定的节点和端口。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node:

.. rst-class:: classref-method

:ref:`VisualShaderNode<class_VisualShaderNode>` **get_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node>`

返回具有指定 ``type`` 和 ``id`` 的着色器节点实例。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_node_connections**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_connections>`

返回具有指定类型的连接节点的列表。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_node_list**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_list>`

返回着色器中具有指定类型的所有节点的列表。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_position>`

返回指定节点在着色器图中的位置。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_valid_node_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_valid_node_id**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_valid_node_id>`

返回能够加入到着色器图中的下一个有效节点 ID。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_has_varying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_varying**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShader_method_has_varying>`

如果着色器中存在名为 ``name`` 的 varying 则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_is_node_connection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_connection**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_is_node_connection>`

如果指定的节点和端口连接存在，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_remove_node>`

从着色器中删除指定的节点。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_varying:

.. rst-class:: classref-method

|void| **remove_varying**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShader_method_remove_varying>`

返回名为 ``name`` 的 varying 值节点。如果不存在该名称的节点则输出错误。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_replace_node:

.. rst-class:: classref-method

|void| **replace_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, new_class\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_VisualShader_method_replace_node>`

将指定节点替换为新类型的节点。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_mode:

.. rst-class:: classref-method

|void| **set_mode**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) :ref:`🔗<class_VisualShader_method_set_mode>`

设置该着色器的模式。

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VisualShader_method_set_node_position>`

设置指定节点的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
