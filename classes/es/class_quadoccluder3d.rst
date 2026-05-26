:github_url: hide

.. _class_QuadOccluder3D:

QuadOccluder3D
==============

**Hereda:** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Forma de plano para usar con la oclusión de recorte en :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**QuadOccluder3D** almacena una forma de plano que puede ser utilizada por el sistema de oclusión de recorte del motor. Véase también :ref:`PolygonOccluder3D<class_PolygonOccluder3D>` si necesita personalizar la forma del quad.

Véase la documentación de :ref:`OccluderInstance3D<class_OccluderInstance3D>` para obtener instrucciones sobre cómo configurar la oclusión de recorte.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Occlusion Culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_QuadOccluder3D_property_size>` | ``Vector2(1, 1)`` |
   +-------------------------------+-------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_QuadOccluder3D_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(1, 1)`` :ref:`🔗<class_QuadOccluder3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

El tamaño del quad en unidades 3D.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
