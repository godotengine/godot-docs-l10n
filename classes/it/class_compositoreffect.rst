:github_url: hide

.. _class_CompositorEffect:

CompositorEffect
================

**Sperimentale:** The implementation may change as more of the rendering internals are exposed over time.

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Questa risorsa consente di creare un effetto di rendering personalizzato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa risorsa definisce un effetto di rendering personalizzato che può essere applicato alle :ref:`Viewport<class_Viewport>` attraverso l':ref:`Environment<class_Environment>` delle viewport. È possibile implementare un callback che è chiamato durante il rendering in una determinata fase della pipeline di rendering e consente di inserire passaggi aggiuntivi. Nota che questo callback avviene sul thread di rendering. CompositorEffect è una classe base astratta e deve essere estesa per implementare una logica di rendering specifica.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Il compositore <../tutorials/rendering/compositor>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`access_resolved_color<class_CompositorEffect_property_access_resolved_color>`     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`access_resolved_depth<class_CompositorEffect_property_access_resolved_depth>`     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` | :ref:`effect_callback_type<class_CompositorEffect_property_effect_callback_type>`       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`enabled<class_CompositorEffect_property_enabled>`                                 |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`needs_motion_vectors<class_CompositorEffect_property_needs_motion_vectors>`       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`needs_normal_roughness<class_CompositorEffect_property_needs_normal_roughness>`   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`needs_separate_specular<class_CompositorEffect_property_needs_separate_specular>` |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_render_callback<class_CompositorEffect_private_method__render_callback>`\ (\ effect_callback_type\: :ref:`int<class_int>`, render_data\: :ref:`RenderData<class_RenderData>`\ ) |virtual| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_CompositorEffect_EffectCallbackType:

.. rst-class:: classref-enumeration

enum **EffectCallbackType**: :ref:`🔗<enum_CompositorEffect_EffectCallbackType>`

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_PRE_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_PRE_OPAQUE** = ``0``

Il callback viene richiamato prima del nostro passaggio di rendering opaco, ma dopo il pre-passaggio di profondità (se applicabile).

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_OPAQUE** = ``1``

Il callback viene richiamato dopo il nostro passaggio di rendering opaco, ma prima che venga renderizzato il cielo.

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_SKY** = ``2``

Il callback viene chiamato dopo aver renderizzato il cielo, ma prima di creare i back buffer (e, se abilitato, prima del subsurface scattering e/o dei riflessi nello spazio dello schermo).

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT** = ``3``

Il callback viene chiamato prima del nostro passaggio di rendering trasparente, ma dopo che il cielo è stato renderizzato e abbiamo creato i nostri back buffer.

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_TRANSPARENT** = ``4``

Il callback viene chiamato dopo il passaggio di rendering trasparente, ma prima di qualsiasi effetto di post-elaborazione e inviato sulla destinazione di rendering.

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_MAX** = ``5``

Rappresenta la dimensione dell'enumerazione :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CompositorEffect_property_access_resolved_color:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **access_resolved_color** :ref:`🔗<class_CompositorEffect_property_access_resolved_color>`

.. rst-class:: classref-property-setget

- |void| **set_access_resolved_color**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_access_resolved_color**\ (\ )

Se ``true`` e l'MSAA è abilitato, sarà attivata la risoluzione del buffer di colore prima che l'effetto sia eseguito.

\ **Nota:** In :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>`, per accedere al buffer risolto usa:

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var color_buffer = render_scene_buffers.get_texture("render_buffers", "color")

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_access_resolved_depth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **access_resolved_depth** :ref:`🔗<class_CompositorEffect_property_access_resolved_depth>`

.. rst-class:: classref-property-setget

- |void| **set_access_resolved_depth**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_access_resolved_depth**\ (\ )

Se ``true`` e l'MSAA è abilitato, sarà attivata la risoluzione del buffer di profondità prima che l'effetto sia eseguito.

\ **Nota:** In :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>`, per accedere al buffer risolto usa:

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var depth_buffer = render_scene_buffers.get_texture("render_buffers", "depth")

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_effect_callback_type:

.. rst-class:: classref-property

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **effect_callback_type** :ref:`🔗<class_CompositorEffect_property_effect_callback_type>`

.. rst-class:: classref-property-setget

- |void| **set_effect_callback_type**\ (\ value\: :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>`\ )
- :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **get_effect_callback_type**\ (\ )

Il tipo di effetto che è implementato. Determina in quale fase del rendering viene chiamato il callback.

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** :ref:`🔗<class_CompositorEffect_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

Se ``true`` questo effetto di rendering è applicato a qualsiasi viewport a cui viene aggiunto.

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_motion_vectors:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_motion_vectors** :ref:`🔗<class_CompositorEffect_property_needs_motion_vectors>`

.. rst-class:: classref-property-setget

- |void| **set_needs_motion_vectors**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_motion_vectors**\ (\ )

Se ``true`` questo attiva i vettori di movimento calcolati durante lo stato del rendering opaco.

\ **Nota:** In :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>`, per accedere al buffer dei vettori di movimento usa:

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var motion_buffer = render_scene_buffers.get_velocity_texture()

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_normal_roughness:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_normal_roughness** :ref:`🔗<class_CompositorEffect_property_needs_normal_roughness>`

.. rst-class:: classref-property-setget

- |void| **set_needs_normal_roughness**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_normal_roughness**\ (\ )

Se ``true`` questo assicura che i dati di normale e di rugosità siano prodotti durante il nostro pre-passaggio di profondità, applicabile solo per il renderer Forward+.

\ **Nota:** In :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>`, per accedere al buffer di rugosità usa:

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var roughness_buffer = render_scene_buffers.get_texture("forward_clustered", "normal_roughness")

Il buffer grezzo di rugosità e di normale è memorizzato in un formato ottimizzato, diverso da quello disponibile negli shader Spatial. Quando viene campionato il buffer, è necessario applicare una funzione di conversione. Usa questa funzione, copiata da `qui <https://github.com/godotengine/godot/blob/da5f39889f155658cef7f7ec3cc1abb94e17d815/servers/rendering/renderer_rd/shaders/forward_clustered/scene_forward_clustered_inc.glsl#L334-L341>`__:

::

    vec4 normal_roughness_compatibility(vec4 p_normal_roughness) {
        float roughness = p_normal_roughness.w;
        if (roughness > 0.5) {
            roughness = 1.0 - roughness;
        }
        roughness /= (127.0 / 255.0);
        return vec4(normalize(p_normal_roughness.xyz * 2.0 - 1.0) * 0.5 + 0.5, roughness);
    }

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_separate_specular:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_separate_specular** :ref:`🔗<class_CompositorEffect_property_needs_separate_specular>`

.. rst-class:: classref-property-setget

- |void| **set_needs_separate_specular**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_separate_specular**\ (\ )

Se ``true`` questo attiva il rendering dei dati speculari in un buffer separato e li combina dopo che gli effetti siano applicati, applicabile solo per il renderer Forward+.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CompositorEffect_private_method__render_callback:

.. rst-class:: classref-method

|void| **_render_callback**\ (\ effect_callback_type\: :ref:`int<class_int>`, render_data\: :ref:`RenderData<class_RenderData>`\ ) |virtual| :ref:`🔗<class_CompositorEffect_private_method__render_callback>`

Implementa questa funzione con il tuo codice di rendering personalizzato. ``effect_callback_type`` dovrebbe sempre corrispondere al tipo di callback dell'effetto specificato in :ref:`effect_callback_type<class_CompositorEffect_property_effect_callback_type>`. ``render_data`` fornisce l'accesso allo stato di rendering, è valido solo durante il rendering e non dovrebbe essere memorizzato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
