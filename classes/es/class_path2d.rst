:github_url: hide

.. _class_Path2D:

Path2D
======

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Contiene un camino :ref:`Curve2D<class_Curve2D>` para que los nodos :ref:`PathFollow2D<class_PathFollow2D>` lo sigan.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Puede tener nodos hijos :ref:`PathFollow2D<class_PathFollow2D>` moviéndose a lo largo de la :ref:`Curve2D<class_Curve2D>`. Mira :ref:`PathFollow2D<class_PathFollow2D>` para más información sobre su uso.

\ **Nota:** La ruta se considera relativa a los nodos movidos (hijos de :ref:`PathFollow2D<class_PathFollow2D>`). Por lo tanto, la curva debería empezar normalmente con un vector cero (\ ``(0, 0)``).

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------+
   | :ref:`Curve2D<class_Curve2D>` | :ref:`curve<class_Path2D_property_curve>` |
   +-------------------------------+-------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Path2D_property_curve:

.. rst-class:: classref-property

:ref:`Curve2D<class_Curve2D>` **curve** :ref:`🔗<class_Path2D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve2D<class_Curve2D>`\ )
- :ref:`Curve2D<class_Curve2D>` **get_curve**\ (\ )

Una :ref:`Curve2D<class_Curve2D>` que describe el camino.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
