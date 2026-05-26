:github_url: hide

.. _class_EditorFileDialog:

EditorFileDialog
================

**Hereda:** :ref:`FileDialog<class_FileDialog>` **<** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una versión modificada de :ref:`FileDialog<class_FileDialog>` utilizada por el editor.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**EditorFileDialog** is a :ref:`FileDialog<class_FileDialog>` tweaked to work in the editor. It automatically handles favorite and recent directory lists, and synchronizes some properties with their corresponding editor settings.

\ **EditorFileDialog** will automatically show a native dialog based on the :ref:`EditorSettings.interface/editor/appearance/use_native_file_dialogs<class_EditorSettings_property_interface/editor/appearance/use_native_file_dialogs>` editor setting and ignores :ref:`FileDialog.use_native_dialog<class_FileDialog_property_use_native_dialog>`.

\ **Note:** **EditorFileDialog** is invisible by default. To make it visible, call one of the ``popup_*`` methods from :ref:`Window<class_Window>` on the node, such as :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

\ **Note:** On Linux and macOS, sandboxed apps always use native dialogs to access the host file system.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`disable_overwrite_warning<class_EditorFileDialog_property_disable_overwrite_warning>` | ``false`` |
   +-------------------------+---------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_side_menu<class_EditorFileDialog_method_add_side_menu>`\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_EditorFileDialog_property_disable_overwrite_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_overwrite_warning** = ``false`` :ref:`🔗<class_EditorFileDialog_property_disable_overwrite_warning>`

.. rst-class:: classref-property-setget

- |void| **set_disable_overwrite_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overwrite_warning_disabled**\ (\ )

**Obsoleto:** Use :ref:`FileDialog.overwrite_warning_enabled<class_FileDialog_property_overwrite_warning_enabled>` instead.

Si es ``true``, el **EditorFileDialog** no avisará al usuario antes de sobrescribir los archivos.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorFileDialog_method_add_side_menu:

.. rst-class:: classref-method

|void| **add_side_menu**\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_side_menu>`

**Obsoleto:** This feature is no longer supported.

This method is kept for compatibility and does nothing. As an alternative, you can display another dialog after showing the file dialog.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
