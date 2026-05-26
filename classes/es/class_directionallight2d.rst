:github_url: hide

.. meta::
	:keywords: sun

.. _class_DirectionalLight2D:

DirectionalLight2D
==================

**Hereda:** :ref:`Light2D<class_Light2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Luz direccional 2D desde la distancia.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una luz direccional es un tipo de nodo :ref:`Light2D<class_Light2D>` que modela un número infinito de rayos paralelos que cubren toda la escena. Se utiliza para luces de gran intensidad que se ubican lejos de la escena (por ejemplo: para modelar la luz del sol o la luz de la luna).

La luz se emite en la dirección +Y de la base global del nodo. Para una luz sin rotar, esto significa que la luz se emite hacia abajo. La posición del nodo se ignora; solo se usa la base para determinar la dirección de la luz.

\ **Nota:** **DirectionalLight2D** no soporta máscaras de exclusión de luz (pero sí soporta máscaras de exclusión de sombra). Siempre iluminará los nodos 2D, independientemente de la :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` del nodo 2D.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Luces y sombras 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`height<class_DirectionalLight2D_property_height>`             | ``0.0``     |
   +---------------------------+---------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`max_distance<class_DirectionalLight2D_property_max_distance>` | ``10000.0`` |
   +---------------------------+---------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_DirectionalLight2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.0`` :ref:`🔗<class_DirectionalLight2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

La altura de la luz. Se utiliza con el mapeo normal 2D. Rango de 0 (paralelo al plano) a 1 (perpendicular al plano).

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight2D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``10000.0`` :ref:`🔗<class_DirectionalLight2D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

La distancia máxima desde el centro de la cámara a la que los objetos pueden estar antes de que sus sombras sean eliminadas (en píxeles). Disminuir este valor puede evitar que los objetos situados fuera de la cámara proyecten sombras (al mismo tiempo que mejora el rendimiento). :ref:`Camera2D.zoom<class_Camera2D_property_zoom>` no es tomado en cuenta por :ref:`max_distance<class_DirectionalLight2D_property_max_distance>`, lo que significa que con valores de zoom más altos, las sombras parecerán desvanecerse antes al hacer zoom en un punto dado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
