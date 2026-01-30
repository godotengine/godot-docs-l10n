:github_url: hide

.. _class_PackedScene:

PackedScene
===========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una abstracción de una escena serializada.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.

Can be used to save a node to a file. When saving, the node as well as all the nodes it owns get saved (see :ref:`Node.owner<class_Node_property_owner>` property).

\ **Note:** The node doesn't need to own itself.

\ **Example:** Load a saved scene:


.. tabs::

 .. code-tab:: gdscript

    # Use load() instead of preload() if the path isn't known at compile-time.
    var scene = preload("res://scene.tscn").instantiate()
    # Add the node as a child of the node the script is attached to.
    add_child(scene)

 .. code-tab:: csharp

    // C# has no preload, so you have to always use ResourceLoader.Load<PackedScene>().
    var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate();
    // Add the node as a child of the node the script is attached to.
    AddChild(scene);



\ **Example:** Save a node with different owners. The following example creates 3 objects: :ref:`Node2D<class_Node2D>` (``node``), :ref:`RigidBody2D<class_RigidBody2D>` (``body``) and :ref:`CollisionObject2D<class_CollisionObject2D>` (``collision``). ``collision`` is a child of ``body`` which is a child of ``node``. Only ``body`` is owned by ``node`` and :ref:`pack()<class_PackedScene_method_pack>` will therefore only save those two nodes, but not ``collision``.


.. tabs::

 .. code-tab:: gdscript

    # Create the objects.
    var node = Node2D.new()
    var body = RigidBody2D.new()
    var collision = CollisionShape2D.new()

    # Create the object hierarchy.
    body.add_child(collision)
    node.add_child(body)

    # Change owner of `body`, but not of `collision`.
    body.owner = node
    var scene = PackedScene.new()

    # Only `node` and `body` are now packed.
    var result = scene.pack(node)
    if result == OK:
        var error = ResourceSaver.save(scene, "res://path/name.tscn")  # Or "user://..."
        if error != OK:
            push_error("An error occurred while saving the scene to disk.")

 .. code-tab:: csharp

    // Create the objects.
    var node = new Node2D();
    var body = new RigidBody2D();
    var collision = new CollisionShape2D();

    // Create the object hierarchy.
    body.AddChild(collision);
    node.AddChild(body);

    // Change owner of `body`, but not of `collision`.
    body.Owner = node;
    var scene = new PackedScene();

    // Only `node` and `body` are now packed.
    Error result = scene.Pack(node);
    if (result == Error.Ok)
    {
        Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Or "user://..."
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred while saving the scene to disk.");
        }
    }



.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `2D Role Playing Game (RPG) Demo <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_PackedScene_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_PackedScene_GenEditState>`

.. _class_PackedScene_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

Si se pasa a :ref:`instantiate()<class_PackedScene_method_instantiate>`, bloquea las ediciones al estado de la escena.

.. _class_PackedScene_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

Si se pasa a :ref:`instantiate()<class_PackedScene_method_instantiate>`, proporciona recursos de escena locales a la escena local.

\ **Nota:** Solo disponible en compilaciones de editor.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

Si se pasa a :ref:`instantiate()<class_PackedScene_method_instantiate>`, proporciona recursos de la escena local a la escena local. Solo la escena principal debe recibir el estado de edición principal.

\ **Nota:** Solo disponible en las builds del editor.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

Es similar a :ref:`GEN_EDIT_STATE_MAIN<class_PackedScene_constant_GEN_EDIT_STATE_MAIN>`, pero para el caso en que la escena se está instanciando para ser la base de otra.

\ **Nota:** Solo disponible en las builds del editor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PackedScene_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_can_instantiate>`

Devuelve ``true`` si el archivo de la escena tiene nodos.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_get_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_state**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_get_state>`

Devuelve el :ref:`SceneState<class_SceneState>` que representa el contenido del archivo de la escena.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_instantiate:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **instantiate**\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| :ref:`🔗<class_PackedScene_method_instantiate>`

Instancia la jerarquía de nodos de la escena. Desencadena la(s) instanciación de la(s) escena(s) hija(s). Dispara una notificación :ref:`Node.NOTIFICATION_SCENE_INSTANTIATED<class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED>` en el nodo raíz.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ path\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PackedScene_method_pack>`

Empaqueta el nodo ``path``, y todos los subnodos propios, en esta **PackedScene**. Cualquier dato existente será borrado. Véase :ref:`Node.owner<class_Node_property_owner>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
