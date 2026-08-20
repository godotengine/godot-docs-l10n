:github_url: hide

.. _class_Callable:

Callable
========

Встроенный тип, представляющий метод или отдельную функцию.

.. rst-class:: classref-introduction-group

Описание
----------------

**Callable** — это встроенный тип :ref:`Variant<class_Variant>`, представляющий функцию. Он может быть либо методом в экземпляре :ref:`Object<class_Object>`, либо пользовательской вызываемой функцией, используемой для других целей (см. :ref:`is_custom()<class_Callable_method_is_custom>`). Как и все типы :ref:`Variant<class_Variant>`, он может храниться в переменных и передаваться другим функциям. Чаще всего он используется для обратных вызовов сигналов.


.. tabs::

 .. code-tab:: gdscript

    func print_args(arg1, arg2, arg3 = ""):
        prints(arg1, arg2, arg3)

    func test():
        var callable = Callable(self, "print_args")
        callable.call("hello", "world")  # Выводит "hello world ".
        callable.call(Vector2.UP, 42, callable)  # Выводит "(0.0, -1.0) 42 Node(node.gd)::print_args"
        callable.call("invalid")  # Недопустимый вызов, должен содержать как минимум 2 аргумента.

 .. code-tab:: csharp

    // Значения параметров по умолчанию не поддерживаются.
    public void PrintArgs(Variant arg1, Variant arg2, Variant arg3 = default)
    {
        GD.PrintS(arg1, arg2, arg3);
    }

    public void Test()
    {
        // Некорректные вызовы завершаются с ошибкой без предупреждения.
        Callable callable = new Callable(this, MethodName.PrintArgs);
        callable.Call("hello", "world"); // Значения параметров по умолчанию не поддерживаются, должно быть 3 аргумента.
        callable.Call(Vector2.Up, 42, callable); // Выводит "(0, -1) 42 Node(Node.cs)::PrintArgs"
        callable.Call("invalid"); // Недопустимый вызов, должен содержать 3 аргумента.
    }



В GDScript можно создавать лямбда-функции внутри метода. Лямбда-функции — это вызываемые функции, не связанные с экземпляром :ref:`Object<class_Object>`. При желании лямбда-функции также могут быть именованы. Имя будет отображаться в отладчике или при вызове :ref:`get_method()<class_Callable_method_get_method>`.

::

    func _init():
        var my_lambda = func (message):
            print(message)

        # Выводит "Hello everyone!"
        my_lambda.call("Hello everyone!")

        # Выводит "Attack!" при срабатывании сигнала button_pressed.
        button_pressed.connect(func(): print("Attack!"))

В GDScript доступ к методам и глобальным функциям осуществляется через **Callable**:

::

    tween.tween_callback(node.queue_free)  # Методы объекта.
    tween.tween_callback(array.clear)  # Методы встроенных типов.
    tween.tween_callback(print.bind("Test"))  # Глобальные функции.

\ **Примечание:** :ref:`Dictionary<class_Dictionary>` не поддерживает вышеуказанное из-за неоднозначности с ключами.

::

    var dictionary = { "hello": "world" }

    # Это не сработает, `clear` рассматривается как ключ.
    tween.tween_callback(dictionary.clear)

    # Это сработает.
    tween.tween_callback(Callable.create(dictionary, "clear"))

\ **Примечание:** В контексте логических значений вызываемая функция вернет значение ``false``, если она равна null (см. :ref:`is_null()<class_Callable_method_is_null>`). В противном случае вызываемая функция всегда вернет значение ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

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

Методы
------------

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

Операторы
------------------

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

Описания конструктора
------------------------------------------

.. _class_Callable_constructor_Callable:

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ ) :ref:`🔗<class_Callable_constructor_Callable>`

Создает пустой **Callable** без привязанных объектов и методов.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ from\: :ref:`Callable<class_Callable>`\ )

Создает **Callable** как копию заданного **Callable**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ )

Создает новый **Callable** для метода с именем ``method`` в указанном ``object``.

\ **Примечание:** Для методов встроенных типов :ref:`Variant<class_Variant>` используйте вместо этого :ref:`create()<class_Callable_method_create>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Callable_method_bind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bind**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_bind>`

Возвращает копию этого **Callable** с одним или несколькими связанными аргументами. При вызове связанные аргументы передаются *после* аргументов, предоставленных :ref:`call()<class_Callable_method_call>`. См. также :ref:`unbind()<class_Callable_method_unbind>`.

\ **Примечание:** Когда этот метод связан с другими похожими методами, порядок изменения списка аргументов считывается справа налево.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_bindv:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bindv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Callable_method_bindv>`

Возвращает копию этого **Callable** с одним или несколькими связанными аргументами, считывая их из массива. При вызове связанные аргументы передаются *после* аргументов, предоставленных :ref:`call()<class_Callable_method_call>`. См. также :ref:`unbind()<class_Callable_method_unbind>`.

\ **Примечание:** Когда этот метод связан с другими похожими методами, порядок изменения списка аргументов считывается справа налево.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call>`

Вызывает метод, представленный этим **Callable**. Аргументы могут быть переданы и должны соответствовать сигнатуре метода.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call_deferred:

.. rst-class:: classref-method

|void| **call_deferred**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call_deferred>`

Вызывает метод, представленный этим **Callable**, в отложенном режиме, т. е. в конце текущего кадра. Аргументы могут быть переданы и должны соответствовать сигнатуре метода.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        grab_focus.call_deferred()

 .. code-tab:: csharp

    public override void _Ready()
    {
        Callable.From(GrabFocus).CallDeferred();
    }



\ **Примечание:** Отложенные вызовы обрабатываются во время простоя. Время простоя в основном происходит в конце кадров процесса и физики. В нем отложенные вызовы будут выполняться до тех пор, пока не останется ни одного, что означает, что вы можете отложить вызовы из других отложенных вызовов, и они все равно будут выполняться в текущем цикле времени простоя. Это означает, что вы не должны вызывать метод, отложенный из самого себя (или из метода, вызванного им), так как это вызывает бесконечную рекурсию так же, как если бы вы вызвали метод напрямую.

См. также :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_callv:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **callv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Callable_method_callv>`

Вызывает метод, представленный этим **Callable**. В отличие от :ref:`call()<class_Callable_method_call>`, этот метод ожидает, что все аргументы будут содержаться внутри ``arguments`` :ref:`Array<class_Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_create:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **create**\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_Callable_method_create>`

Создает новый **Callable** для метода с именем ``method`` в указанном ``variation``. Для представления метода встроенного типа :ref:`Variant<class_Variant>` используется пользовательский вызываемый объект (см. :ref:`is_custom()<class_Callable_method_is_custom>`). Если ``variation`` — это :ref:`Object<class_Object>`, то вместо него будет создан стандартный вызываемый объект.

\ **Примечание:** Этот метод всегда необходим для типа :ref:`Dictionary<class_Dictionary>`, так как для доступа к его записям используется синтаксис свойств. Вы также можете использовать этот метод, когда тип ``variation`` заранее неизвестен (для полиморфизма).

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_argument_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_argument_count>`

Возвращает общее количество аргументов, которые должен принимать этот **Callable**, включая необязательные аргументы. Это означает, что любые аргументы, связанные с :ref:`bind()<class_Callable_method_bind>`, *вычитаются* из результата, а любые аргументы, несвязанные с :ref:`unbind()<class_Callable_method_unbind>`, *добавляются* к результату.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bound_arguments**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments>`

Возвращает массив аргументов, связанных через последовательные вызовы :ref:`bind()<class_Callable_method_bind>` или :ref:`unbind()<class_Callable_method_unbind>`. Эти аргументы будут добавлены *после* аргументов, переданных вызову, из которого :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` аргументов справа были ранее исключены.

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

Возвращает общее количество аргументов, связанных через последовательные вызовы :ref:`bind()<class_Callable_method_bind>` или :ref:`unbind()<class_Callable_method_unbind>`. Это то же самое, что и размер массива, возвращаемого :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`. Подробности см. в :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`.

\ **Примечание:** Методы :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` и :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` могут возвращать положительные значения.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_method**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_method>`

Возвращает имя метода, представленного этим **Callable**. Если вызываемый объект является лямбда-функцией GDScript, возвращает имя функции или ``"<anonymous lambda>"``.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object>`

Возвращает объект, для которого вызывается этот **Callable**.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object_id>`

Возвращает идентификатор этого объекта **Callable** (см. :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_unbound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unbound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_unbound_arguments_count>`

Возвращает общее количество аргументов, освобожденных с помощью последовательных вызовов :ref:`bind()<class_Callable_method_bind>` или :ref:`unbind()<class_Callable_method_unbind>`. Подробности см. в :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`.

\ **Примечание:** Методы :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` и :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` могут возвращать положительные значения.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Callable_method_hash>`

Возвращает 32-битное хэш-значение этого объекта **Callable**.

\ **Примечание:** **Callable** с одинаковым содержимым всегда будут выдавать идентичные хэш-значения. Однако обратное неверно. Возврат идентичных хэш-значений не ** означает, что вызываемые объекты равны, поскольку разные вызываемые объекты могут иметь идентичные хэш-значения из-за коллизий хэшей. Движок использует 32-битный хэш-алгоритм для :ref:`hash()<class_Callable_method_hash>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_custom:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_custom**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_custom>`

Возвращает ``true``, если этот **Callable** является пользовательским вызываемым. Пользовательские вызываемые используются:

- для привязки/отмены привязки аргументов (см. :ref:`bind()<class_Callable_method_bind>` и :ref:`unbind()<class_Callable_method_unbind>`);

- для представления методов встроенных типов :ref:`Variant<class_Variant>` (см. :ref:`create()<class_Callable_method_create>`);

- для представления глобальных, лямбда-функций и функций RPC в GDScript;

- для других целей в ядре, GDExtension и C#.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_null>`

Возвращает ``true``, если у этого **Callable** нет цели для вызова метода. Эквивалентно ``callable == Callable()``.

\ **Примечание:** Это *не* то же самое, что ``not is_valid()``, и использование ``not is_null()`` *не* гарантирует, что этот вызываемый может быть вызван. Вместо этого используйте :ref:`is_valid()<class_Callable_method_is_valid>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_standard:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_standard**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_standard>`

Возвращает ``true``, если этот **Callable** является стандартным вызываемым. Этот метод противоположен :ref:`is_custom()<class_Callable_method_is_custom>`. Возвращает ``false``, если этот вызываемый является лямбда-функцией.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_valid>`

Возвращает ``true``, если вызываемый объект существует и имеет назначенное допустимое имя метода или является пользовательским вызываемым объектом.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc:

.. rst-class:: classref-method

|void| **rpc**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc>`

Выполнить RPC (удаленный вызов процедуры) на всех подключенных пирах. Это используется для многопользовательской игры и обычно недоступно, если только вызываемая функция не помечена как *RPC* (используя :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` или :ref:`Node.rpc_config()<class_Node_method_rpc_config>`). Вызов этого метода для неподдерживаемых функций приведет к ошибке. См. :ref:`Node.rpc()<class_Node_method_rpc>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc_id:

.. rst-class:: classref-method

|void| **rpc_id**\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc_id>`

Выполнить RPC (удаленный вызов процедуры) для определенного идентификатора однорангового сервера (см. документацию по многопользовательской игре для справки). Это используется для многопользовательской игры и обычно недоступно, если вызываемая функция не помечена как *RPC* (используя :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` или :ref:`Node.rpc_config()<class_Node_method_rpc_config>`). Вызов этого метода для неподдерживаемых функций приведет к ошибке. См. :ref:`Node.rpc_id()<class_Node_method_rpc_id>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_unbind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **unbind**\ (\ argcount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Callable_method_unbind>`

Возвращает копию этого **Callable** с несколькими несвязанными аргументами. Другими словами, когда вызывается новый вызываемый, последние несколько аргументов, предоставленных пользователем, игнорируются в соответствии с ``argcount``. Оставшиеся аргументы передаются вызываемому. Это позволяет использовать исходный вызываемый в контексте, который пытается передать больше аргументов, чем этот вызываемый может обработать, например, сигнал с фиксированным количеством аргументов. См. также :ref:`bind()<class_Callable_method_bind>`.

\ **Примечание:** Когда этот метод связан с другими похожими методами, порядок, в котором изменяется список аргументов, считывается справа налево.

::

    func _ready():
        foo.unbind(1).call(1, 2) # Вызывает foo(1).
        foo.bind(3, 4).unbind(1).call(1, 2) # Вызывает foo(1, 3, 4), обратите внимание, что он не изменяет аргументы из bind.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Callable_operator_neq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_neq_Callable>`

Возвращает ``true``, если оба **Callable** вызывают разные цели.

.. rst-class:: classref-item-separator

----

.. _class_Callable_operator_eq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_eq_Callable>`

Возвращает ``true``, если оба **Callable** вызывают одну и ту же пользовательскую цель.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
