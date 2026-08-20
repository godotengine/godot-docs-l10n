:github_url: hide

.. _class_Sky:

Sky
===

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Definisce lo sfondo di un ambiente 3D utilizzando un :ref:`Material<class_Material>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La classe **Sky** utilizza un :ref:`Material<class_Material>` per renderizzare lo sfondo di un ambiente 3D e la luce che emette aggiornando le cubemap di riflessione e di radianza.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`ProcessMode<enum_Sky_ProcessMode>`   | :ref:`process_mode<class_Sky_property_process_mode>`   | ``0`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`RadianceSize<enum_Sky_RadianceSize>` | :ref:`radiance_size<class_Sky_property_radiance_size>` | ``3`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`Material<class_Material>`            | :ref:`sky_material<class_Sky_property_sky_material>`   |       |
   +--------------------------------------------+--------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Sky_RadianceSize:

.. rst-class:: classref-enumeration

enum **RadianceSize**: :ref:`🔗<enum_Sky_RadianceSize>`

.. _class_Sky_constant_RADIANCE_SIZE_32:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_32** = ``0``

Le dimensioni della texture di radianza sono 32×32 pixel.

.. _class_Sky_constant_RADIANCE_SIZE_64:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_64** = ``1``

Le dimensioni della texture di radianza sono 64×64 pixel.

.. _class_Sky_constant_RADIANCE_SIZE_128:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_128** = ``2``

Le dimensioni della texture di radianza sono 128×128 pixel.

.. _class_Sky_constant_RADIANCE_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_256** = ``3``

Le dimensioni della texture di radianza sono 256×256 pixel.

.. _class_Sky_constant_RADIANCE_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_512** = ``4``

Le dimensioni della texture di radianza sono 512×512 pixel.

.. _class_Sky_constant_RADIANCE_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_1024** = ``5``

Le dimensioni della texture di radianza sono 1024×1024 pixel.

.. _class_Sky_constant_RADIANCE_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_2048** = ``6``

Le dimensioni della texture di radianza sono 2048×2048 pixel.

.. _class_Sky_constant_RADIANCE_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_MAX** = ``7``

Rappresenta la dimensione dell'enumerazione :ref:`RadianceSize<enum_Sky_RadianceSize>`.

.. rst-class:: classref-item-separator

----

.. _enum_Sky_ProcessMode:

.. rst-class:: classref-enumeration

enum **ProcessMode**: :ref:`🔗<enum_Sky_ProcessMode>`

.. _class_Sky_constant_PROCESS_MODE_AUTOMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_AUTOMATIC** = ``0``

Seleziona automaticamente la modalità di processo appropriata in base al proprio shader del cielo. Se il proprio shader usa ``TIME`` o ``POSITION``, questo userà :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>`. Se il proprio shader usa una qualsiasi delle variabili ``LIGHT_*`` o uniformi personalizzate, questo usa :ref:`PROCESS_MODE_INCREMENTAL<class_Sky_constant_PROCESS_MODE_INCREMENTAL>`. Altrimenti, il valore predefinito è :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>`.

.. _class_Sky_constant_PROCESS_MODE_QUALITY:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_QUALITY** = ``1``

Utilizza un campionamento di importanza di alta qualità per elaborare la mappa di radianza. In generale, questo risulta in una qualità molto più elevata di :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>` ma richiede molto più tempo per essere generato. Non dovrebbe essere usato se si prevede di modificare il cielo in fase di esecuzione. Se si scopre che il riflesso non è abbastanza sfocato e mostra scintille o lucciole, prova ad aumentare :ref:`ProjectSettings.rendering/reflections/sky_reflections/ggx_samples<class_ProjectSettings_property_rendering/reflections/sky_reflections/ggx_samples>`.

.. _class_Sky_constant_PROCESS_MODE_INCREMENTAL:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_INCREMENTAL** = ``2``

Utilizza lo stesso campionamento di importanza di alta qualità per elaborare la mappa di radianza come :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>`, ma si aggiorna su più frame. Il numero di frame è determinato da :ref:`ProjectSettings.rendering/reflections/sky_reflections/roughness_layers<class_ProjectSettings_property_rendering/reflections/sky_reflections/roughness_layers>`. Usalo quando hai bisogno di mappe di radianza di qualità più elevata, ma hai un cielo che si aggiorna lentamente.

.. _class_Sky_constant_PROCESS_MODE_REALTIME:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_REALTIME** = ``3``

Utilizza l'algoritmo di filtraggio veloce per elaborare la mappa di radianza. In generale, questo risulta in una qualità inferiore, ma tempi di esecuzione sostanzialmente più rapidi. Se hai bisogno di una qualità migliore, ma devi comunque aggiornare il cielo ogni frame, considera di attivare :ref:`ProjectSettings.rendering/reflections/sky_reflections/fast_filter_high_quality<class_ProjectSettings_property_rendering/reflections/sky_reflections/fast_filter_high_quality>`.

\ **Nota:** L'algoritmo di filtraggio veloce è limitato a cubemap di dimensioni 256×256, quindi :ref:`radiance_size<class_Sky_property_radiance_size>` deve essere impostato su :ref:`RADIANCE_SIZE_256<class_Sky_constant_RADIANCE_SIZE_256>`. Altrimenti, viene visualizzato un avviso e la dimensione di radianza sovrascritta verrà ignorata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Sky_property_process_mode:

.. rst-class:: classref-property

:ref:`ProcessMode<enum_Sky_ProcessMode>` **process_mode** = ``0`` :ref:`🔗<class_Sky_property_process_mode>`

.. rst-class:: classref-property-setget

- |void| **set_process_mode**\ (\ value\: :ref:`ProcessMode<enum_Sky_ProcessMode>`\ )
- :ref:`ProcessMode<enum_Sky_ProcessMode>` **get_process_mode**\ (\ )

Il metodo per generare la mappa di radianza dal cielo. La mappa di radianza è una cubemap con versioni gradualmente più sfocate del cielo corrispondenti a diversi livelli di ruvidità. Le mappe di radianza possono essere costose da calcolare.

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_radiance_size:

.. rst-class:: classref-property

:ref:`RadianceSize<enum_Sky_RadianceSize>` **radiance_size** = ``3`` :ref:`🔗<class_Sky_property_radiance_size>`

.. rst-class:: classref-property-setget

- |void| **set_radiance_size**\ (\ value\: :ref:`RadianceSize<enum_Sky_RadianceSize>`\ )
- :ref:`RadianceSize<enum_Sky_RadianceSize>` **get_radiance_size**\ (\ )

La dimensione della mappa di radianza dello **Sky**. Maggiore è la dimensione della mappa di radianza, più dettagliata sarà l'illuminazione dello **Sky**.

\ **Nota:** Alcuni hardware avranno problemi con dimensioni di radianza più elevate, in particolare :ref:`RADIANCE_SIZE_512<class_Sky_constant_RADIANCE_SIZE_512>` e superiori. Usa valori così elevati solo su hardware di fascia alta.

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_sky_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **sky_material** :ref:`🔗<class_Sky_property_sky_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Il :ref:`Material<class_Material>` utilizzato per disegnare lo sfondo. Può essere :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>` o anche uno :ref:`ShaderMaterial<class_ShaderMaterial>` se si desidera usare uno shader personalizzato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
