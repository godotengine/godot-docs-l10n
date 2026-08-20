:github_url: hide

.. _class_GPUParticlesAttractorSphere3D:

GPUParticlesAttractorSphere3D
=============================

**Eredita:** :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un attrattore a forma di sferoide che influenza le particelle dai nodi :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un attrattore a forma di sferoide che influenza le particelle dai nodi :ref:`GPUParticles3D<class_GPUParticles3D>`. Può essere utilizzato per attrarre particelle verso la sua origine o per allontanarle dalla sua origine.

Gli attrattori di particelle funzionano in tempo reale e possono essere spostati, ruotati e ridimensionati durante il gioco. A differenza delle forme di collisione, è supportato anche il ridimensionamento non uniforme degli attrattori.

\ **Nota:** Gli attrattori di particelle influenzano solo i :ref:`GPUParticles3D<class_GPUParticles3D>`, non i :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_GPUParticlesAttractorSphere3D_property_radius>` | ``1.0`` |
   +---------------------------+--------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GPUParticlesAttractorSphere3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractorSphere3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio della sfera dell'attrattore in unità 3D.

\ **Nota:** È possibile ottenere ellissi allungate utilizzando un ridimensionamento non uniforme sul nodo **GPUParticlesAttractorSphere3D**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
