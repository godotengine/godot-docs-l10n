:github_url: hide

.. _class_Light3D:

Light3D
=======

**Hereda:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`DirectionalLight3D<class_DirectionalLight3D>`, :ref:`OmniLight3D<class_OmniLight3D>`, :ref:`SpotLight3D<class_SpotLight3D>`

Proporciona una clase base para diferentes tipos de nodos de luz.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Light3D es la clase base *abstracta* para los nodos de luz. Dado que no se puede instanciar, no debe usarse directamente. Otros tipos de nodos de luz heredan de ella. Light3D contiene las variables y parámetros comunes utilizados para la iluminación.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Luces y sombras 3D <../tutorials/3d/lights_and_shadows>`

- :doc:`Falsificar la iluminación global <../tutorials/3d/global_illumination/faking_global_illumination>`

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>`                 | ``40.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`distance_fade_enabled<class_Light3D_property_distance_fade_enabled>`             | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>`               | ``10.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_shadow<class_Light3D_property_distance_fade_shadow>`               | ``50.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`editor_only<class_Light3D_property_editor_only>`                                 | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_angular_distance<class_Light3D_property_light_angular_distance>`           | ``0.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BakeMode<enum_Light3D_BakeMode>` | :ref:`light_bake_mode<class_Light3D_property_light_bake_mode>`                         | ``2``                 |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`              | :ref:`light_color<class_Light3D_property_light_color>`                                 | ``Color(1, 1, 1, 1)`` |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                  | :ref:`light_cull_mask<class_Light3D_property_light_cull_mask>`                         | ``4294967295``        |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_energy<class_Light3D_property_light_energy>`                               | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_indirect_energy<class_Light3D_property_light_indirect_energy>`             | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_intensity_lumens<class_Light3D_property_light_intensity_lumens>`           |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_intensity_lux<class_Light3D_property_light_intensity_lux>`                 |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`light_negative<class_Light3D_property_light_negative>`                           | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>`      | :ref:`light_projector<class_Light3D_property_light_projector>`                         |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_size<class_Light3D_property_light_size>`                                   | ``0.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_specular<class_Light3D_property_light_specular>`                           | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_temperature<class_Light3D_property_light_temperature>`                     |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_bias<class_Light3D_property_shadow_bias>`                                 | ``0.1``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_blur<class_Light3D_property_shadow_blur>`                                 | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                  | :ref:`shadow_caster_mask<class_Light3D_property_shadow_caster_mask>`                   | ``4294967295``        |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>`                           | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_normal_bias<class_Light3D_property_shadow_normal_bias>`                   | ``2.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_opacity<class_Light3D_property_shadow_opacity>`                           | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`shadow_reverse_cull_face<class_Light3D_property_shadow_reverse_cull_face>`       | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_transmittance_bias<class_Light3D_property_shadow_transmittance_bias>`     | ``0.05``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_correlated_color<class_Light3D_method_get_correlated_color>`\ (\ ) |const|                                                |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_Light3D_method_get_param>`\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_Light3D_method_set_param>`\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Light3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_Light3D_Param>`

.. _class_Light3D_constant_PARAM_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ENERGY** = ``0``

Constante para acceder a :ref:`light_energy<class_Light3D_property_light_energy>`.

.. _class_Light3D_constant_PARAM_INDIRECT_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INDIRECT_ENERGY** = ``1``

Constante para acceder a :ref:`light_indirect_energy<class_Light3D_property_light_indirect_energy>`.

.. _class_Light3D_constant_PARAM_VOLUMETRIC_FOG_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_VOLUMETRIC_FOG_ENERGY** = ``2``

Constante para acceder a :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>`.

.. _class_Light3D_constant_PARAM_SPECULAR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPECULAR** = ``3``

Constante para acceder a :ref:`light_specular<class_Light3D_property_light_specular>`.

.. _class_Light3D_constant_PARAM_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_RANGE** = ``4``

Constante para acceder a :ref:`OmniLight3D.omni_range<class_OmniLight3D_property_omni_range>` o :ref:`SpotLight3D.spot_range<class_SpotLight3D_property_spot_range>`.

.. _class_Light3D_constant_PARAM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SIZE** = ``5``

Constante para acceder a :ref:`light_size<class_Light3D_property_light_size>`.

.. _class_Light3D_constant_PARAM_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ATTENUATION** = ``6``

Constante para acceder a :ref:`OmniLight3D.omni_attenuation<class_OmniLight3D_property_omni_attenuation>` o :ref:`SpotLight3D.spot_attenuation<class_SpotLight3D_property_spot_attenuation>`.

.. _class_Light3D_constant_PARAM_SPOT_ANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ANGLE** = ``7``

Constante para acceder a :ref:`SpotLight3D.spot_angle<class_SpotLight3D_property_spot_angle>`.

.. _class_Light3D_constant_PARAM_SPOT_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ATTENUATION** = ``8``

Constante para acceder a :ref:`SpotLight3D.spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>`.

.. _class_Light3D_constant_PARAM_SHADOW_MAX_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_MAX_DISTANCE** = ``9``

Constante para acceder a :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`.

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_1_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_1_OFFSET** = ``10``

Constante para acceder a :ref:`DirectionalLight3D.directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>`.

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_2_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_2_OFFSET** = ``11``

Constante para acceder a :ref:`DirectionalLight3D.directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>`.

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_3_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_3_OFFSET** = ``12``

Constante para acceder a :ref:`DirectionalLight3D.directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>`.

.. _class_Light3D_constant_PARAM_SHADOW_FADE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_FADE_START** = ``13``

Constante para acceder a :ref:`DirectionalLight3D.directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>`.

.. _class_Light3D_constant_PARAM_SHADOW_NORMAL_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_NORMAL_BIAS** = ``14``

Constante para acceder a :ref:`shadow_normal_bias<class_Light3D_property_shadow_normal_bias>`.

.. _class_Light3D_constant_PARAM_SHADOW_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BIAS** = ``15``

Constante para acceder a :ref:`shadow_bias<class_Light3D_property_shadow_bias>`.

.. _class_Light3D_constant_PARAM_SHADOW_PANCAKE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_PANCAKE_SIZE** = ``16``

Constante para acceder a :ref:`DirectionalLight3D.directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>`.

.. _class_Light3D_constant_PARAM_SHADOW_OPACITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_OPACITY** = ``17``

Constante para acceder a :ref:`shadow_opacity<class_Light3D_property_shadow_opacity>`.

.. _class_Light3D_constant_PARAM_SHADOW_BLUR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BLUR** = ``18``

Constante para acceder a :ref:`shadow_blur<class_Light3D_property_shadow_blur>`.

.. _class_Light3D_constant_PARAM_TRANSMITTANCE_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_TRANSMITTANCE_BIAS** = ``19``

Constante para acceder a :ref:`shadow_transmittance_bias<class_Light3D_property_shadow_transmittance_bias>`.

.. _class_Light3D_constant_PARAM_INTENSITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INTENSITY** = ``20``

Constante para acceder a :ref:`light_intensity_lumens<class_Light3D_property_light_intensity_lumens>` y :ref:`light_intensity_lux<class_Light3D_property_light_intensity_lux>`. Solo se usa cuando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` es ``true``.

.. _class_Light3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_MAX** = ``21``

Representa el tamaño del enum :ref:`Param<enum_Light3D_Param>`.

.. rst-class:: classref-item-separator

----

.. _enum_Light3D_BakeMode:

.. rst-class:: classref-enumeration

enum **BakeMode**: :ref:`🔗<enum_Light3D_BakeMode>`

.. _class_Light3D_constant_BAKE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DISABLED** = ``0``

La luz se ignora al procesar. Este es el modo más rápido, pero la luz no se tendrá en cuenta al procesar la iluminación global. Este modo generalmente debería usarse para luces dinámicas que cambian rápidamente, ya que el efecto de la iluminación global es menos notable en esas luces.

\ **Nota:** Ocultar una luz *no* afecta el procesado de :ref:`LightmapGI<class_LightmapGI>`. Ocultar una luz seguirá afectando el procesado de :ref:`VoxelGI<class_VoxelGI>` y SDFGI (ver :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

.. _class_Light3D_constant_BAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_STATIC** = ``1``

La luz se tiene en cuenta en el procesado estático (:ref:`VoxelGI<class_VoxelGI>`, :ref:`LightmapGI<class_LightmapGI>`, SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`)). La luz se puede mover o modificar, pero su iluminación global no se actualizará en tiempo real. Esto es adecuado para cambios sutiles (como antorchas parpadeantes), pero generalmente no para grandes cambios, como encender y apagar una luz.

\ **Nota:** La luz no se procesa en :ref:`LightmapGI<class_LightmapGI>` si :ref:`editor_only<class_Light3D_property_editor_only>` es ``true``.

.. _class_Light3D_constant_BAKE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DYNAMIC** = ``2``

La luz se tiene en cuenta en el procesado dinámico (solo :ref:`VoxelGI<class_VoxelGI>` y SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`)). La luz se puede mover o modificar y la iluminación global se actualiza en tiempo real. La apariencia de iluminación global de la luz será ligeramente diferente en comparación con :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>`. Esto tiene un mayor costo de rendimiento en comparación con :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>`. Cuando se usa SDFGI, la velocidad de actualización de las luces dinámicas se ve afectada por :ref:`ProjectSettings.rendering/global_illumination/sdfgi/frames_to_update_lights<class_ProjectSettings_property_rendering/global_illumination/sdfgi/frames_to_update_lights>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Light3D_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Light3D_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

La distancia desde la cámara a la que la luz comienza a desvanecerse (en unidades 3D).

\ **Nota:** Solo es efectivo para :ref:`OmniLight3D<class_OmniLight3D>` y :ref:`SpotLight3D<class_SpotLight3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Light3D_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

Si es ``true``, la luz se desvanecerá suavemente cuando esté lejos de la :ref:`Camera3D<class_Camera3D>` activa, comenzando en :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>`. Esto actúa como una forma de nivel de detalle (LOD). La luz se desvanecerá sobre :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>`, después de lo cual se eliminará y no se enviará al shader en absoluto. Utiliza esto para reducir el número de luces activas en una escena y, por lo tanto, mejorar el rendimiento.

\ **Nota:** Solo es efectivo para :ref:`OmniLight3D<class_OmniLight3D>` y :ref:`SpotLight3D<class_SpotLight3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Light3D_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

Distancia sobre la cual la luz y su sombra se desvanecen. La energía de la luz y la opacidad de la sombra se reducen progresivamente a lo largo de esta distancia y es completamente invisible al final.

\ **Nota:** Solo es efectivo para :ref:`OmniLight3D<class_OmniLight3D>` y :ref:`SpotLight3D<class_SpotLight3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_shadow:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_shadow** = ``50.0`` :ref:`🔗<class_Light3D_property_distance_fade_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_shadow**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_shadow**\ (\ )

La distancia desde la cámara a la que se corta la sombra de la luz (en unidades 3D). Establece esto a un valor inferior a :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>` para mejorar aún más el rendimiento, ya que el renderizado de sombras suele ser más caro que el renderizado de la propia luz.

\ **Nota:** Solo es efectivo para :ref:`OmniLight3D<class_OmniLight3D>` y :ref:`SpotLight3D<class_SpotLight3D>`, y solo cuando :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``false`` :ref:`🔗<class_Light3D_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_only**\ (\ )

Si es ``true``, la luz solo aparece en el editor y no será visible en tiempo de ejecución. Si es ``true``, la luz nunca se procesará en :ref:`LightmapGI<class_LightmapGI>` independientemente de su :ref:`light_bake_mode<class_Light3D_property_light_bake_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_angular_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_angular_distance** = ``0.0`` :ref:`🔗<class_Light3D_property_light_angular_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

El tamaño angular de la luz en grados. Aumentar esto hará que las sombras sean más suaves a mayores distancias (también llamadas sombras suaves de porcentaje más cercano, o PCSS). Solo disponible para :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ s. Como referencia, el Sol desde la Tierra es aproximadamente ``0.5``. Aumentar este valor por encima de ``0.0`` para las luces con sombras habilitadas tendrá un costo de rendimiento notable debido a PCSS.

\ **Nota:** :ref:`light_angular_distance<class_Light3D_property_light_angular_distance>` no se ve afectado por :ref:`Node3D.scale<class_Node3D_property_scale>` (la escala de la luz o la escala de su padre).

\ **Nota:** PCSS para luces direccionales solo se admite en el método de renderizado Forward+, no en Mobile o Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_bake_mode:

.. rst-class:: classref-property

:ref:`BakeMode<enum_Light3D_BakeMode>` **light_bake_mode** = ``2`` :ref:`🔗<class_Light3D_property_light_bake_mode>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mode**\ (\ value\: :ref:`BakeMode<enum_Light3D_BakeMode>`\ )
- :ref:`BakeMode<enum_Light3D_BakeMode>` **get_bake_mode**\ (\ )

El modo de procesado de la luz. Esto afectará a las técnicas de iluminación global que tienen un efecto en el renderizado de la luz.

\ **Nota:** El modo de iluminación global de las mallas también afectará al renderizado de la iluminación global. Véase :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **light_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Light3D_property_light_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

El color de la luz en codificación sRGB no lineal. Un color *sobrebrillante* puede usarse para lograr un resultado equivalente a aumentar la :ref:`light_energy<class_Light3D_property_light_energy>` de la luz.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **light_cull_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_light_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

La luz afectará a los objetos en las capas seleccionadas.

\ **Nota:** La máscara de recorte de luz es ignorada por :ref:`VoxelGI<class_VoxelGI>`, SDFGI, :ref:`LightmapGI<class_LightmapGI>` y la niebla volumétrica. Estos siempre renderizarán las luces de una manera que ignora la máscara de recorte. Véase también :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

El multiplicador de fuerza de la luz (esta no es una unidad física). Para :ref:`OmniLight3D<class_OmniLight3D>` y :ref:`SpotLight3D<class_SpotLight3D>`, cambiar este valor solo cambiará la intensidad del color de la luz, no el radio de la luz.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_indirect_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Multiplicador secundario utilizado con luz indirecta (rebotes de luz). Se utiliza con :ref:`VoxelGI<class_VoxelGI>` y SDFGI (véase :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Nota:** Esta propiedad se ignora si :ref:`light_energy<class_Light3D_property_light_energy>` es igual a ``0.0``, ya que la luz no estará presente en absoluto en el shader de GI.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lumens:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lumens** :ref:`🔗<class_Light3D_property_light_intensity_lumens>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Utilizado por las luces posicionales (:ref:`OmniLight3D<class_OmniLight3D>` y :ref:`SpotLight3D<class_SpotLight3D>`) cuando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` es ``true``. Establece la intensidad de la fuente de luz medida en lúmenes. Los lúmenes son una medida del flujo luminoso, que es la cantidad total de luz visible emitida por una fuente de luz por unidad de tiempo.

Para :ref:`SpotLight3D<class_SpotLight3D>`\ s, asumimos que el área fuera del cono visible está rodeada por un material perfecto que absorbe la luz. En consecuencia, el brillo aparente del área del cono no cambia a medida que el cono aumenta y disminuye de tamaño.

Una bombilla doméstica típica puede oscilar entre 600 y 1200 lúmenes, una vela tiene unos 13 lúmenes, mientras que una farola puede tener aproximadamente 60.000 lúmenes.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lux:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lux** :ref:`🔗<class_Light3D_property_light_intensity_lux>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Utilizado por :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ s cuando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` es ``true``. Establece la intensidad de la fuente de luz medida en Lux. Lux es una medida del flujo luminoso por unidad de área, es igual a un lumen por metro cuadrado. Lux es la medida de cuánta luz golpea una superficie en un momento dado.

En un día claro y soleado, una superficie a la luz directa del sol puede tener aproximadamente 100,000 lux, una habitación típica en una casa puede tener aproximadamente 50 lux, mientras que el suelo iluminado por la luna puede tener aproximadamente 0.1 lux.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_negative:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **light_negative** = ``false`` :ref:`🔗<class_Light3D_property_light_negative>`

.. rst-class:: classref-property-setget

- |void| **set_negative**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_negative**\ (\ )

Si es ``true``, el efecto de la luz se invierte, oscureciendo áreas y proyectando sombras brillantes.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_projector:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **light_projector** :ref:`🔗<class_Light3D_property_light_projector>`

.. rst-class:: classref-property-setget

- |void| **set_projector**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_projector**\ (\ )

:ref:`Texture2D<class_Texture2D>` proyectada por la luz. :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` debe estar activado para que el proyector funcione. Los proyectores de luz hacen que la luz aparezca como si brillara a través de un objeto coloreado pero transparente, casi como la luz que brilla a través de vidrieras.

\ **Nota:** A diferencia de :ref:`BaseMaterial3D<class_BaseMaterial3D>`, cuyo modo de filtro se puede ajustar por material, el modo de filtro para las texturas del proyector de luz se establece globalmente con :ref:`ProjectSettings.rendering/textures/light_projectors/filter<class_ProjectSettings_property_rendering/textures/light_projectors/filter>`.

\ **Nota:** Las texturas del proyector de luz solo se admiten en los métodos de renderizado Forward+ y Mobile, no en Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_size** = ``0.0`` :ref:`🔗<class_Light3D_property_light_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

El tamaño de la luz en unidades de Godot. Solo disponible para :ref:`OmniLight3D<class_OmniLight3D>`\ s y :ref:`SpotLight3D<class_SpotLight3D>`\ s. Aumentar este valor hará que la luz se desvanezca más lentamente y que las sombras aparezcan más borrosas (también llamadas sombras suaves de porcentaje más cercano, o PCSS). Esto se puede usar para simular luces de área hasta cierto punto. Aumentar este valor por encima de ``0.0`` para las luces con sombras habilitadas tendrá un costo de rendimiento notable debido a PCSS.

\ **Nota:** :ref:`light_size<class_Light3D_property_light_size>` no se ve afectado por :ref:`Node3D.scale<class_Node3D_property_scale>` (la escala de la luz o la escala de su padre).

\ **Nota:** PCSS para luces posicionales solo se admite en los métodos de renderizado Forward+ y Mobile, no en Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_specular:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_specular** = ``1.0`` :ref:`🔗<class_Light3D_property_light_specular>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

La intensidad de la mancha especular en los objetos afectados por la luz. En ``0``, la luz se convierte en una luz difusa pura. Cuando no se emite, puede utilizarse para evitar reflejos poco realistas al colocar las luces sobre una superficie emisora.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_temperature:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_temperature** :ref:`🔗<class_Light3D_property_light_temperature>`

.. rst-class:: classref-property-setget

- |void| **set_temperature**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_temperature**\ (\ )

Establece la temperatura de color de la fuente de luz, medida en Kelvin. Esto se utiliza para calcular una temperatura de color correlacionada que tiñe el :ref:`light_color<class_Light3D_property_light_color>`.

El sol en un día nublado es de aproximadamente 6500 Kelvin, en un día despejado está entre 5500 y 6000 Kelvin, y en un día despejado al amanecer o al atardecer varía alrededor de 1850 Kelvin.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_volumetric_fog_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_volumetric_fog_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_volumetric_fog_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Multiplicador secundario multiplicado con :ref:`light_energy<class_Light3D_property_light_energy>` luego usado con la niebla volumétrica del :ref:`Environment<class_Environment>` (si está habilitada). Si se establece en ``0.0``, se omitirá el cálculo de la niebla volumétrica para esta luz, lo que puede mejorar el rendimiento para grandes cantidades de luces cuando la niebla volumétrica está habilitada.

\ **Nota:** Para evitar que los efectos de luz dinámicos de corta duración interactúen mal con la niebla volumétrica, las luces utilizadas en esos efectos deben tener :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` establecido en ``0.0`` a menos que :ref:`Environment.volumetric_fog_temporal_reprojection_enabled<class_Environment_property_volumetric_fog_temporal_reprojection_enabled>` esté deshabilitado (o a menos que la cantidad de reproyección se reduzca significativamente).

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_bias** = ``0.1`` :ref:`🔗<class_Light3D_property_shadow_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Se usa para ajustar la apariencia de las sombras. Un valor demasiado pequeño da como resultado una sombra propia ("shadow acne"), mientras que un valor demasiado grande hace que las sombras se separen de las ruedas ("peter-panning"). Ajústalo según sea necesario.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_blur:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_blur** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_blur>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Difumina los bordes de la sombra. Se puede usar para ocultar artefactos de píxeles en mapas de sombras de baja resolución. Un valor alto puede afectar el rendimiento, hacer que las sombras parezcan granuladas y puede causar otros artefactos no deseados. Intenta mantenerte lo más cerca posible del valor predeterminado.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_caster_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_caster_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_shadow_caster_mask>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_caster_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_caster_mask**\ (\ )

La luz solo proyectará sombras utilizando objetos en las capas seleccionadas.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_enabled** = ``false`` :ref:`🔗<class_Light3D_property_shadow_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_shadow**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_shadow**\ (\ )

Si es ``true``, la luz proyectará sombras en tiempo real. Esto tiene un costo de rendimiento significativo. Solo habilita el renderizado de sombras cuando haga una diferencia notable en la apariencia de la escena, y considera usar :ref:`distance_fade_enabled<class_Light3D_property_distance_fade_enabled>` para ocultar la luz cuando esté lejos de la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_normal_bias** = ``2.0`` :ref:`🔗<class_Light3D_property_shadow_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Desplaza la búsqueda en el mapa de sombras por la normal del objeto. Esto se puede usar para reducir los artefactos de auto-sombreado sin usar :ref:`shadow_bias<class_Light3D_property_shadow_bias>`. En la práctica, este valor debe ajustarse junto con :ref:`shadow_bias<class_Light3D_property_shadow_bias>` para reducir los artefactos tanto como sea posible.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_opacity:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_opacity** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_opacity>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

La opacidad a usar al renderizar el mapa de sombras de la luz. Los valores inferiores a ``1.0`` hacen que la luz aparezca a través de las sombras. Esto se puede usar para simular la iluminación global a un bajo costo de rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_reverse_cull_face:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_reverse_cull_face** = ``false`` :ref:`🔗<class_Light3D_property_shadow_reverse_cull_face>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_reverse_cull_face**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_shadow_reverse_cull_face**\ (\ )

Si es ``true``, invierte el descarte de caras traseras de la malla. Esto puede ser útil cuando tienes una malla plana que tiene una luz detrás de ella. Si necesitas proyectar una sombra en ambos lados de la malla, establece la malla para usar sombras de doble cara con :ref:`GeometryInstance3D.SHADOW_CASTING_SETTING_DOUBLE_SIDED<class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_transmittance_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_transmittance_bias** = ``0.05`` :ref:`🔗<class_Light3D_property_shadow_transmittance_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Light3D_method_get_correlated_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_correlated_color**\ (\ ) |const| :ref:`🔗<class_Light3D_method_get_correlated_color>`

Devuelve el :ref:`Color<class_Color>` de un cuerpo negro idealizado a la :ref:`light_temperature<class_Light3D_property_light_temperature>` dada. Este valor se calcula internamente basándose en la :ref:`light_temperature<class_Light3D_property_light_temperature>`. Este :ref:`Color<class_Color>` se multiplica por :ref:`light_color<class_Light3D_property_light_color>` antes de enviarse al :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const| :ref:`🔗<class_Light3D_method_get_param>`

Devuelve el valor del parámetro :ref:`Param<enum_Light3D_Param>` especificado.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Light3D_method_set_param>`

Establece el valor del parámetro :ref:`Param<enum_Light3D_Param>` especificado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
