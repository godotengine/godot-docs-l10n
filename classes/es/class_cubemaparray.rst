:github_url: hide

.. _class_CubemapArray:

CubemapArray
============

**Hereda:** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un array de :ref:`Cubemap<class_Cubemap>`\ s, guardados juntos con una sola referencia.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los **CubemapArray**\ s están formados por un array de :ref:`Cubemap<class_Cubemap>`\ s. Al igual que los :ref:`Cubemap<class_Cubemap>`\ s, están compuestos por múltiples texturas, cuya cantidad debe ser divisible por 6 (una por cada cara del cubo).

La principal ventaja de los **CubemapArray**\ s es que se puede acceder a ellos en código de shader usando una sola referencia de textura. En otras palabras, puedes pasar múltiples :ref:`Cubemap<class_Cubemap>`\ s a un shader usando un único **CubemapArray**. Los :ref:`Cubemap<class_Cubemap>`\ s se asignan en regiones de caché adyacentes en la GPU, lo que hace de los **CubemapArray**\ s la forma más eficiente de almacenar múltiples :ref:`Cubemap<class_Cubemap>`\ s.

Godot utiliza internamente **CubemapArray**\ s para muchos efectos, incluyendo el :ref:`Sky<class_Sky>` si estableces :ref:`ProjectSettings.rendering/reflections/sky_reflections/texture_array_reflections<class_ProjectSettings_property_rendering/reflections/sky_reflections/texture_array_reflections>` a ``true``.

Para crear un archivo de textura de este tipo tú mismo, reimporta tus archivos de imagen usando los presets de importación del Editor Godot. Para crear un CubemapArray desde código, usa :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>` en una instancia de la clase CubemapArray.

El orden de imágenes esperado es X+, X-, Y+, Y-, Z+, Z- (en el sistema de coordenadas de Godot, por lo que Y+ es "arriba" y Z- es "adelante"). Puedes usar una de las siguientes plantillas como base:

- `Plantilla de cubemap 2×3 (opción de diseño predeterminada) <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `Plantilla de cubemap 3×2 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `Plantilla de cubemap 1×6 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `Plantilla de cubemap 6×1 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

Múltiples capas se apilan una encima de otra al usar la opción de importación vertical predeterminada (con la primera capa en la parte superior). Alternativamente, puedes elegir un diseño horizontal en las opciones de importación (con la primera capa a la izquierda).

\ **Nota:** **CubemapArray** no está soportado en el renderizador Compatibility debido a limitaciones de la API gráfica.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_CubemapArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CubemapArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_CubemapArray_method_create_placeholder>`

Crea una versión de marcador de posición de este recurso (:ref:`PlaceholderCubemapArray<class_PlaceholderCubemapArray>`).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
