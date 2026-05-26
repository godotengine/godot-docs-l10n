:github_url: hide

.. _class_ConfirmationDialog:

ConfirmationDialog
==================

**Hereda:** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`EditorCommandPalette<class_EditorCommandPalette>`, :ref:`FileDialog<class_FileDialog>`, :ref:`ScriptCreateDialog<class_ScriptCreateDialog>`

A dialog used for confirmation of actions.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un diálogo utilizado para la confirmación de acciones. Esta ventana es similar a :ref:`AcceptDialog<class_AcceptDialog>`, pero presionar su botón Cancelar puede tener un resultado diferente al presionar el botón OK. El orden de los dos botones varía según el sistema operativo anfitrión.

Para obtener la acción de cancelar, puedes usar:


.. tabs::

 .. code-tab:: gdscript

    get_cancel_button().pressed.connect(_on_canceled)

 .. code-tab:: csharp

    GetCancelButton().Pressed += OnCanceled;



\ **Nota:** :ref:`AcceptDialog<class_AcceptDialog>` es invisible por defecto. Para hacerlo visible, llama a uno de los métodos ``popup_*`` de :ref:`Window<class_Window>` en el nodo, como :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`cancel_button_text<class_ConfirmationDialog_property_cancel_button_text>` | ``"Cancel"``                                                                    |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | min_size                                                                        | ``Vector2i(200, 70)`` (overrides :ref:`Window<class_Window_property_min_size>`) |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | size                                                                            | ``Vector2i(200, 100)`` (overrides :ref:`Window<class_Window_property_size>`)    |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | title                                                                           | ``"Please Confirm..."`` (overrides :ref:`Window<class_Window_property_title>`)  |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`get_cancel_button<class_ConfirmationDialog_method_get_cancel_button>`\ (\ ) |
   +-----------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ConfirmationDialog_property_cancel_button_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **cancel_button_text** = ``"Cancel"`` :ref:`🔗<class_ConfirmationDialog_property_cancel_button_text>`

.. rst-class:: classref-property-setget

- |void| **set_cancel_button_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_cancel_button_text**\ (\ )

The text displayed by the cancel button (see :ref:`get_cancel_button()<class_ConfirmationDialog_method_get_cancel_button>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ConfirmationDialog_method_get_cancel_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **get_cancel_button**\ (\ ) :ref:`🔗<class_ConfirmationDialog_method_get_cancel_button>`

Devuelve el botón de cancelar.

\ **Advertencia:** Este es un nodo interno requerido; eliminarlo o liberarlo de la memoria (free) puede provocar un cierre inesperado (crash). Si deseas ocultarlo a él o a cualquiera de sus hijos, utiliza su propiedad :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
