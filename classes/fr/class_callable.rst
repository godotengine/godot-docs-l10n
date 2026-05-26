:github_url: hide

.. _class_Callable:

Callable
========

Un type intégré représentant une méthode ou une fonction autonome.

.. rst-class:: classref-introduction-group

Description
-----------

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

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

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

Méthodes
----------------

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

Opérateurs
--------------------

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

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Callable_constructor_Callable:

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ ) :ref:`🔗<class_Callable_constructor_Callable>`

Construit un **Callable** vide, sans objet ni méthode lié.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ from\: :ref:`Callable<class_Callable>`\ )

Construit un **Callable** en tant que copie du **Callable** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ )

Crée un nouveau **Callable** pour la méthode nommée ``method`` dans l'objet ``object`` spécifié.

\ **Note :** Pour les méthodes de types :ref:`Variant<class_Variant>` intégrés, utilisez plutôt :ref:`create()<class_Callable_method_create>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Callable_method_bind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bind**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_bind>`

Renvoie une copie de ce **Callable** avec un ou plusieurs arguments liés. Lorsqu'appelée, les arguments liés sont passés *après* les arguments fournis par :ref:`call()<class_Callable_method_call>`. Voir aussi :ref:`unbind()<class_Callable_method_unbind>`.

\ **Note :** Lorsque cette méthode est enchaînée avec d'autres méthodes similaires, l'ordre dans lequel la liste des arguments est modifiée est lu de droite à gauche.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_bindv:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bindv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Callable_method_bindv>`

Renvoie une copie de ce **Callable** avec un ou plusieurs arguments liés, en les lisant d'un tableau. Lorsqu'appelée, les arguments liés sont passés *après* les arguments fournis par :ref:`call()<class_Callable_method_call>`. Voir aussi :ref:`unbind()<class_Callable_method_unbind>`.

\ **Note :** Lorsque cette méthode est enchaînée avec d'autres méthodes similaires, l'ordre dans lequel la liste des arguments est modifiée est lu de droite à gauche.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call>`

Appelle la méthode représentée par ce **Callable**. Les arguments peuvent être passés et devraient correspondre à la signature de la méthode.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call_deferred:

.. rst-class:: classref-method

|void| **call_deferred**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call_deferred>`

Appelle la méthode représentée par ce **Callable** en mode différé, c.-à-d. à la fin de la trame courante. Des arguments peuvent être passés et doivent correspondre à la signature de la méthode.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        grab_focus.call_deferred()

 .. code-tab:: csharp

    public override void _Ready()
    {
        Callable.From(GrabFocus).CallDeferred();
    }



\ **Note :** Les appels différés sont traités lors des moments d'inaction. Les moments d'inaction se produisent principalement à la fin des trames de traitement et de physique. Dans ce cas, les appels différés seront lancés jusqu'à ce qu'il n'y en ait plus, ce qui signifie que vous pouvez différer des appels depuis des appels différés et qu'ils seront toujours exécutés dans le cycle de temps d'inaction actuel. Cela signifie que vous ne devriez pas appeler une méthode différée depuis elle-même (ou d'une méthode qu'elle appelle), car cela provoque une récursion infinie de la même manière que si vous aviez appelé la méthode directement.

Voir aussi :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_callv:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **callv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Callable_method_callv>`

Appelle la méthode représentée par ce **Callable**. Contrairement à :ref:`call()<class_Callable_method_call>`, cette méthode s'attend à ce que tous les arguments soient contenus dans l':ref:`Array<class_Array>` ``arguments``.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_create:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **create**\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_Callable_method_create>`

Crée un nouveau **Callable** pour la méthode nommée ``method`` dans le ``variant`` spécifié. Pour représenter une méthode d'un type intégré :ref:`Variant<class_Variant>`, un callable personnalisé est utilisé (voir :ref:`is_custom()<class_Callable_method_is_custom>`). Si ``variant`` est :ref:`Object<class_Object>`, alors un callable standard sera créé à la place.

\ **Note :** Cette méthode est toujours nécessaire pour le type :ref:`Dictionary<class_Dictionary>`, car la syntaxe de propriété est utilisée pour accéder à ses entrées. Vous pouvez également utiliser cette méthode lorsque le type de ``variant`` n'est pas connu à l'avance (pour le polymorphisme).

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_argument_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_argument_count>`

Renvoie le nombre total d'arguments que ce **Callable** devrait prendre, y compris les arguments optionnels. Cela signifie que tous les arguments liés avec :ref:`bind()<class_Callable_method_bind>` sont *soustraits* du résultat, et tous les arguments déliés avec :ref:`unbind()<class_Callable_method_unbind>` sont *ajoutés* au résultat.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bound_arguments**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments>`

Renvoie le tableau des arguments liés par des appels successifs à :ref:`bind()<class_Callable_method_bind>` ou :ref:`unbind()<class_Callable_method_unbind>`. Ces arguments seront ajoutés *après* les arguments passés à l'appel, desquels :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` arguments sur la droite ont été précédemment exclus.

::

    func obtenir_arguments_effectifs(callable, call_args):
        assert(call_args.size() - callable.get_unbound_arguments_count() >= 0)
        var resultat = call_args.slice(0, call_args.size() - callable.get_unbound_arguments_count())
        resultat.append_array(callable.get_bound_arguments())
        return result

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments_count>`

Renvoie le montant total d'arguments liés par des appels successifs à :ref:`bind()<class_Callable_method_bind>` ou :ref:`unbind()<class_Callable_method_unbind>`. Ceci est identique à la taille du tableau renvoyé par :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`. Voir :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>` pour plus de détails.

\ **Note :** Les méthodes :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` et :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` peuvent toutes les deux renvoyer des valeurs positives.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_method**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_method>`

Renvoie le nom de la méthode représentée par ce **Callable**. Si le callable est une fonction lambda GDScript, renvoie le nom de la fonction ou ``"<anonymous lambda>"``.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object>`

Renvoie l'objet sur lequel ce **Callable** est appelé.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object_id>`

Renvoie l'ID de l'objet de ce **Callable** (voir :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_unbound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unbound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_unbound_arguments_count>`

Renvoie la quantité totale d'arguments non liés par des appels successifs à :ref:`bind()<class_Callable_method_bind>` ou :ref:`unbind()<class_Callable_method_unbind>`. Voir :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>` pour plus de détails.

\ **Note :** Les méthodes :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` et :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` peuvent toutes les deux renvoyer des valeurs positives.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Callable_method_hash>`

Renvoie la valeur de hachage sur 32 bits de l'objet de ce **Callable**\ 

\ **Note :** Des **Callable**\ s avec un contenu égal produiront toujours des valeurs de hachage identiques. Cependant, l'inverse n'est pas vrai. Renvoyer des valeurs de hachage identiques n'implique *pas* que les callables sont égaux, car différents callables peuvent avoir des valeurs de hachage identiques en raison de collisions de hachage. Le moteur utilise un algorithme de hachage sur 32 bits pour :ref:`hash()<class_Callable_method_hash>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_custom:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_custom**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_custom>`

Renvoie ``true`` si ce **Callable** est un callable personnalisé. Les callables personnalisés sont utilisés :

- pour lier/délier des arguments (voir :ref:`bind()<class_Callable_method_bind>` et :ref:`unbind()<class_Callable_method_unbind>`);

- pour représenter les méthodes de types :ref:`Variant<class_Variant>` intégrés (voir :ref:`create()<class_Callable_method_create>`);

- pour représenter les fonctions globales, lambda et RPC en GDScript;

- à d'autres fins dans le noyau, les GDExtension, et le C#.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_null>`

Renvoie ``true`` si ce **Callable** n'a pas de cible sur laquelle appeler la méthode. Équivalent à ``callable == Callable()``.

\ **Note :** Ce n'est *pas* identique à ``not is_valid()`` et l'utilisation de ``not is_null()`` ne garantira *pas* que ce callable puisse être appelé. Utilisez :ref:`is_valid()<class_Callable_method_is_valid>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_standard:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_standard**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_standard>`

Renvoie ``true`` si ce **Callable** est un callable standard. Cette méthode est le contraire de :ref:`is_custom()<class_Callable_method_is_custom>`. Renvoie ``false`` si ce callable est une fonction lambda.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_valid>`

Renvoie ``true`` si l'objet du callable existe et a un nom de méthode valide assigné, ou est un callable personnalisé.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc:

.. rst-class:: classref-method

|void| **rpc**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc>`

Effectue une RPC (Remote Procedure Call, litt. Appel de procédure à distance) sur tous les pairs connectés. Ceci est utilisé pour le multijoueur et n'est normalement pas disponible, sauf si la fonction appelée a été marquée comme *RPC* (en utilisant :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` ou :ref:`Node.rpc_config()<class_Node_method_rpc_config>`). Appeler cette méthode sur des fonctions non supportées entraînera une erreur. Voir :ref:`Node.rpc()<class_Node_method_rpc>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc_id:

.. rst-class:: classref-method

|void| **rpc_id**\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc_id>`

Effectue une RPC (Remote Procedure Call, litt. Appel de procédure à distance) sur un ID de pair spécifique (voir la documentation du multijoueur comme référence). Ceci est utilisé pour le multijoueur et n'est normalement pas disponible, sauf si la fonction appelée a été marquée comme *RPC* (en utilisant :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` ou :ref:`Node.rpc_config()<class_Node_method_rpc_config>`). Appeler cette méthode sur des fonctions non supportées entraînera une erreur. Voir :ref:`Node.rpc()<class_Node_method_rpc>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_unbind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **unbind**\ (\ argcount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Callable_method_unbind>`

Renvoie une copie de ce **Callable** avec un certain nombre d'arguments déliés. En d'autres termes, lorsque le nouveau callable est appelé, les derniers arguments fournis par l'utilisateur sont ignorés, selon ``argcount``. Les arguments restants sont transmis au callable. Cela permet d'utiliser le callable original dans un contexte qui tente de passer plus d'arguments que cet appelable peut gérer, par exemple un signal avec un nombre fixe d'arguments. Voir aussi :ref:`bind()<class_Callable_method_bind>`.

\ **Note :** Lorsque cette méthode est enchaînée avec d'autres méthodes similaires, l'ordre dans lequel la liste des arguments est modifiée est lu de droite à gauche.

::

    func _ready():
        foo.unbind(1).call(1, 2) # Appelle foo(1).
        foo.bind(3, 4).unbind(1).call(1, 2) # Appelle foo(1, 3, 4), notez que cela ne change pas les arguments de bind.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Callable_operator_neq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_neq_Callable>`

Renvoie ``true`` si les deux **Callable** invoquent des cibles différentes.

.. rst-class:: classref-item-separator

----

.. _class_Callable_operator_eq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_eq_Callable>`

Renvoie ``true`` si les deux **Callable**\ s invoquent la même cible personnalisée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
