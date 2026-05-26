:github_url: hide

.. _class_ImageTextureLayered:

ImageTextureLayered
===================

**Hereda:** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>`

Clase base para los tipos de textura que contienen los datos de múltiples :ref:`ImageTexture<class_ImageTexture>`\ s. Cada imagen es del mismo tamaño y formato.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base para :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` y :ref:`CubemapArray<class_CubemapArray>`. No se puede usar directamente, pero contiene todas las funciones necesarias para acceder a los tipos de recursos derivados. Véase también :ref:`Texture3D<class_Texture3D>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_from_images<class_ImageTextureLayered_method_create_from_images>`\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update_layer<class_ImageTextureLayered_method_update_layer>`\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ )            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ImageTextureLayered_method_create_from_images:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTextureLayered_method_create_from_images>`

Crea una **ImageTextureLayered** a partir de un array de :ref:`Image<class_Image>`\ s. Véase :ref:`Image.create()<class_Image_method_create>` para el formato de datos esperado. La primera imagen decide el ancho, alto, formato de imagen y la configuración de mipmapping. Las otras imágenes *deben* tener el mismo ancho, alto, formato de imagen y configuración de mipmapping.

Cada :ref:`Image<class_Image>` representa una ``layer``.

::

    # Rellena un array de Images con diferentes colores.
    var images = []
    const LAYERS = 6
    for i in LAYERS:
        var image = Image.create_empty(128, 128, false, Image.FORMAT_RGB8)
        if i % 3 == 0:
            image.fill(Color.RED)
        elif i % 3 == 1:
            image.fill(Color.GREEN)
        else:
            image.fill(Color.BLUE)
        images.push_back(image)

    # Crea y guarda un array de textura 2D. El array de imágenes debe tener al menos 1 Image.
    var texture_2d_array = Texture2DArray.new()
    texture_2d_array.create_from_images(images)
    ResourceSaver.save(texture_2d_array, "res://texture_2d_array.res", ResourceSaver.FLAG_COMPRESS)

    # Crea y guarda un cubemap. El array de imágenes debe tener exactamente 6 Images.
    # Las imágenes del cubemap se especifican en este orden: X+, X-, Y+, Y-, Z+, Z-
    # (en el sistema de coordenadas de Godot, donde Y+ es "arriba" y Z- es "adelante").
    var cubemap = Cubemap.new()
    cubemap.create_from_images(images)
    ResourceSaver.save(cubemap, "res://cubemap.res", ResourceSaver.FLAG_COMPRESS)

    # Crea y guarda un array de cubemaps. El array de imágenes debe tener un múltiplo de 6 Images.
    # Las imágenes de cada cubemap se especifican en este orden: X+, X-, Y+, Y-, Z+, Z-
    # (en el sistema de coordenadas de Godot, donde Y+ es "arriba" y Z- es "adelante").
    var cubemap_array = CubemapArray.new()
    cubemap_array.create_from_images(images)
    ResourceSaver.save(cubemap_array, "res://cubemap_array.res", ResourceSaver.FLAG_COMPRESS)

.. rst-class:: classref-item-separator

----

.. _class_ImageTextureLayered_method_update_layer:

.. rst-class:: classref-method

|void| **update_layer**\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImageTextureLayered_method_update_layer>`

Reemplaza los datos existentes de :ref:`Image<class_Image>` en la ``layer`` dada con esta nueva imagen.

La :ref:`Image<class_Image>` dada debe tener la misma anchura, altura, formato de imagen y marca de mipmapping que el resto de las imágenes referenciadas.

Si el formato de imagen no es compatible, se descomprimirá y convertirá a un :ref:`Format<enum_Image_Format>` similar y compatible.

La actualización es inmediata: está sincronizada con el dibujo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
