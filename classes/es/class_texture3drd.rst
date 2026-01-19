:github_url: hide

.. _class_Texture3DRD:

Texture3DRD
===========

**Hereda:** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Textura para 3D que está vinculada a una textura creada en el :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This texture class allows you to use a 3D texture created directly on the :ref:`RenderingDevice<class_RenderingDevice>` as a texture for materials, meshes, etc.

\ **Note:** **Texture3DRD** is intended for low-level usage with :ref:`RenderingDevice<class_RenderingDevice>`. For most use cases, use :ref:`Texture3D<class_Texture3D>` instead.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Compute Texture demo <https://godotengine.org/asset-library/asset/2764>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`texture_rd_rid<class_Texture3DRD_property_texture_rd_rid>` |
   +-----------------------+------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Texture3DRD_property_texture_rd_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **texture_rd_rid** :ref:`🔗<class_Texture3DRD_property_texture_rd_rid>`

.. rst-class:: classref-property-setget

- |void| **set_texture_rd_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_texture_rd_rid**\ (\ )

El RID del objeto de textura creado en :ref:`RenderingDevice<class_RenderingDevice>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
