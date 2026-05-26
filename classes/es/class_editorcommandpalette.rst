:github_url: hide

.. _class_EditorCommandPalette:

EditorCommandPalette
====================

**Hereda:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

La paleta de comandos del editor Godot.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Object that holds all the available Commands and their shortcuts text. These Commands can be accessed through **Editor > Command Palette** menu.

Command key names use slash delimiters to distinguish sections, for example: ``"example/command1"`` then ``example`` will be the section name.


.. tabs::

 .. code-tab:: gdscript

    var command_palette = EditorInterface.get_command_palette()
    # external_command is a function that will be called with the command is executed.
    var command_callable = Callable(self, "external_command").bind(arguments)
    command_palette.add_command("command", "test/command",command_callable)

 .. code-tab:: csharp

    EditorCommandPalette commandPalette = EditorInterface.Singleton.GetCommandPalette();
    // ExternalCommand is a function that will be called with the command is executed.
    Callable commandCallable = new Callable(this, MethodName.ExternalCommand);
    commandPalette.AddCommand("command", "test/command", commandCallable)



\ **Note:** This class shouldn't be instantiated directly. Instead, access the singleton using :ref:`EditorInterface.get_command_palette()<class_EditorInterface_method_get_command_palette>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_command<class_EditorCommandPalette_method_add_command>`\ (\ command_name\: :ref:`String<class_String>`, key_name\: :ref:`String<class_String>`, binded_callable\: :ref:`Callable<class_Callable>`, shortcut_text\: :ref:`String<class_String>` = "None"\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_command<class_EditorCommandPalette_method_remove_command>`\ (\ key_name\: :ref:`String<class_String>`\ )                                                                                                                                                |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorCommandPalette_method_add_command:

.. rst-class:: classref-method

|void| **add_command**\ (\ command_name\: :ref:`String<class_String>`, key_name\: :ref:`String<class_String>`, binded_callable\: :ref:`Callable<class_Callable>`, shortcut_text\: :ref:`String<class_String>` = "None"\ ) :ref:`🔗<class_EditorCommandPalette_method_add_command>`

Adds a custom command to EditorCommandPalette.

- ``command_name``: :ref:`String<class_String>` (Name of the **Command**. This is displayed to the user.)

- ``key_name``: :ref:`String<class_String>` (Name of the key for a particular **Command**. This is used to uniquely identify the **Command**.)

- ``binded_callable``: :ref:`Callable<class_Callable>` (Callable of the **Command**. This will be executed when the **Command** is selected.)

- ``shortcut_text``: :ref:`String<class_String>` (Shortcut text of the **Command** if available.)

.. rst-class:: classref-item-separator

----

.. _class_EditorCommandPalette_method_remove_command:

.. rst-class:: classref-method

|void| **remove_command**\ (\ key_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorCommandPalette_method_remove_command>`

Removes the custom command from EditorCommandPalette.

- ``key_name``: :ref:`String<class_String>` (Name of the key for a particular **Command**.)

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
