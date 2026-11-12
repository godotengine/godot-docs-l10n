:github_url: hide

.. _class_ConcavePolygonShape2D:

ConcavePolygonShape2D
=====================

**Hereda:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de polilínea 2D utilizada para colisiones físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de polilínea 2D, pensada para su uso en física. Se utiliza internamente en :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` cuando está en modo :ref:`CollisionPolygon2D.BUILD_SEGMENTS<class_CollisionPolygon2D_constant_BUILD_SEGMENTS>`.

Siendo sólo una colección de segmentos de línea interconectados, **ConcavePolygonShape2D** es la forma 2D individual más libremente configurable. Puede utilizarse para formar polígonos de cualquier naturaleza, o incluso formas que no encierran un área. Sin embargo, **ConcavePolygonShape2D** es *hueco* incluso si los segmentos de línea interconectados encierran un área, lo que a menudo lo hace inadecuado para la física o la detección.

\ **Nota:** Cuando se utiliza para la colisión, **ConcavePolygonShape2D** está pensado para trabajar con nodos :ref:`CollisionShape2D<class_CollisionShape2D>` estáticos como :ref:`StaticBody2D<class_StaticBody2D>` y probablemente no se comportará bien para :ref:`CharacterBody2D<class_CharacterBody2D>`\ s o :ref:`RigidBody2D<class_RigidBody2D>`\ s en un modo que no sea Estático.

\ **Advertencia:** Los cuerpos físicos que son pequeños tienen la posibilidad de atravesar esta forma cuando se mueven rápido. Esto sucede porque en un fotograma, el cuerpo físico puede estar en el "exterior" de la forma, y en el siguiente fotograma puede estar "dentro" de ella. **ConcavePolygonShape2D** es hueco, por lo que no detectará una colisión.

\ **Rendimiento:** Debido a su complejidad, **ConcavePolygonShape2D** es la forma de colisión 2D más lenta para comprobar las colisiones. Su uso debe limitarse generalmente a la geometría del nivel. Si la polilínea está cerrada, se puede utilizar el modo :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` de :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, que descompone el polígono en polígonos convexos; consulta la documentación de :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` para obtener instrucciones.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`segments<class_ConcavePolygonShape2D_property_segments>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ConcavePolygonShape2D_property_segments:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **segments** = ``PackedVector2Array()`` :ref:`🔗<class_ConcavePolygonShape2D_property_segments>`

.. rst-class:: classref-property-setget

- |void| **set_segments**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_segments**\ (\ )

El array de puntos que componen los segmentos de línea de **ConcavePolygonShape2D**. El array (de longitud divisible por dos) se divide naturalmente en pares (un par para cada segmento); cada par consta del punto de inicio de un segmento y el punto final de un segmento.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
