:github_url: hide

.. _class_Expression:

Expression
==========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存储你可以执行的表达式的类。

.. rst-class:: classref-introduction-group

描述
----

表达式可以由任何算术运算、内置数学函数调用、传递实例的方法调用或内置类型构造调用组成。

一个使用内置数学函数的示例表达式文本可以是 ``sqrt(pow(3, 2) + pow(4, 2))``\ 。

在下面的示例中，我们使用 :ref:`LineEdit<class_LineEdit>` 节点来编写表达式并显示结果。


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

教程
----

- :doc:`表达式求值 <../tutorials/scripting/evaluating_expressions>`

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

方法说明
--------

.. _class_Expression_method_execute:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **execute**\ (\ inputs\: :ref:`Array<class_Array>` = [], base_instance\: :ref:`Object<class_Object>` = null, show_error\: :ref:`bool<class_bool>` = true, const_calls_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Expression_method_execute>`

执行之前由 :ref:`parse()<class_Expression_method_parse>` 解析的表达式，并返回结果。在使用返回的对象之前，应该通过调用 :ref:`has_execute_failed()<class_Expression_method_has_execute_failed>` 来检查方法是否失败。

如果你在 :ref:`parse()<class_Expression_method_parse>` 中定义了输入变量，你可以在输入数组中以同样的顺序指定它们的值。

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_get_error_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_text**\ (\ ) |const| :ref:`🔗<class_Expression_method_get_error_text>`

如果 :ref:`parse()<class_Expression_method_parse>` 或 :ref:`execute()<class_Expression_method_execute>` 失败，则返回错误文本。

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_has_execute_failed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_execute_failed**\ (\ ) |const| :ref:`🔗<class_Expression_method_has_execute_failed>`

如果 :ref:`execute()<class_Expression_method_execute>` 失败，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ expression\: :ref:`String<class_String>`, input_names\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray()\ ) :ref:`🔗<class_Expression_method_parse>`

解析表达式并返回 :ref:`Error<enum_@GlobalScope_Error>` 代码。

你也可以选择用 ``input_names`` 来指定可能出现在表达式中的变量名称，这样就可以在执行表达式时进行绑定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
