:github_url: hide

.. _class_Script:

Script
======

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CSharpScript<class_CSharpScript>`, :ref:`GDScript<class_GDScript>`, :ref:`ScriptExtension<class_ScriptExtension>`

作為資源儲存的類。

.. rst-class:: classref-introduction-group

說明
----

作為資源儲存的類。腳本可以擴充所有以它為實例的物件的功能。

這是所有腳本的基底類別，不應直接使用。嘗試使用此類建立新腳本將導致錯誤。

腳本子類別的 ``new`` 方法會建立新的實例。如果一個現有的物件的類與腳本的基底類別之一相配對，\ :ref:`Object.set_script()<class_Object_method_set_script>` 會擴充該物件。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`腳本文件索引 <../tutorials/scripting/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`source_code<class_Script_property_source_code>` |
   +-----------------------------+-------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_instantiate<class_Script_method_can_instantiate>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Script<class_Script>`                                      | :ref:`get_base_script<class_Script_method_get_base_script>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_global_name<class_Script_method_get_global_name>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_instance_base_type<class_Script_method_get_instance_base_type>`\ (\ ) |const|                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_property_default_value<class_Script_method_get_property_default_value>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_rpc_config<class_Script_method_get_rpc_config>`\ (\ ) |const|                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_script_constant_map<class_Script_method_get_script_constant_map>`\ (\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_method_list<class_Script_method_get_script_method_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_property_list<class_Script_method_get_script_property_list>`\ (\ )                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_signal_list<class_Script_method_get_script_signal_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_script_method<class_Script_method_has_script_method>`\ (\ method_name\: :ref:`StringName<class_StringName>`\ ) |const|        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_script_signal<class_Script_method_has_script_signal>`\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const|        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_source_code<class_Script_method_has_source_code>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`instance_has<class_Script_method_instance_has>`\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const|                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_abstract<class_Script_method_is_abstract>`\ (\ ) |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_tool<class_Script_method_is_tool>`\ (\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`reload<class_Script_method_reload>`\ (\ keep_state\: :ref:`bool<class_bool>` = false\ )                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Script_property_source_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_code** :ref:`🔗<class_Script_property_source_code>`

.. rst-class:: classref-property-setget

- |void| **set_source_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_source_code**\ (\ )

腳本的原始程式碼，如果原始程式碼不可用，則為空字串。當設定時，不會自動重新載入類的實作。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Script_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_Script_method_can_instantiate>`

如果該腳本可以被產生實體，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_base_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_base_script**\ (\ ) |const| :ref:`🔗<class_Script_method_get_base_script>`

返回由該腳本直接繼承的腳本。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_global_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_global_name**\ (\ ) |const| :ref:`🔗<class_Script_method_get_global_name>`

回傳與腳本關聯的類別名稱（如果有）。否則回傳空字串。

要為腳本指定全域名稱，你可以在 GDScript 中使用 ``class_name`` 關鍵字，在 C# 中使用 ``[GlobalClass]`` 屬性。


.. tabs::

 .. code-tab:: gdscript

    class_name MyNode
    extends Node

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class MyNode : Node
    {
    }



.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_instance_base_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_instance_base_type**\ (\ ) |const| :ref:`🔗<class_Script_method_get_instance_base_type>`

返回腳本的基底類別型別。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_property_default_value**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Script_method_get_property_default_value>`

返回指定屬性的預設值。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_rpc_config:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_rpc_config**\ (\ ) |const| :ref:`🔗<class_Script_method_get_rpc_config>`

回傳一個 :ref:`Dictionary<class_Dictionary>`\ ，將方法名映射到由腳本定義的對應 RPC 設定。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_constant_map:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_script_constant_map**\ (\ ) :ref:`🔗<class_Script_method_get_script_constant_map>`

返回一個包含常數名稱及其值的字典。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_method_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_method_list>`

回傳該 **Script** 中的方法清單。

\ **注意：**\ 該方法所回傳的字典與 :ref:`Object.get_method_list()<class_Object_method_get_method_list>` 回傳值的格式是一樣的。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_property_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_property_list>`

回傳該 **Script** 中的屬性清單。

\ **注意：**\ 該方法所回傳的字典與 :ref:`Object.get_property_list()<class_Object_method_get_property_list>` 回傳值的格式是一樣的。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_signal_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_signal_list>`

回傳該 **Script** 中定義的訊號清單。

\ **注意：**\ 該方法所回傳的字典與 :ref:`Object.get_signal_list()<class_Object_method_get_signal_list>` 回傳值的格式是一樣的。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_script_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_script_method**\ (\ method_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Script_method_has_script_method>`

如果該腳本或其基底類別中定義了具有給定名稱的方法，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_script_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_script_signal**\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Script_method_has_script_signal>`

如果腳本或基底類別定義了具有給定名稱的訊號，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_source_code:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_source_code**\ (\ ) |const| :ref:`🔗<class_Script_method_has_source_code>`

如果腳本包含非空原始碼，則回傳 ``true``\ 。

\ **注意：**\ 如果腳本沒有原始碼，並不意味著它無效或不可用。例如，使用二進位標記匯出的 :ref:`GDScript<class_GDScript>` 沒有原始碼，但仍按預期執行並可以實例化。這可以使用 :ref:`can_instantiate()<class_Script_method_can_instantiate>` 進行檢查。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_instance_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **instance_has**\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_Script_method_instance_has>`

**已棄用：** Compare this script with :ref:`Object.get_script()<class_Object_method_get_script>` instead.

如果 ``base_object`` 是該腳本的實例，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_abstract:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_abstract**\ (\ ) |const| :ref:`🔗<class_Script_method_is_abstract>`

如果腳本是工具腳本，則返回 ``true``\ 。工具腳本可以在編輯器中運作。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_tool:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tool**\ (\ ) |const| :ref:`🔗<class_Script_method_is_tool>`

如果腳本是工具腳本，則返回 ``true``\ 。工具腳本可以在編輯器中運作。

.. rst-class:: classref-item-separator

----

.. _class_Script_method_reload:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload**\ (\ keep_state\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Script_method_reload>`

重新載入腳本的類的實作。返回一個錯誤程式碼。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
