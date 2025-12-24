:github_url: hide

.. _class_Expression:

Expression
==========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

儲存你可以執行的運算式的類。

.. rst-class:: classref-introduction-group

說明
----

運算式可以由任何算數運算、內建數學函式呼叫、傳遞實例的方法呼叫或內建型別建構呼叫組成。

一個使用內建數學函式的範例運算式文字可以是 ``sqrt(pow(3, 2) + pow(4, 2))``\ 。

在下面的範例中，我們使用 :ref:`LineEdit<class_LineEdit>` 節點來編寫運算式並顯示結果。


.. tabs::

 .. code-tab:: gdscript

    var expression = Expression.new()

    func _ready():
        $LineEdit.text_submitted.connect(self._on_text_submitted)

    func _on_text_submitted(command):
        var error = expression.parse(command)
        if error != OK:
            print(expression.get_error_text())
            return
        var result = expression.execute()
        if not expression.has_execute_failed():
            $LineEdit.text = str(result)

 .. code-tab:: csharp

    private Expression _expression = new Expression();

    public override void _Ready()
    {
        GetNode<LineEdit>("LineEdit").TextSubmitted += OnTextEntered;
    }

    private void OnTextEntered(string command)
    {
        Error error = _expression.Parse(command);
        if (error != Error.Ok)
        {
            GD.Print(_expression.GetErrorText());
            return;
        }
        Variant result = _expression.Execute();
        if (!_expression.HasExecuteFailed())
        {
            GetNode<LineEdit>("LineEdit").Text = result.ToString();
        }
    }



.. rst-class:: classref-introduction-group

教學
----

- :doc:`運算式求值 <../tutorials/scripting/evaluating_expressions>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`execute<class_Expression_method_execute>`\ (\ inputs\: :ref:`Array<class_Array>` = [], base_instance\: :ref:`Object<class_Object>` = null, show_error\: :ref:`bool<class_bool>` = true, const_calls_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_error_text<class_Expression_method_get_error_text>`\ (\ ) |const|                                                                                                                                                                         |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_execute_failed<class_Expression_method_has_execute_failed>`\ (\ ) |const|                                                                                                                                                                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse<class_Expression_method_parse>`\ (\ expression\: :ref:`String<class_String>`, input_names\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray()\ )                                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Expression_method_execute:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **execute**\ (\ inputs\: :ref:`Array<class_Array>` = [], base_instance\: :ref:`Object<class_Object>` = null, show_error\: :ref:`bool<class_bool>` = true, const_calls_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Expression_method_execute>`

執行之前由 :ref:`parse()<class_Expression_method_parse>` 解析的運算式，並返回結果。在使用返回的物件之前，應該通過呼叫 :ref:`has_execute_failed()<class_Expression_method_has_execute_failed>` 來檢查方法是否失敗。

如果你在 :ref:`parse()<class_Expression_method_parse>` 中定義了輸入變數，你可以在輸入陣列中以同樣的順序指定它們的值。

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_get_error_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_text**\ (\ ) |const| :ref:`🔗<class_Expression_method_get_error_text>`

如果 :ref:`parse()<class_Expression_method_parse>` 或 :ref:`execute()<class_Expression_method_execute>` 失敗，則返回錯誤文字。

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_has_execute_failed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_execute_failed**\ (\ ) |const| :ref:`🔗<class_Expression_method_has_execute_failed>`

如果 :ref:`execute()<class_Expression_method_execute>` 失敗，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ expression\: :ref:`String<class_String>`, input_names\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray()\ ) :ref:`🔗<class_Expression_method_parse>`

解析運算式並返回 :ref:`Error<enum_@GlobalScope_Error>` 程式碼。

你也可以選擇用 ``input_names`` 來指定可能出現在運算式中的變數名稱，這樣就可以在執行運算式時進行綁定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
