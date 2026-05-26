:github_url: hide

.. _class_EditorInspector:

EditorInspector
===============

**Hereda:** :ref:`ScrollContainer<class_ScrollContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un control utilizado para editar las propiedades de un objeto.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This is the control that implements property editing in the editor's Settings dialogs, the Inspector dock, etc. To get the **EditorInspector** used in the editor's Inspector dock, use :ref:`EditorInterface.get_inspector()<class_EditorInterface_method_get_inspector>`.

\ **EditorInspector** will show properties in the same order as the array returned by :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

If a property's name is path-like (i.e. if it contains forward slashes), **EditorInspector** will create nested sections for "directories" along the path. For example, if a property is named ``highlighting/gdscript/node_path_color``, it will be shown as "Node Path Color" inside the "GDScript" section nested inside the "Highlighting" section.

If a property has :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>` usage, it will group subsequent properties whose name starts with the property's hint string. The group ends when a property does not start with that hint string or when a new group starts. An empty group name effectively ends the current group. **EditorInspector** will create a top-level section for each group. For example, if a property with group usage is named ``Collide With`` and its hint string is ``collide_with_``, a subsequent ``collide_with_area`` property will be shown as "Area" inside the "Collide With" section. There is also a special case: when the hint string contains the name of a property, that property is grouped too. This is mainly to help grouping properties like ``font``, ``font_color`` and ``font_size`` (using the hint string ``font_``).

If a property has :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>` usage, a subgroup will be created in the same way as a group, and a second-level section will be created for each subgroup.

\ **Note:** Unlike sections created from path-like property names, **EditorInspector** won't capitalize the name for sections created from groups. So properties with group usage usually use capitalized names instead of snake_cased names.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | draw_focus_border      | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_draw_focus_border>`)   |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`           | focus_mode             | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)                             |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | follow_focus           | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_follow_focus>`)        |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` | horizontal_scroll_mode | ``0`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_horizontal_scroll_mode>`) |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`collapse_all_folding<class_EditorInspector_method_collapse_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorInspector<class_EditorInspector>` | :ref:`create_default_inspector<class_EditorInspector_method_create_default_inspector>`\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static|                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`edit<class_EditorInspector_method_edit>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_all_folding<class_EditorInspector_method_expand_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_revertable<class_EditorInspector_method_expand_revertable>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                   | :ref:`get_edited_object<class_EditorInspector_method_get_edited_object>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_selected_path<class_EditorInspector_method_get_selected_path>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorProperty<class_EditorProperty>`   | :ref:`instantiate_property_editor<class_EditorInspector_method_instantiate_property_editor>`\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_EditorInspector_signal_edited_object_changed:

.. rst-class:: classref-signal

**edited_object_changed**\ (\ ) :ref:`🔗<class_EditorInspector_signal_edited_object_changed>`

Emitida cuando el objeto que está siendo editado por el inspector ha cambiado.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_object_id_selected:

.. rst-class:: classref-signal

**object_id_selected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorInspector_signal_object_id_selected>`

Emitida cuando se ha pulsado el botón de edición de un :ref:`Object<class_Object>` en el inspector. Esto se utiliza principalmente en el inspector de árbol de escenas remota.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_deleted:

.. rst-class:: classref-signal

**property_deleted**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_deleted>`

Emitida cuando se elimina una propiedad del inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_edited:

.. rst-class:: classref-signal

**property_edited**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_edited>`

Emitida cuando una propiedad es editada en el inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_keyed:

.. rst-class:: classref-signal

**property_keyed**\ (\ property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`, advance\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_keyed>`

Emitida cuando una propiedad es puesta en clave por el inspector. Las propiedades pueden ser tecleadas haciendo clic en el icono "tecla" junto a una propiedad cuando el panel de animación se conmuta.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_selected:

.. rst-class:: classref-signal

**property_selected**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_selected>`

Emitida cuando una propiedad es seleccionada en el inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_toggled:

.. rst-class:: classref-signal

**property_toggled**\ (\ property\: :ref:`String<class_String>`, checked\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_toggled>`

Emitida cuando una propiedad booleana se conmuta en el inspector.

\ **Nota:** Esta señal nunca se emite si la propiedad interna ``autoclear`` está activada. Dado que esta propiedad siempre está activada en el inspector del editor, esta señal nunca es emitida por el propio editor.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_resource_selected>`

Emitida cuando se selecciona un recurso en el inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_restart_requested:

.. rst-class:: classref-signal

**restart_requested**\ (\ ) :ref:`🔗<class_EditorInspector_signal_restart_requested>`

Emitida cuando una propiedad que requiere un reinicio para ser aplicada es editada en el inspector. Esto sólo se usa en los ajustes del proyecto y en los ajustes del editor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorInspector_method_collapse_all_folding:

.. rst-class:: classref-method

|void| **collapse_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_collapse_all_folding>`

Collapses all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_create_default_inspector:

.. rst-class:: classref-method

:ref:`EditorInspector<class_EditorInspector>` **create_default_inspector**\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static| :ref:`🔗<class_EditorInspector_method_create_default_inspector>`

Creates an inspector with the same configuration as the one used in the editor's Inspector dock. When passing a :ref:`LineEdit<class_LineEdit>` into ``filter_line_edit``, the inspector will filter its properties based on :ref:`LineEdit.text<class_LineEdit_property_text>` whenever :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` is emitted.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_edit:

.. rst-class:: classref-method

|void| **edit**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorInspector_method_edit>`

Shows the properties of the given ``object`` in this inspector for editing. To clear the inspector, call this method with ``null``.

\ **Note:** If you want to edit an object in the editor's main inspector, use the ``edit_*`` methods in :ref:`EditorInterface<class_EditorInterface>` instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_all_folding:

.. rst-class:: classref-method

|void| **expand_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_all_folding>`

Expands all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_revertable:

.. rst-class:: classref-method

|void| **expand_revertable**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_revertable>`

Expands only the foldable sections that contain a revertable (i.e. non-default) property.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_edited_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_edited_object**\ (\ ) :ref:`🔗<class_EditorInspector_method_get_edited_object>`

Devuelve el objeto actualmente seleccionado en este inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_selected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_path**\ (\ ) |const| :ref:`🔗<class_EditorInspector_method_get_selected_path>`

Obtiene la ruta de la propiedad seleccionada actualmente.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_instantiate_property_editor:

.. rst-class:: classref-method

:ref:`EditorProperty<class_EditorProperty>` **instantiate_property_editor**\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_EditorInspector_method_instantiate_property_editor>`

Creates a property editor that can be used by plugin UI to edit the specified property of an ``object``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
