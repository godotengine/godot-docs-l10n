:github_url: hide

.. _class_InputEventAction:

InputEventAction
================

**Hereda:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un tipo de evento de entrada para acciones.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Contains a generic action which can be targeted from several types of inputs. Actions and their events can be set in the **Input Map** tab in **Project > Project Settings**, or with the :ref:`InputMap<class_InputMap>` class.

\ **Note:** Unlike the other :ref:`InputEvent<class_InputEvent>` subclasses which map to unique physical events, this virtual one is not emitted by the engine. This class is useful to emit actions manually with :ref:`Input.parse_input_event()<class_Input_method_parse_input_event>`, which are then received in :ref:`Node._input()<class_Node_private_method__input>`. To check if a physical event matches an action from the Input Map, use :ref:`InputEvent.is_action()<class_InputEvent_method_is_action>` and :ref:`InputEvent.is_action_pressed()<class_InputEvent_method_is_action_pressed>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Usando InputEvent: Acciones <../tutorials/inputs/inputevent.html#actions>`__

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>` | :ref:`action<class_InputEventAction_property_action>`           | ``&""``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`event_index<class_InputEventAction_property_event_index>` | ``-1``    |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`pressed<class_InputEventAction_property_pressed>`         | ``false`` |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`strength<class_InputEventAction_property_strength>`       | ``1.0``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_InputEventAction_property_action:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action** = ``&""`` :ref:`🔗<class_InputEventAction_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action**\ (\ )

El nombre de la acción. Normalmente es el nombre de una acción existente en el :ref:`InputMap<class_InputMap>` con la que quieres que coincida este evento personalizado.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_event_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **event_index** = ``-1`` :ref:`🔗<class_InputEventAction_property_event_index>`

.. rst-class:: classref-property-setget

- |void| **set_event_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_event_index**\ (\ )

El índice del evento real en la acción a la que corresponde este evento (de los eventos definidos para esta acción en el :ref:`InputMap<class_InputMap>`). Si es ``-1``, se utilizará un ID único y las acciones pulsadas con este ID deberán liberarse con otro **InputEventAction**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventAction_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Si es ``true``, se presiona el estado de la acción. Si es ``false``, se libera el estado de la acción.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_InputEventAction_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

La fuerza de la acción entre 0 y 1. Este valor se considera igual a 0 si pressed es ``false``. La fuerza del evento permite simular eventos de movimiento analógico del joypad, especificando la fuerza con la que se dobla o presiona el eje del joypad.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
