:github_url: hide

.. _class_VehicleBody3D:

VehicleBody3D
=============

**Eredita:** :ref:`RigidBody3D<class_RigidBody3D>` **<** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un corpo fisico 3D che simula il comportamento di un'auto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo corpo fisico implementa tutta la logica fisica necessaria per simulare un'auto. Si basa sul sistema di veicoli con proiezione di raggi comunemente presente nei motori fisici. Oltre a un :ref:`CollisionShape3D<class_CollisionShape3D>` per il corpo principale del veicolo, bisogna anche aggiungere un nodo :ref:`VehicleWheel3D<class_VehicleWheel3D>` per ogni ruota. Bisognerebbe anche aggiungere un :ref:`MeshInstance3D<class_MeshInstance3D>` a questo nodo per il modello 3D del veicolo, ma questo modello in genere non dovrebbe includere mesh per le ruote. È possibile controllare il veicolo attraverso le proprietà :ref:`brake<class_VehicleBody3D_property_brake>`, :ref:`engine_force<class_VehicleBody3D_property_engine_force>` e :ref:`steering<class_VehicleBody3D_property_steering>`. La posizione o l'orientamento di questo nodo non si dovrebbero modificare direttamente.

\ **Nota:** La direzione in avanti locale per questo nodo è :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`.

\ **Nota:** il punto di origine del VehicleBody3D determinerà il baricentro del veicolo. Per rendere il veicolo più ancorato, il punto di origine è solitamente mantenuto basso, spostando :ref:`CollisionShape3D<class_CollisionShape3D>` e :ref:`MeshInstance3D<class_MeshInstance3D>` verso l'alto.

\ **Nota:** Questa classe presenta problemi noti e non è progettata per fornire una fisica realistica dei veicoli 3D. Se desideri una fisica avanzata dei veicoli, potresti dover scrivere la tua integrazione fisica tramite :ref:`CharacterBody3D<class_CharacterBody3D>` o :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

- :doc:`Risolvere i problemi di fisica <../tutorials/physics/troubleshooting_physics_issues>`

- `Demo 3D "Truck Town" <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`brake<class_VehicleBody3D_property_brake>`               | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`engine_force<class_VehicleBody3D_property_engine_force>` | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | mass                                                           | ``40.0`` (overrides :ref:`RigidBody3D<class_RigidBody3D_property_mass>`) |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`steering<class_VehicleBody3D_property_steering>`         | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VehicleBody3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

Rallenta il veicolo applicando una forza frenante. Il veicolo rallenta solo se le ruote sono a contatto con una superficie. La forza che devi applicare per rallentare adeguatamente il tuo veicolo dipende dalla :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del veicolo. Per un veicolo con una massa impostata su 1000, prova un valore nell'intervallo 25 - 30 per una frenata brusca.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

Accelera il veicolo applicando una forza motrice. Il veicolo accelera solo se le ruote hanno :ref:`VehicleWheel3D.use_as_traction<class_VehicleWheel3D_property_use_as_traction>` impostato su ``true`` e sono a contatto con una superficie. Il :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del veicolo ha un effetto sull'accelerazione del veicolo. Per un veicolo con una massa impostata su 1000, prova un valore nell'intervallo 25 - 50 per l'accelerazione.

\ **Nota:** La simulazione non tiene conto dell'effetto delle marce, dovrai aggiungere logica per questo se desideri simulare le marce.

Un valore negativo provocherà la retromarcia del veicolo.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

L'angolo di sterzata per il veicolo. Impostando questo valore su un valore diverso da zero, il veicolo sterzerà quando è in movimento. Le ruote che hanno :ref:`VehicleWheel3D.use_as_steering<class_VehicleWheel3D_property_use_as_steering>` impostato su ``true`` saranno automaticamente ruotate.

\ **Nota:** Questa proprietà è modificata nell'ispettore in gradi. Nel codice la proprietà è impostata in radianti.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
