:github_url: hide

.. _class_VisualShaderNodeParticleEmitter:

VisualShaderNodeParticleEmitter
===============================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShaderNodeParticleBoxEmitter<class_VisualShaderNodeParticleBoxEmitter>`, :ref:`VisualShaderNodeParticleMeshEmitter<class_VisualShaderNodeParticleMeshEmitter>`, :ref:`VisualShaderNodeParticleRingEmitter<class_VisualShaderNodeParticleRingEmitter>`, :ref:`VisualShaderNodeParticleSphereEmitter<class_VisualShaderNodeParticleSphereEmitter>`

Una classe di base per gli emettitori di particelle.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I nodi di emettitore di particelle possono essere utilizzati nella fase di "inizio" degli shader di particelle e definiscono la posizione iniziale delle particelle. Collegarli alla porta in uscita di Posizione.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`mode_2d<class_VisualShaderNodeParticleEmitter_property_mode_2d>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeParticleEmitter_property_mode_2d:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mode_2d** = ``false`` :ref:`🔗<class_VisualShaderNodeParticleEmitter_property_mode_2d>`

.. rst-class:: classref-property-setget

- |void| **set_mode_2d**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mode_2d**\ (\ )

Se ``true``, il risultato di questo emettitore è proiettato nello spazio 2D. Per impostazione predefinita è ``false`` e destinato per l'uso nello spazio 3D.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
