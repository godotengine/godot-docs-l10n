:github_url: hide

.. _class_VisualShaderNodeGroupBase:

VisualShaderNodeGroupBase
=========================

**繼承：** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>`

視覺化著色器圖中，具有可變數量的輸入和輸出埠的系列節點的基底類別。

.. rst-class:: classref-introduction-group

說明
----

目前，沒有直接使用，而用衍生類代替。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_input_port<class_VisualShaderNodeGroupBase_method_add_input_port>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_output_port<class_VisualShaderNodeGroupBase_method_add_output_port>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_input_ports<class_VisualShaderNodeGroupBase_method_clear_input_ports>`\ (\ )                                                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_output_ports<class_VisualShaderNodeGroupBase_method_clear_output_ports>`\ (\ )                                                                                         |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_free_input_port_id<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`\ (\ ) |const|                                                                         |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_free_output_port_id<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`\ (\ ) |const|                                                                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_input_port_count<class_VisualShaderNodeGroupBase_method_get_input_port_count>`\ (\ ) |const|                                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_inputs<class_VisualShaderNodeGroupBase_method_get_inputs>`\ (\ ) |const|                                                                                                 |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_output_port_count<class_VisualShaderNodeGroupBase_method_get_output_port_count>`\ (\ ) |const|                                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_outputs<class_VisualShaderNodeGroupBase_method_get_outputs>`\ (\ ) |const|                                                                                               |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_input_port<class_VisualShaderNodeGroupBase_method_has_input_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_output_port<class_VisualShaderNodeGroupBase_method_has_output_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_valid_port_name<class_VisualShaderNodeGroupBase_method_is_valid_port_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_input_port<class_VisualShaderNodeGroupBase_method_remove_input_port>`\ (\ id\: :ref:`int<class_int>`\ )                                                               |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_output_port<class_VisualShaderNodeGroupBase_method_remove_output_port>`\ (\ id\: :ref:`int<class_int>`\ )                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_input_port_name<class_VisualShaderNodeGroupBase_method_set_input_port_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_input_port_type<class_VisualShaderNodeGroupBase_method_set_input_port_type>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ )                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_inputs<class_VisualShaderNodeGroupBase_method_set_inputs>`\ (\ inputs\: :ref:`String<class_String>`\ )                                                                   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_output_port_name<class_VisualShaderNodeGroupBase_method_set_output_port_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                     |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_output_port_type<class_VisualShaderNodeGroupBase_method_set_output_port_type>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ )                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_outputs<class_VisualShaderNodeGroupBase_method_set_outputs>`\ (\ outputs\: :ref:`String<class_String>`\ )                                                                |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisualShaderNodeGroupBase_method_add_input_port:

.. rst-class:: classref-method

|void| **add_input_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_input_port>`

新增具有指定型別 ``type`` 和名稱 ``name`` 的輸入埠（見 :ref:`PortType<enum_VisualShaderNode_PortType>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_add_output_port:

.. rst-class:: classref-method

|void| **add_output_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_output_port>`

新增具有指定型別 ``type`` 和名稱 ``name`` 的輸出埠（見 :ref:`PortType<enum_VisualShaderNode_PortType>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_input_ports:

.. rst-class:: classref-method

|void| **clear_input_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_input_ports>`

移除所有先前指定的輸入埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_output_ports:

.. rst-class:: classref-method

|void| **clear_output_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_output_ports>`

移除所有先前指定的輸出埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_input_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_input_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`

返回一個空閒的輸入埠 ID，可以在 :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>` 中使用。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_output_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_output_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`

返回一個空閒的輸出埠 ID，可以在 :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>` 中使用。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_input_port_count>`

返回正在使用的輸入埠的數量。替代\ :ref:`get_free_input_port_id()<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_inputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_inputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_inputs>`

返回輸入埠的\ :ref:`String<class_String>`\ 描述，是一個用冒號分隔的列表，格式為\ ``id,type,name;``\ ，參閱\ :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_output_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_output_port_count>`

返回正在使用的輸出埠的數量。替代\ :ref:`get_free_output_port_id()<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_outputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_outputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_outputs>`

返回輸出埠的\ :ref:`String<class_String>`\ 描述，作為一個用冒號分隔的列表，格式為\ ``id,type,name;``\ ，參閱\ :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_input_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_input_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_input_port>`

如果指定的輸入埠存在，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_output_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_output_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_output_port>`

如果指定的輸出埠存在，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_is_valid_port_name:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_port_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_is_valid_port_name>`

如果指定的埠名稱沒有覆蓋現有的埠名稱，並且在著色器中有效，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_input_port:

.. rst-class:: classref-method

|void| **remove_input_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_input_port>`

移除指定的輸入埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_output_port:

.. rst-class:: classref-method

|void| **remove_output_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_output_port>`

移除指定的輸出埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_name:

.. rst-class:: classref-method

|void| **set_input_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_name>`

重新命名指定的輸入埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_type:

.. rst-class:: classref-method

|void| **set_input_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_type>`

設定指定的輸入埠的型別，參閱\ :ref:`PortType<enum_VisualShaderNode_PortType>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_inputs:

.. rst-class:: classref-method

|void| **set_inputs**\ (\ inputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_inputs>`

使用一個\ :ref:`String<class_String>`\ 格式的以冒號分隔的列表來定義所有輸入埠:``id,type,name;``\ ，參閱\ :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_name:

.. rst-class:: classref-method

|void| **set_output_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_name>`

重新命名指定的輸出埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_type:

.. rst-class:: classref-method

|void| **set_output_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_type>`

設定指定輸出埠的型別，參閱\ :ref:`PortType<enum_VisualShaderNode_PortType>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_outputs:

.. rst-class:: classref-method

|void| **set_outputs**\ (\ outputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_outputs>`

使用一個\ :ref:`String<class_String>`\ 格式的以冒號分隔的列表來定義所有輸出埠: ``id,type,name;`` ，參閱\ :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
