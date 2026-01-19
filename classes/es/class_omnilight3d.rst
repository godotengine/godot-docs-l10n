:github_url: hide

.. meta::
	:keywords: point

.. _class_OmniLight3D:

OmniLight3D
===========

**Hereda:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Luz omnidireccional, como una bombilla o una vela.

.. rst-class:: classref-introduction-group

Descripción
----------------------

An Omnidirectional light is a type of :ref:`Light3D<class_Light3D>` that emits light in all directions. The light is attenuated by distance and this attenuation can be configured by changing its energy, radius, and attenuation parameters.

\ **Note:** When using the Mobile rendering method, only 8 omni lights can be displayed on each mesh resource. Attempting to display more than 8 omni lights on a single mesh resource will result in omni lights flickering in and out as the camera moves. When using the Compatibility rendering method, only 8 omni lights can be displayed on each mesh resource by default, but this can be increased by adjusting :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`.

\ **Note:** When using the Mobile or Compatibility rendering methods, omni lights will only correctly affect meshes whose visibility AABB intersects with the light's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` must be increased on the mesh. Otherwise, the light may not be visible on the mesh.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Luces y sombras 3D <../tutorials/3d/lights_and_shadows>`

- :doc:`Falsificar la iluminación global <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | light_specular                                                       | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` | ``1.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_range<class_OmniLight3D_property_omni_range>`             | ``5.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` | :ref:`omni_shadow_mode<class_OmniLight3D_property_omni_shadow_mode>` | ``1``                                                                         |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | shadow_normal_bias                                                   | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_OmniLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_OmniLight3D_ShadowMode>`

.. _class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_DUAL_PARABOLOID** = ``0``

Las sombras se convierten en una textura de doble paraboloide. Más rápido que :ref:`SHADOW_CUBE<class_OmniLight3D_constant_SHADOW_CUBE>`, pero de menor calidad.

.. _class_OmniLight3D_constant_SHADOW_CUBE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_CUBE** = ``1``

Shadows are rendered to a cubemap. Slower than :ref:`SHADOW_DUAL_PARABOLOID<class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID>`, but higher-quality.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OmniLight3D_property_omni_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_attenuation** = ``1.0`` :ref:`🔗<class_OmniLight3D_property_omni_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Controls the distance attenuation function for omnilights.

A value of ``0.0`` will maintain a constant brightness through most of the range, but smoothly attenuate the light at the edge of the range. Use a value of ``2.0`` for physically accurate lights as it results in the proper inverse square attenutation.

\ **Note:** Setting attenuation to ``2.0`` or higher may result in distant objects receiving minimal light, even within range. For example, with a range of ``4096``, an object at ``100`` units is attenuated by a factor of ``0.0001``. With a default brightness of ``1``, the light would not be visible at that distance.

\ **Note:** Using negative or values higher than ``10.0`` may lead to unexpected results.

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_range** = ``5.0`` :ref:`🔗<class_OmniLight3D_property_omni_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

The light's radius. Note that the effectively lit area may appear to be smaller depending on the :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` in use. No matter the :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` in use, the light will never reach anything outside this radius.

\ **Note:** :ref:`omni_range<class_OmniLight3D_property_omni_range>` is not affected by :ref:`Node3D.scale<class_Node3D_property_scale>` (the light's scale or its parent's scale).

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **omni_shadow_mode** = ``1`` :ref:`🔗<class_OmniLight3D_property_omni_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
