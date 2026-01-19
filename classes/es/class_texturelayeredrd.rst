:github_url: hide

.. _class_TextureLayeredRD:

TextureLayeredRD
================

**Hereda:** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`Texture2DArrayRD<class_Texture2DArrayRD>`, :ref:`TextureCubemapArrayRD<class_TextureCubemapArrayRD>`, :ref:`TextureCubemapRD<class_TextureCubemapRD>`

Clase base abstracta para los tipos de texturas por capas RD.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Base class for :ref:`Texture2DArrayRD<class_Texture2DArrayRD>`, :ref:`TextureCubemapRD<class_TextureCubemapRD>` and :ref:`TextureCubemapArrayRD<class_TextureCubemapArrayRD>`. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types.

\ **Note:** **TextureLayeredRD** is intended for low-level usage with :ref:`RenderingDevice<class_RenderingDevice>`. For most use cases, use :ref:`TextureLayered<class_TextureLayered>` instead.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Compute Texture demo <https://godotengine.org/asset-library/asset/2764>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`texture_rd_rid<class_TextureLayeredRD_property_texture_rd_rid>` |
   +-----------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TextureLayeredRD_property_texture_rd_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **texture_rd_rid** :ref:`🔗<class_TextureLayeredRD_property_texture_rd_rid>`

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
