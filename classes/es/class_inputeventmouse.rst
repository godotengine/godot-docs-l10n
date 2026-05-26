:github_url: hide

.. _class_InputEventMouse:

InputEventMouse
===============

**Hereda:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`

Tipo de evento de entrada base para eventos de ratón.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Almacena información general sobre los eventos del ratón.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_InputEventMouse_property_button_mask>`         | ``0``                                                                  |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                   | device                                                                 | ``32`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`global_position<class_InputEventMouse_property_global_position>` | ``Vector2(0, 0)``                                                      |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`position<class_InputEventMouse_property_position>`               | ``Vector2(0, 0)``                                                      |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_InputEventMouse_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``0`` :ref:`🔗<class_InputEventMouse_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

El identificador de la máscara del botón del ratón, una de las máscaras de botón de :ref:`MouseButton<enum_@GlobalScope_MouseButton>` o una combinación bit a bit de ellas.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

Cuando se recibe en :ref:`Node._input()<class_Node_private_method__input>` o :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, devuelve la posición del ratón en el :ref:`Viewport<class_Viewport>` raíz usando el sistema de coordenadas del :ref:`Viewport<class_Viewport>` raíz.

Cuando se recibe en :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, devuelve la posición del ratón en el :ref:`CanvasLayer<class_CanvasLayer>` en el que se encuentra el :ref:`Control<class_Control>` usando el sistema de coordenadas del :ref:`CanvasLayer<class_CanvasLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Cuando se recibe en :ref:`Node._input()<class_Node_private_method__input>` o :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, devuelve la posición del ratón en el :ref:`Viewport<class_Viewport>` en el que se encuentra este :ref:`Node<class_Node>` usando el sistema de coordenadas de este :ref:`Viewport<class_Viewport>`.

Cuando se recibe en :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, devuelve la posición del ratón en el :ref:`Control<class_Control>` usando el sistema de coordenadas local del :ref:`Control<class_Control>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
