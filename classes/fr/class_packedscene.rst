:github_url: hide

.. _class_PackedScene:

PackedScene
===========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une abstraction d'une scène sérialisée.

.. rst-class:: classref-introduction-group

Description
-----------

Une interface simplifiée pour un fichier de scène. Fournit l'accès aux opérations et vérifications qui peuvent être faites sur la ressource de scène elle-même.

Peut être utilisé pour enregistrer un nœud dans un fichier. À l'enregistrement, le nœud tout comme tous les nœuds dont il est propriétaire sont enregistrés dans le fichier (voir la propriété :ref:`Node.owner<class_Node_property_owner>`).

\ **Note :** Le nœud n'a pas besoin d'être son propre propriétaire.

\ **Exemple :** Chargement d'une scène enregistrée :


.. tabs::

 .. code-tab:: gdscript

    # Utiliser `load()` plutôt que `preload()` si le chemin n'est pas connu à la compilation.
    var scene = preload("res://scene.tscn").instance()
    # Ajouter un nœud comme enfant du nœud auquel le script est attaché.
    add_child(scene)

 .. code-tab:: csharp

    // C# n'a pas de `preload`, donc vous devez toujours utiliser ResourceLoader.Load<PackedScene>().
    var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate();
    // Ajouter un nœud comme enfant du nœud auquel le script est attaché.
    AddChild(scene);



\ **Exemple :** Enregistrement d'un nœud avec différents propriétaires. L'exemple suivant crée 3 objets : :ref:`Node2D<class_Node2D>` (\ ``node``), :ref:`RigidBody2D<class_RigidBody2D>` (\ ``body``) et :ref:`CollisionObject2D<class_CollisionObject2D>` (\ ``collision``). ``collision`` est un enfant de ``body`` qui est un enfant de ``node``. Seul ``body`` est la propriété de ``node`` et :ref:`pack()<class_PackedScene_method_pack>` n'enregistrera alors que ces deux nœuds, mais pas ``collision``.


.. tabs::

 .. code-tab:: gdscript

    # Créer les objets.
    var node = Node2D.new()
    var rigid = RigidBody2D.new()
    var collision = CollisionShape2D.new()

    # Créer la hiérarchie des objets.
    rigid.add_child(collision)
    node.add_child(rigid)

    # Changer le propriétaire de `rigid`, mais pas de `collision`.
    rigid.owner = node
    var scene = PackedScene.new()

    # Seulement `node` and `rigid` sont compactés.
    var result = scene.pack(node)
    if result == OK:
        var error = ResourceSaver.save("res://chemin/nom.scn", scene)  # Ou "user://..."
        if error != OK:
            push_error("Une erreur est survenue à l'enregistrement de cette scène sur le disque.")

 .. code-tab:: csharp

    // Créer les objets.
    var node = new Node2D();
    var body = new RigidBody2D();
    var collision = new CollisionShape2D();

    // Créer la hiérarchie des objets.
    body.AddChild(collision);
    node.AddChild(body);

    // Changer le propriétaire de `rigid`, mais pas de `collision`.
    body.Owner = node;
    var scene = new PackedScene();

    // Seulement `node` and `rigid` sont compactés.
    Error result = scene.Pack(node);
    if (result == Error.Ok)
    {
        Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Or "user://..."
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred while saving the scene to disk.");
        }
    }



.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de jeu de rôle 2D (RPG) <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`can_instantiate<class_PackedScene_method_can_instantiate>`\ (\ ) |const|                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneState<class_SceneState>`   | :ref:`get_state<class_PackedScene_method_get_state>`\ (\ ) |const|                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`               | :ref:`instantiate<class_PackedScene_method_instantiate>`\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedScene_method_pack>`\ (\ path\: :ref:`Node<class_Node>`\ )                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_PackedScene_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_PackedScene_GenEditState>`

.. _class_PackedScene_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

S'il est passé à :ref:`instantiate()<class_PackedScene_method_instantiate>`, bloque les modifications à l'état de la scène.

.. _class_PackedScene_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

S'il est passé à :ref:`instantiate()<class_PackedScene_method_instantiate>`, fournit des ressources de scène locale à la scène locale.

\ **Note :** Seulement disponible dans les compilations de l’éditeur.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

S'il est passé à :ref:`instantiate()<class_PackedScene_method_instantiate>`, fournit des ressources de scène locale à la scène locale. Seule la scène principale devrait recevoir l'état principal d'édition.

\ **Note :** Seulement disponible dans les compilations de l’éditeur.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

C'est similaire à :ref:`GEN_EDIT_STATE_MAIN<class_PackedScene_constant_GEN_EDIT_STATE_MAIN>`, mais pour le cas où la scène est instanciée pour être la base d'une autre.

\ **Note :** Seulement disponible dans les éditeurs.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PackedScene_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_can_instantiate>`

Renvoie ``true`` si le fichier de scène a des nœuds.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_get_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_state**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_get_state>`

Renvoie le :ref:`SceneState<class_SceneState>` représentant le contenu du fichier de scène.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_instantiate:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **instantiate**\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| :ref:`🔗<class_PackedScene_method_instantiate>`

Instantancie la hiérarchie du nœud de la scène. Déclenche l’instanciation des enfants de la scène. Déclenche une notification :ref:`Node.NOTIFICATION_SCENE_INSTANTIATED<class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED>` sur le nœud racine.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ path\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PackedScene_method_pack>`

Compacte le nœud ``path``, et tous les sous-nodes lui appartenant, dans cette **PackedScene**. Les données existantes seront effacées. Voir :ref:`Node.owner<class_Node_property_owner>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
