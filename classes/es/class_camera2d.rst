:github_url: hide

.. _class_Camera2D:

Camera2D
========

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo de cámara para escenas 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Nodo de cámara para escenas 2D. Fuerza a la pantalla (capa actual) a desplazarse siguiendo a este nodo. Esto hace que sea más fácil (y rápido) programar escenas con desplazamiento que cambiar manualmente la posición de los nodos basados en :ref:`CanvasItem<class_CanvasItem>`.

Las cámaras se registran en el nodo :ref:`Viewport<class_Viewport>` más cercano (al ascender por el árbol). Solo puede haber una cámara activa por viewport. Si no hay ningún viewport disponible al ascender por el árbol, la cámara se registrará en el viewport global.

Este nodo está pensado para ser una ayuda simple para empezar rápidamente, pero es posible que se desee más funcionalidad para cambiar cómo funciona la cámara. Para crear tu propio nodo de cámara personalizado, hereda de :ref:`Node2D<class_Node2D>` y cambia la transformación del lienzo estableciendo :ref:`Viewport.canvas_transform<class_Viewport_property_canvas_transform>` en :ref:`Viewport<class_Viewport>` (puedes obtener el :ref:`Viewport<class_Viewport>` actual usando :ref:`Node.get_viewport()<class_Node_method_get_viewport>`).

Ten en cuenta que la :ref:`Node2D.global_position<class_Node2D_property_global_position>` del nodo **Camera2D** no representa la posición real de la pantalla, la cual puede diferir debido al suavizado o límites aplicados. Puedes usar :ref:`get_screen_center_position()<class_Camera2D_method_get_screen_center_position>` para obtener la posición real. Lo mismo ocurre con la :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>` del nodo, que puede ser diferente debido al suavizado de rotación aplicado. Puedes usar :ref:`get_screen_rotation()<class_Camera2D_method_get_screen_rotation>` para obtener la rotación actual de la pantalla.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Plataformas en 2D <https://godotengine.org/asset-library/asset/2727>`__

- `Demo Isométrica en 2D <https://godotengine.org/asset-library/asset/2718>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`AnchorMode<enum_Camera2D_AnchorMode>`                           | :ref:`anchor_mode<class_Camera2D_property_anchor_mode>`                               | ``1``             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Node<class_Node>`                                               | :ref:`custom_viewport<class_Camera2D_property_custom_viewport>`                       |                   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`                 | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`drag_horizontal_enabled<class_Camera2D_property_drag_horizontal_enabled>`       | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_horizontal_offset<class_Camera2D_property_drag_horizontal_offset>`         | ``0.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>`                     | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`                   | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`                       | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`drag_vertical_enabled<class_Camera2D_property_drag_vertical_enabled>`           | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_vertical_offset<class_Camera2D_property_drag_vertical_offset>`             | ``0.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`editor_draw_drag_margin<class_Camera2D_property_editor_draw_drag_margin>`       | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`editor_draw_limits<class_Camera2D_property_editor_draw_limits>`                 | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`editor_draw_screen<class_Camera2D_property_editor_draw_screen>`                 | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`enabled<class_Camera2D_property_enabled>`                                       | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`ignore_rotation<class_Camera2D_property_ignore_rotation>`                       | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`                             | ``10000000``      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`limit_enabled<class_Camera2D_property_limit_enabled>`                           | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_left<class_Camera2D_property_limit_left>`                                 | ``-10000000``     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_right<class_Camera2D_property_limit_right>`                               | ``10000000``      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`limit_smoothed<class_Camera2D_property_limit_smoothed>`                         | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_top<class_Camera2D_property_limit_top>`                                   | ``-10000000``     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`offset<class_Camera2D_property_offset>`                                         | ``Vector2(0, 0)`` |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`position_smoothing_speed<class_Camera2D_property_position_smoothing_speed>`     | ``5.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` | :ref:`process_callback<class_Camera2D_property_process_callback>`                     | ``1``             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>` | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`rotation_smoothing_speed<class_Camera2D_property_rotation_smoothing_speed>`     | ``5.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`zoom<class_Camera2D_property_zoom>`                                             | ``Vector2(1, 1)`` |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`align<class_Camera2D_method_align>`\ (\ )                                                                                                            |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_update_scroll<class_Camera2D_method_force_update_scroll>`\ (\ )                                                                                |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_drag_margin<class_Camera2D_method_get_drag_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                  |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_limit<class_Camera2D_method_get_limit>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                              |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_screen_center_position<class_Camera2D_method_get_screen_center_position>`\ (\ ) |const|                                                          |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_screen_rotation<class_Camera2D_method_get_screen_rotation>`\ (\ ) |const|                                                                        |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_target_position<class_Camera2D_method_get_target_position>`\ (\ ) |const|                                                                        |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_current<class_Camera2D_method_is_current>`\ (\ ) |const|                                                                                          |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`make_current<class_Camera2D_method_make_current>`\ (\ )                                                                                              |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`reset_smoothing<class_Camera2D_method_reset_smoothing>`\ (\ )                                                                                        |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_drag_margin<class_Camera2D_method_set_drag_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_limit<class_Camera2D_method_set_limit>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )                       |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Camera2D_AnchorMode:

.. rst-class:: classref-enumeration

enum **AnchorMode**: :ref:`🔗<enum_Camera2D_AnchorMode>`

.. _class_Camera2D_constant_ANCHOR_MODE_FIXED_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **ANCHOR_MODE_FIXED_TOP_LEFT** = ``0``

La posición de la cámara está fijada de tal manera que la esquina superior izquierda está siempre en el origen.

.. _class_Camera2D_constant_ANCHOR_MODE_DRAG_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **ANCHOR_MODE_DRAG_CENTER** = ``1``

La posición de la cámara tiene en cuenta los desplazamientos verticales/horizontales y el tamaño de la pantalla.

.. rst-class:: classref-item-separator

----

.. _enum_Camera2D_Camera2DProcessCallback:

.. rst-class:: classref-enumeration

enum **Camera2DProcessCallback**: :ref:`🔗<enum_Camera2D_Camera2DProcessCallback>`

.. _class_Camera2D_constant_CAMERA2D_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **CAMERA2D_PROCESS_PHYSICS** = ``0``

La cámara se actualiza al mismo tiempo que la física (mira :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Camera2D_constant_CAMERA2D_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **CAMERA2D_PROCESS_IDLE** = ``1``

La cámara se actualiza en cada frame de imagen (mira :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Camera2D_property_anchor_mode:

.. rst-class:: classref-property

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **anchor_mode** = ``1`` :ref:`🔗<class_Camera2D_property_anchor_mode>`

.. rst-class:: classref-property-setget

- |void| **set_anchor_mode**\ (\ value\: :ref:`AnchorMode<enum_Camera2D_AnchorMode>`\ )
- :ref:`AnchorMode<enum_Camera2D_AnchorMode>` **get_anchor_mode**\ (\ )

El punto de anclaje de Camera2D.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_custom_viewport:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **custom_viewport** :ref:`🔗<class_Camera2D_property_custom_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_custom_viewport**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_custom_viewport**\ (\ )

El nodo personalizado de :ref:`Viewport<class_Viewport>` unido a **Camera2D**. Si ``null`` o no es un :ref:`Viewport<class_Viewport>`, usa el viewport por defecto en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_bottom_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_bottom_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_bottom_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Margen inferior necesario para arrastrar la cámara. Un valor de ``1`` hace que la cámara se mueva solo cuando alcance el borde inferior de la pantalla.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_horizontal_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_horizontal_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_drag_horizontal_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_horizontal_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_horizontal_enabled**\ (\ )

Si es ``true``, la cámara solo se mueve cuando alcanza los márgenes de arrastre horizontal (izquierdo y derecho). Si es ``false``, la cámara se mueve horizontalmente independientemente de los márgenes.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_horizontal_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_horizontal_offset** = ``0.0`` :ref:`🔗<class_Camera2D_property_drag_horizontal_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_horizontal_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_horizontal_offset**\ (\ )

El desplazamiento de arrastre horizontal relativo de la cámara entre los márgenes de arrastre derecho (``-1``) e izquierdo (``1``).

\ **Nota:** Se utiliza para establecer el desplazamiento de arrastre horizontal inicial, determinar el desplazamiento actual u forzar el desplazamiento actual. No se actualiza automáticamente cuando :ref:`drag_horizontal_enabled<class_Camera2D_property_drag_horizontal_enabled>` es ``true`` o se modifican los márgenes de arrastre.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_left_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_left_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_left_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Margen izquierdo necesario para arrastrar la cámara. Un valor de ``1`` hace que la cámara se mueva solo cuando alcance el borde izquierdo de la pantalla.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_right_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_right_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_right_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Right margin needed to drag the camera. A value of ``1`` makes the camera move only when reaching the right edge of the screen.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_top_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_top_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_top_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Top margin needed to drag the camera. A value of ``1`` makes the camera move only when reaching the top edge of the screen.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_vertical_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_vertical_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_drag_vertical_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_vertical_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_vertical_enabled**\ (\ )

If ``true``, the camera only moves when reaching the vertical (top and bottom) drag margins. If ``false``, the camera moves vertically regardless of the drag margins.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_vertical_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_vertical_offset** = ``0.0`` :ref:`🔗<class_Camera2D_property_drag_vertical_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_vertical_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_vertical_offset**\ (\ )

El desplazamiento vertical relativo de arrastre (drag offset) de la cámara entre los márgenes de arrastre inferior (``-1``) y superior (``1``).

\ **Nota:** Se utiliza para establecer el desplazamiento vertical inicial de arrastre; determinar el desplazamiento actual; o forzar el desplazamiento actual. No se actualiza automáticamente cuando :ref:`drag_vertical_enabled<class_Camera2D_property_drag_vertical_enabled>` es ``true`` o se cambian los márgenes de arrastre.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_drag_margin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_drag_margin** = ``false`` :ref:`🔗<class_Camera2D_property_editor_draw_drag_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_margin_drawing_enabled**\ (\ )

Si es ``true``, dibuja el rectángulo de margen de arrastre de la cámara en el editor.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_limits:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_limits** = ``false`` :ref:`🔗<class_Camera2D_property_editor_draw_limits>`

.. rst-class:: classref-property-setget

- |void| **set_limit_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_drawing_enabled**\ (\ )

Si es ``true``, dibuja el rectángulo de límites de la cámara en el editor.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_screen:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_screen** = ``true`` :ref:`🔗<class_Camera2D_property_editor_draw_screen>`

.. rst-class:: classref-property-setget

- |void| **set_screen_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_screen_drawing_enabled**\ (\ )

Si es ``true``, dibuja el rectángulo de la pantalla de la cámara en el editor.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_Camera2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Controla si la cámara puede estar activa o no. Si es ``true``, el **Camera2D** se convertirá en la cámara principal cuando entre en el árbol de escenas y no haya una cámara activa actualmente (ver :ref:`Viewport.get_camera_2d()<class_Viewport_method_get_camera_2d>`).

Cuando la cámara está activa actualmente y :ref:`enabled<class_Camera2D_property_enabled>` se establece en ``false``, el siguiente **Camera2D** habilitado en el árbol de escenas pasará a estar activo.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_ignore_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_rotation** = ``true`` :ref:`🔗<class_Camera2D_property_ignore_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_rotation**\ (\ )

Si es ``true``, la vista renderizada de la cámara no se ve afectada por su :ref:`Node2D.rotation<class_Node2D_property_rotation>` ni por su :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_bottom** = ``10000000`` :ref:`🔗<class_Camera2D_property_limit_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Bottom scroll limit in pixels. The camera stops moving when reaching this value, but :ref:`offset<class_Camera2D_property_offset>` can push the view past the limit.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **limit_enabled** = ``true`` :ref:`🔗<class_Camera2D_property_limit_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_limit_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_enabled**\ (\ )

Si es ``true``, los límites serán habilitados. Deshabilitar esto permitirá que la cámara se enfoque en cualquier lugar, por lo que las cuatro propiedades ``limit_*`` no funcionarán.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_left** = ``-10000000`` :ref:`🔗<class_Camera2D_property_limit_left>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Left scroll limit in pixels. The camera stops moving when reaching this value, but :ref:`offset<class_Camera2D_property_offset>` can push the view past the limit.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_right** = ``10000000`` :ref:`🔗<class_Camera2D_property_limit_right>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Right scroll limit in pixels. The camera stops moving when reaching this value, but :ref:`offset<class_Camera2D_property_offset>` can push the view past the limit.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_smoothed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **limit_smoothed** = ``false`` :ref:`🔗<class_Camera2D_property_limit_smoothed>`

.. rst-class:: classref-property-setget

- |void| **set_limit_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_smoothing_enabled**\ (\ )

Si es ``true``, la cámara se detiene suavemente cuando alcanza sus límites.

Esta propiedad no tiene efecto si :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` es ``false``.

\ **Nota:** Para actualizar inmediatamente la posición de la cámara para que esté dentro de los límites sin suavizado, incluso con este ajuste habilitado, invoque :ref:`reset_smoothing()<class_Camera2D_method_reset_smoothing>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_top** = ``-10000000`` :ref:`🔗<class_Camera2D_property_limit_top>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Top scroll limit in pixels. The camera stops moving when reaching this value, but :ref:`offset<class_Camera2D_property_offset>` can push the view past the limit.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Camera2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

The camera's relative offset. Useful for looking around or camera shake animations. The offsetted camera can go past the limits defined in :ref:`limit_top<class_Camera2D_property_limit_top>`, :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`, :ref:`limit_left<class_Camera2D_property_limit_left>` and :ref:`limit_right<class_Camera2D_property_limit_right>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_position_smoothing_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **position_smoothing_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_position_smoothing_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_position_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_position_smoothing_enabled**\ (\ )

If ``true``, the camera's view smoothly moves towards its target position at :ref:`position_smoothing_speed<class_Camera2D_property_position_smoothing_speed>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_position_smoothing_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **position_smoothing_speed** = ``5.0`` :ref:`🔗<class_Camera2D_property_position_smoothing_speed>`

.. rst-class:: classref-property-setget

- |void| **set_position_smoothing_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_position_smoothing_speed**\ (\ )

Speed in pixels per second of the camera's smoothing effect when :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_process_callback:

.. rst-class:: classref-property

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Camera2D_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_process_callback**\ (\ value\: :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>`\ )
- :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **get_process_callback**\ (\ )

The camera's process callback.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_rotation_smoothing_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rotation_smoothing_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_rotation_smoothing_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rotation_smoothing_enabled**\ (\ )

If ``true``, the camera's view smoothly rotates, via asymptotic smoothing, to align with its target rotation at :ref:`rotation_smoothing_speed<class_Camera2D_property_rotation_smoothing_speed>`.

\ **Note:** This property has no effect if :ref:`ignore_rotation<class_Camera2D_property_ignore_rotation>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_rotation_smoothing_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_smoothing_speed** = ``5.0`` :ref:`🔗<class_Camera2D_property_rotation_smoothing_speed>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_smoothing_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_smoothing_speed**\ (\ )

The angular, asymptotic speed of the camera's rotation smoothing effect when :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_zoom:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **zoom** = ``Vector2(1, 1)`` :ref:`🔗<class_Camera2D_property_zoom>`

.. rst-class:: classref-property-setget

- |void| **set_zoom**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_zoom**\ (\ )

El zoom de la cámara. Los valores más altos acercan más la vista. Por ejemplo, un zoom de ``Vector2(2.0, 2.0)`` acercará el doble en cada eje (la vista cubre un área cuatro veces más pequeña). En contraste, un zoom de ``Vector2(0.5, 0.5)`` alejará el doble en cada eje (la vista cubre un área cuatro veces más grande). Generalmente, los componentes X e Y siempre deben establecerse con el mismo valor, a menos que desees estirar la vista de la cámara.

\ **Nota:** :ref:`FontFile.oversampling<class_FontFile_property_oversampling>` *no* tiene en cuenta el zoom de **Camera2D**. Esto significa que acercar o alejar la cámara hará que las fuentes de mapa de bits y las fuentes dinámicas rasterizadas (no MSDF) aparezcan borrosas o pixeladas, a menos que la fuente forme parte de un :ref:`CanvasLayer<class_CanvasLayer>` que haga que ignore el zoom de la cámara. Para asegurar que el texto permanezca nítido independientemente del zoom, puedes habilitar el renderizado de fuentes MSDF activando :ref:`ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field<class_ProjectSettings_property_gui/theme/default_font_multichannel_signed_distance_field>` (se aplica solo a la fuente predeterminada del proyecto), o habilitando **Campo de Distancia Firmado Multicanal** en las opciones de importación de una DynamicFont para fuentes personalizadas. En las fuentes del sistema, se puede habilitar :ref:`SystemFont.multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` en el inspector.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Camera2D_method_align:

.. rst-class:: classref-method

|void| **align**\ (\ ) :ref:`🔗<class_Camera2D_method_align>`

Alinea la cámara al nodo rastreado.

\ **Nota:** No es necesario llamar a :ref:`force_update_scroll()<class_Camera2D_method_force_update_scroll>` después de este método.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_force_update_scroll:

.. rst-class:: classref-method

|void| **force_update_scroll**\ (\ ) :ref:`🔗<class_Camera2D_method_force_update_scroll>`

Obliga a la cámara a actualizar el scroll inmediatamente.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_drag_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Camera2D_method_get_drag_margin>`

Devuelve el margen del :ref:`Side<enum_@GlobalScope_Side>` especificado. Véase también :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`, :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`, :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>` y :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_limit:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Camera2D_method_get_limit>`

Devuelve el límite de la cámara para el :ref:`Side<enum_@GlobalScope_Side>` especificado. Véase también :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`, :ref:`limit_top<class_Camera2D_property_limit_top>`, :ref:`limit_left<class_Camera2D_property_limit_left>` y :ref:`limit_right<class_Camera2D_property_limit_right>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_screen_center_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_screen_center_position**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_screen_center_position>`

Devuelve el centro de la pantalla desde el punto de vista de esta cámara, en coordenadas globales.

\ **Nota:** La posición exacta a la que se dirige la cámara puede ser diferente. Véase :ref:`get_target_position()<class_Camera2D_method_get_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_screen_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_screen_rotation**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_screen_rotation>`

Devuelve la rotación actual de la pantalla desde el punto de vista de esta cámara.

\ **Nota:** La rotación de la pantalla puede ser diferente de :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>` si la cámara está rotando suavemente debido a :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_target_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_target_position**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_target_position>`

Devuelve la posición objetivo de esta cámara, en coordenadas globales.

\ **Nota:** El valor devuelto no es el mismo que :ref:`Node2D.global_position<class_Node2D_property_global_position>`, ya que se ve afectado por las propiedades de arrastre (drag). Tampoco es el mismo que la posición actual si :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` es ``true`` (ver :ref:`get_screen_center_position()<class_Camera2D_method_get_screen_center_position>`).

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_is_current>`

Devuelve ``true`` si esta **Camera2D** es la cámara activa (véase :ref:`Viewport.get_camera_2d()<class_Viewport_method_get_camera_2d>`).

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_Camera2D_method_make_current>`

Fuerza a esta **Camera2D** a convertirse en la activa. :ref:`enabled<class_Camera2D_property_enabled>` debe ser ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_reset_smoothing:

.. rst-class:: classref-method

|void| **reset_smoothing**\ (\ ) :ref:`🔗<class_Camera2D_method_reset_smoothing>`

Establece la posición de la cámara inmediatamente a su destino de suavizado actual.

Este método no tiene ningún efecto si :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` es ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_set_drag_margin:

.. rst-class:: classref-method

|void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera2D_method_set_drag_margin>`

Establece el margen del :ref:`Side<enum_@GlobalScope_Side>` especificado. Véase también :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`, :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`, :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>` y :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_set_limit:

.. rst-class:: classref-method

|void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Camera2D_method_set_limit>`

Establece el límite de la cámara para el :ref:`Side<enum_@GlobalScope_Side>` especificado. Véase también :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`, :ref:`limit_top<class_Camera2D_property_limit_top>`, :ref:`limit_left<class_Camera2D_property_limit_left>` y :ref:`limit_right<class_Camera2D_property_limit_right>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
