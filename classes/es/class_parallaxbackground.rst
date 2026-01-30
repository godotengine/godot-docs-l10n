:github_url: hide

.. _class_ParallaxBackground:

ParallaxBackground
==================

**Obsoleto:** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**Hereda:** :ref:`CanvasLayer<class_CanvasLayer>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo usado para crear un fondo de desplazamiento de paralaje.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un ParallaxBackground utiliza uno o más nodos hijos :ref:`ParallaxLayer<class_ParallaxLayer>` para crear un efecto de paralaje. Cada :ref:`ParallaxLayer<class_ParallaxLayer>` puede moverse a una velocidad diferente usando :ref:`ParallaxLayer.motion_offset<class_ParallaxLayer_property_motion_offset>`. Esto crea una ilusión de profundidad en un juego 2D. Si no se usa con una :ref:`Camera2D<class_Camera2D>`, debes calcular manualmente :ref:`scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

\ **Nota:** Cada **ParallaxBackground** se dibuja en un :ref:`Viewport<class_Viewport>` específico y no se puede compartir entre múltiples :ref:`Viewport<class_Viewport>`\ s, consulta :ref:`CanvasLayer.custom_viewport<class_CanvasLayer_property_custom_viewport>`. Cuando se utilizan múltiples :ref:`Viewport<class_Viewport>`\ s, por ejemplo, en un juego de pantalla dividida, debes crear un **ParallaxBackground** individual para cada :ref:`Viewport<class_Viewport>` en el que quieras que se dibuje.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | layer                                                                                         | ``-100`` (overrides :ref:`CanvasLayer<class_CanvasLayer_property_layer>`) |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_base_offset<class_ParallaxBackground_property_scroll_base_offset>`               | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_base_scale<class_ParallaxBackground_property_scroll_base_scale>`                 | ``Vector2(1, 1)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`scroll_ignore_camera_zoom<class_ParallaxBackground_property_scroll_ignore_camera_zoom>` | ``false``                                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_limit_begin<class_ParallaxBackground_property_scroll_limit_begin>`               | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_limit_end<class_ParallaxBackground_property_scroll_limit_end>`                   | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_offset<class_ParallaxBackground_property_scroll_offset>`                         | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ParallaxBackground_property_scroll_base_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_base_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_base_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_base_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_base_offset**\ (\ )

El dezplazamiento de la posición base para todos los :ref:`ParallaxLayer<class_ParallaxLayer>` hijos.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_base_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_base_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxBackground_property_scroll_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_base_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_base_scale**\ (\ )

La escala de movimiento base para todos los :ref:`ParallaxLayer<class_ParallaxLayer>` hijos.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_ignore_camera_zoom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_ignore_camera_zoom** = ``false`` :ref:`🔗<class_ParallaxBackground_property_scroll_ignore_camera_zoom>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_camera_zoom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignore_camera_zoom**\ (\ )

Si es ``true``, los elementos en el :ref:`ParallaxLayer<class_ParallaxLayer>` hijo no se ven afectados por el nivel de zoom de la cámara.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_limit_begin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_limit_begin** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_limit_begin>`

.. rst-class:: classref-property-setget

- |void| **set_limit_begin**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_begin**\ (\ )

Límite de la parte superior izquierda para que comience el scrolling. Si la cámara está fuera de este límite, el fondo parará el scrolling. Debe ser inferior a :ref:`scroll_limit_end<class_ParallaxBackground_property_scroll_limit_end>` para que funcione.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_limit_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_limit_end** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_limit_end>`

.. rst-class:: classref-property-setget

- |void| **set_limit_end**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_end**\ (\ )

Límites inferiores de la derecha para el scrolling finalice. Si la cámara está fuera de este límite, el fondo dejará de parará el scrolling. Debe ser más alto que :ref:`scroll_limit_begin<class_ParallaxBackground_property_scroll_limit_begin>` para que funcione.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_offset**\ (\ )

El valor de scroll del Fondo de paralaje. Se calcula automáticamente cuando se usa una :ref:`Camera2D<class_Camera2D>`, pero puede usarse para manejar manualmente el scrolling cuando no hay ninguna cámara presente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
