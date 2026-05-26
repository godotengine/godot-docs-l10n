:github_url: hide

.. _class_InputEventWithModifiers:

InputEventWithModifiers
=======================

**Hereda:** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`InputEventGesture<class_InputEventGesture>`, :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouse<class_InputEventMouse>`

Clase base abstracta para eventos de entrada afectados por teclas modificadoras como :kbd:`Shift` y :kbd:`Alt`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Almacena información sobre eventos de entrada de ratón, teclado y gestos táctiles. Esto incluye información sobre qué teclas modificadoras están pulsadas, como :kbd:`Shift` o :kbd:`Alt`. Véase :ref:`Node._input()<class_Node_private_method__input>`.

\ **Nota:** Las teclas modificadoras se consideran modificadoras solo cuando se usan en combinación con otra tecla. Como resultado, sus variables miembro correspondientes, como :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>`, devolverán ``false`` si la tecla se pulsa por sí sola.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`alt_pressed<class_InputEventWithModifiers_property_alt_pressed>`                                   | ``false`` |
   +-------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`command_or_control_autoremap<class_InputEventWithModifiers_property_command_or_control_autoremap>` | ``false`` |
   +-------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>`                                 | ``false`` |
   +-------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>`                                 | ``false`` |
   +-------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`shift_pressed<class_InputEventWithModifiers_property_shift_pressed>`                               | ``false`` |
   +-------------------------+----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] | :ref:`get_modifiers_mask<class_InputEventWithModifiers_method_get_modifiers_mask>`\ (\ ) |const|                       |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`is_command_or_control_pressed<class_InputEventWithModifiers_method_is_command_or_control_pressed>`\ (\ ) |const| |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_InputEventWithModifiers_property_alt_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **alt_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_alt_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_alt_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_alt_pressed**\ (\ )

Estado del modificador :kbd:`Alt`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_command_or_control_autoremap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **command_or_control_autoremap** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_command_or_control_autoremap>`

.. rst-class:: classref-property-setget

- |void| **set_command_or_control_autoremap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_command_or_control_autoremap**\ (\ )

Usa automáticamente :kbd:`Meta` (:kbd:`Cmd`) en macOS y :kbd:`Ctrl` en otras plataformas. Si es ``true``, :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>` y :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>` no se pueden establecer.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_ctrl_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ctrl_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_ctrl_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_ctrl_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ctrl_pressed**\ (\ )

Estado del modificador :kbd:`Ctrl`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_meta_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meta_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_meta_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_meta_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_meta_pressed**\ (\ )

Estado del modificador :kbd:`Meta`. En Windows y Linux, esto representa la tecla Windows (a veces llamada "meta" o "super" en Linux). En macOS, esto representa la tecla Comando.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_shift_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shift_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_shift_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_shift_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shift_pressed**\ (\ )

Estado del modificador :kbd:`Shift`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_InputEventWithModifiers_method_get_modifiers_mask:

.. rst-class:: classref-method

|bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] **get_modifiers_mask**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_get_modifiers_mask>`

Devuelve la combinación de códigos de tecla de las teclas modificadoras.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_method_is_command_or_control_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_command_or_control_pressed**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_is_command_or_control_pressed>`

En macOS, devuelve ``true`` si :kbd:`Meta` (:kbd:`Cmd`) está pulsada.

En otras plataformas, devuelve ``true`` si :kbd:`Ctrl` está pulsada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
