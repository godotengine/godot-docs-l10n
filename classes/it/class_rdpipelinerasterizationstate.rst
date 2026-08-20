:github_url: hide

.. _class_RDPipelineRasterizationState:

RDPipelineRasterizationState
============================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stato di rasterizzazione della pipeline (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto è utilizzato dal :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>`   | :ref:`cull_mode<class_RDPipelineRasterizationState_property_cull_mode>`                                   | ``0``     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_bias_clamp<class_RDPipelineRasterizationState_property_depth_bias_clamp>`                     | ``0.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>` | ``0.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`depth_bias_enabled<class_RDPipelineRasterizationState_property_depth_bias_enabled>`                 | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`       | ``0.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`discard_primitives<class_RDPipelineRasterizationState_property_discard_primitives>`                 | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_clamp<class_RDPipelineRasterizationState_property_enable_depth_clamp>`                 | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` | :ref:`front_face<class_RDPipelineRasterizationState_property_front_face>`                                 | ``0``     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`line_width<class_RDPipelineRasterizationState_property_line_width>`                                 | ``1.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`patch_control_points<class_RDPipelineRasterizationState_property_patch_control_points>`             | ``1``     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`wireframe<class_RDPipelineRasterizationState_property_wireframe>`                                   | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDPipelineRasterizationState_property_cull_mode:

.. rst-class:: classref-property

:ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **cull_mode** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>`\ )
- :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **get_cull_mode**\ (\ )

La modalità di culling da usare quando si disegnano i poligoni, che determina se nascondere le facce anteriori o quelle posteriori.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_clamp:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_clamp** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_clamp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_clamp**\ (\ )

Un limite per quanto ogni valore di profondità può essere deviato. Se negativo, funge da valore minimo, ma se positivo, funge da valore massimo.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_constant_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_constant_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_constant_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_constant_factor**\ (\ )

Una deviazione costante aggiunta a ciascun valore di profondità. Applicato dopo :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **depth_bias_enabled** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_depth_bias_enabled**\ (\ )

Se ``true``, ogni valore di profondità generato sarà compensato di una certa quantità. La quantità specifica è generata per poligono, in base ai valori di :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>` e :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_slope_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_slope_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_slope_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_slope_factor**\ (\ )

Una scala costante applicata alla pendenza della profondità di ogni poligono. Applicata prima di :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_discard_primitives:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **discard_primitives** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_discard_primitives>`

.. rst-class:: classref-property-setget

- |void| **set_discard_primitives**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_discard_primitives**\ (\ )

Se ``true``, i primitivi vengono scartati immediatamente prima della fase di rasterizzazione.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_enable_depth_clamp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_clamp** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_enable_depth_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_clamp**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_clamp**\ (\ )

Se ``true``, limita i valori di profondità in base alla profondità minima e massima della viewport associata.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_front_face:

.. rst-class:: classref-property

:ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **front_face** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_front_face>`

.. rst-class:: classref-property-setget

- |void| **set_front_face**\ (\ value\: :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>`\ )
- :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **get_front_face**\ (\ )

L'ordine di avvolgimento da usare per determinare quale faccia di un triangolo è considerata la sua faccia frontale.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_line_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_width** = ``1.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_line_width>`

.. rst-class:: classref-property-setget

- |void| **set_line_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_width**\ (\ )

Lo spessore di linea da usare quando si disegnano le linee (in pixel). Le linee spesse potrebbero non essere supportate su tutti gli hardware.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_patch_control_points:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_control_points** = ``1`` :ref:`🔗<class_RDPipelineRasterizationState_property_patch_control_points>`

.. rst-class:: classref-property-setget

- |void| **set_patch_control_points**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_control_points**\ (\ )

Il numero di punti di controllo da usare quando si disegna una patch con la tassellazione abilitata. Valori più alti risultano in una qualità più alta a scapito delle prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_wireframe:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **wireframe** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_wireframe>`

.. rst-class:: classref-property-setget

- |void| **set_wireframe**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_wireframe**\ (\ )

Se ``true``, esegue il rendering wireframe per i triangoli invece del rendering piatto o texturizzato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
