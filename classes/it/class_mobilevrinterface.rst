:github_url: hide

.. _class_MobileVRInterface:

MobileVRInterface
=================

**Eredita:** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Implementazione generica di realtà virtuale (VR) mobile.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa è un'implementazione generica di VR mobile in cui devi fornire dettagli sul telefono e sull'HMD utilizzati. Non si basa su alcun framework esistente. Questa è l'interfaccia più basilare disponibile. Per ottenere l'effetto migliore, hai bisogno di un telefono cellulare con giroscopio e accelerometro.

Nota che anche se non c'è tracciamento posizionale, la telecamera presumerà che il visore si trovi a un'altezza di 1,85 metri. È possibile modificare questo valore impostando :ref:`eye_height<class_MobileVRInterface_property_eye_height>`.

È possibile inizializzare questa interfaccia come segue:

::

    var interface = XRServer.find_interface("Native mobile")
    if interface and interface.initialize():
        get_viewport().use_xr = true

\ **Nota:** Per Android, :ref:`ProjectSettings.input_devices/sensors/enable_accelerometer<class_ProjectSettings_property_input_devices/sensors/enable_accelerometer>`, :ref:`ProjectSettings.input_devices/sensors/enable_gravity<class_ProjectSettings_property_input_devices/sensors/enable_gravity>`, :ref:`ProjectSettings.input_devices/sensors/enable_gyroscope<class_ProjectSettings_property_input_devices/sensors/enable_gyroscope>` e :ref:`ProjectSettings.input_devices/sensors/enable_magnetometer<class_ProjectSettings_property_input_devices/sensors/enable_magnetometer>` devono essere abilitati.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`display_to_lens<class_MobileVRInterface_property_display_to_lens>` | ``4.0``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`display_width<class_MobileVRInterface_property_display_width>`     | ``14.5``                                                                           |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`eye_height<class_MobileVRInterface_property_eye_height>`           | ``1.85``                                                                           |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`iod<class_MobileVRInterface_property_iod>`                         | ``6.0``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`k1<class_MobileVRInterface_property_k1>`                           | ``0.215``                                                                          |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`k2<class_MobileVRInterface_property_k2>`                           | ``0.215``                                                                          |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                          | :ref:`offset_rect<class_MobileVRInterface_property_offset_rect>`         | ``Rect2(0, 0, 1, 1)``                                                              |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`oversample<class_MobileVRInterface_property_oversample>`           | ``1.5``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`vrs_min_radius<class_MobileVRInterface_property_vrs_min_radius>`   | ``20.0``                                                                           |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`vrs_strength<class_MobileVRInterface_property_vrs_strength>`       | ``1.0``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` | xr_play_area_mode                                                        | ``1`` (overrides :ref:`XRInterface<class_XRInterface_property_xr_play_area_mode>`) |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MobileVRInterface_property_display_to_lens:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_to_lens** = ``4.0`` :ref:`🔗<class_MobileVRInterface_property_display_to_lens>`

.. rst-class:: classref-property-setget

- |void| **set_display_to_lens**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_to_lens**\ (\ )

La distanza in centimetri tra il display e le lenti all'interno del dispositivo.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_display_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_width** = ``14.5`` :ref:`🔗<class_MobileVRInterface_property_display_width>`

.. rst-class:: classref-property-setget

- |void| **set_display_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_width**\ (\ )

La larghezza del display in centimetri.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_eye_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **eye_height** = ``1.85`` :ref:`🔗<class_MobileVRInterface_property_eye_height>`

.. rst-class:: classref-property-setget

- |void| **set_eye_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_eye_height**\ (\ )

L'altezza a cui è posizionata la telecamera rispetto al suolo (ad esempio il nodo :ref:`XROrigin3D<class_XROrigin3D>`).

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_iod:

.. rst-class:: classref-property

:ref:`float<class_float>` **iod** = ``6.0`` :ref:`🔗<class_MobileVRInterface_property_iod>`

.. rst-class:: classref-property-setget

- |void| **set_iod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_iod**\ (\ )

La distanza interoculare, nota anche come distanza interpupillare. La distanza tra le pupille dell'occhio sinistro e destro.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_k1:

.. rst-class:: classref-property

:ref:`float<class_float>` **k1** = ``0.215`` :ref:`🔗<class_MobileVRInterface_property_k1>`

.. rst-class:: classref-property-setget

- |void| **set_k1**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_k1**\ (\ )

Il fattore di lente k1 è una delle due costanti che definiscono la potenza della lente utilizzata e influenza direttamente l'effetto di distorsione della lente.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_k2:

.. rst-class:: classref-property

:ref:`float<class_float>` **k2** = ``0.215`` :ref:`🔗<class_MobileVRInterface_property_k2>`

.. rst-class:: classref-property-setget

- |void| **set_k2**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_k2**\ (\ )

Il fattore di lente k2, vedi k1.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_offset_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **offset_rect** = ``Rect2(0, 0, 1, 1)`` :ref:`🔗<class_MobileVRInterface_property_offset_rect>`

.. rst-class:: classref-property-setget

- |void| **set_offset_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_offset_rect**\ (\ )

Imposta il rettangolo dello scostamento relativo all'area in fase di rendering. Una lunghezza di 1 rappresenta l'intera area di rendering su quell'asse.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_oversample:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversample** = ``1.5`` :ref:`🔗<class_MobileVRInterface_property_oversample>`

.. rst-class:: classref-property-setget

- |void| **set_oversample**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_oversample**\ (\ )

L'impostazione di sovracampionamento. A causa della distorsione della lente dobbiamo renderizzare i nostri buffer a una risoluzione più alta di quella che lo schermo può gestire in modo nativo. Un valore tra 1,5 e 2,0 spesso fornisce buoni risultati, ma a scapito delle prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_MobileVRInterface_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

Il raggio minimo attorno al punto focale in cui è garantita la massima qualità se VRS viene utilizzato come percentuale della dimensione dello schermo.

\ **Nota:** Solo per il rendering Mobile e Forward+. Richiede che :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` sia impostato su :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_MobileVRInterface_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

L'intensità utilizzata per calcolare la mappa di densità VRS. Maggiore è questo valore, più evidente è VRS. Ciò migliora le prestazioni a scapito della qualità.

\ **Nota:** Solo rendering Mobile e Forward+. Richiede che :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` sia impostato su :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
