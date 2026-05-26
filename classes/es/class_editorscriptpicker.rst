:github_url: hide

.. _class_EditorScriptPicker:

EditorScriptPicker
==================

**Hereda:** :ref:`EditorResourcePicker<class_EditorResourcePicker>` **<** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Control del editor de Godot para seleccionar la propiedad ``script`` de un :ref:`Node<class_Node>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Similar a :ref:`EditorResourcePicker<class_EditorResourcePicker>`, este nodo :ref:`Control<class_Control>` se utiliza en el panel Inspector del editor, pero únicamente para editar la propiedad ``script`` de un :ref:`Node<class_Node>`. Las opciones predeterminadas para crear nuevos recursos de todos los subtipos posibles se reemplazan por botones dedicados que abren el diálogo "Attach Node Script". Puede utilizarse con :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` para recrear el mismo comportamiento.

\ **Nota:** Debes establecer :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` para que los elementos personalizados del menú contextual funcionen.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------+
   | :ref:`Node<class_Node>` | :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` |
   +-------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_EditorScriptPicker_property_script_owner:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **script_owner** :ref:`🔗<class_EditorScriptPicker_property_script_owner>`

.. rst-class:: classref-property-setget

- |void| **set_script_owner**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_script_owner**\ (\ )

El :ref:`Node<class_Node>` propietario de la propiedad de script que contiene el recurso editado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
