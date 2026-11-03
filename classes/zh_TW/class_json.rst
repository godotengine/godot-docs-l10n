:github_url: hide

.. _class_JSON:

JSON
====

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於建立和解析 JSON 資料的輔助類。

.. rst-class:: classref-introduction-group

說明
----

**JSON** 類允許所有資料型別與 JSON 字串相互轉換。可用於將資料序列化，例如儲存到檔案或通過網路發送。

\ :ref:`stringify()<class_JSON_method_stringify>` 用於將任何資料型別轉換為 JSON 字串。

\ :ref:`parse()<class_JSON_method_parse>` 用於將任何現有的 JSON 資料轉換為可以在 Godot 中使用的 :ref:`Variant<class_Variant>`\ 。如果解析成功，使用 :ref:`data<class_JSON_property_data>` 檢索 :ref:`Variant<class_Variant>`\ ，並使用 :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` 檢查 Variant 的型別是否符合你的預期。JSON 物件被轉換為 :ref:`Dictionary<class_Dictionary>`\ ，但 JSON 資料可用於儲存 :ref:`Array<class_Array>`\ 、數字、\ :ref:`String<class_String>`\ ，甚至只是一個布林值。

::

    var data_to_send = ["a", "b", "c"]
    var json_string = JSON.stringify(data_to_send)
    # 儲存資料
    # ...
    # 檢索資料
    var json = JSON.new()
    var error = json.parse(json_string)
    if error == OK:
        var data_received = json.data
        if typeof(data_received) == TYPE_ARRAY:
            print(data_received) # 輸出該陣列。
        else:
            print("意外資料")
    else:
        print("JSON 解析錯誤：", json.get_error_message(), " 位於 ", json_string, " 行號 ", json.get_error_line())

你也可以使用靜態的 :ref:`parse_string()<class_JSON_method_parse_string>` 方法解析字串，但該方法不會處理錯誤。

::

    var data = JSON.parse_string(json_string) # 如果解析失敗則回傳 null。

\ **注意：**\ 兩種解析方式都不完全符合 JSON 規範：

- 陣列或物件中的尾隨逗號將被忽略，而不是引起解析器錯誤。

- 換行符和制表符在字串文字中被接受，並被視為它們相應的跳脫序列 ``\n`` 和 ``\t``\ 。

- 使用 :ref:`String.to_float()<class_String_method_to_float>` 解析數字，這通常比 JSON 規範更寬松。

- 某些錯誤不會導致解析器錯誤，例如 Unicode 序列無效，但是該字串會被清理並將錯誤記錄到控制台。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+----------+
   | :ref:`Variant<class_Variant>` | :ref:`data<class_JSON_property_data>` | ``null`` |
   +-------------------------------+---------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`from_native<class_JSON_method_from_native>`\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_error_line<class_JSON_method_get_error_line>`\ (\ ) |const|                                                                                                                                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_error_message<class_JSON_method_get_error_message>`\ (\ ) |const|                                                                                                                                                                 |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_parsed_text<class_JSON_method_get_parsed_text>`\ (\ ) |const|                                                                                                                                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse<class_JSON_method_parse>`\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ )                                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`parse_string<class_JSON_method_parse_string>`\ (\ json_string\: :ref:`String<class_String>`\ ) |static|                                                                                                                               |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`stringify<class_JSON_method_stringify>`\ (\ data\: :ref:`Variant<class_Variant>`, indent\: :ref:`String<class_String>` = "", sort_keys\: :ref:`bool<class_bool>` = true, full_precision\: :ref:`bool<class_bool>` = false\ ) |static| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`to_native<class_JSON_method_to_native>`\ (\ json\: :ref:`Variant<class_Variant>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_JSON_property_data:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **data** = ``null`` :ref:`🔗<class_JSON_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_data**\ (\ )

包含解析到的 JSON 資料，型別為 :ref:`Variant<class_Variant>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_JSON_method_from_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **from_native**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_from_native>`

將引擎原生型別轉換為 JSON 相容型別。

出於安全原因，預設會忽略物件，除非 ``full_objects`` 為 ``true``\ 。

將原生值轉換為 JSON 字串的方法如下：

::

    func encode_data(value, full_objects = false):
        return JSON.stringify(JSON.from_native(value, full_objects))

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_error_line**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_line>`

如果上一次呼叫 :ref:`parse()<class_JSON_method_parse>` 成功，則返回 ``0``\ ，否則返回解析失敗的行號。

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_message:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_message**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_message>`

如果上一次呼叫 :ref:`parse()<class_JSON_method_parse>` 成功，則返回空字串，否則返回失敗時的錯誤訊息。

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_parsed_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_parsed_text**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_parsed_text>`

回傳由 :ref:`parse()<class_JSON_method_parse>` 解析的文字（要求向 :ref:`parse()<class_JSON_method_parse>` 傳遞 ``keep_text``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSON_method_parse>`

嘗試解析提供的 ``json_text``\ 。

回傳 :ref:`Error<enum_@GlobalScope_Error>`\ 。如果解析成功則回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，並且可以使用 :ref:`data<class_JSON_property_data>` 檢索該結果。如果不成功，請使用 :ref:`get_error_line()<class_JSON_method_get_error_line>` 和 :ref:`get_error_message()<class_JSON_method_get_error_message>` 來識別失敗的原因。

如果想要自訂錯誤處理，可以使用的 :ref:`parse_string()<class_JSON_method_parse_string>` 的非靜態版本。

可選的 ``keep_text`` 參數會讓解析器保留原始文字的副本。該文字稍後可以使用 :ref:`get_parsed_text()<class_JSON_method_get_parsed_text>` 函式取得，並在儲存資源時使用（而不是從 :ref:`data<class_JSON_property_data>` 生成新文字）。

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse_string:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **parse_string**\ (\ json_string\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_JSON_method_parse_string>`

試圖解析提供的 ``json_string``\ ，並返回解析後的資料。如果解析失敗，返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_stringify:

.. rst-class:: classref-method

:ref:`String<class_String>` **stringify**\ (\ data\: :ref:`Variant<class_Variant>`, indent\: :ref:`String<class_String>` = "", sort_keys\: :ref:`bool<class_bool>` = true, full_precision\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_stringify>`

將 :ref:`Variant<class_Variant>` 變數轉換為 JSON 文字並回傳結果。可用於將資料進行序列化儲存或通過網路發送。

\ **注意：**\ JSON 規範沒有定義整數和浮點數型別，只有一個\ *數字*\ 型別。因此，將 Variant 轉換為 JSON 文字會將所有數字值轉換為 :ref:`float<class_float>` 型別。

\ **注意：**\ 如果 ``full_precision`` 為 ``true``\ ，則在字串化浮點數時，除可靠數字外，還將對不可靠數字進行字串化，以保證準確解碼。

\ ``indent`` 參數控制是否縮進以及如何縮進，輸出時應該有縮進的地方會用到它的值。甚至可以使用空白 ``" "`` 縮進。\ ``\t`` 和 ``\n`` 可用於制表符縮進，或分別為每個縮進換行。

\ **警告：**\ JSON 不支援非有限數。任何出現的 :ref:`@GDScript.INF<class_@GDScript_constant_INF>` 都將被替換為 ``1e99999``\ ，負數 :ref:`@GDScript.INF<class_@GDScript_constant_INF>` 將被替換為 ``-1e99999``\ ，但大多數 JSON 解析器會將其正確解析為無窮大。\ :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 將被替換為 ``null``\ ，並且 JSON 解析器不會將其解析為 NaN。如果你需要處理非有限數，請考慮先使用 :ref:`from_native()<class_JSON_method_from_native>` 方法處理你的資料。

\ **範例輸出：**\ 

::

    ## JSON.stringify(my_dictionary)
    {"name":"my_dictionary","version":"1.0.0","entities":[{"name":"entity_0","value":"value_0"},{"name":"entity_1","value":"value_1"}]}

    ## JSON.stringify(my_dictionary, "\t")
    {
        "name": "my_dictionary",
        "version": "1.0.0",
        "entities": [
            {
                "name": "entity_0",
                "value": "value_0"
            },
            {
                "name": "entity_1",
                "value": "value_1"
            }
        ]
    }

    ## JSON.stringify(my_dictionary, "...")
    {
    ..."name": "my_dictionary",
    ..."version": "1.0.0",
    ..."entities": [
    ......{
    ........."name": "entity_0",
    ........."value": "value_0"
    ......},
    ......{
    ........."name": "entity_1",
    ........."value": "value_1"
    ......}
    ...]
    }

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_to_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **to_native**\ (\ json\: :ref:`Variant<class_Variant>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_to_native>`

將使用 :ref:`from_native()<class_JSON_method_from_native>` 建立的 JSON 相容值轉換回引擎原生型別。

出於安全原因，預設會忽略物件，除非 ``allow_objects`` 為 ``true``\ 。

將 JSON 字串轉換回原生值的方法如下：

::

    func decode_data(string, allow_objects = false):
        return JSON.to_native(JSON.parse_string(string), allow_objects)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
