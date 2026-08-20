:github_url: hide

.. _class_AreaLight3D:

AreaLight3D
===========

**Eredita:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una luce d'area, come una lampada al neon o uno schermo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una luce d'area è un tipo di nodo :ref:`Light3D<class_Light3D>` che emette luci in un'area bidimensionale, a forma di rettangolo. La luce è attenuata in base alla distanza. È possibile configurare questa attenuazione modificando l'energia, :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>` e :ref:`area_range<class_AreaLight3D_property_area_range>`.

La luce è emessa nella direzione -Z della base globale del nodo. Per una luce non ruotata, ciò significa che la luce è emessa in avanti, illuminando il lato frontale di un modello 3D (vedi :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` e :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

Le luci d'area possono proiettare ombre sfumate utilizzando PCSS, che è possibile controllare regolando il parametro size. La mappa delle ombre viene disegnata dal centro della luce.

\ **Nota:** Le luci d'area hanno un supporto limitato nei renderer Mobile e Compatibilità. Nel renderer Mobile, la dimensione della penombra non varia come dovrebbe con PCSS. In Compatibilità, le luci d'area non possono proiettare ombre.

\ **Attenzione:** Le ombre proiettate da una luce d'area potrebbero apparire errate se l'oggetto da cui provengono non ha abbastanza suddivisioni ed è molto vicino alla luce d'area. Questa è la stessa limitazione della modalità d'ombra Dual Paraboloid su una :ref:`OmniLight3D<class_OmniLight3D>`.

\ **Prestazioni:** Le luci d'area sono più impegnative per la GPU rispetto alle luci omnidirezionali e spot. In Forward+, hanno un impatto in più per la GPU su *tutti* gli oggetti renderizzati non appena una luce d'area è presente nel frustum di visualizzazione (a causa della natura dell'illuminazione clusterizzata). Si consiglia di utilizzarle solo per le sequenze cinematiche o quando si punta a dispositivi di fascia alta.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Luci e ombre 3D <../tutorials/3d/lights_and_shadows.html#area-light>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>`           | ``1.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`area_normalize_energy<class_AreaLight3D_property_area_normalize_energy>` | ``true``                                                                      |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_range<class_AreaLight3D_property_area_range>`                       | ``5.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`area_size<class_AreaLight3D_property_area_size>`                         | ``Vector2(1, 1)``                                                             |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`area_texture<class_AreaLight3D_property_area_texture>`                   |                                                                               |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | light_size                                                                     | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_size>`)         |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | shadow_normal_bias                                                             | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AreaLight3D_property_area_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_attenuation** = ``1.0`` :ref:`🔗<class_AreaLight3D_property_area_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Controlla la funzione di attenuazione della distanza per questa luce d'area.

Un valore di ``0.0`` manterrà una luminosità costante per la maggior parte della portata, ma attenuerà gradualmente la luce al limite del portata. Utilizza un valore di ``2.0`` per luci fisicamente accurate in quanto risulta nella corretta attenuazione inversa quadrata.

\ **Nota:** Impostare l'attenuazione su ``2.0`` o superiore può comportare che gli oggetti distanti ricevano una luce minima, anche entro la portata. Ad esempio, con una portata di ``4096``, un oggetto lontano di ``100`` unità è attenuato di un fattore di ``0.0001``. Con una luminosità predefinita di ``1``, la luce non sarebbe visibile a quella distanza.

\ **Nota:** Utilizzare valori negativi o superiori a ``10.0`` può portare a risultati imprevisti.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_normalize_energy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **area_normalize_energy** = ``true`` :ref:`🔗<class_AreaLight3D_property_area_normalize_energy>`

.. rst-class:: classref-property-setget

- |void| **set_area_normalize_energy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_area_normalizing_energy**\ (\ )

Definisce se l'energia è normalizzata (divisa) per l'area superficiale della luce. Se impostato su ``true``, la modifica delle dimensioni non influisce l'energia emessa totale e non altera fortemente la luminosità della scena.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_range** = ``5.0`` :ref:`🔗<class_AreaLight3D_property_area_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La portata dell'area in metri. Determina la distanza massima da qualsiasi punto dell'area alla quale l'area può ancora emettere luce.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **area_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AreaLight3D_property_area_size>`

.. rst-class:: classref-property-setget

- |void| **set_area_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_area_size**\ (\ )

Le estremità (larghezza e altezza) dell'area in metri.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **area_texture** :ref:`🔗<class_AreaLight3D_property_area_texture>`

.. rst-class:: classref-property-setget

- |void| **set_area_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_area_texture**\ (\ )

Una texture opzionale da utilizzare come sorgente luminosa. Modificare la texture in fase di esecuzione potrebbe influire sulle prestazioni, poiché deve essere disegnata sull'atlante delle luci d'area con mipmap filtrate.

Se nessuna texture è assegnata, la luce d'area emette luce uniforme sulla sua superficie.

\ **Nota:** Le texture per le luci d'area sono supportate solo nei metodi di rendering Forward+ e Mobile, non in Compatibilità. Per ridurre l'impatto sulle prestazioni del cambio di texture in fase di esecuzione, assicurarti che ogni dimensione di una texture d'area sia un multiplo di 128 pixel o una potenza di due. Questo elimina la necessità di un passaggio di ridimensionamento, il che rallenta il cambio della texture. Le texture non devono necessariamente essere quadrate per essere ottimali. Esempi di dimensioni ottimali per le texture includono 32x64, 128x128 e 256x384.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
