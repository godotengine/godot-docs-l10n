:github_url: hide

.. _class_XMLParser:

XMLParser
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為建立 XML 檔解析器提供低階介面。

.. rst-class:: classref-introduction-group

說明
----

為建立 `XML <https://zh.wikipedia.org/wiki/XML>`__ 檔解析器提供低階介面。製作自訂 XML 解析器時，可以將這個類作為基礎。

要解析 XML，你必須使用 :ref:`open()<class_XMLParser_method_open>` 方法打開檔，或者使用 :ref:`open_buffer()<class_XMLParser_method_open_buffer>` 方法打開緩衝區。然後必須使用 :ref:`read()<class_XMLParser_method_read>` 方法解析後續節點。大多數方法使用的是目前解析節點。

以下是使用 **XMLParser** 解析 SVG 檔（基於 XML）的例子，會輸出所有的元素，以字典的形式輸出對應的屬性：


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
            print("元素 ", node_name, " 包含的屬性有：", attributes_dict)

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
            GD.Print($"元素 {nodeName} 包含的屬性有：{attributesDict}");
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

列舉
----

.. _enum_XMLParser_NodeType:

.. rst-class:: classref-enumeration

enum **NodeType**: :ref:`🔗<enum_XMLParser_NodeType>`

.. _class_XMLParser_constant_NODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_NONE** = ``0``

沒有節點，未打開檔或緩衝區。

.. _class_XMLParser_constant_NODE_ELEMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT** = ``1``

元素節點型別，也稱作標籤，例如 ``<title>``\ 。

.. _class_XMLParser_constant_NODE_ELEMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT_END** = ``2``

元素結束節點型別，例如 ``</title>``\ 。

.. _class_XMLParser_constant_NODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_TEXT** = ``3``

文字節點型別，即不在元素中的文字。包含空白字元。

.. _class_XMLParser_constant_NODE_COMMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_COMMENT** = ``4``

注釋節點型別，例如 ``<!--A comment-->``\ 。

.. _class_XMLParser_constant_NODE_CDATA:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_CDATA** = ``5``

CDATA（字元資料）部分對應的節點型別，例如 ``<![CDATA[CDATA section]]>``\ 。

.. _class_XMLParser_constant_NODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_UNKNOWN** = ``6``

未知節點型別。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XMLParser_method_get_attribute_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_attribute_count**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_count>`

返回目前解析元素中屬性的數量。

\ **注意：**\ 如果在目前解析的節點不是 :ref:`NODE_ELEMENT<class_XMLParser_constant_NODE_ELEMENT>` 或 :ref:`NODE_ELEMENT_END<class_XMLParser_constant_NODE_ELEMENT_END>` 時呼叫這個方法，則該計數不會更新，仍然反映的是之前的元素。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_name>`

返回目前解析元素中某個屬性的名稱，屬性由 ``idx`` 索引指定。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_value**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_value>`

返回目前解析元素中某個屬性的取值，屬性由 ``idx`` 索引指定。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_current_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_line**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_current_line>`

返回解析檔中的目前行，從 0 開始計數。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value>`

返回目前解析元素中某個屬性的取值，屬性由名稱 ``name`` 指定。如果該元素沒有符合要求的屬性，則會引發錯誤。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value_safe:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value_safe**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value_safe>`

返回目前解析元素中某個屬性的取值，屬性由名稱 ``name`` 指定。如果該元素沒有符合要求的屬性，則會返回空字串。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_data:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_data**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_data>`

返回文字節點的內容。如果目前解析節點是其他型別，則會引發錯誤。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_name**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_name>`

Returns the name of a node. This method will raise an error if the currently parsed node is a text node.

\ **Note:** The content of a :ref:`NODE_CDATA<class_XMLParser_constant_NODE_CDATA>` node and the comment string of a :ref:`NODE_COMMENT<class_XMLParser_constant_NODE_COMMENT>` node are also considered names.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_offset**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_offset>`

返回目前解析節點相對於檔或緩衝區開始處的位元組偏移量。通常等價於讀取位置之前的字元數。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_type:

.. rst-class:: classref-method

:ref:`NodeType<enum_XMLParser_NodeType>` **get_node_type**\ (\ ) :ref:`🔗<class_XMLParser_method_get_node_type>`

返回目前節點的型別。請使用 :ref:`NodeType<enum_XMLParser_NodeType>` 常數進行比較。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_has_attribute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_attribute**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_has_attribute>`

如果目前解析元素存在名為 ``name`` 的屬性，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_is_empty>`

如果目前解析元素為空則返回 ``true``\ ，例如 ``<element />``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XMLParser_method_open>`

打開 XML 檔 ``file`` 進行解析。這個方法返回的是錯誤碼。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_XMLParser_method_open_buffer>`

打開 XML 原始緩衝區 ``buffer`` 進行解析。這個方法返回的是錯誤碼。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_read:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **read**\ (\ ) :ref:`🔗<class_XMLParser_method_read>`

解析檔的下一個節點。這個方法返回的是錯誤碼。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_seek:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XMLParser_method_seek>`

將緩衝區游標移動到某一偏移量（相對於開始位置）並在那裡讀取下一個節點。這個方法返回的是錯誤碼。

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_skip_section:

.. rst-class:: classref-method

|void| **skip_section**\ (\ ) :ref:`🔗<class_XMLParser_method_skip_section>`

跳過目前部分。如果目前解析的節點包含其他內部節點，則會忽略這些節點，游標將跳轉到目前元素的結尾處。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
