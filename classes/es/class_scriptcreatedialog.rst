:github_url: hide

.. _class_ScriptCreateDialog:

ScriptCreateDialog
==================

**Hereda:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Cuadro de diálogo emergente del editor de Godot para crear nuevos archivos :ref:`Script<class_Script>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The **ScriptCreateDialog** creates script files according to a given template for a given scripting language. The standard use is to configure its fields prior to calling one of the :ref:`Window.popup()<class_Window_method_popup>` methods.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var dialog = ScriptCreateDialog.new();
        dialog.config("Node", "res://new_node.gd") # For in-engine types.
        dialog.config("\"res://base_node.gd\"", "res://derived_node.gd") # For script types.
        dialog.popup_centered()

 .. code-tab:: csharp

    public override void _Ready()
    {
        var dialog = new ScriptCreateDialog();
        dialog.Config("Node", "res://NewNode.cs"); // For in-engine types.
        dialog.Config("\"res://BaseNode.cs\"", "res://DerivedNode.cs"); // For script types.
        dialog.PopupCentered();
    }



.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | dialog_hide_on_ok | ``false`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_dialog_hide_on_ok>`) |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | ok_button_text    | ``"Create"`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_ok_button_text>`) |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | title             | ``"Attach Node Script"`` (overrides :ref:`Window<class_Window_property_title>`)          |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`config<class_ScriptCreateDialog_method_config>`\ (\ inherits\: :ref:`String<class_String>`, path\: :ref:`String<class_String>`, built_in_enabled\: :ref:`bool<class_bool>` = true, load_enabled\: :ref:`bool<class_bool>` = true\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_ScriptCreateDialog_signal_script_created:

.. rst-class:: classref-signal

**script_created**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptCreateDialog_signal_script_created>`

Emitida cuando el usuario hace clic en el botón OK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ScriptCreateDialog_method_config:

.. rst-class:: classref-method

|void| **config**\ (\ inherits\: :ref:`String<class_String>`, path\: :ref:`String<class_String>`, built_in_enabled\: :ref:`bool<class_bool>` = true, load_enabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ScriptCreateDialog_method_config>`

Rellena previamente los campos obligatorios para configurar el ScriptCreateDialog para su uso.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
