:github_url: hide

.. _class_Cubemap:

Cubemap
=======

**Hereda:** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Seis texturas cuadradas que representan las caras de un cubo. Comúnmente utilizadas como skybox.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un cubemap está compuesto por 6 texturas organizadas en capas. Se utilizan normalmente para simular reflejos en renderizado 3D (consulta :ref:`ReflectionProbe<class_ReflectionProbe>`). Puede usarse para hacer que un objeto parezca reflejar su entorno. Esto generalmente ofrece un rendimiento mucho mejor que otros métodos de reflexión.

Este recurso se usa habitualmente como uniform en shaders personalizados. Pocos métodos del núcleo de Godot utilizan recursos **Cubemap**.

Para crear un archivo de textura de este tipo tú mismo, reimporta tus archivos de imagen usando los presets de importación del editor de Godot. Para crear un Cubemap desde código, usa :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>` en una instancia de la clase Cubemap.

El orden de imágenes esperado es X+, X-, Y+, Y-, Z+, Z- (en el sistema de coordenadas de Godot, por lo que Y+ es "arriba" y Z- es "adelante"). Puedes usar una de las siguientes plantillas como base:

- `Plantilla de cubemap 2×3 (opción de diseño predeterminada) <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `Plantilla de cubemap 3×2 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `Plantilla de cubemap 1×6 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `Plantilla de cubemap 6×1 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

\ **Nota:** Godot no soporta el uso de cubemaps en un :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`. Para usar un cubemap como skybox, convierte el :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` predeterminado en un :ref:`ShaderMaterial<class_ShaderMaterial>` usando la opción desplegable del recurso **Convertir a ShaderMaterial**, luego reemplaza su código con lo siguiente:

.. code:: text

    shader_type sky;

    uniform samplerCube source_panorama : filter_linear, source_color, hint_default_black;
    uniform float exposure : hint_range(0, 128) = 1.0;

    void sky() {
        // Si importas un cubemap de otro motor, puede que necesites invertir uno de los componentes de `EYEDIR` abajo
        // reemplazándolo con `-EYEDIR`.
        vec3 eyedir = vec3(EYEDIR.x, EYEDIR.y, EYEDIR.z);
        COLOR = texture(source_panorama, eyedir).rgb * exposure;
    }

Después de reemplazar el código del shader y guardar, especifica el recurso Cubemap importado en la sección Shader Parameters del ShaderMaterial en el inspector.

Alternativamente, puedes usar `esta herramienta <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__ para convertir un cubemap a un mapa de cielo equirectangular y usar :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` como de costumbre.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Cubemap_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Cubemap_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Cubemap_method_create_placeholder>`

Crea una versión de marcador de posición de este recurso (:ref:`PlaceholderCubemap<class_PlaceholderCubemap>`).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
