:github_url: hide

.. _class_SubViewport:

SubViewport
===========

**Hereda:** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una interfaz a un mundo de juego que no crea una ventana ni dibuja directamente en la pantalla.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**SubViewport** Isolates a rectangular region of a scene to be displayed independently. This can be used, for example, to display UI in 3D space.

\ **Note:** **SubViewport** is a :ref:`Viewport<class_Viewport>` that isn't a :ref:`Window<class_Window>`, i.e. it doesn't draw anything by itself. To display anything, **SubViewport** must have a non-zero size and be either put inside a :ref:`SubViewportContainer<class_SubViewportContainer>` or assigned to a :ref:`ViewportTexture<class_ViewportTexture>`.

\ **Note:** :ref:`InputEvent<class_InputEvent>`\ s are not passed to a standalone **SubViewport** by default. To ensure :ref:`InputEvent<class_InputEvent>` propagation, a **SubViewport** can be placed inside of a :ref:`SubViewportContainer<class_SubViewportContainer>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando Viewports <../tutorials/rendering/viewports>`

- :doc:`Transformaciones de la ventana gráfica y del lienzo <../tutorials/2d/2d_transforms>`

- `Demostración GUI en el Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

- `Demo de Viewport 3D en 2D <https://godotengine.org/asset-library/asset/2804>`__

- `2D in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

- `Demo de Captura de Pantalla <https://godotengine.org/asset-library/asset/2808>`__

- `Demo de División Dinámica de Pantalla <https://godotengine.org/asset-library/asset/2806>`__

- `Demo de Escalado de Resolución en 3D <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`ClearMode<enum_SubViewport_ClearMode>`   | :ref:`render_target_clear_mode<class_SubViewport_property_render_target_clear_mode>`   | ``0``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`UpdateMode<enum_SubViewport_UpdateMode>` | :ref:`render_target_update_mode<class_SubViewport_property_render_target_update_mode>` | ``2``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size<class_SubViewport_property_size>`                                           | ``Vector2i(512, 512)`` |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size_2d_override<class_SubViewport_property_size_2d_override>`                   | ``Vector2i(0, 0)``     |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                        | :ref:`size_2d_override_stretch<class_SubViewport_property_size_2d_override_stretch>`   | ``false``              |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_SubViewport_ClearMode:

.. rst-class:: classref-enumeration

enum **ClearMode**: :ref:`🔗<enum_SubViewport_ClearMode>`

.. _class_SubViewport_constant_CLEAR_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ALWAYS** = ``0``

Siempre despeja el objetivo de renderizado antes de dibujar.

.. _class_SubViewport_constant_CLEAR_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_NEVER** = ``1``

Nunca despejen el objetivo de renderizado.

.. _class_SubViewport_constant_CLEAR_MODE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ONCE** = ``2``

Limpia el objetivo de renderizado en el siguiente fotograma, luego cambia a :ref:`CLEAR_MODE_NEVER<class_SubViewport_constant_CLEAR_MODE_NEVER>`.

.. rst-class:: classref-item-separator

----

.. _enum_SubViewport_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_SubViewport_UpdateMode>`

.. _class_SubViewport_constant_UPDATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_DISABLED** = ``0``

No actualiza el objetivo de renderizado.

.. _class_SubViewport_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ONCE** = ``1``

Actualiza el objetivo de render una vez, luego cambia a :ref:`UPDATE_DISABLED<class_SubViewport_constant_UPDATE_DISABLED>`.

.. _class_SubViewport_constant_UPDATE_WHEN_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_VISIBLE** = ``2``

Actualice el objetivo de renderizado sólo cuando sea visible. Este es el valor predeterminado.

.. _class_SubViewport_constant_UPDATE_WHEN_PARENT_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_PARENT_VISIBLE** = ``3``

Actualizar el objetivo de renderizado solo cuando su elemento principal esté visible.

.. _class_SubViewport_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ALWAYS** = ``4``

Siempre actualiza el objetivo de renderizado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SubViewport_property_render_target_clear_mode:

.. rst-class:: classref-property

:ref:`ClearMode<enum_SubViewport_ClearMode>` **render_target_clear_mode** = ``0`` :ref:`🔗<class_SubViewport_property_render_target_clear_mode>`

.. rst-class:: classref-property-setget

- |void| **set_clear_mode**\ (\ value\: :ref:`ClearMode<enum_SubViewport_ClearMode>`\ )
- :ref:`ClearMode<enum_SubViewport_ClearMode>` **get_clear_mode**\ (\ )

El modo claro cuando el viewport secundario se utiliza como objetivo de renderizado.

\ **Nota:** Esta propiedad está diseñada para uso 2D.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_render_target_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **render_target_update_mode** = ``2`` :ref:`🔗<class_SubViewport_property_render_target_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_SubViewport_UpdateMode>`\ )
- :ref:`UpdateMode<enum_SubViewport_UpdateMode>` **get_update_mode**\ (\ )

El modo de actualización cuando el viewport secundario se utiliza como destino de renderizado.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(512, 512)`` :ref:`🔗<class_SubViewport_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

The width and height of the sub-viewport. Must be set to a value greater than or equal to 2 pixels on both dimensions. Otherwise, nothing will be displayed.

\ **Note:** If the parent node is a :ref:`SubViewportContainer<class_SubViewportContainer>` and its :ref:`SubViewportContainer.stretch<class_SubViewportContainer_property_stretch>` is ``true``, the viewport size cannot be changed manually.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size_2d_override** = ``Vector2i(0, 0)`` :ref:`🔗<class_SubViewport_property_size_2d_override>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size_2d_override**\ (\ )

The 2D size override of the sub-viewport. If either the width or height is ``0``, the override is disabled.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **size_2d_override_stretch** = ``false`` :ref:`🔗<class_SubViewport_property_size_2d_override_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_size_2d_override_stretch_enabled**\ (\ )

Si es ``true``, la sobrescritura del tamaño 2D también afecta el estiramiento.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
