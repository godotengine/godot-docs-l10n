:github_url: hide

.. _class_GPUParticlesAttractorVectorField3D:

GPUParticlesAttractorVectorField3D
==================================

**Eredita:** :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un attrattore a forma di scatola con direzioni e intensità variabili definite al suo interno che influenza le particelle dai nodi :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un attrattore a forma di scatola con direzioni e intensità variabili definite al suo interno che influenza le particelle dai nodi :ref:`GPUParticles3D<class_GPUParticles3D>`.

A differenza di :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, **GPUParticlesAttractorVectorField3D** utilizza una :ref:`texture<class_GPUParticlesAttractorVectorField3D_property_texture>` per influenzare l'intensità dell'attrazione all'interno della scatola. Questo può essere utilizzato per creare scenari di attrazione complessi in cui le particelle viaggiano in direzioni diverse a seconda della loro posizione. Ciò può essere utile per gli effetti atmosferici come le tempeste di sabbia.

Gli attrattori di particelle funzionano in tempo reale e possono essere spostati, ruotati e ridimensionati durante il gioco. A differenza delle forme di collisione, è supportato anche il ridimensionamento non uniforme degli attrattori.

\ **Nota:** Gli attrattori di particelle influenzano solo i :ref:`GPUParticles3D<class_GPUParticles3D>`, non i :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`     | :ref:`size<class_GPUParticlesAttractorVectorField3D_property_size>`       | ``Vector3(2, 2, 2)`` |
   +-----------------------------------+---------------------------------------------------------------------------+----------------------+
   | :ref:`Texture3D<class_Texture3D>` | :ref:`texture<class_GPUParticlesAttractorVectorField3D_property_texture>` |                      |
   +-----------------------------------+---------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GPUParticlesAttractorVectorField3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesAttractorVectorField3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Le dimensioni della scatola del campo vettoriale in unità 3D.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractorVectorField3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_GPUParticlesAttractorVectorField3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

La texture 3D da utilizzare. I valori sono interpolati linearmente tra i pixel della texture.

\ **Nota:** Per ottenere prestazioni migliori, la risoluzione della texture 3D dovrebbe riflettere le dimensioni (:ref:`size<class_GPUParticlesAttractorVectorField3D_property_size>`) dell'attrattore. Poiché l'attrazione delle particelle è solitamente costituita da dati a bassa frequenza, la texture può essere mantenuta a una bassa risoluzione, ad esempio 64×64×64.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
