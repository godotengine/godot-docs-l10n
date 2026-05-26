:github_url: hide

.. _class_UndoRedo:

UndoRedo
========

**Hérite de :** :ref:`Object<class_Object>`

Provides a high-level interface for implementing undo and redo operations.

.. rst-class:: classref-introduction-group

Description
-----------

UndoRedo fonctionne en enregistrant des changements de méthode et de propriété dans des "actions". Vous pouvez créer une action, puis fournir des moyens de faire et annuler cette action en utilisant des appels de fonction et des modifications de propriété, puis commit l'action.

Lorsqu'une action est commit, toutes les méthodes ``do_*`` s'exécuteront. Si la méthode :ref:`undo()<class_UndoRedo_method_undo>` est utilisée, les méthodes ``undo_*`` s'exécuteront. Si la méthode :ref:`redo()<class_UndoRedo_method_redo>` est utilisée, une fois de plus, toutes les méthodes ``do_*`` seront exécutées.

Voici un exemple de comment d'ajouter une action :


.. tabs::

 .. code-tab:: gdscript

    var undo_redo = UndoRedo.new()

    func faire_quelque_chose():
        pass # Mettez votre code ici.

    func defaire_quelque_chose():
        pass # Mettez ici le code qui annule ce qui est fait par "faire_quelque_chose()".

    func _on_my_button_pressed():
        var noeud = get_node("MyNode2D")
        undo_redo.create_action("Déplacer le noeud")
        undo_redo.add_do_method(faire_quelque_chose)
        undo_redo.add_undo_method(defaire_quelque_chose)
        undo_redo.add_do_property(noeud, "position", Vector2(100, 100))
        undo_redo.add_undo_property(noeud, "position", noeud.position)
        undo_redo.commit_action()

 .. code-tab:: csharp

    private UndoRedo _undoRedo;

    public override void _Ready()
    {
        _undoRedo = new UndoRedo();
    }

    public void FaireQuelquechose()
    {
        // Mettez votre code ici.
    }

    public void DefaireQuelquechose()
    {
        // Mettez ici le code qui annule ce qui est fait par "FaireQuelquechose()".
    }

    private void OnMyButtonPressed()
    {
        var noeud = GetNode<Node2D>("MyNode2D");
        _undoRedo.CreateAction("Déplacer le noeud");
        _undoRedo.AddDoMethod(new Callable(this, MethodName.FaireQuelquechose));
        _undoRedo.AddUndoMethod(new Callable(this, MethodName.DefaireQuelquechose));
        _undoRedo.AddDoProperty(noeud, "position", new Vector2(100, 100));
        _undoRedo.AddUndoProperty(noeud, "position", noeud.Position);
        _undoRedo.CommitAction();
    }



Avant d'appeler l'une des méthodes ``add_(un)do_*``, vous devez d'abord appeler :ref:`create_action()<class_UndoRedo_method_create_action>`. Ensuite, vous devez appeler :ref:`commit_action()<class_UndoRedo_method_commit_action>`.

Si vous n'avez pas besoin d'enregistrer une méthode, vous pouvez ignorer :ref:`add_do_method()<class_UndoRedo_method_add_do_method>` et :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>`, il en va de même pour les propriétés. Vous pouvez également enregistrer plus d'une méthode/propriété.

Si vous faites un :ref:`EditorPlugin<class_EditorPlugin>` et que vous voulez l'intégrer à l'historique de l'éditeur, utilisez plutôt :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`.

Si vous enregistrez plusieurs propriétés/méthodes qui dépendent les unes des autres, soyez conscient que par défaut l'opération d'annulation est appelée dans le même ordre qu'elles ont été ajoutées. Par conséquent, au lieu de regrouper les opérations à faire avec les opérations d'annulation, il est préférable de regrouper les actions à faire d'un côté et les actions à défaire de l'autre, comme indiqué ci-dessous.


.. tabs::

 .. code-tab:: gdscript

    undo_redo.create_action("Ajouter objet")

    # FAIRE
    undo_redo.add_do_method(_creer_objet)
    undo_redo.add_do_method(_ajouter_objet_au_singleton)

    # UNDO
    undo_redo.add_undo_method(_retirer_objet_du_singleton)
    undo_redo.add_undo_method(_detruire_cet_objet)

    undo_redo.commit_action()

 .. code-tab:: csharp

    _undo_redo.CreateAction("Ajouter objet");

    // DO
    _undo_redo.AddDoMethod(new Callable(this, MethodName.CreerObjet));
    _undo_redo.AddDoMethod(new Callable(this, MethodName.AjouterObjetAuSingleton));

    // UNDO
    _undo_redo.AddUndoMethod(new Callable(this, MethodName.RetirerObjetDuSingleton));
    _undo_redo.AddUndoMethod(new Callable(this, MethodName.DetruireCetObjet));

    _undo_redo.CommitAction();



.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`max_steps<class_UndoRedo_property_max_steps>` | ``0`` |
   +-----------------------+-----------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_do_method<class_UndoRedo_method_add_do_method>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_do_property<class_UndoRedo_method_add_do_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_do_reference<class_UndoRedo_method_add_do_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_undo_method<class_UndoRedo_method_add_undo_method>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                      |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_undo_property<class_UndoRedo_method_add_undo_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                 |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_undo_reference<class_UndoRedo_method_add_undo_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                      |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_history<class_UndoRedo_method_clear_history>`\ (\ increase_version\: :ref:`bool<class_bool>` = true\ )                                                                                                   |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`commit_action<class_UndoRedo_method_commit_action>`\ (\ execute\: :ref:`bool<class_bool>` = true\ )                                                                                                            |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`create_action<class_UndoRedo_method_create_action>`\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, backward_undo_ops\: :ref:`bool<class_bool>` = false\ ) |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`end_force_keep_in_merge_ends<class_UndoRedo_method_end_force_keep_in_merge_ends>`\ (\ )                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_action_name<class_UndoRedo_method_get_action_name>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                      |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_current_action<class_UndoRedo_method_get_current_action>`\ (\ )                                                                                                                                            |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_current_action_name<class_UndoRedo_method_get_current_action_name>`\ (\ ) |const|                                                                                                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_history_count<class_UndoRedo_method_get_history_count>`\ (\ )                                                                                                                                              |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_version<class_UndoRedo_method_get_version>`\ (\ ) |const|                                                                                                                                                  |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_redo<class_UndoRedo_method_has_redo>`\ (\ ) |const|                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_undo<class_UndoRedo_method_has_undo>`\ (\ ) |const|                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_committing_action<class_UndoRedo_method_is_committing_action>`\ (\ ) |const|                                                                                                                                |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`redo<class_UndoRedo_method_redo>`\ (\ )                                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`start_force_keep_in_merge_ends<class_UndoRedo_method_start_force_keep_in_merge_ends>`\ (\ )                                                                                                                    |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`undo<class_UndoRedo_method_undo>`\ (\ )                                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_UndoRedo_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_UndoRedo_signal_version_changed>`

Appelée quand :ref:`undo()<class_UndoRedo_method_undo>` ou :ref:`redo()<class_UndoRedo_method_redo>` sont appelées.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_UndoRedo_MergeMode:

.. rst-class:: classref-enumeration

enum **MergeMode**: :ref:`🔗<enum_UndoRedo_MergeMode>`

.. _class_UndoRedo_constant_MERGE_DISABLE:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_DISABLE** = ``0``

Fait que les opérations "annuler"/"refaire" utilisent des actions séparées.

.. _class_UndoRedo_constant_MERGE_ENDS:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_ENDS** = ``1``

Merges this action with the previous one if they have the same name. Keeps only the first action's "undo" operations and the last action's "do" operations. Useful for sequential changes to a single value.

.. _class_UndoRedo_constant_MERGE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_ALL** = ``2``

Merges this action with the previous one if they have the same name.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_UndoRedo_property_max_steps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_steps** = ``0`` :ref:`🔗<class_UndoRedo_property_max_steps>`

.. rst-class:: classref-property-setget

- |void| **set_max_steps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_steps**\ (\ )

The maximum number of steps that can be stored in the undo/redo history. If the number of stored steps exceeds this limit, older steps are removed from history and can no longer be reached by calling :ref:`undo()<class_UndoRedo_method_undo>`. A value of ``0`` or lower means no limit.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_UndoRedo_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_method>`

Register a :ref:`Callable<class_Callable>` that will be called when the action is committed.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_property>`

Register a ``property`` that would change its value to ``value`` when the action is committed.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_reference>`

Register a reference to an object that will be erased if the "do" history is deleted. This is useful for objects added by the "do" action and removed by the "undo" action.

When the "do" history is deleted, if the object is a :ref:`RefCounted<class_RefCounted>`, it will be unreferenced. Otherwise, it will be freed. Do not use for resources.

::

    var node = Node2D.new()
    undo_redo.create_action("Add node")
    undo_redo.add_do_method(add_child.bind(node))
    undo_redo.add_do_reference(node)
    undo_redo.add_undo_method(remove_child.bind(node))
    undo_redo.commit_action()

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_method>`

Register a :ref:`Callable<class_Callable>` that will be called when the action is undone.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_property>`

Register a ``property`` that would change its value to ``value`` when the action is undone.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_reference>`

Register a reference to an object that will be erased if the "undo" history is deleted. This is useful for objects added by the "undo" action and removed by the "do" action.

When the "undo" history is deleted, if the object is a :ref:`RefCounted<class_RefCounted>`, it will be unreferenced. Otherwise, it will be freed. Do not use for resources.

::

    var node = $Node2D
    undo_redo.create_action("Remove node")
    undo_redo.add_do_method(remove_child.bind(node))
    undo_redo.add_undo_method(add_child.bind(node))
    undo_redo.add_undo_reference(node)
    undo_redo.commit_action()

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_clear_history:

.. rst-class:: classref-method

|void| **clear_history**\ (\ increase_version\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_UndoRedo_method_clear_history>`

Clear the undo/redo history and associated references.

Passing ``false`` to ``increase_version`` will prevent the version number from increasing when the history is cleared.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_commit_action:

.. rst-class:: classref-method

|void| **commit_action**\ (\ execute\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_UndoRedo_method_commit_action>`

Commit the action. If ``execute`` is ``true`` (which it is by default), all "do" methods/properties are called/set when this function is called.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_create_action:

.. rst-class:: classref-method

|void| **create_action**\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, backward_undo_ops\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_UndoRedo_method_create_action>`

Create a new action. After this is called, do all your calls to :ref:`add_do_method()<class_UndoRedo_method_add_do_method>`, :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>`, :ref:`add_do_property()<class_UndoRedo_method_add_do_property>`, and :ref:`add_undo_property()<class_UndoRedo_method_add_undo_property>`, then commit the action with :ref:`commit_action()<class_UndoRedo_method_commit_action>`.

The way actions are merged is dictated by ``merge_mode``.

The way undo operation are ordered in actions is dictated by ``backward_undo_ops``. When ``backward_undo_ops`` is ``false`` undo option are ordered in the same order they were added. Which means the first operation to be added will be the first to be undone.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_end_force_keep_in_merge_ends:

.. rst-class:: classref-method

|void| **end_force_keep_in_merge_ends**\ (\ ) :ref:`🔗<class_UndoRedo_method_end_force_keep_in_merge_ends>`

Stops marking operations as to be processed even if the action gets merged with another in the :ref:`MERGE_ENDS<class_UndoRedo_constant_MERGE_ENDS>` mode. See :ref:`start_force_keep_in_merge_ends()<class_UndoRedo_method_start_force_keep_in_merge_ends>`.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_action_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_action_name**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_UndoRedo_method_get_action_name>`

Gets the action name from its index.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_action**\ (\ ) :ref:`🔗<class_UndoRedo_method_get_current_action>`

Gets the index of the current action.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_action_name**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_get_current_action_name>`

Gets the name of the current action, equivalent to ``get_action_name(get_current_action())``.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_history_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_history_count**\ (\ ) :ref:`🔗<class_UndoRedo_method_get_history_count>`

Renvoie combien d'éléments sont dans l'historique.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_version**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_get_version>`

Obtient la version. Chaque fois qu'une nouvelle action est engagée, le numéro de version du **UndoRedo** est augmenté automatiquement.

Ceci est surtout utile pour vérifier si quelque chose a changé par rapport à une version sauvegardée.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_has_redo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_redo**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_has_redo>`

Renvoie ``true`` si une action « refaire » (redo) est disponible.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_has_undo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_undo**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_has_undo>`

Renvoie ``true`` si une action « annuler » (undo) est disponible.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_is_committing_action>`

Renvoie ``true`` si l'**UndoRedo** engage actuellement l'action, c'est-à-dire en exécutant sa méthode « faire » (do) ou son changement de propriété (voir :ref:`commit_action()<class_UndoRedo_method_commit_action>`).

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_redo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **redo**\ (\ ) :ref:`🔗<class_UndoRedo_method_redo>`

Redo the last action. Returns ``false`` if there was no action to redo.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_start_force_keep_in_merge_ends:

.. rst-class:: classref-method

|void| **start_force_keep_in_merge_ends**\ (\ ) :ref:`🔗<class_UndoRedo_method_start_force_keep_in_merge_ends>`

Marks the next "do" and "undo" operations to be processed even if the action gets merged with another in the :ref:`MERGE_ENDS<class_UndoRedo_constant_MERGE_ENDS>` mode. Return to normal operation using :ref:`end_force_keep_in_merge_ends()<class_UndoRedo_method_end_force_keep_in_merge_ends>`.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_undo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **undo**\ (\ ) :ref:`🔗<class_UndoRedo_method_undo>`

Undo the last action. Returns ``false`` if there was no action to undo.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
