:github_url: hide

.. _class_InputEventMouseMotion:

InputEventMouseMotion
=====================

**Hereda:** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa un movimiento de ratón o de lápiz.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Almacena información sobre el movimiento de un ratón o un lápiz. Esto incluye posición relativa, posición absoluta y velocidad. Véase :ref:`Node._input()<class_Node_private_method__input>`.

\ **Nota:** Por defecto, este evento solo se emite una vez por fotograma renderizado como máximo. Si necesitas un informe de entrada más preciso, establece :ref:`Input.use_accumulated_input<class_Input_property_use_accumulated_input>` a ``false`` para que los eventos se emitan tan a menudo como sea posible. Si usas InputEventMouseMotion para dibujar líneas, considera usar :ref:`Geometry2D.bresenham_line()<class_Geometry2D_method_bresenham_line>` también para evitar huecos visibles en las líneas si el usuario mueve el ratón rápidamente.

\ **Nota:** Este evento puede emitirse incluso cuando el ratón no se ha movido, ya sea por el sistema operativo o por el propio Godot. Si realmente necesitas saber si el ratón se ha movido (por ejemplo, para suprimir la visualización de una sugerencia), deberías comprobar que ``relative.is_zero_approx()`` es ``false``.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Coordenadas del ratón y de entrada <../tutorials/inputs/mouse_and_input_coordinates>`

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pen_inverted<class_InputEventMouseMotion_property_pen_inverted>`       | ``false``         |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`pressure<class_InputEventMouseMotion_property_pressure>`               | ``0.0``           |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`relative<class_InputEventMouseMotion_property_relative>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`tilt<class_InputEventMouseMotion_property_tilt>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`velocity<class_InputEventMouseMotion_property_velocity>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_InputEventMouseMotion_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventMouseMotion_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

Devuelve ``true`` cuando se usa el extremo de borrador de un lápiz óptico.

\ **Nota:** Esta propiedad está implementada en Linux, macOS y Windows.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventMouseMotion_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

Representa la presión que el usuario ejerce sobre el bolígrafo. Va desde ``0.0`` hasta ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

La posición del ratón relativa a la posición anterior (posición en el último fotograma).

\ **Nota:** Dado que **InputEventMouseMotion** solo se emite cuando el ratón se mueve, no es posible detectar de forma fiable cuándo el ratón ha dejado de moverse comprobando esta propiedad. Puede ser necesario un temporizador corto separado.

\ **Nota:** :ref:`relative<class_InputEventMouseMotion_property_relative>` se escala automáticamente según el factor de escala de contenido, que se define por la configuración del modo de estiramiento del proyecto. Esto significa que la sensibilidad del ratón parecerá diferente dependiendo de la resolución cuando se use :ref:`relative<class_InputEventMouseMotion_property_relative>` en un script que maneje el apuntado del ratón con el modo de ratón :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`. Para evitar esto, usa :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

La posición del ratón sin escalar relativa a la posición anterior en el sistema de coordenadas de la pantalla (posición en el último cuadro).

\ **Nota:** Dado que **InputEventMouseMotion** solo se emite cuando el ratón se mueve, no es posible detectar de forma fiable cuándo el ratón ha dejado de moverse comprobando esta propiedad. Puede ser necesario un temporizador corto y separado.

\ **Nota:** Esta coordenada *no* se escala según el factor de escala del contenido o las llamadas a :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. Esto debería preferirse sobre :ref:`relative<class_InputEventMouseMotion_property_relative>` para la puntería del ratón cuando se usa el modo de ratón :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`, independientemente del modo de estiramiento del proyecto.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

The unscaled mouse velocity in pixels per second in screen coordinates. This velocity is *not* scaled according to the content scale factor or calls to :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`.

\ **Note:** In :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mode, :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` returns ``(0, 0)`` because the mouse cursor is hidden and locked. Use :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` for mouse aiming using the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

Representa los ángulos de inclinación del bolígrafo. El valor positivo de la coordenada X indica una inclinación hacia la derecha. El valor positivo de la coordenada Y indica una inclinación hacia el usuario. Va de ``-1.0`` a ``1.0`` para ambos ejes.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

The mouse velocity in pixels per second.

\ **Note:** :ref:`velocity<class_InputEventMouseMotion_property_velocity>` is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. That means mouse sensitivity may appear different depending on resolution.

\ **Note:** In :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mode, :ref:`velocity<class_InputEventMouseMotion_property_velocity>` returns ``(0, 0)`` because the mouse cursor is hidden and locked. Use :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` for mouse aiming using the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
