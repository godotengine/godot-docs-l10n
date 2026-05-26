:github_url: hide

.. _class_PathFollow2D:

PathFollow2D
============

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una muestra de puntos para un :ref:`Path2D<class_Path2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo toma su padre :ref:`Path2D<class_Path2D>`, y devuelve las coordenadas de un punto dentro de él, dada una distancia desde el primer vértice.

Es útil para hacer que otros nodos sigan una ruta, sin codificar el patrón de movimiento. Para ello, los nodos deben ser hijos de este nodo. Los nodos descendientes se moverán en consecuencia al establecer el :ref:`progress<class_PathFollow2D_property_progress>` en este nodo.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cubic_interp<class_PathFollow2D_property_cubic_interp>`     | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`h_offset<class_PathFollow2D_property_h_offset>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_PathFollow2D_property_loop>`                     | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`progress<class_PathFollow2D_property_progress>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`progress_ratio<class_PathFollow2D_property_progress_ratio>` | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`rotates<class_PathFollow2D_property_rotates>`               | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`v_offset<class_PathFollow2D_property_v_offset>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PathFollow2D_property_cubic_interp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cubic_interp** = ``true`` :ref:`🔗<class_PathFollow2D_property_cubic_interp>`

.. rst-class:: classref-property-setget

- |void| **set_cubic_interpolation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_cubic_interpolation**\ (\ )

Si es ``true``, la posición entre dos puntos cacheados se interpola cúbicamente, y linealmente en caso contrario.

Los puntos a lo largo de la :ref:`Curve2D<class_Curve2D>` del :ref:`Path2D<class_Path2D>` se precalculan antes de su uso, para cálculos más rápidos. El punto en el desplazamiento solicitado se calcula entonces interpolando entre dos puntos cacheados adyacentes. Esto puede presentar un problema si la curva hace giros bruscos, ya que los puntos cacheados pueden no seguir la curva lo suficientemente cerca.

Hay dos respuestas a este problema: o bien aumentar el número de puntos cacheados y aumentar el consumo de memoria, o bien hacer una interpolación cúbica entre dos puntos a costa de cálculos (ligeramente) más lentos.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

El nodo está desplazado a lo largo de la curva.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_PathFollow2D_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Si es ``true``, cualquier desplazamiento fuera de la longitud del camino se envolverá, en lugar de detenerse en los extremos. Úsalo para los caminos cíclicos.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress**\ (\ )

La distancia a lo largo de la ruta, en píxeles. Al cambiar este valor, la posición de este nodo se establece en un punto dentro de la ruta.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_progress_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress_ratio** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_progress_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_progress_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress_ratio**\ (\ )

La distancia a lo largo de la ruta como un número en el rango de 0.0 (para el primer vértice) a 1.0 (para el último). Esta es solo otra forma de expresar el progreso dentro de la ruta, ya que el desplazamiento proporcionado se multiplica internamente por la longitud de la ruta.

Solo se puede establecer u obtener si el **PathFollow2D** es hijo de un :ref:`Path2D<class_Path2D>` que forma parte del árbol de la escena, y si este :ref:`Path2D<class_Path2D>` tiene una :ref:`Curve2D<class_Curve2D>` con una longitud distinta de cero. De lo contrario, intentar establecer este campo imprimirá un error, y obtener este campo devolverá ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_rotates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rotates** = ``true`` :ref:`🔗<class_PathFollow2D_property_rotates>`

.. rst-class:: classref-property-setget

- |void| **set_rotates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rotating**\ (\ )

Si es ``true``, este nodo rota para seguir la ruta, con la dirección +X orientada hacia adelante en la ruta.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

El nodo está desplazado perpendicularmente a la curva.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
