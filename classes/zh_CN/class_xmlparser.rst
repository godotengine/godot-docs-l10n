:github_url: hide

.. _class_XMLParser:

XMLParser
=========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为创建 XML 文件解析器提供低阶接口。

.. rst-class:: classref-introduction-group

描述
----

为创建 `XML <https://zh.wikipedia.org/wiki/XML>`__ 文件解析器提供低阶接口。制作自定义 XML 解析器时，可以将这个类作为基础。

要解析 XML，你必须使用 :ref:`open()<class_XMLParser_method_open>` 方法打开文件，或者使用 :ref:`open_buffer()<class_XMLParser_method_open_buffer>` 方法打开缓冲区。然后必须使用 :ref:`read()<class_XMLParser_method_read>` 方法解析后续节点。大多数方法使用的是当前解析节点。

以下是使用 **XMLParser** 解析 SVG 文件（基于 XML）的例子，会输出所有的元素，以字典的形式输出对应的属性：


.. tabs::

 .. code-tab:: gdscript

    var parser = XMLParser.new()
    parser.open("path/to/file.svg")
    while parser.read() != ERR_FILE_EOF:
        if parser.get_node_type() == XMLParser.NODE_ELEMENT:
            var node_name = parser.get_node_name()
            var attributes_dict = {}
            for idx in range(parser.get_attribute_count()):
                attributes_dict[parser.get_attribute_name(idx)] = parser.get_attribute_value(idx)
            print("元素 ", node_name, " 包含的属性有：", attributes_dict)

 .. code-tab:: csharp

    var parser = new XmlParser();
    parser.Open("path/to/file.svg");
    while (parser.Read() != Error.FileEof)
    {
        if (parser.GetNodeType() == XmlParser.NodeType.Element)
        {
            var nodeName = parser.GetNodeName();
            var attributesDict = new Godot.Collections.Dictionary();
            for (int idx = 0; idx < parser.GetAttributeCount(); idx++)
            {
                attributesDict[parser.GetAttributeName(idx)] = parser.GetAttributeValue(idx);
            }
            GD.Print($"元素 {nodeName} 包含的属性有：{attributesDict}");
        }
    }



.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_attribute_count<class_XMLParser_method_get_attribute_count>`\ (\ ) |const|                                                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_attribute_name<class_XMLParser_method_get_attribute_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_attribute_value<class_XMLParser_method_get_attribute_value>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                              |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_current_line<class_XMLParser_method_get_current_line>`\ (\ ) |const|                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_named_attribute_value<class_XMLParser_method_get_named_attribute_value>`\ (\ name\: :ref:`String<class_String>`\ ) |const|           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_named_attribute_value_safe<class_XMLParser_method_get_named_attribute_value_safe>`\ (\ name\: :ref:`String<class_String>`\ ) |const| |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_node_data<class_XMLParser_method_get_node_data>`\ (\ ) |const|                                                                       |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_node_name<class_XMLParser_method_get_node_name>`\ (\ ) |const|                                                                       |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_node_offset<class_XMLParser_method_get_node_offset>`\ (\ ) |const|                                                                   |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodeType<enum_XMLParser_NodeType>` | :ref:`get_node_type<class_XMLParser_method_get_node_type>`\ (\ )                                                                               |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`has_attribute<class_XMLParser_method_has_attribute>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                   |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`is_empty<class_XMLParser_method_is_empty>`\ (\ ) |const|                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`open<class_XMLParser_method_open>`\ (\ file\: :ref:`String<class_String>`\ )                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`open_buffer<class_XMLParser_method_open_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`read<class_XMLParser_method_read>`\ (\ )                                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`seek<class_XMLParser_method_seek>`\ (\ position\: :ref:`int<class_int>`\ )                                                               |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`skip_section<class_XMLParser_method_skip_section>`\ (\ )                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_XMLParser_NodeType:

.. rst-class:: classref-enumeration

enum **NodeType**: :ref:`🔗<enum_XMLParser_NodeType>`

.. _class_XMLParser_constant_NODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_NONE** = ``0``

没有节点，未打开文件或缓冲区。

.. _class_XMLParser_constant_NODE_ELEMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT** = ``1``

元素节点类型，也称作标签，例如 ``<title>``\ 。

.. _class_XMLParser_constant_NODE_ELEMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT_END** = ``2``

元素结束节点类型，例如 ``</title>``\ 。

.. _class_XMLParser_constant_NODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_TEXT** = ``3``

文本节点类型，即不在元素中的文本。包含空白字符。

.. _class_XMLParser_constant_NODE_COMMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_COMMENT** = ``4``

注释节点类型，例如 ``<!--A comment-->``\ 。

.. _class_XMLParser_constant_NODE_CDATA:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_CDATA** = ``5``

CDATA（字符数据）部分对应的节点类型，例如 ``<![CDATA[CDATA section]]>``\ 。

.. _class_XMLParser_constant_NODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_UNKNOWN** = ``6``

未知节点类型。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_XMLParser_method_get_attribute_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_attribute_count**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_count>`

返回当前解析元素中属性的数量。

\ **注意：**\ 如果在当前解析的节点不是 :ref:`NODE_ELEMENT<class_XMLParser_constant_NODE_ELEMENT>` 或 :ref:`NODE_ELEMENT_END<class_XMLParser_constant_NODE_ELEMENT_END>` 时调用这个方法，则该计数不会更新，仍然反映的是之前的元素。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_name>`

返回当前解析元素中某个属性的名称，属性由 ``idx`` 索引指定。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_value**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_value>`

返回当前解析元素中某个属性的取值，属性由 ``idx`` 索引指定。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_current_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_line**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_current_line>`

返回解析文件中的当前行，从 0 开始计数。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value>`

返回当前解析元素中某个属性的取值，属性由名称 ``name`` 指定。如果该元素没有符合要求的属性，则会引发错误。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value_safe:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value_safe**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value_safe>`

返回当前解析元素中某个属性的取值，属性由名称 ``name`` 指定。如果该元素没有符合要求的属性，则会返回空字符串。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_data:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_data**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_data>`

返回文本节点的内容。如果当前解析节点是其他类型，则会引发错误。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_name**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_name>`

返回元素节点的名称。如果当前解析的节点为文本节点，则该方法会引发错误。

\ **注意：**\ :ref:`NODE_CDATA<class_XMLParser_constant_NODE_CDATA>` 节点的内容和 :ref:`NODE_COMMENT<class_XMLParser_constant_NODE_COMMENT>` 节点的注释字符串也均被认为是名称。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_offset**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_offset>`

返回当前解析节点相对于文件或缓冲区开始处的字节偏移量。通常等价于读取位置之前的字符数。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_type:

.. rst-class:: classref-method

:ref:`NodeType<enum_XMLParser_NodeType>` **get_node_type**\ (\ ) :ref:`🔗<class_XMLParser_method_get_node_type>`

返回当前节点的类型。请使用 :ref:`NodeType<enum_XMLParser_NodeType>` 常量进行比较。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_has_attribute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_attribute**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_has_attribute>`

如果当前解析元素存在名为 ``name`` 的属性，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_is_empty>`

如果当前解析元素为空则返回 ``true``\ ，例如 ``<element />``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XMLParser_method_open>`

打开 XML 文件 ``file`` 进行解析。这个方法返回的是错误码。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_XMLParser_method_open_buffer>`

打开 XML 原始缓冲区 ``buffer`` 进行解析。这个方法返回的是错误码。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_read:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **read**\ (\ ) :ref:`🔗<class_XMLParser_method_read>`

解析文件的下一个节点。这个方法返回的是错误码。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_seek:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XMLParser_method_seek>`

将缓冲区光标移动到某一偏移量（相对于开始位置）并在那里读取下一个节点。这个方法返回的是错误码。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_skip_section:

.. rst-class:: classref-method

|void| **skip_section**\ (\ ) :ref:`🔗<class_XMLParser_method_skip_section>`

跳过当前部分。如果当前解析的节点包含其他内部节点，则会忽略这些节点，光标将跳转到当前元素的结尾处。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
