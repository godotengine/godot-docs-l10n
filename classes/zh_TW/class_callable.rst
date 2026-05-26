:github_url: hide

.. _class_Callable:

Callable
========

代表一個方法或一個獨立函式的內建型別。

.. rst-class:: classref-introduction-group

說明
----

**Callable** is a built-in :ref:`Variant<class_Variant>` type that represents a function. It can either be a method within an :ref:`Object<class_Object>` instance, or a custom callable used for different purposes (see :ref:`is_custom()<class_Callable_method_is_custom>`). Like all :ref:`Variant<class_Variant>` types, it can be stored in variables and passed to other functions. It is most commonly used for signal callbacks.


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

    // Default parameter values are not supported.
    public void PrintArgs(Variant arg1, Variant arg2, Variant arg3 = default)
    {
        GD.PrintS(arg1, arg2, arg3);
    }

    public void Test()
    {
        // Invalid calls fail silently.
        Callable callable = new Callable(this, MethodName.PrintArgs);
        callable.Call("hello", "world"); // Default parameter values are not supported, should have 3 arguments.
        callable.Call(Vector2.Up, 42, callable); // Prints "(0, -1) 42 Node(Node.cs)::PrintArgs"
        callable.Call("invalid"); // Invalid call, should have 3 arguments.
    }



In GDScript, it's possible to create lambda functions within a method. Lambda functions are custom callables that are not associated with an :ref:`Object<class_Object>` instance. Optionally, lambda functions can also be named. The name will be displayed in the debugger, or when calling :ref:`get_method()<class_Callable_method_get_method>`.

::

    func _init():
        var my_lambda = func (message):
            print(message)

        # Prints "Hello everyone!"
        my_lambda.call("Hello everyone!")

        # Prints "Attack!", when the button_pressed signal is emitted.
        button_pressed.connect(func(): print("Attack!"))

In GDScript, you can access methods and global functions as **Callable**\ s:

::

    tween.tween_callback(node.queue_free)  # Object methods.
    tween.tween_callback(array.clear)  # Methods of built-in types.
    tween.tween_callback(print.bind("Test"))  # Global functions.

\ **Note:** :ref:`Dictionary<class_Dictionary>` does not support the above due to ambiguity with keys.

::

    var dictionary = { "hello": "world" }

    # This will not work, `clear` is treated as a key.
    tween.tween_callback(dictionary.clear)

    # This will work.
    tween.tween_callback(Callable.create(dictionary, "clear"))

\ **Note:** In a boolean context, a callable will evaluate to ``false`` if it's null (see :ref:`is_null()<class_Callable_method_is_null>`). Otherwise, a callable will always evaluate to ``true``.

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

Creates a new **Callable** for the method named ``method`` in the specified ``object``.

\ **Note:** For methods of built-in :ref:`Variant<class_Variant>` types, use :ref:`create()<class_Callable_method_create>` instead.

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

Calls the method represented by this **Callable** in deferred mode, i.e. at the end of the current frame. Arguments can be passed and should match the method's signature.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        grab_focus.call_deferred()

 .. code-tab:: csharp

    public override void _Ready()
    {
        Callable.From(GrabFocus).CallDeferred();
    }



\ **Note:** Deferred calls are processed at idle time. Idle time happens mainly at the end of process and physics frames. In it, deferred calls will be run until there are none left, which means you can defer calls from other deferred calls and they'll still be run in the current idle time cycle. This means you should not call a method deferred from itself (or from a method called by it), as this causes infinite recursion the same way as if you had called the method directly.

See also :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

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

Creates a new **Callable** for the method named ``method`` in the specified ``variant``. To represent a method of a built-in :ref:`Variant<class_Variant>` type, a custom callable is used (see :ref:`is_custom()<class_Callable_method_is_custom>`). If ``variant`` is :ref:`Object<class_Object>`, then a standard callable will be created instead.

\ **Note:** This method is always necessary for the :ref:`Dictionary<class_Dictionary>` type, as property syntax is used to access its entries. You may also use this method when ``variant``'s type is not known in advance (for polymorphism).

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_argument_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_argument_count>`

Returns the total number of arguments this **Callable** should take, including optional arguments. This means that any arguments bound with :ref:`bind()<class_Callable_method_bind>` are *subtracted* from the result, and any arguments unbound with :ref:`unbind()<class_Callable_method_unbind>` are *added* to the result.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bound_arguments**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments>`

Returns the array of arguments bound via successive :ref:`bind()<class_Callable_method_bind>` or :ref:`unbind()<class_Callable_method_unbind>` calls. These arguments will be added *after* the arguments passed to the call, from which :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` arguments on the right have been previously excluded.

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

Returns the total amount of arguments bound via successive :ref:`bind()<class_Callable_method_bind>` or :ref:`unbind()<class_Callable_method_unbind>` calls. This is the same as the size of the array returned by :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`. See :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>` for details.

\ **Note:** The :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` and :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` methods can both return positive values.

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

Returns the total amount of arguments unbound via successive :ref:`bind()<class_Callable_method_bind>` or :ref:`unbind()<class_Callable_method_unbind>` calls. See :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>` for details.

\ **Note:** The :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` and :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` methods can both return positive values.

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

- for representing global, lambda, and RPC functions in GDScript;

- for other purposes in the core, GDExtension, and C#.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_null>`

Returns ``true`` if this **Callable** has no target to call the method on. Equivalent to ``callable == Callable()``.

\ **Note:** This is *not* the same as ``not is_valid()`` and using ``not is_null()`` will *not* guarantee that this callable can be called. Use :ref:`is_valid()<class_Callable_method_is_valid>` instead.

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

在指定的對等體 ID（請參閱多人遊戲文件）上執行 RPC（Remote Procedure Call，遠程程式呼叫）。用於多人遊戲，一般不可用，除非所呼叫的函式有 *RPC* 標記（使用 :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` 或 :ref:`Node.rpc_config()<class_Node_method_rpc_config>`\ ）。在不支援的方法上呼叫該方法會導致出錯。見 :ref:`Node.rpc_id()<class_Node_method_rpc_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_unbind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **unbind**\ (\ argcount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Callable_method_unbind>`

返回這個 **Callable** 的副本，解綁了一些參數。換句話說，呼叫新的可呼叫體時，用戶提供的最後幾個參數會被忽略，忽略幾個由 ``argcount`` 決定。剩餘的參數會被傳遞給該可呼叫體。這樣傳入的參數就能夠比原本可呼叫體所能處理的參數要多，例如帶有固定數量參數的訊號。另見 :ref:`bind()<class_Callable_method_bind>`\ 。

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
