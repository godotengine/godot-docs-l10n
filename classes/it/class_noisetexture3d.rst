:github_url: hide

.. _class_NoiseTexture3D:

NoiseTexture3D
==============

**Eredita:** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una texture 3D riempita con noise generato da un oggetto :ref:`Noise<class_Noise>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Utilizza la libreria :ref:`FastNoiseLite<class_FastNoiseLite>` o altri generatori di noise per riempire i dati della texture della dimensione desiderata.

La classe utilizza :ref:`Thread<class_Thread>` per generare internamente i dati della texture, quindi :ref:`Texture3D.get_data()<class_Texture3D_method_get_data>` potrebbe restituire ``null`` se il processo di generazione non è ancora stato completato. In tal caso, è necessario attendere che la texture sia generata prima di accedere all'immagine:

::

    var texture = NoiseTexture3D.new()
    texture.noise = FastNoiseLite.new()
    await texture.changed
    var data = texture.get_data()

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`Gradient<class_Gradient>` | :ref:`color_ramp<class_NoiseTexture3D_property_color_ramp>`                     |           |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`depth<class_NoiseTexture3D_property_depth>`                               | ``64``    |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`height<class_NoiseTexture3D_property_height>`                             | ``64``    |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`invert<class_NoiseTexture3D_property_invert>`                             | ``false`` |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`Noise<class_Noise>`       | :ref:`noise<class_NoiseTexture3D_property_noise>`                               |           |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`normalize<class_NoiseTexture3D_property_normalize>`                       | ``true``  |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`seamless<class_NoiseTexture3D_property_seamless>`                         | ``false`` |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`       | :ref:`seamless_blend_skirt<class_NoiseTexture3D_property_seamless_blend_skirt>` | ``0.1``   |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`width<class_NoiseTexture3D_property_width>`                               | ``64``    |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_NoiseTexture3D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_NoiseTexture3D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

Un :ref:`Gradient<class_Gradient>` che è utilizzato per mappare la luminanza di ciascun pixel su un valore di colore.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth** = ``64`` :ref:`🔗<class_NoiseTexture3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth**\ (\ )

Profondità della texture generata (in pixel).

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``64`` :ref:`🔗<class_NoiseTexture3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Altezza della texture generata (in pixel).

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_invert:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert** = ``false`` :ref:`🔗<class_NoiseTexture3D_property_invert>`

.. rst-class:: classref-property-setget

- |void| **set_invert**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert**\ (\ )

Se ``true``, inverte la texture del noise. Il bianco diventa nero, e il nero diventa bianco.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_noise:

.. rst-class:: classref-property

:ref:`Noise<class_Noise>` **noise** :ref:`🔗<class_NoiseTexture3D_property_noise>`

.. rst-class:: classref-property-setget

- |void| **set_noise**\ (\ value\: :ref:`Noise<class_Noise>`\ )
- :ref:`Noise<class_Noise>` **get_noise**\ (\ )

L'istanza dell'oggetto :ref:`Noise<class_Noise>`.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalize** = ``true`` :ref:`🔗<class_NoiseTexture3D_property_normalize>`

.. rst-class:: classref-property-setget

- |void| **set_normalize**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_normalized**\ (\ )

Se ``true``, l'immagine del noise proveniente dal generatore di noise è normalizzata nell'intervallo ``0.0`` - ``1.0``.

Disattivare la normalizzazione può influenzare il contrasto e consente di generare texture di noise affiancabili senza ripetizioni.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_seamless:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **seamless** = ``false`` :ref:`🔗<class_NoiseTexture3D_property_seamless>`

.. rst-class:: classref-property-setget

- |void| **set_seamless**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_seamless**\ (\ )

Se ``true``, una texture continua è richiesta dalla risorsa :ref:`Noise<class_Noise>`.

\ **Nota:** Le texture di noise continue potrebbero richiedere più tempo per essere generate e/o potrebbero avere un contrasto inferiore rispetto al noise non continuo, a seconda della risorsa :ref:`Noise<class_Noise>` utilizzata. Questo perché alcune implementazioni utilizzano dimensioni maggiori per generare il noise continuo.

\ **Nota:** L'implementazione predefinita di :ref:`FastNoiseLite<class_FastNoiseLite>` utilizza il percorso di riserva per la generazione continua. Se si usa una :ref:`width<class_NoiseTexture3D_property_width>`, una :ref:`height<class_NoiseTexture3D_property_height>` o una :ref:`depth<class_NoiseTexture3D_property_depth>` inferiore a quella predefinita, potrebbe essere necessario aumentare :ref:`seamless_blend_skirt<class_NoiseTexture3D_property_seamless_blend_skirt>` per rendere più efficace la fusione continua.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_seamless_blend_skirt:

.. rst-class:: classref-property

:ref:`float<class_float>` **seamless_blend_skirt** = ``0.1`` :ref:`🔗<class_NoiseTexture3D_property_seamless_blend_skirt>`

.. rst-class:: classref-property-setget

- |void| **set_seamless_blend_skirt**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_seamless_blend_skirt**\ (\ )

Utilizzato per l'implementazione predefinita/di riserva della generazione di texture continue. Determina la distanza su cui sono sfumate le cuciture. Valori elevati potrebbero risultare in meno dettagli e contrasto. Vedi :ref:`Noise<class_Noise>` per ulteriori dettagli.

\ **Nota:** Se si usa una :ref:`width<class_NoiseTexture3D_property_width>`, una :ref:`height<class_NoiseTexture3D_property_height>` o una :ref:`depth<class_NoiseTexture3D_property_depth>` inferiore a quella predefinita, potrebbe essere necessario aumentare :ref:`seamless_blend_skirt<class_NoiseTexture3D_property_seamless_blend_skirt>` per rendere più efficace la fusione continua.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``64`` :ref:`🔗<class_NoiseTexture3D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Larghezza della texture generata (in pixel).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
