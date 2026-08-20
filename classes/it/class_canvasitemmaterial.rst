:github_url: hide

.. _class_CanvasItemMaterial:

CanvasItemMaterial
==================

**Eredita:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un materiale per i :ref:`CanvasItem<class_CanvasItem>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I **CanvasItemMaterial** forniscono un mezzo per modificare le texture associate a un CanvasItem. Sono specializzati nella descrizione dei comportamenti di fusione e illuminazione per le texture. Utilizza uno :ref:`ShaderMaterial<class_ShaderMaterial>` per personalizzare appieno le interazioni di un materiale con un :ref:`CanvasItem<class_CanvasItem>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Enumerazioni
------------------------

.. _enum_CanvasItemMaterial_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_CanvasItemMaterial_BlendMode>`

.. _class_CanvasItemMaterial_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_MIX** = ``0``

Modalità di fusione mista. Si presuppone che i colori siano indipendenti dal valore alfa (opacità).

.. _class_CanvasItemMaterial_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_ADD** = ``1``

Modalità di fusione additiva.

.. _class_CanvasItemMaterial_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_SUB** = ``2``

Modalità di fusione sottrattiva.

.. _class_CanvasItemMaterial_constant_BLEND_MODE_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_MUL** = ``3``

Modalità di fusione moltiplicativa.

.. _class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_PREMULT_ALPHA** = ``4``

Modalità di fusione mista. Si presuppone che i colori siano premoltiplicati per il valore alfa (opacità).

.. rst-class:: classref-item-separator

----

.. _enum_CanvasItemMaterial_LightMode:

.. rst-class:: classref-enumeration

enum **LightMode**: :ref:`🔗<enum_CanvasItemMaterial_LightMode>`

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_NORMAL** = ``0``

Renderizza il materiale usando proprietà del materiale sia sensibili alla luce sia non sensibili alla luce.

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_UNSHADED:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_UNSHADED** = ``1``

Renderizza il materiale come se non ci fosse luce.

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_LIGHT_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_LIGHT_ONLY** = ``2``

Renderizza il materiale come se ci fosse solo luce.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CanvasItemMaterial_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_CanvasItemMaterial_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>`\ )
- :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **get_blend_mode**\ (\ )

Il modo in cui il rendering di un materiale è applicato alle texture sottostanti.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_light_mode:

.. rst-class:: classref-property

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **light_mode** = ``0`` :ref:`🔗<class_CanvasItemMaterial_property_light_mode>`

.. rst-class:: classref-property-setget

- |void| **set_light_mode**\ (\ value\: :ref:`LightMode<enum_CanvasItemMaterial_LightMode>`\ )
- :ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **get_light_mode**\ (\ )

Il modo in cui il materiale reagisce all'illuminazione.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_h_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **particles_anim_h_frames** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_h_frames>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_h_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_particles_anim_h_frames**\ (\ )

Il numero di colonne nello spritesheet assegnato come :ref:`Texture2D<class_Texture2D>` per un :ref:`GPUParticles2D<class_GPUParticles2D>` o :ref:`CPUParticles2D<class_CPUParticles2D>`.

\ **Nota:** Questa proprietà è usata e visibile nell'editor solo se :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particles_anim_loop** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_loop>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particles_anim_loop**\ (\ )

Se ``true``, l'animazione delle particelle si ripeterà.

\ **Nota:** Questa proprietà è usata e visibile nell'editor solo se :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_v_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **particles_anim_v_frames** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_v_frames>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_v_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_particles_anim_v_frames**\ (\ )

Il numero di righe nello spritesheet assegnato come :ref:`Texture2D<class_Texture2D>` per un :ref:`GPUParticles2D<class_GPUParticles2D>` o :ref:`CPUParticles2D<class_CPUParticles2D>`.

\ **Nota:** Questa proprietà è usata e visibile nell'editor solo se :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_animation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particles_animation** = ``false`` :ref:`🔗<class_CanvasItemMaterial_property_particles_animation>`

.. rst-class:: classref-property-setget

- |void| **set_particles_animation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particles_animation**\ (\ )

Se ``true``, abilita le funzionalità di animazione basate su spritesheet quando assegnato ai nodi :ref:`GPUParticles2D<class_GPUParticles2D>` e :ref:`CPUParticles2D<class_CPUParticles2D>`. Anche :ref:`ParticleProcessMaterial.anim_speed_max<class_ParticleProcessMaterial_property_anim_speed_max>` o :ref:`CPUParticles2D.anim_speed_max<class_CPUParticles2D_property_anim_speed_max>` devono essere impostati su un valore positivo affinché l'animazione possa essere riprodotta.

Questa proprietà (e altre proprietà ``particles_anim_*`` che dipendono da essa) non ha effetto su altri tipi di nodi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
