:github_url: hide

.. _class_EditorResourcePicker:

EditorResourcePicker
====================

**Hereda:** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`EditorScriptPicker<class_EditorScriptPicker>`

Control del editor de Godot para seleccionar propiedades de tipo :ref:`Resource<class_Resource>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This :ref:`Control<class_Control>` node is used in the editor's Inspector dock to allow editing of :ref:`Resource<class_Resource>` type properties. It provides options for creating, loading, saving and converting resources. Can be used with :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` to recreate the same behavior.

\ **Note:** This :ref:`Control<class_Control>` does not include any editor for the resource, as editing is controlled by the Inspector dock itself or sub-Inspectors.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`     | :ref:`base_type<class_EditorResourcePicker_property_base_type>`             | ``""``    |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`editable<class_EditorResourcePicker_property_editable>`               | ``true``  |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Resource<class_Resource>` | :ref:`edited_resource<class_EditorResourcePicker_property_edited_resource>` |           |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`toggle_mode<class_EditorResourcePicker_property_toggle_mode>`         | ``false`` |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handle_menu_selected<class_EditorResourcePicker_private_method__handle_menu_selected>`\ (\ id\: :ref:`int<class_int>`\ ) |virtual|          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_set_create_options<class_EditorResourcePicker_private_method__set_create_options>`\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_allowed_types<class_EditorResourcePicker_method_get_allowed_types>`\ (\ ) |const|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_toggle_pressed<class_EditorResourcePicker_method_set_toggle_pressed>`\ (\ pressed\: :ref:`bool<class_bool>`\ )                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_EditorResourcePicker_signal_resource_changed:

.. rst-class:: classref-signal

**resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_changed>`

Emitida cuando se cambia el valor del recurso editado.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, inspect\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_selected>`

Emitida cuando se establece el valor del recurso y el usuario hace clic para editarlo. Cuando ``inspect`` es ``true``, la señal fue causada por la opción del menú contextual "Editar" o "Inspeccionar".

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_EditorResourcePicker_property_base_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_type** = ``""`` :ref:`🔗<class_EditorResourcePicker_property_base_type>`

.. rst-class:: classref-property-setget

- |void| **set_base_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_type**\ (\ )

El tipo base de los tipos de recursos permitidos. Puede ser una lista separada por comas de varias opciones.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_EditorResourcePicker_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Si es ``true``, el valor puede ser seleccionado y editado.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_edited_resource:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **edited_resource** :ref:`🔗<class_EditorResourcePicker_property_edited_resource>`

.. rst-class:: classref-property-setget

- |void| **set_edited_resource**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_edited_resource**\ (\ )

El valor del recurso editado.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_toggle_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **toggle_mode** = ``false`` :ref:`🔗<class_EditorResourcePicker_property_toggle_mode>`

.. rst-class:: classref-property-setget

- |void| **set_toggle_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_toggle_mode**\ (\ )

Si es ``true``, el botón principal con la vista previa del recurso funciona en el modo de alternancia. Utiliza :ref:`set_toggle_pressed()<class_EditorResourcePicker_method_set_toggle_pressed>` para establecer manualmente el estado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorResourcePicker_private_method__handle_menu_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handle_menu_selected**\ (\ id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__handle_menu_selected>`

Este método virtual puede ser implementado para manejar elementos del menú contextual no manejados por defecto. Véase :ref:`_set_create_options()<class_EditorResourcePicker_private_method__set_create_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_private_method__set_create_options:

.. rst-class:: classref-method

|void| **_set_create_options**\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__set_create_options>`

This virtual method is called when updating the context menu of an :ref:`editable<class_EditorResourcePicker_property_editable>` **EditorResourcePicker**. Implement this method to override the "New" items section with your own options. ``menu_node`` is a reference to the :ref:`PopupMenu<class_PopupMenu>` node.

\ **Note:** Implement :ref:`_handle_menu_selected()<class_EditorResourcePicker_private_method__handle_menu_selected>` to handle these custom items.

\ **Note:** Relevant built-in options ("Load", "Copy", "Paste", etc.) are automatically added to the ``menu_node`` afterwards, using their hard-coded IDs starting from ``0``. Custom options need to use non-colliding IDs to be handled properly. Using ``id = 100 + custom_option_index`` is safe (this is what the default items in the "New" section use).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_get_allowed_types:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_allowed_types**\ (\ ) |const| :ref:`🔗<class_EditorResourcePicker_method_get_allowed_types>`

Devuelve una lista de todos los tipos y subtipos permitidos correspondientes a :ref:`base_type<class_EditorResourcePicker_property_base_type>`. Si :ref:`base_type<class_EditorResourcePicker_property_base_type>` está vacío, se devuelve una lista vacía.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_set_toggle_pressed:

.. rst-class:: classref-method

|void| **set_toggle_pressed**\ (\ pressed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_method_set_toggle_pressed>`

Establece el estado del modo de alternancia para el botón principal. Solo funciona si :ref:`toggle_mode<class_EditorResourcePicker_property_toggle_mode>` se establece en ``true``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
