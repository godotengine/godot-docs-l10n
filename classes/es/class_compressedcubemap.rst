:github_url: hide

.. _class_CompressedCubemap:

CompressedCubemap
=================

**Hereda:** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un :ref:`Cubemap<class_Cubemap>` opcionalmente comprimido.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un cubemap que se carga desde un archivo ``.ccube``. Este formato de archivo es interno de Godot; se crea importando otros formatos de imagen con el sistema de importación. **CompressedCubemap** puede usar uno de los 4 métodos de compresión:

- Sin pérdida (WebP o PNG, descomprimido en la GPU)

- Con pérdida (WebP, descomprimido en la GPU)

- Comprimido en VRAM (comprimido en la GPU)

- Sin comprimir en VRAM (sin comprimir en la GPU)

- Basis Universal (comprimido en la GPU. Tamaños de archivo más bajos que VRAM Comprimida, pero más lento para comprimir y de menor calidad que VRAM Comprimido)

Solo **VRAM Comprimida** reduce realmente el uso de memoria en la GPU. Los métodos de compresión **Sin pérdida** y **Con pérdida** reducirán el almacenamiento necesario en el disco, pero no reducirán el uso de memoria en la GPU, ya que la textura se envía a la GPU sin comprimir.

El uso de **VRAM Comprimida** también mejora los tiempos de carga, ya que las texturas comprimidas en VRAM se cargan más rápido en comparación con las texturas que utilizan compresión sin pérdida o con pérdida. La compresión VRAM puede mostrar artefactos notables y está destinada a ser utilizada para el renderizado 3D, no 2D.

Véase :ref:`Cubemap<class_Cubemap>` para obtener una descripción general de los cubemaps.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
