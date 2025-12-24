:github_url: hide

.. _class_VisualShaderNodeCustom:

VisualShaderNodeCustom
======================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於定義自訂 :ref:`VisualShaderNode<class_VisualShaderNode>` 的虛類，以便在視覺化著色器編輯器中使用。

.. rst-class:: classref-introduction-group

說明
----

繼承這個類可以建立自訂的 :ref:`VisualShader<class_VisualShader>` 腳本擴充，會自動加入到 Visual Shader 編輯器中。\ :ref:`VisualShaderNode<class_VisualShaderNode>` 的行為可以通過覆蓋虛方法定義。

要讓節點註冊為編輯器擴充，你必須為你的自訂腳本使用 ``@tool`` 注解並提供 ``class_name``\ 。例如：

::

    @tool
    extends VisualShaderNodeCustom
    class_name VisualShaderNodeNoise

.. rst-class:: classref-introduction-group

教學
----

- :doc:`視覺化著色器外掛程式 <../tutorials/plugins/editor/visual_shader_plugins>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_category<class_VisualShaderNodeCustom_private_method__get_category>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_code<class_VisualShaderNodeCustom_private_method__get_code>`\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_default_input_port<class_VisualShaderNodeCustom_private_method__get_default_input_port>`\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const|                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_description<class_VisualShaderNodeCustom_private_method__get_description>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_func_code<class_VisualShaderNodeCustom_private_method__get_func_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_global_code<class_VisualShaderNodeCustom_private_method__get_global_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_input_port_count<class_VisualShaderNodeCustom_private_method__get_input_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_input_port_default_value<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_input_port_name<class_VisualShaderNodeCustom_private_method__get_input_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_input_port_type<class_VisualShaderNodeCustom_private_method__get_input_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_name<class_VisualShaderNodeCustom_private_method__get_name>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_output_port_count<class_VisualShaderNodeCustom_private_method__get_output_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_output_port_name<class_VisualShaderNodeCustom_private_method__get_output_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_output_port_type<class_VisualShaderNodeCustom_private_method__get_output_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_count<class_VisualShaderNodeCustom_private_method__get_property_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_default_index<class_VisualShaderNodeCustom_private_method__get_property_default_index>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_property_name<class_VisualShaderNodeCustom_private_method__get_property_name>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_property_options<class_VisualShaderNodeCustom_private_method__get_property_options>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_return_icon_type<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_available<class_VisualShaderNodeCustom_private_method__is_available>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_highend<class_VisualShaderNodeCustom_private_method__is_highend>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_index<class_VisualShaderNodeCustom_method_get_option_index>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisualShaderNodeCustom_private_method__get_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_category**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_category>`

覆蓋這個方法可以定義 Visual Shader 編輯器的成員對話方塊中關聯的自訂節點的路徑。路徑類似於 ``"MyGame/MyFunctions/Noise"``\ 。

定義這個方法是\ **可選**\ 的。不覆蓋時，該節點會被歸在“Addons”分類下。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_code**\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_code>`

Override this method to define the actual shader code of the associated custom node. The shader code should be returned as a string, which can have multiple lines (the ``"""`` multiline string construct can be used for convenience).

The ``input_vars`` and ``output_vars`` arrays contain the string names of the various input and output variables, as defined by ``_get_input_*`` and ``_get_output_*`` virtual methods in this class.

The output ports can be assigned values in the shader code. For example, ``return output_vars[0] + " = " + input_vars[0] + ";"``.

You can customize the generated code based on the shader ``mode`` and/or ``type``.

Defining this method is **required**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_default_input_port>`

覆蓋此方法來定義視覺化著色器編輯器的成員對話方塊和圖中的相關自訂節點的名稱。

定義這個方法是\ **可選的**\ ，但推薦使用。如果不覆蓋，節點將被命名為 "Unnamed"。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_description**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_description>`

覆蓋這個方法可以定義視覺化著色器編輯器的成員對話方塊中的相關自訂節點的描述。

定義這個方法是\ **可選**\ 的。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_func_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_func_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_func_code>`

Override this method to add a shader code to the beginning of each shader function (once). The shader code should be returned as a string, which can have multiple lines (the ``"""`` multiline string construct can be used for convenience).

If there are multiple custom nodes of different types which use this feature the order of each insertion is undefined.

You can customize the generated code based on the shader ``mode`` and/or ``type``.

Defining this method is **optional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_global_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_global_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_global_code>`

Override this method to add shader code on top of the global shader, to define your own standard library of reusable methods, varyings, constants, uniforms, etc. The shader code should be returned as a string, which can have multiple lines (the ``"""`` multiline string construct can be used for convenience).

Be careful with this functionality as it can cause name conflicts with other custom nodes, so be sure to give the defined entities unique names.

You can customize the generated code based on the shader ``mode``.

Defining this method is **optional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_input_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_count>`

覆蓋該方法以定義關聯的自訂節點的輸入埠數。

定義該方法是\ **必需的**\ 。如果沒有被覆蓋，則該節點沒有輸入埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`

覆蓋該方法以定義關聯的自訂節點的輸入埠數。

定義該方法是\ **必需的**\ 。如果沒有被覆蓋，則該節點沒有輸入埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_input_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_name>`

覆蓋此方法來定義相關自訂節點的輸入埠的名稱。這些名稱既用於編輯器中的輸入槽，也作為著色器程式碼中的識別字，並在\ :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`\ 中的\ ``input_vars``\ 陣列中傳遞。

定義這個方法是\ **可選的**\ ，但推薦使用。如果沒有被覆蓋，輸入埠被命名為\ ``"in"+str(port)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_input_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_type>`

Override this method to define the returned type of each input port of the associated custom node.

Defining this method is **optional**, but recommended. If not overridden, input ports will return the :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>` type.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_name>`

覆蓋此方法來定義視覺化著色器編輯器的成員對話方塊和圖中的相關自訂節點的名稱。

定義這個方法是\ **可選的**\ ，但推薦使用。如果不覆蓋，節點將被命名為 "Unnamed"。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_output_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_count>`

覆蓋該方法以定義關聯的自訂節點的輸出埠數。

定義該方法是\ **必需的**\ 。如果沒有被覆蓋，則該節點沒有輸出埠。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_output_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_name>`

覆蓋此方法來定義相關自訂節點的輸出埠的名稱。這些名字既用於編輯器中的輸出槽，也作為著色器程式碼中的識別字，並在\ :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`\ 中的\ ``output_vars``\ 陣列中傳遞。

定義這個方法是\ **可選的**\ ，但推薦使用。如果沒有被覆蓋，輸出埠被命名為\ ``"out" + str(port)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_output_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_type>`

Override this method to define the returned type of each output port of the associated custom node.

Defining this method is **optional**, but recommended. If not overridden, output ports will return the :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>` type.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_count>`

覆蓋這個方法可以定義視覺化著色器編輯器的成員對話方塊中的相關自訂節點的描述。

定義這個方法是\ **可選**\ 的。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_default_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_default_index**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_default_index>`

覆蓋這個方法可以定義視覺化著色器編輯器的成員對話方塊中的相關自訂節點的描述。

定義這個方法是\ **可選**\ 的。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_property_name**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_name>`

覆蓋這個方法可以定義視覺化著色器編輯器的成員對話方塊中的相關自訂節點的描述。

定義這個方法是\ **可選**\ 的。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_options:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_property_options**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_options>`

覆蓋這個方法可以定義視覺化著色器編輯器的成員對話方塊中的相關自訂節點的描述。

定義這個方法是\ **可選**\ 的。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_return_icon_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_return_icon_type**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`

覆蓋此方法來定義視覺化著色器編輯器的成員對話方塊中相關自訂節點的返回圖示。

定義這個方法是\ **可選的**\ 。如果不覆蓋，就不會顯示返回圖示。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_available**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_available>`

Override this method to prevent the node to be visible in the member dialog for the certain ``mode`` and/or ``type``.

Defining this method is **optional**. If not overridden, it's ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_highend:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_highend**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_highend>`

覆蓋這個方法可以在 Visual Shader 編輯器的成員對話方塊中啟用高端標記。

定義這個方法是\ **可選**\ 的。未覆蓋時為 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_method_get_option_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_index**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeCustom_method_get_option_index>`

傳回圖形中下拉列表選項的選定索引。您可以使用此函式在 :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>` 或 :ref:`_get_global_code()<class_VisualShaderNodeCustom_private_method__get_global_code>` 中定義特定行為。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
