:github_url: hide

.. _class_ParallaxLayer:

ParallaxLayer
=============

**Obsoleto:** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una capa de scrolling de paralaje para ser usada con :ref:`ParallaxBackground<class_ParallaxBackground>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una Capa de paralaje debe ser el hijo de un nodo :ref:`ParallaxBackground<class_ParallaxBackground>`. Cada ParallaxLayer puede ser configurado para moverse a diferentes velocidades relativas al movimiento de la cámara o al valor :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

Los hijos de este nodo se verán afectados por su desplazamiento.

\ **Nota:** Cualquier cambio en la posición y escala de este nodo realizado después de que entre en la escena será ignorado.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_mirroring<class_ParallaxLayer_property_motion_mirroring>` | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_offset<class_ParallaxLayer_property_motion_offset>`       | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_scale<class_ParallaxLayer_property_motion_scale>`         | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                             | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ParallaxLayer_property_motion_mirroring:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_mirroring** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_mirroring>`

.. rst-class:: classref-property-setget

- |void| **set_mirroring**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_mirroring**\ (\ )

The interval, in pixels, at which the **ParallaxLayer** is drawn repeatedly. Useful for creating an infinitely scrolling background. If an axis is set to ``0``, the **ParallaxLayer** will be drawn only once along that direction.

\ **Note:** If you want the repetition to pixel-perfect match a :ref:`Texture2D<class_Texture2D>` displayed by a child node, you should account for any scale applied to the texture when defining this interval. For example, if you use a child :ref:`Sprite2D<class_Sprite2D>` scaled to ``0.5`` to display a 600×600 texture, and want this sprite to be repeated continuously horizontally, you should set the mirroring to ``Vector2(300, 0)``.

\ **Note:** If the length of the viewport axis is bigger than twice the repeated axis size, it will not repeat infinitely, as the parallax layer only draws 2 instances of the layer at any given time. The visibility window is calculated from the parent :ref:`ParallaxBackground<class_ParallaxBackground>`'s position, not the layer's own position. So, if you use mirroring, **do not** change the **ParallaxLayer** position relative to its parent. Instead, if you need to adjust the background's position, set the :ref:`CanvasLayer.offset<class_CanvasLayer_property_offset>` property in the parent :ref:`ParallaxBackground<class_ParallaxBackground>`.

\ **Note:** Despite the name, the layer will not be mirrored, it will only be repeated.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_offset>`

.. rst-class:: classref-property-setget

- |void| **set_motion_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_offset**\ (\ )

El desplazamiento de la ParallaxLayer en relación con el ParallaxBackground del padre :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxLayer_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_scale**\ (\ )

Multiplica el movimiento de la ParallaxLayer. Si un eje se establece en ``0``, no se hará scroll.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
