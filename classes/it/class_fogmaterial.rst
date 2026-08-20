:github_url: hide

.. _class_FogMaterial:

FogMaterial
===========

**Eredita:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un materiale che controlla il modo in cui viene renderizzata la nebbia volumetrica, da assegnare a un :ref:`FogVolume<class_FogVolume>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una risorsa :ref:`Material<class_Material>` che può essere utilizzata dai :ref:`FogVolume<class_FogVolume>` per disegnare effetti volumetrici.

Se hai bisogno di effetti più avanzati, usa uno :doc:`shader per nebbia <../tutorials/shaders/shader_reference/fog_shader>` personalizzato.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`albedo<class_FogMaterial_property_albedo>`                   | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`density<class_FogMaterial_property_density>`                 | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Texture3D<class_Texture3D>` | :ref:`density_texture<class_FogMaterial_property_density_texture>` |                       |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`edge_fade<class_FogMaterial_property_edge_fade>`             | ``0.1``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`emission<class_FogMaterial_property_emission>`               | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`height_falloff<class_FogMaterial_property_height_falloff>`   | ``0.0``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_FogMaterial_property_albedo:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **albedo** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FogMaterial_property_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_albedo**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_albedo**\ (\ )

Il :ref:`Color<class_Color>` di dispersione singola del :ref:`FogVolume<class_FogVolume>`. Internamente, :ref:`albedo<class_FogMaterial_property_albedo>` è convertito in dispersione singola, che è miscelato in modo additivo con altri :ref:`FogVolume<class_FogVolume>` e con :ref:`Environment.volumetric_fog_albedo<class_Environment_property_volumetric_fog_albedo>`.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density:

.. rst-class:: classref-property

:ref:`float<class_float>` **density** = ``1.0`` :ref:`🔗<class_FogMaterial_property_density>`

.. rst-class:: classref-property-setget

- |void| **set_density**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_density**\ (\ )

La densità del :ref:`FogVolume<class_FogVolume>`. Gli oggetti più densi sono più opachi, ma possono soffrire di artefatti di sottocampionamento che assomigliano a strisce. I valori negativi possono essere utilizzati per sottrarre la nebbia da altri :ref:`FogVolume<class_FogVolume>` o dalla nebbia volumetrica globale.

\ **Nota:** A causa della precisione limitata, i valori di :ref:`density<class_FogMaterial_property_density>` compresi tra ``-0.001`` e ``0.001`` (esclusivi) agiscono come ``0.0``. Questo non si applica a :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>`.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **density_texture** :ref:`🔗<class_FogMaterial_property_density_texture>`

.. rst-class:: classref-property-setget

- |void| **set_density_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_density_texture**\ (\ )

La texture 3D utilizzata per scalare la densità (:ref:`density<class_FogMaterial_property_density>`) del :ref:`FogVolume<class_FogVolume>`. Può essere utilizzata per variare la densità della nebbia all'interno del :ref:`FogVolume<class_FogVolume>` con qualsiasi tipo di motivo statico. Per effetti animati, prendi in considerazione l'utilizzo di uno :doc:`shader per nebbia <../tutorials/shaders/shader_reference/fog_shader>` personalizzato.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_edge_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_fade** = ``0.1`` :ref:`🔗<class_FogMaterial_property_edge_fade>`

.. rst-class:: classref-property-setget

- |void| **set_edge_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_fade**\ (\ )

La durezza dei bordi del :ref:`FogVolume<class_FogVolume>`. Un valore più alto risulterà in bordi più morbidi, mentre un valore più basso risulterà in bordi più duri.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_emission:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **emission** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_FogMaterial_property_emission>`

.. rst-class:: classref-property-setget

- |void| **set_emission**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_emission**\ (\ )

Il :ref:`Color<class_Color>` della luce emessa dal :ref:`FogVolume<class_FogVolume>`. La luce emessa non proietterà luce o ombre su altri oggetti, ma può essere utile per modulare il :ref:`Color<class_Color>` del :ref:`FogVolume<class_FogVolume>` indipendentemente dalle sorgenti luminose.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_height_falloff:

.. rst-class:: classref-property

:ref:`float<class_float>` **height_falloff** = ``0.0`` :ref:`🔗<class_FogMaterial_property_height_falloff>`

.. rst-class:: classref-property-setget

- |void| **set_height_falloff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height_falloff**\ (\ )

La frequenza con cui la nebbia basata sull'altezza diminuisce di densità man mano che l'altezza aumenta nello spazio mondiale. Un calo elevato comporterà una transizione netta, mentre un calo basso comporterà una transizione più fluida. Un valore di ``0.0`` determina una nebbia a densità uniforme. La soglia di altezza è determinata dall'altezza del :ref:`FogVolume<class_FogVolume>` associato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
