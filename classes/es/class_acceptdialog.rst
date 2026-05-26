:github_url: hide

.. _class_AcceptDialog:

AcceptDialog
============

**Hereda:** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`ConfirmationDialog<class_ConfirmationDialog>`

Un diálogo base utilizado para la notificación al usuario.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El uso predeterminado de **AcceptDialog** es permitir que solo se acepte o se cierre, con el mismo resultado. Sin embargo, las señales :ref:`confirmed<class_AcceptDialog_signal_confirmed>` y :ref:`canceled<class_AcceptDialog_signal_canceled>` permiten diferenciar ambas acciones, y el método :ref:`add_button()<class_AcceptDialog_method_add_button>` permite agregar botones y acciones personalizadas.

\ **Nota:** **AcceptDialog** es invisible por defecto. Para hacerlo visible, llama a uno de los métodos ``popup_*`` de :ref:`Window<class_Window>` en el nodo, como :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_autowrap<class_AcceptDialog_property_dialog_autowrap>`               | ``false``                                                                    |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_close_on_escape<class_AcceptDialog_property_dialog_close_on_escape>` | ``true``                                                                     |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_hide_on_ok<class_AcceptDialog_property_dialog_hide_on_ok>`           | ``true``                                                                     |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`dialog_text<class_AcceptDialog_property_dialog_text>`                       | ``""``                                                                       |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | exclusive                                                                         | ``true`` (overrides :ref:`Window<class_Window_property_exclusive>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | keep_title_visible                                                                | ``true`` (overrides :ref:`Window<class_Window_property_keep_title_visible>`) |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | maximize_disabled                                                                 | ``true`` (overrides :ref:`Window<class_Window_property_maximize_disabled>`)  |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | minimize_disabled                                                                 | ``true`` (overrides :ref:`Window<class_Window_property_minimize_disabled>`)  |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ok_button_text<class_AcceptDialog_property_ok_button_text>`                 | ``""``                                                                       |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | title                                                                             | ``"Alert!"`` (overrides :ref:`Window<class_Window_property_title>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | transient                                                                         | ``true`` (overrides :ref:`Window<class_Window_property_transient>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | visible                                                                           | ``false`` (overrides :ref:`Window<class_Window_property_visible>`)           |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | wrap_controls                                                                     | ``true`` (overrides :ref:`Window<class_Window_property_wrap_controls>`)      |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`add_button<class_AcceptDialog_method_add_button>`\ (\ text\: :ref:`String<class_String>`, right\: :ref:`bool<class_bool>` = false, action\: :ref:`String<class_String>` = ""\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`add_cancel_button<class_AcceptDialog_method_add_cancel_button>`\ (\ name\: :ref:`String<class_String>`\ )                                                                       |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Label<class_Label>`   | :ref:`get_label<class_AcceptDialog_method_get_label>`\ (\ )                                                                                                                           |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`get_ok_button<class_AcceptDialog_method_get_ok_button>`\ (\ )                                                                                                                   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`register_text_enter<class_AcceptDialog_method_register_text_enter>`\ (\ line_edit\: :ref:`LineEdit<class_LineEdit>`\ )                                                          |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_button<class_AcceptDialog_method_remove_button>`\ (\ button\: :ref:`Button<class_Button>`\ )                                                                             |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_min_height<class_AcceptDialog_theme_constant_buttons_min_height>` | ``0``  |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_min_width<class_AcceptDialog_theme_constant_buttons_min_width>`   | ``0``  |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_separation<class_AcceptDialog_theme_constant_buttons_separation>` | ``10`` |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_AcceptDialog_theme_style_panel>`                              |        |
   +---------------------------------+---------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_AcceptDialog_signal_canceled:

.. rst-class:: classref-signal

**canceled**\ (\ ) :ref:`🔗<class_AcceptDialog_signal_canceled>`

Emitida cuando se cierra el diálogo o se pulsa el botón creado con :ref:`add_cancel_button()<class_AcceptDialog_method_add_cancel_button>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_signal_confirmed:

.. rst-class:: classref-signal

**confirmed**\ (\ ) :ref:`🔗<class_AcceptDialog_signal_confirmed>`

Emitida cuando se acepta el diálogo, es decir, se pulsa el botón OK.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_signal_custom_action:

.. rst-class:: classref-signal

**custom_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AcceptDialog_signal_custom_action>`

Emitida cuando se pulsa un botón personalizado con una acción. Véase :ref:`add_button()<class_AcceptDialog_method_add_button>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AcceptDialog_property_dialog_autowrap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_autowrap** = ``false`` :ref:`🔗<class_AcceptDialog_property_dialog_autowrap>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autowrap**\ (\ )

El texto se expande automáticamente en el diálogo.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_close_on_escape:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_close_on_escape** = ``true`` :ref:`🔗<class_AcceptDialog_property_dialog_close_on_escape>`

.. rst-class:: classref-property-setget

- |void| **set_close_on_escape**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_close_on_escape**\ (\ )

Si es ``true``, el diálogo se ocultará cuando se pulse la acción ``ui_close_dialog`` (por defecto, esta acción está vinculada a :kbd:`Escape`, o :kbd:`Cmd + W` en macOS).

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_hide_on_ok:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_hide_on_ok** = ``true`` :ref:`🔗<class_AcceptDialog_property_dialog_hide_on_ok>`

.. rst-class:: classref-property-setget

- |void| **set_hide_on_ok**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_hide_on_ok**\ (\ )

Si es ``true``, el diálogo se oculta cuando se pulsa el botón OK. Puedes ajustarlo a ``false`` si quieres hacer, por ejemplo, la validación de entrada al recibir la señal :ref:`confirmed<class_AcceptDialog_signal_confirmed>`, y manejar el ocultamiento del diálogo en tu propia lógica.

\ **Nota:** Algunos nodos derivados de esta clase pueden tener un valor por defecto diferente, y potencialmente su propia lógica incorporada anulando este ajuste. Por ejemplo, :ref:`FileDialog<class_FileDialog>` tiene por defecto ``false``, y tiene su propio código de validación de entrada que se llama al pulsar OK, que eventualmente oculta el diálogo si la entrada es válida. Como tal, esta propiedad no puede ser usada en :ref:`FileDialog<class_FileDialog>` para deshabilitar la ocultación del diálogo cuando se presiona OK.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **dialog_text** = ``""`` :ref:`🔗<class_AcceptDialog_property_dialog_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

El texto mostrado en el diálogo.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_ok_button_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **ok_button_text** = ``""`` :ref:`🔗<class_AcceptDialog_property_ok_button_text>`

.. rst-class:: classref-property-setget

- |void| **set_ok_button_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ok_button_text**\ (\ )

El texto que muestra el botón Aceptar (véase :ref:`get_ok_button()<class_AcceptDialog_method_get_ok_button>`). Si está vacío, se utilizará un texto por defecto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AcceptDialog_method_add_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **add_button**\ (\ text\: :ref:`String<class_String>`, right\: :ref:`bool<class_bool>` = false, action\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_AcceptDialog_method_add_button>`

Añade un botón con la etiqueta ``text`` y una ``action`` personalizada al diálogo y devuelve el botón creado.

Si ``action`` no está vacío, al pulsar el botón se emitirá la señal :ref:`custom_action<class_AcceptDialog_signal_custom_action>` con la string de acción especificada.

Si es ``true``, ``right`` colocará el botón a la derecha de cualquier botón hermano.

Puede utilizar el método :ref:`remove_button()<class_AcceptDialog_method_remove_button>` para eliminar un botón creado con este método del diálogo.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_add_cancel_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **add_cancel_button**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AcceptDialog_method_add_cancel_button>`

Añade un botón con la etiqueta ``name`` y una acción de cancelación al diálogo y devuelve el botón creado.

Puedes usar el método :ref:`remove_button()<class_AcceptDialog_method_remove_button>` para eliminar un botón creado con este método del diálogo.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_get_label:

.. rst-class:: classref-method

:ref:`Label<class_Label>` **get_label**\ (\ ) :ref:`🔗<class_AcceptDialog_method_get_label>`

Devuelve la etiqueta utilizada para el texto integrado.

\ **Advertencia:** Este es un nodo interno requerido, eliminarlo o liberarlo puede causar un fallo. Si deseas ocultarlo o cualquiera de sus hijos, usa su propiedad :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_get_ok_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **get_ok_button**\ (\ ) :ref:`🔗<class_AcceptDialog_method_get_ok_button>`

Devuelve la instancia de el :ref:`Button<class_Button>` aceptar. 

\ **Warning:** Esto es un nodo interno requerido, removerlo y liberarlo podría causar un crasheo. Si deseas esconder este o alguno de sus hijos, utiliza su propiedad :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_register_text_enter:

.. rst-class:: classref-method

|void| **register_text_enter**\ (\ line_edit\: :ref:`LineEdit<class_LineEdit>`\ ) :ref:`🔗<class_AcceptDialog_method_register_text_enter>`

Registra un :ref:`LineEdit<class_LineEdit>` en el diálogo. Cuando se pulsa la tecla intro, el diálogo se acepta.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_remove_button:

.. rst-class:: classref-method

|void| **remove_button**\ (\ button\: :ref:`Button<class_Button>`\ ) :ref:`🔗<class_AcceptDialog_method_remove_button>`

Elimina el ``button`` del diálogo. NO libera el ``button``. El ``button`` debe ser un :ref:`Button<class_Button>` añadido con el método :ref:`add_button()<class_AcceptDialog_method_add_button>` o el método :ref:`add_cancel_button()<class_AcceptDialog_method_add_cancel_button>`. Después de la eliminación, al pulsar el ``button`` ya no se emitirán las señales :ref:`custom_action<class_AcceptDialog_signal_custom_action>` o :ref:`canceled<class_AcceptDialog_signal_canceled>` de este diálogo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_AcceptDialog_theme_constant_buttons_min_height:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_min_height** = ``0`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_min_height>`

La altura mínima de cada botón en la fila inferior (como Aceptar/Cancelar) en píxeles. Esto se puede aumentar para facilitar hacer clic/tocar en botones con textos cortos.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_constant_buttons_min_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_min_width** = ``0`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_min_width>`

El ancho mínimo de cada botón en la fila inferior (como Aceptar/Cancelar) en píxeles. Esto se puede aumentar para facilitar hacer clic/tocar en botones con textos cortos.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_constant_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_separation** = ``10`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_separation>`

El tamaño del espacio vertical entre el contenido del diálogo y la fila de botones.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_AcceptDialog_theme_style_panel>`

El panel que llena el fondo de la ventana.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
