:github_url: hide

.. _class_CompressedTexture2D:

CompressedTexture2D
===================

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Textura con 2 dimensiones, opcionalmente comprimida.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una textura que se carga desde un archivo ``.ctex``. Este formato de archivo es interno de Godot; se crea importando otros formatos de imagen con el sistema de importación. **CompressedTexture2D** puede usar uno de los 4 métodos de compresión (incluyendo la falta de cualquier compresión):

- Sin pérdida (WebP o PNG, descomprimido en la GPU)

- Con pérdida (WebP, descomprimido en la GPU)

- VRAM Comprimida (comprimido en la GPU)

- VRAM Sin comprimir (sin comprimir en la GPU)

- Basis Universal (comprimido en la GPU. Tamaños de archivo más pequeños que VRAM Comprimida, pero más lento para comprimir y de menor calidad que VRAM Comprimido)

Solo **VRAM Comprimida** reduce realmente el uso de memoria en la GPU. Los métodos de compresión **Sin pérdida** y **Con pérdida** reducirán el almacenamiento requerido en el disco, pero no reducirán el uso de memoria en la GPU, ya que la textura se envía a la GPU sin comprimir.

El uso de **VRAM Comprimida** también mejora los tiempos de carga, ya que las texturas comprimidas en VRAM se cargan más rápido en comparación con las texturas que utilizan compresión sin pérdida o con pérdida. La compresión VRAM puede mostrar artefactos notables y está destinada a ser utilizada para el renderizado 3D, no 2D.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`load_path<class_CompressedTexture2D_property_load_path>` | ``""``                                                                                 |
   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | resource_local_to_scene                                        | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CompressedTexture2D_method_load>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CompressedTexture2D_property_load_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **load_path** = ``""`` :ref:`🔗<class_CompressedTexture2D_property_load_path>`

.. rst-class:: classref-property-setget

- :ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_load_path**\ (\ )

La ruta del archivo **CompressedTexture2D** a un archivo ``.ctex``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CompressedTexture2D_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CompressedTexture2D_method_load>`

Carga la textura desde la ``path`` especificada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
