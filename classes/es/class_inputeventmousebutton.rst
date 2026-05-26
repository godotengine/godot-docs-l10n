:github_url: hide

.. meta::
	:keywords: click, press

.. _class_InputEventMouseButton:

InputEventMouseButton
=====================

**Hereda:** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa un botón del ratón siendo pulsado o soltado.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Almacena información sobre los eventos de clic del ratón. Véase :ref:`Node._input()<class_Node_private_method__input>`.

\ **Nota:** En dispositivos con Wear OS, la entrada rotatoria se mapea a :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_UP<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_UP>` y :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_DOWN<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_DOWN>`. Esto se puede cambiar a :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_LEFT<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_LEFT>` y :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_RIGHT<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_RIGHT>` con la configuración :ref:`ProjectSettings.input_devices/pointing/android/rotary_input_scroll_axis<class_ProjectSettings_property_input_devices/pointing/android/rotary_input_scroll_axis>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Coordenadas del ratón y de entrada <../tutorials/inputs/mouse_and_input_coordinates>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`MouseButton<enum_@GlobalScope_MouseButton>` | :ref:`button_index<class_InputEventMouseButton_property_button_index>` | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`canceled<class_InputEventMouseButton_property_canceled>`         | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`double_click<class_InputEventMouseButton_property_double_click>` | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`factor<class_InputEventMouseButton_property_factor>`             | ``1.0``   |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`pressed<class_InputEventMouseButton_property_pressed>`           | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_InputEventMouseButton_property_button_index:

.. rst-class:: classref-property

:ref:`MouseButton<enum_@GlobalScope_MouseButton>` **button_index** = ``0`` :ref:`🔗<class_InputEventMouseButton_property_button_index>`

.. rst-class:: classref-property-setget

- |void| **set_button_index**\ (\ value\: :ref:`MouseButton<enum_@GlobalScope_MouseButton>`\ )
- :ref:`MouseButton<enum_@GlobalScope_MouseButton>` **get_button_index**\ (\ )

El identificador del botón del ratón, una de las constantes de botón o rueda de botón de :ref:`MouseButton<enum_@GlobalScope_MouseButton>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_canceled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **canceled** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_canceled>`

.. rst-class:: classref-property-setget

- |void| **set_canceled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_canceled**\ (\ )

Si es ``true``, el evento del botón del ratón ha sido cancelado.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_double_click:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_click** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_double_click>`

.. rst-class:: classref-property-setget

- |void| **set_double_click**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_double_click**\ (\ )

Si es ``true``, el estado del botón del ratón es un doble clic.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **factor** = ``1.0`` :ref:`🔗<class_InputEventMouseButton_property_factor>`

.. rst-class:: classref-property-setget

- |void| **set_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_factor**\ (\ )

La cantidad (o delta) del evento. Cuando se usa para eventos de desplazamiento de alta precisión, esto indica la cantidad de desplazamiento (vertical u horizontal). Esto sólo se admite en algunas plataformas; la sensibilidad notificada varía según la plataforma. Puede ser ``0`` si no está soportada.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Si es ``true``, el estado del botón del ratón está presionado. Si ``false``, el estado del botón del ratón se libera.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
