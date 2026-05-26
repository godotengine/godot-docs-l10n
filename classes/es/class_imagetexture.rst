:github_url: hide

.. _class_ImageTexture:

ImageTexture
============

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una :ref:`Texture2D<class_Texture2D>` basada en una :ref:`Image<class_Image>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una :ref:`Texture2D<class_Texture2D>` basada en una :ref:`Image<class_Image>`. Para que una imagen se muestre, se debe crear una **ImageTexture** a partir de ella utilizando el método :ref:`create_from_image()<class_ImageTexture_method_create_from_image>`:

::

    var image = Image.load_from_file("res://icon.svg")
    var texture = ImageTexture.create_from_image(image)
    $Sprite2D.texture = texture

De esta manera, las texturas se pueden crear en tiempo de ejecución cargando imágenes tanto desde el editor como externamente.

\ **Advertencia:** Prefiere cargar texturas importadas con :ref:`@GDScript.load()<class_@GDScript_method_load>` en lugar de cargarlas dinámicamente desde el sistema de archivos con :ref:`Image.load()<class_Image_method_load>`, ya que esto podría no funcionar en proyectos exportados:

::

    var texture = load("res://icon.svg")
    $Sprite2D.texture = texture

Esto se debe a que las imágenes deben importarse primero como :ref:`CompressedTexture2D<class_CompressedTexture2D>` para ser cargadas con :ref:`@GDScript.load()<class_@GDScript_method_load>`. Si aún deseas cargar un archivo de imagen como cualquier otro :ref:`Resource<class_Resource>`, impórtalo como un recurso :ref:`Image<class_Image>` en su lugar, y luego cárgalo normalmente usando el método :ref:`@GDScript.load()<class_@GDScript_method_load>`.

\ **Nota:** La imagen se puede recuperar de una textura importada usando el método :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>`, que devuelve una copia de la imagen:

::

    var texture = load("res://icon.svg")
    var image = texture.get_image()

Una **ImageTexture** no está destinada a ser operada directamente desde la interfaz del editor, y es principalmente útil para renderizar imágenes en pantalla dinámicamente a través de código. Si necesitas generar imágenes proceduralmente desde el editor, considera guardar e importar imágenes como recursos de textura personalizados que implementen un nuevo :ref:`EditorImportPlugin<class_EditorImportPlugin>`.

\ **Nota:** El tamaño máximo de textura es de 16384×16384 píxeles debido a limitaciones de hardware gráfico.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Importando imágenes <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImageTexture<class_ImageTexture>` | :ref:`create_from_image<class_ImageTexture_method_create_from_image>`\ (\ image\: :ref:`Image<class_Image>`\ ) |static| |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`        | :ref:`get_format<class_ImageTexture_method_get_format>`\ (\ ) |const|                                                   |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_image<class_ImageTexture_method_set_image>`\ (\ image\: :ref:`Image<class_Image>`\ )                          |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_size_override<class_ImageTexture_method_set_size_override>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )     |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`update<class_ImageTexture_method_update>`\ (\ image\: :ref:`Image<class_Image>`\ )                                |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ImageTexture_method_create_from_image:

.. rst-class:: classref-method

:ref:`ImageTexture<class_ImageTexture>` **create_from_image**\ (\ image\: :ref:`Image<class_Image>`\ ) |static| :ref:`🔗<class_ImageTexture_method_create_from_image>`

Crea una nueva **ImageTexture** y la inicializa asignando y estableciendo los datos de una :ref:`Image<class_Image>`.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_ImageTexture_method_get_format>`

Devuelve el formato de la textura.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_image:

.. rst-class:: classref-method

|void| **set_image**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_set_image>`

Reemplaza los datos de la textura con una nueva :ref:`Image<class_Image>`. Esto volverá a asignar nueva memoria para la textura.

Si quieres actualizar la imagen, pero no necesitas cambiar sus parámetros (formato, tamaño), usa :ref:`update()<class_ImageTexture_method_update>` en su lugar para un mejor rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImageTexture_method_set_size_override>`

Redimensiona la **ImageTexture** a las dimensiones especificadas.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_update>`

Reemplaza los datos de la textura con una nueva :ref:`Image<class_Image>`.

\ **Nota:** La textura tiene que ser creada usando :ref:`create_from_image()<class_ImageTexture_method_create_from_image>` o inicializada primero con el método :ref:`set_image()<class_ImageTexture_method_set_image>` antes de que pueda ser actualizada. Las nuevas dimensiones de la imagen, el formato y la configuración de mipmaps deben coincidir con la configuración de la imagen de la textura existente.

Usa este método en lugar de :ref:`set_image()<class_ImageTexture_method_set_image>` si necesitas actualizar la textura con frecuencia, lo cual es más rápido que asignar memoria adicional para una nueva textura cada vez.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
