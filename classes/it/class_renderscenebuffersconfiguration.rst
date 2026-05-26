:github_url: hide

.. _class_RenderSceneBuffersConfiguration:

RenderSceneBuffersConfiguration
===============================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Oggetto di configurazione utilizzato per configurare un oggetto :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto di configurazione viene creato e popolato dal motore di rendering in caso di modifiche a una viewport e utilizzato per (ri)configurare un oggetto :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` | :ref:`anisotropic_filtering_level<class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level>` | ``2``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                              | :ref:`fsr_sharpness<class_RenderSceneBuffersConfiguration_property_fsr_sharpness>`                             | ``0.0``            |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                        | :ref:`internal_size<class_RenderSceneBuffersConfiguration_property_internal_size>`                             | ``Vector2i(0, 0)`` |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`                                 | :ref:`msaa_3d<class_RenderSceneBuffersConfiguration_property_msaa_3d>`                                         | ``0``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`RID<class_RID>`                                                                  | :ref:`render_target<class_RenderSceneBuffersConfiguration_property_render_target>`                             | ``RID()``          |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>`               | :ref:`scaling_3d_mode<class_RenderSceneBuffersConfiguration_property_scaling_3d_mode>`                         | ``255``            |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>`               | :ref:`screen_space_aa<class_RenderSceneBuffersConfiguration_property_screen_space_aa>`                         | ``0``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                        | :ref:`target_size<class_RenderSceneBuffersConfiguration_property_target_size>`                                 | ``Vector2i(0, 0)`` |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                              | :ref:`texture_mipmap_bias<class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias>`                 | ``0.0``            |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                                                  | :ref:`view_count<class_RenderSceneBuffersConfiguration_property_view_count>`                                   | ``1``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level:

.. rst-class:: classref-property

:ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **anisotropic_filtering_level** = ``2`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropic_filtering_level**\ (\ value\: :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>`\ )
- :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **get_anisotropic_filtering_level**\ (\ )

Livello del filtro anisotropico.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_fsr_sharpness:

.. rst-class:: classref-property

:ref:`float<class_float>` **fsr_sharpness** = ``0.0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_fsr_sharpness>`

.. rst-class:: classref-property-setget

- |void| **set_fsr_sharpness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fsr_sharpness**\ (\ )

Nitidezza del FSR applicabile se si utilizza il sovracampionamento FSR.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_internal_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **internal_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_internal_size>`

.. rst-class:: classref-property-setget

- |void| **set_internal_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_internal_size**\ (\ )

La dimensione del buffer di rendering 3D utilizzato per renderizzare.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_msaa_3d:

.. rst-class:: classref-property

:ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **msaa_3d** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_msaa_3d>`

.. rst-class:: classref-property-setget

- |void| **set_msaa_3d**\ (\ value\: :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`\ )
- :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **get_msaa_3d**\ (\ )

La modalità del MSAA che utilizziamo per il rendering 3D.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_render_target:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **render_target** = ``RID()`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_render_target>`

.. rst-class:: classref-property-setget

- |void| **set_render_target**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_render_target**\ (\ )

La destinazione di rendering associata a questi buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_scaling_3d_mode:

.. rst-class:: classref-property

:ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **scaling_3d_mode** = ``255`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_scaling_3d_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scaling_3d_mode**\ (\ value\: :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>`\ )
- :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **get_scaling_3d_mode**\ (\ )

La modalità di ridimensionamento richiesta con cui sovracampionare o sottocampionare se :ref:`internal_size<class_RenderSceneBuffersConfiguration_property_internal_size>` e :ref:`target_size<class_RenderSceneBuffersConfiguration_property_target_size>` non sono uguali.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_screen_space_aa:

.. rst-class:: classref-property

:ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **screen_space_aa** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_screen_space_aa>`

.. rst-class:: classref-property-setget

- |void| **set_screen_space_aa**\ (\ value\: :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>`\ )
- :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **get_screen_space_aa**\ (\ )

L'antialiasing nello spazio dello schermo applicato in post-elaborazione.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_target_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **target_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_target_size>`

.. rst-class:: classref-property-setget

- |void| **set_target_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_target_size**\ (\ )

Le dimensioni (sovracampionamento) se si utilizza il ridimensionamento.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_mipmap_bias** = ``0.0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mipmap_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_mipmap_bias**\ (\ )

Bias applied to mipmaps.

\ **Note:** This property is only supported in the Forward+ and Mobile renderers, not Compatibility. In Compatibility, this property is always treated as if it was set to ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_view_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **view_count** = ``1`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_view_count>`

.. rst-class:: classref-property-setget

- |void| **set_view_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_view_count**\ (\ )

Il numero di viste che stiamo renderizzando.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
