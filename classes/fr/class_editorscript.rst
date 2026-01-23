:github_url: hide

.. _class_EditorScript:

EditorScript
============

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Script de base qui permet d'étendre les fonctionnalités de l'éditeur.

.. rst-class:: classref-introduction-group

Description
-----------

Les scripts héritant de cette classe et implémentant la méthode :ref:`_run()<class_EditorScript_private_method__run>` peuvent être exécutés depuis l'éditeur de script avec l'option de menu **Fichier > Lancer** (ou avec :kbd:`Ctrl + Shift + X`) quand l'éditeur est lancé. C'est utilise pour ajouter des fonctionnalités personnalisées dans l'éditeur de Godot. Pour des additions plus complexes, préférez plutôt utiliser :ref:`EditorPlugin<class_EditorPlugin>`.

Si un script élargissant cette classe a également un nom de classe mondial, il sera inclus dans la palette de commandes de l'éditeur.

\ **Note :** Les scripts doivent activer le mode ``tool`` pour cela.

\ **Exemple :**\ Lancer le script suivant affiche"Bonjour de l'Éditeur Godot!":


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorScript

    func _run():
        print("Hello from the Godot Editor!")

 .. code-tab:: csharp

    using Godot;

    [Tool]
    public partial class HelloEditor : EditorScript
    {
        public override void _Run()
        {
            GD.Print("Hello from the Godot Editor!");
        }
    }



\ **Note :** EditorScript est :ref:`RefCounted<class_RefCounted>`, ce qui signifie qu'il est détruit quand rien ne le mentionne. Cela peut causer des erreurs lors d'opérations asynchrones s'il n'y a aucune référence au script.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`_run<class_EditorScript_private_method__run>`\ (\ ) |virtual| |required|                      |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`add_root_node<class_EditorScript_method_add_root_node>`\ (\ node\: :ref:`Node<class_Node>`\ ) |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`EditorInterface<class_EditorInterface>` | :ref:`get_editor_interface<class_EditorScript_method_get_editor_interface>`\ (\ ) |const|           |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                       | :ref:`get_scene<class_EditorScript_method_get_scene>`\ (\ ) |const|                                 |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorScript_private_method__run:

.. rst-class:: classref-method

|void| **_run**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorScript_private_method__run>`

Cette méthode est exécutée par l'éditeur quand **Ficher > Exécuter** est utilisé.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_add_root_node:

.. rst-class:: classref-method

|void| **add_root_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorScript_method_add_root_node>`

**Obsolète :** Use :ref:`EditorInterface.add_root_node()<class_EditorInterface_method_add_root_node>` instead.

Makes ``node`` root of the currently opened scene. Only works if the scene is empty. If the ``node`` is a scene instance, an inheriting scene will be created.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_editor_interface:

.. rst-class:: classref-method

:ref:`EditorInterface<class_EditorInterface>` **get_editor_interface**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_editor_interface>`

**Obsolète :** :ref:`EditorInterface<class_EditorInterface>` is a global singleton and can be accessed directly by its name.

Returns the :ref:`EditorInterface<class_EditorInterface>` singleton instance.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_scene>`

**Obsolète :** Use :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>` instead.

Returns the edited (current) scene's root :ref:`Node<class_Node>`. Equivalent of :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
