:github_url: hide

.. meta::
	:keywords: color

.. _class_CanvasModulate:

CanvasModulate
==============

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo que aplica un tinte de color a un canvas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**CanvasModulate** aplica un tinte de color a todos los nodos en un canvas. Solo se puede usar uno para aplicar un tinte a un canvas, pero los :ref:`CanvasLayer<class_CanvasLayer>` se pueden usar para el render de elementos de forma independiente.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Luces y sombras 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_CanvasModulate_property_color>` | ``Color(1, 1, 1, 1)`` |
   +---------------------------+---------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CanvasModulate_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CanvasModulate_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

El color del tinte a aplicar.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
