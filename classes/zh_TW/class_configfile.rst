:github_url: hide

.. _class_ConfigFile:

ConfigFile
==========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於處理 INI 樣式檔的輔助類。

.. rst-class:: classref-introduction-group

說明
----

該輔助類可用於使用 INI 樣式格式在檔案系統上儲存 :ref:`Variant<class_Variant>` 值。儲存的值由一個小節和一個鍵標識：

.. code:: text

    [section]
    some_key=42
    string_example="Hello World3D!"
    a_vector=Vector3(1, 0, 2)

儲存的資料可以被儲存到檔案中或從檔案中解析出來，儘管 ConfigFile 物件也可以直接使用而無需存取檔案系統。

以下範例顯示了如何建立一個簡單的 **ConfigFile** 並將其儲存在磁碟上：


.. tabs::

 .. code-tab:: gdscript

    # 建立新的 ConfigFile 物件。
    var config = ConfigFile.new()

    # 儲存一些值。
    config.set_value("Player1", "player_name", "Steve")
    config.set_value("Player1", "best_score", 10)
    config.set_value("Player2", "player_name", "V3geta")
    config.set_value("Player2", "best_score", 9001)

    # 將其儲存到檔案中（如果已存在則覆蓋）。
    config.save("user://scores.cfg")

 .. code-tab:: csharp

    // 建立新的 ConfigFile 物件。
    var config = new ConfigFile();

    // 儲存一些值。
    config.SetValue("Player1", "player_name", "Steve");
    config.SetValue("Player1", "best_score", 10);
    config.SetValue("Player2", "player_name", "V3geta");
    config.SetValue("Player2", "best_score", 9001);

    // 將其儲存到檔案中（如果已存在則覆蓋）。
    config.Save("user://scores.cfg");



該範例展示了如何載入上面的檔案：


.. tabs::

 .. code-tab:: gdscript

    var score_data = {}
    var config = ConfigFile.new()

    # 從檔案載入資料。
    var err = config.load("user://scores.cfg")

    # 如果檔案沒有載入，忽略它。
    if err != OK:
        return

    # 迭代所有小節。
    for player in config.get_sections():
        # 取得每個小節的資料。
        var player_name = config.get_value(player, "player_name")
        var player_score = config.get_value(player, "best_score")
        score_data[player_name] = player_score

 .. code-tab:: csharp

    var score_data = new Godot.Collections.Dictionary();
    var config = new ConfigFile();

    // 從檔案載入資料。
    Error err = config.Load("user://scores.cfg");

    // 如果檔案沒有載入，忽略它。
    if (err != Error.Ok)
    {
        return;
    }

    // 迭代所有小節。
    foreach (String player in config.GetSections())
    {
        // 取得每個小節的資料。
        var player_name = (String)config.GetValue(player, "player_name");
        var player_score = (int)config.GetValue(player, "best_score");
        score_data[player_name] = player_score;
    }



\ :ref:`set_value()<class_ConfigFile_method_set_value>`\ 、\ :ref:`clear()<class_ConfigFile_method_clear>`\ 、\ :ref:`erase_section()<class_ConfigFile_method_erase_section>` 等修改 ConfigFile 的操作只會改變記憶體中所載入的內容。如果要將更改寫入檔案，則必須使用 :ref:`save()<class_ConfigFile_method_save>`\ 、\ :ref:`save_encrypted()<class_ConfigFile_method_save_encrypted>` 或 :ref:`save_encrypted_pass()<class_ConfigFile_method_save_encrypted_pass>` 儲存更改。

請記住，小節和屬性名稱不能包含空白。儲存和載入時將忽略空白後的任何內容。

ConfigFile 還可以包含以分號（\ ``;``\ ）開頭的手動編寫的注釋行。解析檔案時將忽略這些行。請注意，儲存 ConfigFile 時注釋將丟失。注釋對於專用伺服器設定檔案仍然很有用，如果沒有明確的使用者操作，這些檔案通常永遠不會被覆蓋。

\ **注意：**\ 為 ConfigFile 指定的檔案副檔名對其格式或行為沒有任何影響。按照慣例，此處使用 ``.cfg`` 副檔名，但 ``.ini`` 等任何其他副檔名也有效。由於 ``.cfg`` 和 ``.ini`` 都不是標準化的格式，Godot 的 ConfigFile 格式可能與其他程式編寫的檔案不同。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_ConfigFile_method_clear>`\ (\ )                                                                                                                                           |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`encode_to_text<class_ConfigFile_method_encode_to_text>`\ (\ ) |const|                                                                                                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section<class_ConfigFile_method_erase_section>`\ (\ section\: :ref:`String<class_String>`\ )                                                                                    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section_key<class_ConfigFile_method_erase_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ )                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_section_keys<class_ConfigFile_method_get_section_keys>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_sections<class_ConfigFile_method_get_sections>`\ (\ ) |const|                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`get_value<class_ConfigFile_method_get_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section<class_ConfigFile_method_has_section>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section_key<class_ConfigFile_method_has_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const|                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load<class_ConfigFile_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted<class_ConfigFile_method_load_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted_pass<class_ConfigFile_method_load_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`parse<class_ConfigFile_method_parse>`\ (\ data\: :ref:`String<class_String>`\ )                                                                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save<class_ConfigFile_method_save>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted<class_ConfigFile_method_save_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted_pass<class_ConfigFile_method_save_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_value<class_ConfigFile_method_set_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ConfigFile_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ConfigFile_method_clear>`

移除配置的全部內容。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_encode_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **encode_to_text**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_encode_to_text>`

獲得該設定檔的文字版本（與寫入檔的文字相同）。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section:

.. rst-class:: classref-method

|void| **erase_section**\ (\ section\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section>`

刪除指定小節以及其中的所有鍵值對。如果該小節不存在，則會引發錯誤。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section_key:

.. rst-class:: classref-method

|void| **erase_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section_key>`

刪除小節中的指定鍵。如果該小節或鍵不存在，則會引發錯誤。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_section_keys:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_section_keys**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_get_section_keys>`

返回指定小節中所有已定義鍵識別字的陣列。如果該小節不存在，則會引發錯誤並返回一個空陣列。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_sections:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_sections**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_get_sections>`

返回所有已定義小節的識別字的陣列。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_ConfigFile_method_get_value>`

返回指定小節和鍵的目前值。如果該小節或鍵不存在，則該方法返回後備值 ``default``\ 。如果未指定 ``default`` 或將其設定為 ``null``\ ，則會引發一個錯誤。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section>`

如果指定的小節存在，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section_key>`

如果指定的小節-鍵對存在，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load>`

載入指定為參數的設定檔。解析檔的內容並將其載入到呼叫該方法的 **ConfigFile** 對象中。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted>`

載入指定為參數的加密設定檔，使用提供的 ``key`` 對其解密。解析檔的內容並將其載入到呼叫該方法的 **ConfigFile** 物件中。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted_pass>`

載入作為參數的加密設定檔，使用提供的 ``password`` 解密。該檔的內容被解析並載入到呼叫該方法的 **ConfigFile** 物件中。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ data\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_parse>`

將傳遞的字串解析為設定檔的內容。該字串被解析並載入到呼叫該方法的 ConfigFile 對象中。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save>`

將 **ConfigFile** 物件的內容保存到指定為參數的檔中。輸出檔使用 INI 樣式的結構。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted>`

使用提供的 ``key`` 將 **ConfigFile** 物件的內容保存到作為參數指定的 AES-256 加密檔中。輸出檔使用 INI 樣式的結構。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted_pass>`

將 **ConfigFile** 物件的內容保存到作為參數指定的 AES-256 加密檔中，使用提供的 ``password`` 進行加密。輸出檔使用 INI 風格的結構。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_set_value:

.. rst-class:: classref-method

|void| **set_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ConfigFile_method_set_value>`

為指定小節的指定鍵賦值。如果小節或鍵不存在，則建立它們。如果指定的鍵存在，傳遞 ``null`` 值就會移除指定的鍵，如果鍵被移除後，小節最終是空的，就會移除小節。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
