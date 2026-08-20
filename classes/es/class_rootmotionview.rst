:github_url: hide

.. _class_RootMotionView:

RootMotionView
==============

**Hereda:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Editor-only helper for setting up root motion in :ref:`AnimationMixer<class_AnimationMixer>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

*Root motion* refers to an animation technique where a mesh's skeleton is used to give impulse to a character. When working with 3D animations, a popular technique is for animators to use the root skeleton bone to give motion to the rest of the skeleton. This allows animating characters in a way where steps actually match the floor below. It also allows precise interaction with objects during cinematics. See also :ref:`AnimationMixer<class_AnimationMixer>`.

\ **Note:** **RootMotionView** is only visible in the editor. It will be hidden automatically in the running project.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Using AnimationTree - Root motion <../tutorials/animation/animation_tree.html#root-motion>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`animation_path<class_RootMotionView_property_animation_path>` | ``NodePath("")``          |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`cell_size<class_RootMotionView_property_cell_size>`           | ``1.0``                   |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`Color<class_Color>`       | :ref:`color<class_RootMotionView_property_color>`                   | ``Color(0.5, 0.5, 1, 1)`` |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`radius<class_RootMotionView_property_radius>`                 | ``10.0``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`bool<class_bool>`         | :ref:`zero_y<class_RootMotionView_property_zero_y>`                 | ``true``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RootMotionView_property_animation_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **animation_path** = ``NodePath("")`` :ref:`🔗<class_RootMotionView_property_animation_path>`

.. rst-class:: classref-property-setget

- |void| **set_animation_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_animation_path**\ (\ )

Path to an :ref:`AnimationMixer<class_AnimationMixer>` node to use as a basis for root motion.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``1.0`` :ref:`🔗<class_RootMotionView_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

El tamaño de celda de la cuadrícula en unidades 3D.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0.5, 0.5, 1, 1)`` :ref:`🔗<class_RootMotionView_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

El color de la cuadrícula.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_RootMotionView_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

The grid's radius in 3D units. The grid's opacity will fade gradually as the distance from the origin increases until this :ref:`radius<class_RootMotionView_property_radius>` is reached.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_zero_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **zero_y** = ``true`` :ref:`🔗<class_RootMotionView_property_zero_y>`

.. rst-class:: classref-property-setget

- |void| **set_zero_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_zero_y**\ (\ )

If ``true``, the grid's points will all be on the same Y coordinate (*local* Y = 0). If ``false``, the points' original Y coordinate is preserved.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
