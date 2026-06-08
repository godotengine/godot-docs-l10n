:github_url: hide

.. _class_VisualShader:

VisualShader
============

**Наследует:** :ref:`Shader<class_Shader>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Пользовательская шейдерная программа с визуальным редактором.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс предоставляет графический визуальный редактор для создания :ref:`Shader<class_Shader>`. Хотя **VisualShader** не требуют кодирования, они разделяют ту же логику с шейдерами скриптов. Они используют :ref:`VisualShaderNode<class_VisualShaderNode>`, которые могут быть соединены друг с другом для управления потоком шейдера. Граф визуального шейдера преобразуется в шейдер скрипта за кулисами.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование VisualShaders <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`graph_offset<class_VisualShader_property_graph_offset>` |
   +-------------------------------+---------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

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

Перечисления
------------------------

.. _enum_VisualShader_Type:

.. rst-class:: classref-enumeration

enum **Type**: :ref:`🔗<enum_VisualShader_Type>`

.. _class_VisualShader_constant_TYPE_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_VERTEX** = ``0``

Вершинный шейдер, работающий с вершинами.

.. _class_VisualShader_constant_TYPE_FRAGMENT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FRAGMENT** = ``1``

Фрагментный шейдер, работающий с фрагментами (пикселями).

.. _class_VisualShader_constant_TYPE_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_LIGHT** = ``2``

Шейдер для расчета освещения.

.. _class_VisualShader_constant_TYPE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START** = ``3``

Функция для «стартового» этапа шейдера частиц.

.. _class_VisualShader_constant_TYPE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS** = ``4``

Функция для этапа «обработки» шейдера частиц.

.. _class_VisualShader_constant_TYPE_COLLIDE:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_COLLIDE** = ``5``

Функция для этапа «столкновения» (обработчик столкновений частиц) шейдера частиц.

.. _class_VisualShader_constant_TYPE_START_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START_CUSTOM** = ``6``

Функция для «стартового» этапа шейдера частиц с настраиваемым выводом.

.. _class_VisualShader_constant_TYPE_PROCESS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS_CUSTOM** = ``7``

Функция для этапа «обработки» шейдера частиц с настраиваемым выводом.

.. _class_VisualShader_constant_TYPE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_SKY** = ``8``

Шейдер для неба трехмерной среды.

.. _class_VisualShader_constant_TYPE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FOG** = ``9``

Вычислительный шейдер, который запускается для каждого фрокселя карты объемного тумана.

.. _class_VisualShader_constant_TYPE_TEXTURE_BLIT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_TEXTURE_BLIT** = ``10``

Шейдер, используемый для обработки вызовов blit к DrawableTexture.

.. _class_VisualShader_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_MAX** = ``11``

Представляет размер перечисления :ref:`Type<enum_VisualShader_Type>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingMode:

.. rst-class:: classref-enumeration

enum **VaryingMode**: :ref:`🔗<enum_VisualShader_VaryingMode>`

.. _class_VisualShader_constant_VARYING_MODE_VERTEX_TO_FRAG_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_VERTEX_TO_FRAG_LIGHT** = ``0``

Переменная передается из функции ``Vertex`` в функции ``Fragment`` и ``Light``.

.. _class_VisualShader_constant_VARYING_MODE_FRAG_TO_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_FRAG_TO_LIGHT** = ``1``

Переменная передается из функции ``Fragment`` в функцию ``Light``.

.. _class_VisualShader_constant_VARYING_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_MAX** = ``2``

Представляет размер перечисления :ref:`VaryingMode<enum_VisualShader_VaryingMode>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingType:

.. rst-class:: classref-enumeration

enum **VaryingType**: :ref:`🔗<enum_VisualShader_VaryingType>`

.. _class_VisualShader_constant_VARYING_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_FLOAT** = ``0``

Varying имеет тип :ref:`float<class_float>`.

.. _class_VisualShader_constant_VARYING_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_INT** = ``1``

Varying имеет тип :ref:`int<class_int>`.

.. _class_VisualShader_constant_VARYING_TYPE_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_UINT** = ``2``

Varying имеет тип unsigned :ref:`int<class_int>`.

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_2D** = ``3``

Varying имеет тип :ref:`Vector2<class_Vector2>`.

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_3D** = ``4``

Varying имеет тип :ref:`Vector3<class_Vector3>`.

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_4D** = ``5``

Varying имеет тип :ref:`Vector4<class_Vector4>`.

.. _class_VisualShader_constant_VARYING_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_BOOLEAN** = ``6``

Varying имеет тип :ref:`bool<class_bool>`.

.. _class_VisualShader_constant_VARYING_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_TRANSFORM** = ``7``

Varying имеет тип :ref:`Transform3D<class_Transform3D>`.

.. _class_VisualShader_constant_VARYING_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_MAX** = ``8``

Представляет размер перечисления :ref:`VaryingType<enum_VisualShader_VaryingType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_VisualShader_constant_NODE_ID_INVALID:

.. rst-class:: classref-constant

**NODE_ID_INVALID** = ``-1`` :ref:`🔗<class_VisualShader_constant_NODE_ID_INVALID>`

Указывает на недопустимый узел **VisualShader**.

.. _class_VisualShader_constant_NODE_ID_OUTPUT:

.. rst-class:: classref-constant

**NODE_ID_OUTPUT** = ``0`` :ref:`🔗<class_VisualShader_constant_NODE_ID_OUTPUT>`

Указывает выходной узел **VisualShader**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShader_property_graph_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **graph_offset** :ref:`🔗<class_VisualShader_property_graph_offset>`

.. rst-class:: classref-property-setget

- |void| **set_graph_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ )

**Устарело:** This property does nothing and always equals to zero.

Устарело.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VisualShader_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, node\: :ref:`VisualShaderNode<class_VisualShaderNode>`, position\: :ref:`Vector2<class_Vector2>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_add_node>`

Добавляет указанный ``node`` в шейдер.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_add_varying:

.. rst-class:: classref-method

|void| **add_varying**\ (\ name\: :ref:`String<class_String>`, mode\: :ref:`VaryingMode<enum_VisualShader_VaryingMode>`, type\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ ) :ref:`🔗<class_VisualShader_method_add_varying>`

Добавляет в шейдер новый узел переменного значения.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_attach_node_to_frame:

.. rst-class:: classref-method

|void| **attach_node_to_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, frame\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_attach_node_to_frame>`

Прикрепляет указанный узел к указанному фрейму.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_can_connect_nodes:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_can_connect_nodes>`

Возвращает ``true``, если указанные узлы и порты могут быть соединены вместе.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes>`

Соединяет указанные узлы и порты.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes_forced:

.. rst-class:: classref-method

|void| **connect_nodes_forced**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes_forced>`

Подключает указанные узлы и порты, даже если они не могут быть подключены. Такое подключение недействительно и не будет работать должным образом.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_detach_node_from_frame:

.. rst-class:: classref-method

|void| **detach_node_from_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_detach_node_from_frame>`

Отсоединяет указанный узел от фрейма, к которому он прикреплен.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_disconnect_nodes:

.. rst-class:: classref-method

|void| **disconnect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_disconnect_nodes>`

Соединяет указанные узлы и порты.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node:

.. rst-class:: classref-method

:ref:`VisualShaderNode<class_VisualShaderNode>` **get_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node>`

Возвращает экземпляр узла шейдера с указанными ``type`` и ``id``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_node_connections**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_connections>`

Возвращает список подключенных узлов указанного типа.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_node_list**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_list>`

Возвращает список всех узлов шейдера указанного типа.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_position>`

Возвращает положение указанного узла в графе шейдера.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_valid_node_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_valid_node_id**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_valid_node_id>`

Возвращает следующий действительный ID узла, который можно добавить в граф шейдера.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_has_varying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_varying**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShader_method_has_varying>`

Возвращает ``true``, если шейдер имеет переменную с указанным ``name``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_is_node_connection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_connection**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_is_node_connection>`

Возвращает ``true``, если указанный узел и порт существуют.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_remove_node>`

Удаляет указанный узел из шейдера.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_varying:

.. rst-class:: classref-method

|void| **remove_varying**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShader_method_remove_varying>`

Удаляет узел переменного значения с указанным ``name``. Выводит ошибку, если узел с таким именем не найден.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_replace_node:

.. rst-class:: classref-method

|void| **replace_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, new_class\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_VisualShader_method_replace_node>`

Заменяет указанный узел узлом нового типа класса.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_mode:

.. rst-class:: classref-method

|void| **set_mode**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) :ref:`🔗<class_VisualShader_method_set_mode>`

Устанавливает режим этого шейдера.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VisualShader_method_set_node_position>`

Устанавливает положение указанного узла.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
