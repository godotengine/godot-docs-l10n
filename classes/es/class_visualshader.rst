:github_url: hide

.. _class_VisualShader:

VisualShader
============

**Hereda:** :ref:`Shader<class_Shader>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un programa shader personalizado con un editor visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase proporciona un editor visual tipo grafo para crear un :ref:`Shader<class_Shader>`. Aunque los **VisualShader**\ s no requieren codificación, comparten la misma lógica con los shaders de script. Utilizan :ref:`VisualShaderNode<class_VisualShaderNode>`\ s que pueden conectarse entre sí para controlar el flujo del shader. El grafo de shader visual se convierte en un shader de script entre bastidores.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar VisualShaders <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`graph_offset<class_VisualShader_property_graph_offset>` |
   +-------------------------------+---------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_VisualShader_Type:

.. rst-class:: classref-enumeration

enum **Type**: :ref:`🔗<enum_VisualShader_Type>`

.. _class_VisualShader_constant_TYPE_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_VERTEX** = ``0``

Un shader de vértices, operando en vértices.

.. _class_VisualShader_constant_TYPE_FRAGMENT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FRAGMENT** = ``1``

Un shader de fragmentos, operando con fragmentos (píxeles).

.. _class_VisualShader_constant_TYPE_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_LIGHT** = ``2``

Un shader para cálculos de luz.

.. _class_VisualShader_constant_TYPE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START** = ``3``

Una función para la etapa "start" del shader de partículas.

.. _class_VisualShader_constant_TYPE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS** = ``4``

Una función para la etapa "process" del shader de partículas.

.. _class_VisualShader_constant_TYPE_COLLIDE:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_COLLIDE** = ``5``

Una función para la etapa "collide" (manejador de colisión de partículas) del shader de partículas.

.. _class_VisualShader_constant_TYPE_START_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START_CUSTOM** = ``6``

Una función para la etapa "start" del shader de partículas, con salida personalizada.

.. _class_VisualShader_constant_TYPE_PROCESS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS_CUSTOM** = ``7``

Una función para la etapa "process" del shader de partículas, con salida personalizada.

.. _class_VisualShader_constant_TYPE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_SKY** = ``8``

Un shader para el cielo del entorno 3D.

.. _class_VisualShader_constant_TYPE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FOG** = ``9``

Un shader de computo que se ejecuta para cada froxel del mapa de niebla volumétrica.

.. _class_VisualShader_constant_TYPE_TEXTURE_BLIT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_TEXTURE_BLIT** = ``10``

A shader used to process blit calls to a DrawableTexture.

.. _class_VisualShader_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_MAX** = ``11``

Representa el tamaño del enumerado :ref:`Type<enum_VisualShader_Type>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingMode:

.. rst-class:: classref-enumeration

enum **VaryingMode**: :ref:`🔗<enum_VisualShader_VaryingMode>`

.. _class_VisualShader_constant_VARYING_MODE_VERTEX_TO_FRAG_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_VERTEX_TO_FRAG_LIGHT** = ``0``

La varying se pasa de la función ``Vertex`` a las funciones ``Fragment`` y ``Light``.

.. _class_VisualShader_constant_VARYING_MODE_FRAG_TO_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_FRAG_TO_LIGHT** = ``1``

La varying se pasa de la función ``Fragment`` a la función ``Light``.

.. _class_VisualShader_constant_VARYING_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_MAX** = ``2``

Representa el tamaño del enum :ref:`VaryingMode<enum_VisualShader_VaryingMode>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingType:

.. rst-class:: classref-enumeration

enum **VaryingType**: :ref:`🔗<enum_VisualShader_VaryingType>`

.. _class_VisualShader_constant_VARYING_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_FLOAT** = ``0``

La varying es de tipo :ref:`float<class_float>`.

.. _class_VisualShader_constant_VARYING_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_INT** = ``1``

La varying es de tipo :ref:`int<class_int>`.

.. _class_VisualShader_constant_VARYING_TYPE_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_UINT** = ``2``

La varying es de tipo unsigned :ref:`int<class_int>`.

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_2D** = ``3``

La varying es de tipo :ref:`Vector2<class_Vector2>`.

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_3D** = ``4``

La varying es de tipo :ref:`Vector3<class_Vector3>`.

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_4D** = ``5``

La varying es de tipo :ref:`Vector4<class_Vector4>`.

.. _class_VisualShader_constant_VARYING_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_BOOLEAN** = ``6``

La varying es de tipo :ref:`bool<class_bool>`.

.. _class_VisualShader_constant_VARYING_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_TRANSFORM** = ``7``

La varying es de tipo :ref:`Transform3D<class_Transform3D>`.

.. _class_VisualShader_constant_VARYING_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_MAX** = ``8``

Representa el tamaño del enum :ref:`VaryingType<enum_VisualShader_VaryingType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_VisualShader_constant_NODE_ID_INVALID:

.. rst-class:: classref-constant

**NODE_ID_INVALID** = ``-1`` :ref:`🔗<class_VisualShader_constant_NODE_ID_INVALID>`

Indica un nodo **VisualShader** no válido.

.. _class_VisualShader_constant_NODE_ID_OUTPUT:

.. rst-class:: classref-constant

**NODE_ID_OUTPUT** = ``0`` :ref:`🔗<class_VisualShader_constant_NODE_ID_OUTPUT>`

Indica un nodo de salida de **VisualShader**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShader_property_graph_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **graph_offset** :ref:`🔗<class_VisualShader_property_graph_offset>`

.. rst-class:: classref-property-setget

- |void| **set_graph_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ )

**Obsoleto:** This property does nothing and always equals to zero.

Obsoleto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VisualShader_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, node\: :ref:`VisualShaderNode<class_VisualShaderNode>`, position\: :ref:`Vector2<class_Vector2>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_add_node>`

Agrega el ``node`` especificado al sombreador.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_add_varying:

.. rst-class:: classref-method

|void| **add_varying**\ (\ name\: :ref:`String<class_String>`, mode\: :ref:`VaryingMode<enum_VisualShader_VaryingMode>`, type\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ ) :ref:`🔗<class_VisualShader_method_add_varying>`

Agrega un nuevo nodo de valor varying al shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_attach_node_to_frame:

.. rst-class:: classref-method

|void| **attach_node_to_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, frame\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_attach_node_to_frame>`

Adjunta el nodo dado al fotograma dado.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_can_connect_nodes:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_can_connect_nodes>`

Devuelve ``true`` si los nodos y puertos especificados pueden ser conectados juntos.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes>`

Conecta los nodos y puertos especificados.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes_forced:

.. rst-class:: classref-method

|void| **connect_nodes_forced**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes_forced>`

Conecta los nodos y puertos especificados, aunque no puedan ser conectados. Dicha conexión es inválida y no funcionará correctamente.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_detach_node_from_frame:

.. rst-class:: classref-method

|void| **detach_node_from_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_detach_node_from_frame>`

Desvincula el nodo dado del marco al que está adjunto.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_disconnect_nodes:

.. rst-class:: classref-method

|void| **disconnect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_disconnect_nodes>`

Conecta los nodos y puertos especificados.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node:

.. rst-class:: classref-method

:ref:`VisualShaderNode<class_VisualShaderNode>` **get_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node>`

Devuelve la instancia del nodo shader con el ``type`` y el ``id`` especificados.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_node_connections**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_connections>`

Devuelve la lista de nodos conectados con el tipo especificado.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_node_list**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_list>`

Devuelve la lista de todos los nodos del shader con el tipo especificado.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_position>`

Devuelve la posición del nodo especificado dentro del gráfico shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_valid_node_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_valid_node_id**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_valid_node_id>`

Devuelve el siguiente ID de nodo válido que se puede añadir al gráfico de shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_has_varying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_varying**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShader_method_has_varying>`

Devuelve ``true`` si el shader tiene una varying con el ``name`` dado.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_is_node_connection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_connection**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_is_node_connection>`

Devuelve ``true`` si existe el nodo y la conexión de puerto especificados.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_remove_node>`

Elimina el nodo especificado del shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_varying:

.. rst-class:: classref-method

|void| **remove_varying**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShader_method_remove_varying>`

Elimina un nodo de valor varying con el ``name`` dado. Imprime un error si no se encuentra un nodo con este nombre.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_replace_node:

.. rst-class:: classref-method

|void| **replace_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, new_class\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_VisualShader_method_replace_node>`

Reemplaza el nodo especificado con un nodo de nuevo tipo de clase.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_mode:

.. rst-class:: classref-method

|void| **set_mode**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) :ref:`🔗<class_VisualShader_method_set_mode>`

Establece el modo de este shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VisualShader_method_set_node_position>`

Establece la posición del nodo especificado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
