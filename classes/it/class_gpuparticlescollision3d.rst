:github_url: hide

.. _class_GPUParticlesCollision3D:

GPUParticlesCollision3D
=======================

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`GPUParticlesCollisionBox3D<class_GPUParticlesCollisionBox3D>`, :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>`, :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`, :ref:`GPUParticlesCollisionSphere3D<class_GPUParticlesCollisionSphere3D>`

Classe base astratta per le forme di collisione di particelle 3D che interessano i nodi :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Le forme di collisione delle particelle possono essere utilizzate per far fermare le particelle o farle rimbalzare contro di esse.

Le forme di collisione delle particelle funzionano in tempo reale e possono essere spostate, ruotate e ridimensionate durante il gioco. A differenza degli attrattori, il ridimensionamento non uniforme delle forme di collisione *non* è supportato.

Le forme di collisione delle particelle possono essere temporaneamente disattivate nascondendole.

\ **Nota:** :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` deve essere :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` o :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` sul materiale di processo di :ref:`GPUParticles3D<class_GPUParticles3D>` affinché la collisione funzioni.

\ **Nota:** La collisione delle particelle influisce solo su i :ref:`GPUParticles3D<class_GPUParticles3D>`, non su i :ref:`CPUParticles3D<class_CPUParticles3D>`.

\ **Nota:** Le particelle spinte da un collisore che viene spostato non verranno interpolate, il che può causare uno scatto evidente. Ciò può essere risolto impostando :ref:`GPUParticles3D.fixed_fps<class_GPUParticles3D_property_fixed_fps>` su ``0`` o su un valore che corrisponda o superi il frame rate di destinazione.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>` | :ref:`cull_mask<class_GPUParticlesCollision3D_property_cull_mask>` | ``4294967295`` |
   +-----------------------+--------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GPUParticlesCollision3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollision3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Gli strati di rendering delle particelle (:ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`) che saranno influenzate dalla forma di collisione. Come predefinito, tutte le particelle che hanno :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` impostato su :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` o :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` saranno influenzate da una forma di collisione.

Dopo aver configurato i nodi delle particelle adeguatamente, è possibile deselezionare strati specifici per impedire che determinate particelle siano influenzate dai collisori. Ad esempio, potrebbe essere utile per un collisore che fa parte di un effetto magico ma è preferibile che non influenzi altre particelle del meteo nella sua stessa posizione.

È possibile disabilitare l'attrazione delle particelle per ogni materiale di processo impostando :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` sul nodo :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
