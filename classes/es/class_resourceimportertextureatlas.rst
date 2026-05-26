:github_url: hide

.. _class_ResourceImporterTextureAtlas:

ResourceImporterTextureAtlas
============================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa una colección de texturas de una imagen PNG en un :ref:`AtlasTexture<class_AtlasTexture>` optimizado para renderizado 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esto importa una colección de texturas de una imagen PNG en un :ref:`AtlasTexture<class_AtlasTexture>` o :ref:`ArrayMesh<class_ArrayMesh>` 2D. Esto se puede usar para ahorrar memoria al importar animaciones 2D desde hojas de sprites. Los atlas de texturas solo se admiten en renderizado 2D, no en 3D. Véase también :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` y :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`.

\ **Nota:** **ResourceImporterTextureAtlas** no se encarga de importar :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, que se crea utilizando el editor :ref:`TileSet<class_TileSet>` en su lugar.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`atlas_file<class_ResourceImporterTextureAtlas_property_atlas_file>`                                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`                               | ``false`` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>`                                     | ``0``     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>` | ``true``  |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterTextureAtlas_property_atlas_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **atlas_file** = ``""`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_atlas_file>`

Ruta a la hoja de sprites del atlas. Esto *debe* establecerse en una ruta válida a una imagen PNG. De lo contrario, el atlas no se importará.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_crop_to_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **crop_to_region** = ``false`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_crop_to_region>`

Si es ``true``, descarta las áreas vacías del atlas. Esto solo afecta el posicionamiento final del sprite, no el almacenamiento. Véase también :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`.

\ **Nota:** Solo es efectivo si :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` es **Region**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_import_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **import_mode** = ``0`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_import_mode>`

**Región:** Importa el atlas en un recurso :ref:`AtlasTexture<class_AtlasTexture>`, que se renderiza como un rectángulo. Esto es rápido de renderizar, pero las áreas transparentes aún deben renderizarse si no se pueden recortar de manera efectiva mediante :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`. Esto puede reducir el rendimiento al renderizar sprites grandes en la pantalla.

\ **Malla:** Importa el atlas como un recurso :ref:`ArrayMesh<class_ArrayMesh>`, manteniendo visible el mapa de bits original (pero renderizado como un polígono). Esto se puede usar para reducir la tasa de relleno al renderizar sprites transparentes grandes, a costa de un renderizado más lento si hay pocas o ninguna área transparente en el sprite.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trim_alpha_border_from_region** = ``true`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`

Si es ``true``, recorta la región para excluir los píxeles totalmente transparentes utilizando un rectángulo de recorte (que nunca se rota). Esto se puede usar para ahorrar memoria. Véase también :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`.

\ **Nota:** Solo es efectivo si :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` es **Region**.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
