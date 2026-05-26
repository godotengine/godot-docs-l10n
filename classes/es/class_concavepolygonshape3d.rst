:github_url: hide

.. _class_ConcavePolygonShape3D:

ConcavePolygonShape3D
=====================

**Hereda:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de malla tridimensional utilizada para colisiones físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de malla triangular (trimesh) 3D, destinada a su uso en física. Normalmente se utiliza para proporcionar una forma a un :ref:`CollisionShape3D<class_CollisionShape3D>`.

Al ser simplemente una colección de triángulos interconectados, **ConcavePolygonShape3D** es la forma 3D individual más configurable. Puede utilizarse para formar poliedros de cualquier naturaleza, o incluso formas que no encierran un volumen. Sin embargo, **ConcavePolygonShape3D** es *hueco* incluso si los triángulos interconectados encierran un volumen, lo que a menudo lo hace inadecuado para la física o la detección.

\ **Nota:** Cuando se utiliza para colisiones, **ConcavePolygonShape3D** está diseñado para funcionar con nodos :ref:`CollisionShape3D<class_CollisionShape3D>` estáticos como :ref:`StaticBody3D<class_StaticBody3D>` y es probable que no se comporte correctamente con :ref:`CharacterBody3D<class_CharacterBody3D>` o :ref:`RigidBody3D<class_RigidBody3D>` en un modo que no sea estático.

\ **Advertencia:** Los cuerpos físicos que son pequeños tienen la posibilidad de atravesar (clip) esta forma cuando se mueven rápido. Esto sucede porque en un fotograma, el cuerpo físico puede estar en el "exterior" de la forma, y en el siguiente fotograma puede estar "dentro" de ella. Al ser **ConcavePolygonShape3D** hueco, no detectará la colisión.

\ **Rendimiento:** Debido a su complejidad, **ConcavePolygonShape3D** es la forma de colisión 3D más lenta para comprobar colisiones. Su uso debe limitarse generalmente a la geometría del nivel. Para geometría convexa, debe usarse :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`. Para cuerpos físicos dinámicos que necesiten colisión cóncava, se pueden usar varios :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` para representar su colisión mediante descomposición convexa; consulta la documentación de :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` para obtener instrucciones.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Pruebas de Física en 3D <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`backface_collision<class_ConcavePolygonShape3D_property_backface_collision>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_faces<class_ConcavePolygonShape3D_method_get_faces>`\ (\ ) |const|                                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_faces<class_ConcavePolygonShape3D_method_set_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ConcavePolygonShape3D_property_backface_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **backface_collision** = ``false`` :ref:`🔗<class_ConcavePolygonShape3D_property_backface_collision>`

.. rst-class:: classref-property-setget

- |void| **set_backface_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_backface_collision_enabled**\ (\ )

Si se establece en ``true``, las colisiones ocurren en ambos lados de las caras de la forma cóncava. De lo contrario, ocurren solo a lo largo de las normales de las caras.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ConcavePolygonShape3D_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_ConcavePolygonShape3D_method_get_faces>`

Returns the faces of the trimesh shape as an array of vertices. The array (of length divisible by three) is naturally divided into triples; each triple of vertices defines a triangle.

.. rst-class:: classref-item-separator

----

.. _class_ConcavePolygonShape3D_method_set_faces:

.. rst-class:: classref-method

|void| **set_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_ConcavePolygonShape3D_method_set_faces>`

Establece las caras de la forma trimesh a partir de un array de vértices. El array ``faces`` debe estar compuesto por triples de forma que cada triple de vértices defina un triángulo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
