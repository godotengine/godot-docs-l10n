:github_url: hide

.. _class_CanvasItemMaterial:

CanvasItemMaterial
==================

**Hereda:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un material para :ref:`CanvasItem<class_CanvasItem>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los **CanvasItemMaterial**\ s proporcionan un medio de modificar las texturas asociadas a un CanvasItem. Se especializan en describir los comportamientos de mezcla e iluminación de las texturas. Utiliza un :ref:`ShaderMaterial<class_ShaderMaterial>` para personalizar más completamente las interacciones de un material con un :ref:`CanvasItem<class_CanvasItem>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` | :ref:`blend_mode<class_CanvasItemMaterial_property_blend_mode>`                           | ``0``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`LightMode<enum_CanvasItemMaterial_LightMode>` | :ref:`light_mode<class_CanvasItemMaterial_property_light_mode>`                           | ``0``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                               | :ref:`particles_anim_h_frames<class_CanvasItemMaterial_property_particles_anim_h_frames>` |           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`particles_anim_loop<class_CanvasItemMaterial_property_particles_anim_loop>`         |           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                               | :ref:`particles_anim_v_frames<class_CanvasItemMaterial_property_particles_anim_v_frames>` |           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>`         | ``false`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_CanvasItemMaterial_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_CanvasItemMaterial_BlendMode>`

.. _class_CanvasItemMaterial_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_MIX** = ``0``

Modo de mezcla. Se supone que los colores son independientes del valor alfa (opacidad).

.. _class_CanvasItemMaterial_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_ADD** = ``1``

Modo de mezcla de añadidos.

.. _class_CanvasItemMaterial_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_SUB** = ``2``

Modo de mezcla de substracción.

.. _class_CanvasItemMaterial_constant_BLEND_MODE_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_MUL** = ``3``

Modo de mezcla multiplicativo.

.. _class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_PREMULT_ALPHA** = ``4``

Modo de mezcla Mix. Se supone que los colores se premultiplican por el valor alfa (opacidad).

.. rst-class:: classref-item-separator

----

.. _enum_CanvasItemMaterial_LightMode:

.. rst-class:: classref-enumeration

enum **LightMode**: :ref:`🔗<enum_CanvasItemMaterial_LightMode>`

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_NORMAL** = ``0``

Renderizar el material utilizando tanto las propiedades de los materiales sensibles a la luz como las que no lo son.

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_UNSHADED:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_UNSHADED** = ``1``

Renderiza el material como si no hubiera luz.

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_LIGHT_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_LIGHT_ONLY** = ``2``

Renderizar el material como si sólo hubiera luz.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CanvasItemMaterial_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_CanvasItemMaterial_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>`\ )
- :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **get_blend_mode**\ (\ )

La manera en que la representación de un material se aplica a las texturas inferiores.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_light_mode:

.. rst-class:: classref-property

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **light_mode** = ``0`` :ref:`🔗<class_CanvasItemMaterial_property_light_mode>`

.. rst-class:: classref-property-setget

- |void| **set_light_mode**\ (\ value\: :ref:`LightMode<enum_CanvasItemMaterial_LightMode>`\ )
- :ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **get_light_mode**\ (\ )

La manera en que el material reacciona a la iluminación.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_h_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **particles_anim_h_frames** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_h_frames>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_h_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_particles_anim_h_frames**\ (\ )

El número de columnas en la spritesheet asignada como :ref:`Texture2D<class_Texture2D>` para un :ref:`GPUParticles2D<class_GPUParticles2D>` o :ref:`CPUParticles2D<class_CPUParticles2D>`.

\ **Nota:** Esta propiedad solo se utiliza y es visible en el editor si :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particles_anim_loop** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_loop>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particles_anim_loop**\ (\ )

Si es ``true``, la animación de las partículas se hará en bucle.

\ **Nota:** Esta propiedad sólo se usa y es visible en el editor si :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_v_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **particles_anim_v_frames** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_v_frames>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_v_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_particles_anim_v_frames**\ (\ )

El número de filas en la spritesheet asignada como :ref:`Texture2D<class_Texture2D>` para un :ref:`GPUParticles2D<class_GPUParticles2D>` o :ref:`CPUParticles2D<class_CPUParticles2D>`.

\ **Nota:** Esta propiedad solo se usa y es visible en el editor si :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_animation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particles_animation** = ``false`` :ref:`🔗<class_CanvasItemMaterial_property_particles_animation>`

.. rst-class:: classref-property-setget

- |void| **set_particles_animation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particles_animation**\ (\ )

If ``true``, enable spritesheet-based animation features when assigned to :ref:`GPUParticles2D<class_GPUParticles2D>` and :ref:`CPUParticles2D<class_CPUParticles2D>` nodes. The :ref:`ParticleProcessMaterial.anim_speed_max<class_ParticleProcessMaterial_property_anim_speed_max>` or :ref:`CPUParticles2D.anim_speed_max<class_CPUParticles2D_property_anim_speed_max>` should also be set to a positive value for the animation to play.

This property (and other ``particles_anim_*`` properties that depend on it) has no effect on other types of nodes.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
