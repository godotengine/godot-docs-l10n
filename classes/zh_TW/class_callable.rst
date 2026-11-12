:github_url: hide

.. _class_Callable:

Callable
========

代表一個方法或一個獨立函式的內建型別。

.. rst-class:: classref-introduction-group

說明
----

**Callable** 是一種內建的 :ref:`Variant<class_Variant>` 型別，它代表了一個函式。它可以是 :ref:`Object<class_Object>` 實例中的一個方法，也可以是用於不同目的的自訂可呼叫物件（詳見 :ref:`is_custom()<class_Callable_method_is_custom>`\ ）。和所有的 :ref:`Variant<class_Variant>` 型別一樣，它可以被儲存在變數中，也可以作為參數傳遞給其他函式。它最常見的用途就是用於訊號（signal）的回呼。


.. tabs::

 .. code-tab:: gdscript

    func print_args(arg1, arg2, arg3 = ""):
        prints(arg1, arg2, arg3)

    func test():
        var callable = Callable(self, "print_args")
        callable.call("hello", "world")  # Prints "hello world ".
        callable.call(Vector2.UP, 42, callable)  # Prints "(0.0, -1.0) 42 Node(node.gd)::print_args"
        callable.call("invalid")  # Invalid call, should have at least 2 arguments.

 .. code-tab:: csharp

    // 不支援預設參數值。
    public void PrintArgs(Variant arg1, Variant arg2, Variant arg3 = default)
    {
        GD.PrintS(arg1, arg2, arg3);
    }

    public void Test()
    {
        // 無效的呼叫會靜默失敗。
        Callable callable = new Callable(this, MethodName.PrintArgs);
        callable.Call("hello", "world"); // 不支援預設參數值，應該有 3 個參數。
        callable.Call(Vector2.Up, 42, callable); // Prints "(0, -1) 42 Node(Node.cs)::PrintArgs"
        callable.Call("invalid"); // 無效的呼叫，應該有 3 個參數。
    }



在 GDScript 中，你可以在一個方法內部建立 Lambda 函式。Lambda 函式是一種自訂的可呼叫物件（Callable），它並不綁定在某個具體的 :ref:`Object<class_Object>`\ （物件）實例上。此外，你還可以選擇給 Lambda 函式起個名字。如果起了名字，這個名字將會在除錯器中顯示，或者在呼叫 :ref:`get_method()<class_Callable_method_get_method>` 方法時顯示出來。

::

    func _init():
        var my_lambda = func (message):
            print(message)

        # 輸出 "Hello everyone!"
        my_lambda.call("Hello everyone!")

        # 當 button_pressed 訊號被觸發時，會輸出出 "Attack!"。
        button_pressed.connect(func(): print("Attack!"))

在 GDScript 中，你可以把方法和全域函式當作 **Callable**\ （可呼叫物件）來存取：

::

    tween.tween_callback(node.queue_free)  # Object methods.
    tween.tween_callback(array.clear)  # Methods of built-in types.
    tween.tween_callback(print.bind("Test"))  # Global functions.

\ **注意：** 由於與鍵（keys）存在歧義，\ :ref:`Dictionary<class_Dictionary>` 不支援上述操作。

::

    var dictionary = { "hello": "world" }

    # 這樣是行不通的，clear 會被當成一個鍵（key）。
    tween.tween_callback(dictionary.clear)

    # 這樣是可以的
    tween.tween_callback(Callable.create(dictionary, "clear"))

\ **注意：** 在布林（boolean）環境下，如果一個 callable 是空的（null），它會被判定為 ``false``\ （詳見 :ref:`is_null()<class_Callable_method_is_null>`\ ）。除此之外，callable 永遠會被判定為 ``true``\ 。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ )                                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ from\: :ref:`Callable<class_Callable>`\ )                                             |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`bind<class_Callable_method_bind>`\ (\ ...\ ) |vararg| |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`bindv<class_Callable_method_bindv>`\ (\ arguments\: :ref:`Array<class_Array>`\ )                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`call<class_Callable_method_call>`\ (\ ...\ ) |vararg| |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`call_deferred<class_Callable_method_call_deferred>`\ (\ ...\ ) |vararg| |const|                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`callv<class_Callable_method_callv>`\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const|                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`create<class_Callable_method_create>`\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_argument_count<class_Callable_method_get_argument_count>`\ (\ ) |const|                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_bound_arguments<class_Callable_method_get_bound_arguments>`\ (\ ) |const|                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_bound_arguments_count<class_Callable_method_get_bound_arguments_count>`\ (\ ) |const|                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_method<class_Callable_method_get_method>`\ (\ ) |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_object<class_Callable_method_get_object>`\ (\ ) |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_object_id<class_Callable_method_get_object_id>`\ (\ ) |const|                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_unbound_arguments_count<class_Callable_method_get_unbound_arguments_count>`\ (\ ) |const|                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_Callable_method_hash>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_custom<class_Callable_method_is_custom>`\ (\ ) |const|                                                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_null<class_Callable_method_is_null>`\ (\ ) |const|                                                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_standard<class_Callable_method_is_standard>`\ (\ ) |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_valid<class_Callable_method_is_valid>`\ (\ ) |const|                                                                                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`rpc<class_Callable_method_rpc>`\ (\ ...\ ) |vararg| |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`rpc_id<class_Callable_method_rpc_id>`\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const|                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`unbind<class_Callable_method_unbind>`\ (\ argcount\: :ref:`int<class_int>`\ ) |const|                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Callable_operator_neq_Callable>`\ (\ right\: :ref:`Callable<class_Callable>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Callable_operator_eq_Callable>`\ (\ right\: :ref:`Callable<class_Callable>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Callable_constructor_Callable:

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ ) :ref:`🔗<class_Callable_constructor_Callable>`

建構空的 **Callable**\ ，沒有綁定物件和方法。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ from\: :ref:`Callable<class_Callable>`\ )

建構給定 **Callable** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ )

建立新的 **Callable**\ ，使用指定物件 ``object`` 中名為 ``method`` 的方法。

\ **注意：**\ 對於內建 :ref:`Variant<class_Variant>` 型別的方法，請改用 :ref:`create()<class_Callable_method_create>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Callable_method_bind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bind**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_bind>`

返回該 **Callable** 的副本，綁定其中的一個或多個參數。呼叫時，被綁定的參數在提供給 :ref:`call()<class_Callable_method_call>` 的參數\ *之後*\ 傳遞。另見 :ref:`unbind()<class_Callable_method_unbind>`\ 。

\ **注意：**\ 這個方法與其他類似方法鏈式呼叫時，參數列表的修改順序是從右至左的。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_bindv:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bindv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Callable_method_bindv>`

返回該 **Callable** 的副本，綁定其中的一個或多個參數，參數從陣列中讀取。呼叫時，被綁定的參數在提供給 :ref:`call()<class_Callable_method_call>` 的參數\ *之後*\ 傳遞。另見 :ref:`unbind()<class_Callable_method_unbind>`\ 。

\ **注意：**\ 這個方法與其他類似方法鏈式呼叫時，參數列表的修改順序是從右至左的。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call>`

呼叫該 **Callable** 所代表的方法。可以傳遞參數，必須與該方法的簽章相配對。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call_deferred:

.. rst-class:: classref-method

|void| **call_deferred**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call_deferred>`

使用延遲模式呼叫該 **Callable** 所代表的方法，即在目前影格的末尾呼叫。可以傳遞參數，必須與該方法的簽名相匹配。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        grab_focus.call_deferred()

 .. code-tab:: csharp

    public override void _Ready()
    {
        Callable.From(GrabFocus).CallDeferred();
    }



\ **注意：**\ 延遲呼叫會在空閒時間處理。空閒時間主要發生在處理程序和物理影格的末尾。延遲呼叫將在其中一直執行，直到沒有呼叫剩餘為止，這意味著你可以從其他延遲呼叫中使用延遲呼叫，並且它們仍將在目前空閒時間週期中執行。這同樣意味著你不應從延遲呼叫的方法（或從其呼叫的方法）中延遲呼叫其自身，因為這會導致無限遞歸，就像你直接呼叫該方法一樣。

另見 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_callv:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **callv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Callable_method_callv>`

呼叫該 **Callable** 所代表的方法。與 :ref:`call()<class_Callable_method_call>` 不同，這個方法需要所有參數都放在 ``arguments`` :ref:`Array<class_Array>` 之中。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_create:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **create**\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_Callable_method_create>`

為指定的 ``variant`` 中名為 ``method`` 的方法建立一個新的 **Callable**\ 。為了表示內建 :ref:`Variant<class_Variant>` 型別的方法，使用自訂可呼叫函式（請參閱 :ref:`is_custom()<class_Callable_method_is_custom>`\ ）。如果 ``variant`` 是 :ref:`Object<class_Object>`\ ，則將改為建立一個標準的可呼叫物件。

\ **注意：**\ 該方法對於 :ref:`Dictionary<class_Dictionary>` 型別始終是必需的，因為屬性語法被用於存取其條目。當事先未知 ``variant`` 的型別時（對於多態），你也可以使用該方法。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_argument_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_argument_count>`

回傳該 **Callable** 應接受的所有參數的數量，包括可選參數。也就是說，結果中會\ *減去*\ 使用 :ref:`bind()<class_Callable_method_bind>` 綁定的參數、\ *加上*\ 使用 :ref:`unbind()<class_Callable_method_unbind>` 解除綁定的參數。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bound_arguments**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments>`

回傳一個參數陣列，其元素通過連續的\ :ref:`bind()<class_Callable_method_bind>` or :ref:`unbind()<class_Callable_method_unbind>`\ 呼叫綁定。這些參數會被追加到傳給該呼叫的參數\ *後面*\ ，而位於右側的\ :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>`\ 的參數已被預先從此呼叫中排除。

::

    func get_effective_arguments(callable, call_args):
        assert(call_args.size() - callable.get_unbound_arguments_count() >= 0)
        var result = call_args.slice(0, call_args.size() - callable.get_unbound_arguments_count())
        result.append_array(callable.get_bound_arguments())
        return result

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments_count>`

回傳通過連續的\ :ref:`bind()<class_Callable_method_bind>`\ 或\ :ref:`unbind()<class_Callable_method_unbind>`\ 呼叫綁定的參數總數。此總數與\ :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`\ 回傳的陣列大小是一致的。詳情參見\ :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`\ 。

\ **注意：**\ 方法\ :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>`\ 和\ :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>`\ 都回傳正值。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_method**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_method>`

返回該 **Callable** 所代表的方法的名稱。如果該可呼叫體是 lambda 函式，則返回該函式的名稱。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object>`

返回該 **Callable** 所呼叫的物件。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object_id>`

返回該 **Callable** 中對象的 ID（見 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_unbound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unbound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_unbound_arguments_count>`

回傳通過連續呼叫 :ref:`bind()<class_Callable_method_bind>` 和 :ref:`unbind()<class_Callable_method_unbind>` 解綁的參數總數。詳見 :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`\ 。

\ **注意：**\ :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` 和 :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` 方法都可以回傳正值。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Callable_method_hash>`

返回該 **Callable** 對象的 32 位元雜湊值。

\ **注意：**\ 內容相同的 **Callable** 雜湊值始終相同。反之則不然，返回的雜湊值相同\ *並不*\ 意味著可呼叫體相等，因為不同的可呼叫體可能由於雜湊衝突而具有相同的雜湊值。引擎在 :ref:`hash()<class_Callable_method_hash>` 中使用 32 位雜湊演算法。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_custom:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_custom**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_custom>`

Returns ``true`` if this **Callable** is a custom callable. Custom callables are used:

- for binding/unbinding arguments (see :ref:`bind()<class_Callable_method_bind>` and :ref:`unbind()<class_Callable_method_unbind>`);

- for representing methods of built-in :ref:`Variant<class_Variant>` types (see :ref:`create()<class_Callable_method_create>`);

- for representing global and lambda functions in GDScript;

- for other purposes in the core, GDExtension, and C#.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_null>`

如果這個 **Callable** 沒有可以呼叫方法的目標，則回傳 ``true``\ 。等價於 ``callable == Callable()``\ 。

\ **注意：**\ 這與 ``not is_valid()`` *不同*\ ，使用 ``not is_null()`` *無法*\ 保證能夠呼叫該可呼叫物件。請改用 :ref:`is_valid()<class_Callable_method_is_valid>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_standard:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_standard**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_standard>`

如果該 **Callable** 為標準可呼叫體，則返回 ``true``\ 。這個方法與 :ref:`is_custom()<class_Callable_method_is_custom>` 相對。如果該可呼叫體為 lambda 函式，則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_valid>`

如果該可呼叫體的物件存在，且分配了有效的方法名，或者為自訂可呼叫體，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc:

.. rst-class:: classref-method

|void| **rpc**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc>`

在所有已連接的對等體上執行 RPC（Remote Procedure Call，遠端程式呼叫）。用於多人遊戲，一般不可用，除非所呼叫的函式有 *RPC* 標記（使用 :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` 或 :ref:`Node.rpc_config()<class_Node_method_rpc_config>`\ ）。在不支援的方法上呼叫該方法會導致出錯。見 :ref:`Node.rpc()<class_Node_method_rpc>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc_id:

.. rst-class:: classref-method

|void| **rpc_id**\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc_id>`

在指定的對等體 ID（請參閱多人遊戲文件）上執行 RPC（Remote Procedure Call，遠端程式呼叫）。用於多人遊戲，一般不可用，除非所呼叫的函式有 *RPC* 標記（使用 :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` 或 :ref:`Node.rpc_config()<class_Node_method_rpc_config>`\ ）。在不支援的方法上呼叫該方法會導致出錯。見 :ref:`Node.rpc_id()<class_Node_method_rpc_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_unbind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **unbind**\ (\ argcount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Callable_method_unbind>`

返回這個 **Callable** 的副本，解綁了一些參數。換句話說，呼叫新的可呼叫體時，使用者提供的最後幾個參數會被忽略，忽略幾個由 ``argcount`` 決定。剩餘的參數會被傳遞給該可呼叫體。這樣傳入的參數就能夠比原本可呼叫體所能處理的參數要多，例如帶有固定數量參數的訊號。另見 :ref:`bind()<class_Callable_method_bind>`\ 。

\ **注意：**\ 這個方法與其他類似方法鏈式呼叫時，參數列表的修改順序是從右至左的。

::

    func _ready():
        foo.unbind(1).call(1, 2) # 呼叫 foo(1).
        foo.bind(3, 4).unbind(1).call(1, 2) # 呼叫 foo(1, 3, 4)，注意改動的不是 bind 中的參數。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Callable_operator_neq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_neq_Callable>`

如果兩個 **Callable** 呼叫的目標不同，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_operator_eq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_eq_Callable>`

如果兩個 **Callable** 呼叫的自訂目標相同，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
