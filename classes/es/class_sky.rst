:github_url: hide

.. _class_Sky:

Sky
===

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Define el fondo de un entorno 3D usando un :ref:`Material<class_Material>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The **Sky** class uses a :ref:`Material<class_Material>` to render a 3D environment's background and the light it emits by updating the reflection/radiance cubemaps.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`ProcessMode<enum_Sky_ProcessMode>`   | :ref:`process_mode<class_Sky_property_process_mode>`   | ``0`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`RadianceSize<enum_Sky_RadianceSize>` | :ref:`radiance_size<class_Sky_property_radiance_size>` | ``3`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`Material<class_Material>`            | :ref:`sky_material<class_Sky_property_sky_material>`   |       |
   +--------------------------------------------+--------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Sky_RadianceSize:

.. rst-class:: classref-enumeration

enum **RadianceSize**: :ref:`🔗<enum_Sky_RadianceSize>`

.. _class_Sky_constant_RADIANCE_SIZE_32:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_32** = ``0``

El tamaño de la textura de la radiación es de 32×32 píxeles.

.. _class_Sky_constant_RADIANCE_SIZE_64:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_64** = ``1``

El tamaño de la textura de la radiación es de 64×64 píxeles.

.. _class_Sky_constant_RADIANCE_SIZE_128:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_128** = ``2``

El tamaño de la textura del resplandor es de 128×128 píxeles.

.. _class_Sky_constant_RADIANCE_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_256** = ``3``

El tamaño de la textura del resplandor es de 256×256 píxeles.

.. _class_Sky_constant_RADIANCE_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_512** = ``4``

El tamaño de la textura del resplandor es de 512×512 píxeles.

.. _class_Sky_constant_RADIANCE_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_1024** = ``5``

El tamaño de la textura de radiancia es de 1024 × 1024 píxeles.

.. _class_Sky_constant_RADIANCE_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_2048** = ``6``

El tamaño de la textura de radiancia es de 2048 × 2048 píxeles.

.. _class_Sky_constant_RADIANCE_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_MAX** = ``7``

Representa el tamaño del enum :ref:`RadianceSize<enum_Sky_RadianceSize>`.

.. rst-class:: classref-item-separator

----

.. _enum_Sky_ProcessMode:

.. rst-class:: classref-enumeration

enum **ProcessMode**: :ref:`🔗<enum_Sky_ProcessMode>`

.. _class_Sky_constant_PROCESS_MODE_AUTOMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_AUTOMATIC** = ``0``

Automatically selects the appropriate process mode based on your sky shader. If your shader uses ``TIME`` or ``POSITION``, this will use :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>`. If your shader uses any of the ``LIGHT_*`` variables or any custom uniforms, this uses :ref:`PROCESS_MODE_INCREMENTAL<class_Sky_constant_PROCESS_MODE_INCREMENTAL>`. Otherwise, this defaults to :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>`.

.. _class_Sky_constant_PROCESS_MODE_QUALITY:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_QUALITY** = ``1``

Uses high quality importance sampling to process the radiance map. In general, this results in much higher quality than :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>` but takes much longer to generate. This should not be used if you plan on changing the sky at runtime. If you are finding that the reflection is not blurry enough and is showing sparkles or fireflies, try increasing :ref:`ProjectSettings.rendering/reflections/sky_reflections/ggx_samples<class_ProjectSettings_property_rendering/reflections/sky_reflections/ggx_samples>`.

.. _class_Sky_constant_PROCESS_MODE_INCREMENTAL:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_INCREMENTAL** = ``2``

Uses the same high quality importance sampling to process the radiance map as :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>`, but updates over several frames. The number of frames is determined by :ref:`ProjectSettings.rendering/reflections/sky_reflections/roughness_layers<class_ProjectSettings_property_rendering/reflections/sky_reflections/roughness_layers>`. Use this when you need highest quality radiance maps, but have a sky that updates slowly.

.. _class_Sky_constant_PROCESS_MODE_REALTIME:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_REALTIME** = ``3``

Uses the fast filtering algorithm to process the radiance map. In general this results in lower quality, but substantially faster run times. If you need better quality, but still need to update the sky every frame, consider turning on :ref:`ProjectSettings.rendering/reflections/sky_reflections/fast_filter_high_quality<class_ProjectSettings_property_rendering/reflections/sky_reflections/fast_filter_high_quality>`.

\ **Note:** The fast filtering algorithm is limited to 256×256 cubemaps, so :ref:`radiance_size<class_Sky_property_radiance_size>` must be set to :ref:`RADIANCE_SIZE_256<class_Sky_constant_RADIANCE_SIZE_256>`. Otherwise, a warning is printed and the overridden radiance size is ignored.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Sky_property_process_mode:

.. rst-class:: classref-property

:ref:`ProcessMode<enum_Sky_ProcessMode>` **process_mode** = ``0`` :ref:`🔗<class_Sky_property_process_mode>`

.. rst-class:: classref-property-setget

- |void| **set_process_mode**\ (\ value\: :ref:`ProcessMode<enum_Sky_ProcessMode>`\ )
- :ref:`ProcessMode<enum_Sky_ProcessMode>` **get_process_mode**\ (\ )

The method for generating the radiance map from the sky. The radiance map is a cubemap with increasingly blurry versions of the sky corresponding to different levels of roughness. Radiance maps can be expensive to calculate.

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_radiance_size:

.. rst-class:: classref-property

:ref:`RadianceSize<enum_Sky_RadianceSize>` **radiance_size** = ``3`` :ref:`🔗<class_Sky_property_radiance_size>`

.. rst-class:: classref-property-setget

- |void| **set_radiance_size**\ (\ value\: :ref:`RadianceSize<enum_Sky_RadianceSize>`\ )
- :ref:`RadianceSize<enum_Sky_RadianceSize>` **get_radiance_size**\ (\ )

The **Sky**'s radiance map size. The higher the radiance map size, the more detailed the lighting from the **Sky** will be.

\ **Note:** Some hardware will have trouble with higher radiance sizes, especially :ref:`RADIANCE_SIZE_512<class_Sky_constant_RADIANCE_SIZE_512>` and above. Only use such high values on high-end hardware.

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_sky_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **sky_material** :ref:`🔗<class_Sky_property_sky_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

:ref:`Material<class_Material>` used to draw the background. Can be :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`, or even a :ref:`ShaderMaterial<class_ShaderMaterial>` if you want to use your own custom shader.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
