:github_url: hide

.. _class_GPUParticlesCollisionSDF3D:

GPUParticlesCollisionSDF3D
==========================

**Hereda:** :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A baked signed distance field 3D particle collision shape affecting :ref:`GPUParticles3D<class_GPUParticles3D>` nodes.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A baked signed distance field 3D particle collision shape affecting :ref:`GPUParticles3D<class_GPUParticles3D>` nodes.

Signed distance fields (SDF) allow for efficiently representing approximate collision shapes for convex and concave objects of any shape. This is more flexible than :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>`, but it requires a baking step.

\ **Baking:** The signed distance field texture can be baked by selecting the **GPUParticlesCollisionSDF3D** node in the editor, then clicking **Bake SDF** at the top of the 3D viewport. Any *visible* :ref:`MeshInstance3D<class_MeshInstance3D>`\ s within the :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` will be taken into account for baking, regardless of their :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`.

\ **Note:** Baking a **GPUParticlesCollisionSDF3D**'s :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` is only possible within the editor, as there is no bake method exposed for use in exported projects. However, it's still possible to load pre-baked :ref:`Texture3D<class_Texture3D>`\ s into its :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` property in an exported project.

\ **Note:** :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` must be :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` or :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` on the :ref:`GPUParticles3D<class_GPUParticles3D>`'s process material for collision to work.

\ **Note:** Particle collision only affects :ref:`GPUParticles3D<class_GPUParticles3D>`, not :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                         | :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>`   | ``4294967295``       |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` | :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>` | ``2``                |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                 | :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>`             | ``Vector3(2, 2, 2)`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Texture3D<class_Texture3D>`                             | :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>`       |                      |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                     | :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>`   | ``1.0``              |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_GPUParticlesCollisionSDF3D_Resolution:

.. rst-class:: classref-enumeration

enum **Resolution**: :ref:`🔗<enum_GPUParticlesCollisionSDF3D_Resolution>`

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_16:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_16** = ``0``

Procesa un campo de distancia firmado de 16×16×16. Esta es la opción más rápida, pero también la menos precisa.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_32:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_32** = ``1``

Procesa un campo de distancia firmado de 32×32×32.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_64:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_64** = ``2``

Procesa un campo de distancia firmado de 64×64×64.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_128:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_128** = ``3``

Procesa un campo de distancia firmado de 128×128×128.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_256:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_256** = ``4``

Procesa un campo de distancia firmado de 256×256×256.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_512:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_512** = ``5``

Procesa un campo de distancia firmado de 512×512×512. Esta es la opción más lenta, pero también la más precisa.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_MAX** = ``6``

Representa el tamaño del enum :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GPUParticlesCollisionSDF3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

Las capas visuales a tener en cuenta al procesar el SDF de colisión de partículas. Solo los :ref:`MeshInstance3D<class_MeshInstance3D>` cuyo :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` coincidan con esta :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` se incluirán en el SDF de colisión de partículas generado. Por defecto, todos los objetos se tienen en cuenta para el baking del SDF de colisión de partículas.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_resolution:

.. rst-class:: classref-property

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **resolution** = ``2`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>`\ )
- :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **get_resolution**\ (\ )

La resolución de procesado a utilizar para el campo de distancia con signo :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>`. La textura debe ser procesada de nuevo para que los cambios en la propiedad :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>` sean efectivos. Las resoluciones más altas tienen un mayor coste de rendimiento y tardan más tiempo en procesarse. Las resoluciones más altas también dan como resultado texturas procesadas más grandes, lo que conlleva un aumento de los requisitos de VRAM y espacio de almacenamiento. Para mejorar el rendimiento y reducir los tiempos de procesado, utiliza la resolución más baja posible para el objeto que estás representando la colisión.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

El tamaño del SDF de colisión en unidades 3D. Para mejorar la calidad del SDF, el :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` debe establecerse lo más pequeño posible, cubriendo las partes de la escena que necesites.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

La textura 3D que representa el campo de distancia con signo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_thickness:

.. rst-class:: classref-property

:ref:`float<class_float>` **thickness** = ``1.0`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_thickness**\ (\ )

El grosor de la forma de colisión. A diferencia de otros colisionadores de partículas, **GPUParticlesCollisionSDF3D** es en realidad hueco en su interior. :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>` puede aumentarse para evitar que las partículas atraviesen la forma de colisión a altas velocidades, o cuando se mueve el **GPUParticlesCollisionSDF3D**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`

Devuelve si la capa especificada de :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` está habilitada, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en el :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>`, dado un ``layer_number`` entre 1 y 32.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
