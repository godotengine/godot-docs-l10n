:github_url: hide

.. _class_ConvexPolygonShape2D:

ConvexPolygonShape2D
====================

**Hereda:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de polígono convexo 2D utilizada para colisiones físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de polígono convexo 2D, destinada a ser utilizada en física. Se utiliza internamente en :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` cuando está en modo :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`.

\ **ConvexPolygonShape2D** es *sólido*, lo que significa que detecta colisiones de objetos que están completamente dentro de él, a diferencia de :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` que es hueco. Esto lo hace más adecuado tanto para la detección como para la física.

\ **Descomposición convexa:** Un polígono cóncavo puede dividirse en varios polígonos convexos. Esto permite que los cuerpos físicos dinámicos tengan colisiones cóncavas complejas (a un costo de rendimiento) y se puede lograr utilizando varios nodos **ConvexPolygonShape2D** o utilizando el nodo :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` en modo :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`. Para generar un polígono de colisión a partir de un sprite, selecciona el nodo :ref:`Sprite2D<class_Sprite2D>`, ve al menú **Sprite2D** que aparece encima de la ventana gráfica y elige **Crear nodo hermano Polygon2D**.

\ **Rendimiento:** **ConvexPolygonShape2D** es más rápido para comprobar las colisiones en comparación con :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, pero es más lento que las formas de colisión primitivas como :ref:`CircleShape2D<class_CircleShape2D>` y :ref:`RectangleShape2D<class_RectangleShape2D>`. Su uso generalmente debe limitarse a objetos de tamaño mediano que no pueden tener su colisión representada con precisión por formas primitivas.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_ConvexPolygonShape2D_property_points>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_point_cloud<class_ConvexPolygonShape2D_method_set_point_cloud>`\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ConvexPolygonShape2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_ConvexPolygonShape2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

La lista de vértices del polígono que forman una envolvente convexa. Puede estar en orden horario o antihorario.

\ **Advertencia:** Solo establece esta propiedad en una lista de puntos que realmente formen una envolvente convexa. Utiliza :ref:`set_point_cloud()<class_ConvexPolygonShape2D_method_set_point_cloud>` para generar la envolvente convexa de un conjunto arbitrario de puntos.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ConvexPolygonShape2D_method_set_point_cloud:

.. rst-class:: classref-method

|void| **set_point_cloud**\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_ConvexPolygonShape2D_method_set_point_cloud>`

Basándose en el conjunto de puntos proporcionados, esto asigna la propiedad :ref:`points<class_ConvexPolygonShape2D_property_points>` utilizando el algoritmo de envolvente convexa, eliminando todos los puntos innecesarios. Véase :ref:`Geometry2D.convex_hull()<class_Geometry2D_method_convex_hull>` para obtener más detalles.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
