:github_url: hide

.. _class_OpenXRIPBinding:

OpenXRIPBinding
===============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Define un enlace entre una :ref:`OpenXRAction<class_OpenXRAction>` y una entrada o salida XR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este recurso de enlace une una :ref:`OpenXRAction<class_OpenXRAction>` a una entrada o salida. Como la mayoría de los mandos tienen versiones para la mano izquierda y la mano derecha que son gestionadas por el mismo perfil de interacción, podemos especificar múltiples enlaces. Por ejemplo, una acción "Disparar" podría estar enlazada tanto a "/user/hand/left/input/trigger" como a "/user/hand/right/input/trigger". Esto requeriría dos entradas de enlace.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`OpenXRAction<class_OpenXRAction>`           | :ref:`action<class_OpenXRIPBinding_property_action>`                       |        |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`                         | :ref:`binding_modifiers<class_OpenXRIPBinding_property_binding_modifiers>` | ``[]`` |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                       | :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>`           | ``""`` |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`paths<class_OpenXRIPBinding_property_paths>`                         |        |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`add_path<class_OpenXRIPBinding_method_add_path>`\ (\ path\: :ref:`String<class_String>`\ )                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRIPBinding_method_get_binding_modifier>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_binding_modifier_count<class_OpenXRIPBinding_method_get_binding_modifier_count>`\ (\ ) |const|                    |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_path_count<class_OpenXRIPBinding_method_get_path_count>`\ (\ ) |const|                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`has_path<class_OpenXRIPBinding_method_has_path>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                    |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`remove_path<class_OpenXRIPBinding_method_remove_path>`\ (\ path\: :ref:`String<class_String>`\ )                      |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRIPBinding_property_action:

.. rst-class:: classref-property

:ref:`OpenXRAction<class_OpenXRAction>` **action** :ref:`🔗<class_OpenXRIPBinding_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`OpenXRAction<class_OpenXRAction>`\ )
- :ref:`OpenXRAction<class_OpenXRAction>` **get_action**\ (\ )

:ref:`OpenXRAction<class_OpenXRAction>` que está enlazada a :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_binding_modifiers:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **binding_modifiers** = ``[]`` :ref:`🔗<class_OpenXRIPBinding_property_binding_modifiers>`

.. rst-class:: classref-property-setget

- |void| **set_binding_modifiers**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_binding_modifiers**\ (\ )

Modificadores de vinculación para esta vinculación.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_binding_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **binding_path** = ``""`` :ref:`🔗<class_OpenXRIPBinding_property_binding_path>`

.. rst-class:: classref-property-setget

- |void| **set_binding_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_binding_path**\ (\ )

Ruta de vinculación que define la entrada o salida enlazada a :ref:`action<class_OpenXRIPBinding_property_action>`.

\ **Nota:** Las rutas de vinculación son sugerencias, un runtime de XR puede elegir enlazar la acción a una entrada o salida diferente que emule esta entrada o salida.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_paths:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **paths** :ref:`🔗<class_OpenXRIPBinding_property_paths>`

.. rst-class:: classref-property-setget

- |void| **set_paths**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_paths**\ (\ )

**Obsoleto:** Use :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>` instead.

Rutas que definen las entradas o salidas enlazadas en el dispositivo.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRIPBinding_method_add_path:

.. rst-class:: classref-method

|void| **add_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRIPBinding_method_add_path>`

**Obsoleto:** Binding is for a single path.

Añade una ruta de entrada/salida a este enlace.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` **get_binding_modifier**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_binding_modifier>`

Obtiene el :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` en este índice.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_binding_modifier_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_modifier_count**\ (\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_binding_modifier_count>`

Obtiene el número de modificadores de enlace para este enlace.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_path_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_path_count**\ (\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_path_count>`

**Obsoleto:** Binding is for a single path.

Obtiene el número de rutas de entrada/salida en este enlace.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_has_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_has_path>`

**Obsoleto:** Binding is for a single path.

Devuelve ``true`` si esta ruta de entrada/salida es parte de este enlace.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_remove_path:

.. rst-class:: classref-method

|void| **remove_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRIPBinding_method_remove_path>`

**Obsoleto:** Binding is for a single path.

Elimina esta ruta de entrada/salida de esta vinculación.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
