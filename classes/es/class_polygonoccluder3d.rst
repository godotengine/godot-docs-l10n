:github_url: hide

.. _class_PolygonOccluder3D:

PolygonOccluder3D
=================

**Hereda:** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Forma de polígono 2D plano para usar con la ocultación por oclusión en :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**PolygonOccluder3D** almacena una forma de polígono que puede ser utilizada por el sistema de ocultación por oclusión del motor. Cuando se selecciona en el editor un :ref:`OccluderInstance3D<class_OccluderInstance3D>` con un **PolygonOccluder3D**, aparecerá un editor en la parte superior del viewport 3D para que puedas añadir/eliminar puntos. Todos los puntos deben estar situados en el mismo plano 2D, lo que significa que no es posible crear formas 3D arbitrarias con un único **PolygonOccluder3D**. Para usar formas 3D arbitrarias como oclusores, utiliza en su lugar :ref:`ArrayOccluder3D<class_ArrayOccluder3D>` o la función de procesado de :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

Véase la documentación de :ref:`OccluderInstance3D<class_OccluderInstance3D>` para obtener instrucciones sobre cómo configurar la ocultación por oclusión.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Occlusion Culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_PolygonOccluder3D_property_polygon>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PolygonOccluder3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_PolygonOccluder3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

El polígono a utilizar para la ocultación por oclusión. El polígono puede ser convexo o cóncavo, pero debe tener el menor número de puntos posible para maximizar el rendimiento.

El polígono *no* debe tener líneas que se crucen. De lo contrario, la triangulación fallará (con un mensaje de error impreso).

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
