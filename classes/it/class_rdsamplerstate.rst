:github_url: hide

.. _class_RDSamplerState:

RDSamplerState
==============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stato del campionatore (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto è utilizzato dal :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>`     | ``1.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` | :ref:`border_color<class_RDSamplerState_property_border_color>`         | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`       | :ref:`compare_op<class_RDSamplerState_property_compare_op>`             | ``7``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`enable_compare<class_RDSamplerState_property_enable_compare>`     | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`lod_bias<class_RDSamplerState_property_lod_bias>`                 | ``0.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`mag_filter<class_RDSamplerState_property_mag_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`max_lod<class_RDSamplerState_property_max_lod>`                   | ``1e+20`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`min_filter<class_RDSamplerState_property_min_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`min_lod<class_RDSamplerState_property_min_lod>`                   | ``0.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`mip_filter<class_RDSamplerState_property_mip_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_u<class_RDSamplerState_property_repeat_u>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_v<class_RDSamplerState_property_repeat_v>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_w<class_RDSamplerState_property_repeat_w>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`unnormalized_uvw<class_RDSamplerState_property_unnormalized_uvw>` | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>`     | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDSamplerState_property_anisotropy_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anisotropy_max** = ``1.0`` :ref:`🔗<class_RDSamplerState_property_anisotropy_max>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropy_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_anisotropy_max**\ (\ )

Anisotropia massima che può essere usata durante il campionamento. Efficace solo se :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` è ``true``. Valori più alti producono un campionatore più nitido ad angoli obliqui, a scapito delle prestazioni (a causa della banda di memoria). Questo valore può essere limitato dall'hardware grafico in uso. La maggior parte dell'hardware grafico supporta solo valori fino a ``16.0``.

Se :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>` è ``1.0``, disabilita forzatamente l'anisotropia anche se :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_border_color:

.. rst-class:: classref-property

:ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **border_color** = ``2`` :ref:`🔗<class_RDSamplerState_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>`\ )
- :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **get_border_color**\ (\ )

Il colore del bordo che sarà restituito quando si effettua il campionamento al di fuori dei limiti del campionatore e le modalità :ref:`repeat_u<class_RDSamplerState_property_repeat_u>`, :ref:`repeat_v<class_RDSamplerState_property_repeat_v>` o :ref:`repeat_w<class_RDSamplerState_property_repeat_w>` hanno la ripetizione disabilitata.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_compare_op:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **compare_op** = ``7`` :ref:`🔗<class_RDSamplerState_property_compare_op>`

.. rst-class:: classref-property-setget

- |void| **set_compare_op**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_compare_op**\ (\ )

L'operazione di confronto da utilizzare. Efficace solo se :ref:`enable_compare<class_RDSamplerState_property_enable_compare>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_enable_compare:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_compare** = ``false`` :ref:`🔗<class_RDSamplerState_property_enable_compare>`

.. rst-class:: classref-property-setget

- |void| **set_enable_compare**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_compare**\ (\ )

Se ``true``, i valori restituiti saranno basati sull'operazione di confronto definita in :ref:`compare_op<class_RDSamplerState_property_compare_op>`. Questo è un approccio basato sull'hardware ed è quindi più veloce rispetto all'esecuzione manuale in uno shader. Ad esempio, le operazioni di confronto sono utilizzate per renderizzare la mappa delle ombre confrontando i valori di profondità da un campionatore di ombre.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

Il bias LOD delle mipmap da usare. I valori positivi renderanno il campionatore più sfocato a una certa distanza, mentre i valori negativi renderanno il campionatore più nitido a una certa distanza (con il rischio di apparire granuloso). I valori consigliati sono compresi tra ``-0.5`` e ``0.0``. Efficace solo se il campionatore ha mipmap disponibili.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mag_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mag_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mag_filter**\ (\ )

Il filtro di ingrandimento del campionatore. È il metodo di filtraggio utilizzato quando si campionano texel che appaiono più grandi dei pixel sullo schermo.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_max_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_lod** = ``1e+20`` :ref:`🔗<class_RDSamplerState_property_max_lod>`

.. rst-class:: classref-property-setget

- |void| **set_max_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_lod**\ (\ )

Il bias LOD massimo delle mipmap da visualizzare (risoluzione minima). Efficace solo se il campionatore ha mipmap disponibili.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **min_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_min_filter**\ (\ )

Il filtro di rimpicciolimento del campionatore. È il metodo di filtraggio utilizzato quando si campionano texel che appaiono più piccoli dei pixel sullo schermo.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_lod** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_min_lod>`

.. rst-class:: classref-property-setget

- |void| **set_min_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_lod**\ (\ )

Il bias LOD minimo delle mipmap da visualizzare (risoluzione massima). Efficace solo se il campionatore ha mipmap disponibili.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mip_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mip_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mip_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mip_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mip_filter**\ (\ )

Il metodo di filtraggio da utilizzare per le mipmap.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_u:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_u** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_u>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_u**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_u**\ (\ )

La modalità di ripetizione da utilizzare lungo l'asse U delle coordinate UV. Ciò influisce sui valori restituiti se si effettua il campionamento al di fuori dei limiti dell'UV.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_v:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_v** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_v>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_v**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_v**\ (\ )

La modalità di ripetizione da utilizzare lungo l'asse V delle coordinate UV. Ciò influisce sui valori restituiti se si effettua il campionamento al di fuori dei limiti dell'UV.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_w:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_w** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_w>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_w**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_w**\ (\ )

La modalità di ripetizione da utilizzare lungo l'asse W delle coordinate UV. Ciò influisce sui valori restituiti se si effettua il campionamento al di fuori dei limiti dell'UV. Efficace solo per campionatori 3D.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_unnormalized_uvw:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unnormalized_uvw** = ``false`` :ref:`🔗<class_RDSamplerState_property_unnormalized_uvw>`

.. rst-class:: classref-property-setget

- |void| **set_unnormalized_uvw**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_unnormalized_uvw**\ (\ )

Se ``true``, la texture sarà campionata con coordinate che vanno da 0 alla risoluzione della texture. Altrimenti, le coordinate saranno normalizzate e andranno da 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_use_anisotropy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_anisotropy** = ``false`` :ref:`🔗<class_RDSamplerState_property_use_anisotropy>`

.. rst-class:: classref-property-setget

- |void| **set_use_anisotropy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_anisotropy**\ (\ )

Se ``true``, esegue il campionamento anisotropico. Vedi :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
