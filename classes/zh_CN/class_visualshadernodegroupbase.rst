:github_url: hide

.. _class_VisualShaderNodeGroupBase:

VisualShaderNodeGroupBase
=========================

**继承：** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>`

可视化着色器图中，具有可变数量的输入和输出端口的系列节点的基类。

.. rst-class:: classref-introduction-group

描述
----

目前，没有直接使用，而用派生类代替。

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

方法说明
--------

.. _class_VisualShaderNodeGroupBase_method_add_input_port:

.. rst-class:: classref-method

|void| **add_input_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_input_port>`

添加具有指定类型 ``type`` 和名称 ``name`` 的输入端口（见 :ref:`PortType<enum_VisualShaderNode_PortType>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_add_output_port:

.. rst-class:: classref-method

|void| **add_output_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_output_port>`

添加具有指定类型 ``type`` 和名称 ``name`` 的输出端口（见 :ref:`PortType<enum_VisualShaderNode_PortType>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_input_ports:

.. rst-class:: classref-method

|void| **clear_input_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_input_ports>`

移除所有先前指定的输入端口。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_output_ports:

.. rst-class:: classref-method

|void| **clear_output_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_output_ports>`

移除所有先前指定的输出端口。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_input_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_input_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`

返回一个空闲的输入端口 ID，可以在 :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>` 中使用。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_output_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_output_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`

返回一个空闲的输出端口 ID，可以在 :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>` 中使用。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_input_port_count>`

返回正在使用的输入端口的数量。替代\ :ref:`get_free_input_port_id()<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_inputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_inputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_inputs>`

返回输入端口的\ :ref:`String<class_String>`\ 描述，是一个用冒号分隔的列表，格式为\ ``id,type,name;``\ ，参阅\ :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_output_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_output_port_count>`

返回正在使用的输出端口的数量。替代\ :ref:`get_free_output_port_id()<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_outputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_outputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_outputs>`

返回输出端口的\ :ref:`String<class_String>`\ 描述，作为一个用冒号分隔的列表，格式为\ ``id,type,name;``\ ，参阅\ :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_input_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_input_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_input_port>`

如果指定的输入端口存在，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_output_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_output_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_output_port>`

如果指定的输出端口存在，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_is_valid_port_name:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_port_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_is_valid_port_name>`

如果指定的端口名称没有覆盖现有的端口名称，并且在着色器中有效，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_input_port:

.. rst-class:: classref-method

|void| **remove_input_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_input_port>`

移除指定的输入端口。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_output_port:

.. rst-class:: classref-method

|void| **remove_output_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_output_port>`

移除指定的输出端口。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_name:

.. rst-class:: classref-method

|void| **set_input_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_name>`

重命名指定的输入端口。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_type:

.. rst-class:: classref-method

|void| **set_input_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_type>`

设置指定的输入端口的类型，参阅\ :ref:`PortType<enum_VisualShaderNode_PortType>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_inputs:

.. rst-class:: classref-method

|void| **set_inputs**\ (\ inputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_inputs>`

使用一个\ :ref:`String<class_String>`\ 格式的以冒号分隔的列表来定义所有输入端口:``id,type,name;``\ ，参阅\ :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_name:

.. rst-class:: classref-method

|void| **set_output_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_name>`

重命名指定的输出端口。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_type:

.. rst-class:: classref-method

|void| **set_output_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_type>`

设置指定输出端口的类型，参阅\ :ref:`PortType<enum_VisualShaderNode_PortType>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_outputs:

.. rst-class:: classref-method

|void| **set_outputs**\ (\ outputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_outputs>`

使用一个\ :ref:`String<class_String>`\ 格式的以冒号分隔的列表来定义所有输出端口: ``id,type,name;`` ，参阅\ :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
