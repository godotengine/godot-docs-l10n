:github_url: hide

.. _class_CanvasLayer:

CanvasLayer
===========

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`ParallaxBackground<class_ParallaxBackground>`

Un nodo utilizado para el renderizado independiente de objetos dentro de una escena 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los nodos derivados de :ref:`CanvasItem<class_CanvasItem>` que son hijos directos o indirectos de un **CanvasLayer** se dibujarán en esa capa. La capa es un índice numérico que define el orden de dibujo. La escena 2D predeterminada se renderiza con el índice ``0``, por lo que un **CanvasLayer** con índice ``-1`` se dibujará debajo, y un **CanvasLayer** con índice ``1`` se dibujará encima. Este orden se mantendrá independientemente del :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` de los nodos dentro de cada capa.

Los **CanvasLayer** pueden ocultarse y también pueden seguir opcionalmente el viewport. Esto los hace útiles para HUDs como superposiciones de barras de vida (en capas ``1`` y superiores) o fondos (en capas ``-1`` e inferiores).

\ **Nota:** Las :ref:`Window<class_Window>` incrustadas se colocan en la capa ``1024``. Los :ref:`CanvasItem<class_CanvasItem>` en las capas ``1025`` y superiores aparecen delante de las ventanas incrustadas.

\ **Nota:** Cada **CanvasLayer** se dibuja en un :ref:`Viewport<class_Viewport>` específico y no puede compartirse entre múltiples :ref:`Viewport<class_Viewport>`; consulta :ref:`custom_viewport<class_CanvasLayer_property_custom_viewport>`. Al usar múltiples :ref:`Viewport<class_Viewport>`, por ejemplo en un juego con pantalla dividida, necesitas crear un **CanvasLayer** individual para cada :ref:`Viewport<class_Viewport>` en el que quieras que se dibuje.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Transformaciones de la ventana gráfica y del lienzo <../tutorials/2d/2d_transforms>`

- :doc:`Capas del canvas <../tutorials/2d/canvas_layers>`

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Node<class_Node>`               | :ref:`custom_viewport<class_CanvasLayer_property_custom_viewport>`                 |                                   |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>` | ``false``                         |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`follow_viewport_scale<class_CanvasLayer_property_follow_viewport_scale>`     | ``1.0``                           |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`layer<class_CanvasLayer_property_layer>`                                     | ``1``                             |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`offset<class_CanvasLayer_property_offset>`                                   | ``Vector2(0, 0)``                 |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`rotation<class_CanvasLayer_property_rotation>`                               | ``0.0``                           |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`scale<class_CanvasLayer_property_scale>`                                     | ``Vector2(1, 1)``                 |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_CanvasLayer_property_transform>`                             | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`visible<class_CanvasLayer_property_visible>`                                 | ``true``                          |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`get_canvas<class_CanvasLayer_method_get_canvas>`\ (\ ) |const|                   |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_final_transform<class_CanvasLayer_method_get_final_transform>`\ (\ ) |const| |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | |void|                                | :ref:`hide<class_CanvasLayer_method_hide>`\ (\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | |void|                                | :ref:`show<class_CanvasLayer_method_show>`\ (\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_CanvasLayer_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ ) :ref:`🔗<class_CanvasLayer_signal_visibility_changed>`

Emitida cuando se modifica la visibilidad de la capa. Véase :ref:`visible<class_CanvasLayer_property_visible>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CanvasLayer_property_custom_viewport:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **custom_viewport** :ref:`🔗<class_CanvasLayer_property_custom_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_custom_viewport**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_custom_viewport**\ (\ )

El nodo personalizado :ref:`Viewport<class_Viewport>` asignado al **CanvasLayer**. Si ``null``, utiliza en su lugar la vista por defecto.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_follow_viewport_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_viewport_enabled** = ``false`` :ref:`🔗<class_CanvasLayer_property_follow_viewport_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_viewport**\ (\ )

Si está habilitado, el **CanvasLayer** mantiene su posición en el world space. Si está deshabilitado, el **CanvasLayer** se mantiene en una posición fija en la pantalla.

Junto con :ref:`follow_viewport_scale<class_CanvasLayer_property_follow_viewport_scale>`, esto puede usarse para un pseudo-3D effect.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_follow_viewport_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **follow_viewport_scale** = ``1.0`` :ref:`🔗<class_CanvasLayer_property_follow_viewport_scale>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_follow_viewport_scale**\ (\ )

Scales the layer when using :ref:`follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>`. Layers moving into the foreground should have increasing scales, while layers moving into the background should have decreasing scales.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **layer** = ``1`` :ref:`🔗<class_CanvasLayer_property_layer>`

.. rst-class:: classref-property-setget

- |void| **set_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer**\ (\ )

Índice de capa para el orden de dibujo. Los valores más bajos se dibujan detrás de los valores más altos.

\ **Nota:** Si varios CanvasLayers tienen el mismo índice de capa, los hijos :ref:`CanvasItem<class_CanvasItem>` de un CanvasLayer se dibujan detrás de los hijos :ref:`CanvasItem<class_CanvasItem>` del otro CanvasLayer. Qué CanvasLayer se dibuja al frente no es determinista.

\ **Nota:** El índice de capa debe estar entre :ref:`RenderingServer.CANVAS_LAYER_MIN<class_RenderingServer_constant_CANVAS_LAYER_MIN>` y :ref:`RenderingServer.CANVAS_LAYER_MAX<class_RenderingServer_constant_CANVAS_LAYER_MAX>` (inclusivo). Cualquier otro value se envolverá wrap alrededor.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_CanvasLayer_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

El desplazamiento de la capa base.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_CanvasLayer_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

La rotación de la capa en radianes.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_CanvasLayer_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

La escala de la capa.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_CanvasLayer_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

La transformación de la capa.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_CanvasLayer_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Si es ``false``, cualquier :ref:`CanvasItem<class_CanvasItem>` debajo de este **CanvasLayer** estará oculto.

A diferencia de :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`, la visibilidad de un **CanvasLayer** no se propaga a capas subyacentes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CanvasLayer_method_get_canvas:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_canvas**\ (\ ) |const| :ref:`🔗<class_CanvasLayer_method_get_canvas>`

Devuelve el RID del canvas usado por esta capa.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_get_final_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_final_transform**\ (\ ) |const| :ref:`🔗<class_CanvasLayer_method_get_final_transform>`

Returns the transform from the **CanvasLayer**\ s coordinate system to the :ref:`Viewport<class_Viewport>`\ s coordinate system.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_hide:

.. rst-class:: classref-method

|void| **hide**\ (\ ) :ref:`🔗<class_CanvasLayer_method_hide>`

Hides any :ref:`CanvasItem<class_CanvasItem>` under this **CanvasLayer**. This is equivalent to setting :ref:`visible<class_CanvasLayer_property_visible>` to ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_show:

.. rst-class:: classref-method

|void| **show**\ (\ ) :ref:`🔗<class_CanvasLayer_method_show>`

Shows any :ref:`CanvasItem<class_CanvasItem>` under this **CanvasLayer**. This is equivalent to setting :ref:`visible<class_CanvasLayer_property_visible>` to ``true``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
