:github_url: hide

.. _class_VehicleWheel3D:

VehicleWheel3D
==============

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un corpo fisico 3D per un :ref:`VehicleBody3D<class_VehicleBody3D>` che simula il comportamento di una ruota.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo utilizzato come figlio di un :ref:`VehicleBody3D<class_VehicleBody3D>` genitore per simulare il comportamento di una delle sue ruote. Questo nodo funge anche da collisore per rilevare se la ruota sta toccando una superficie.

\ **Nota:** Questa classe presenta problemi noti e non è progettata per fornire una fisica realistica dei veicoli 3D. Se desideri una fisica avanzata dei veicoli, potresti dover scrivere la tua integrazione fisica tramite un'altra classe :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo 3D "Truck Town" <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`brake<class_VehicleWheel3D_property_brake>`                               | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`   | ``0.83``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_relaxation<class_VehicleWheel3D_property_damping_relaxation>`     | ``0.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`engine_force<class_VehicleWheel3D_property_engine_force>`                 | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                      | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`steering<class_VehicleWheel3D_property_steering>`                         | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_max_force<class_VehicleWheel3D_property_suspension_max_force>` | ``6000.0``                                                                    |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_stiffness<class_VehicleWheel3D_property_suspension_stiffness>` | ``5.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_travel<class_VehicleWheel3D_property_suspension_travel>`       | ``0.2``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_steering<class_VehicleWheel3D_property_use_as_steering>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_traction<class_VehicleWheel3D_property_use_as_traction>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_friction_slip<class_VehicleWheel3D_property_wheel_friction_slip>`   | ``10.5``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_radius<class_VehicleWheel3D_property_wheel_radius>`                 | ``0.5``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_rest_length<class_VehicleWheel3D_property_wheel_rest_length>`       | ``0.15``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_roll_influence<class_VehicleWheel3D_property_wheel_roll_influence>` | ``0.1``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`   | :ref:`get_contact_body<class_VehicleWheel3D_method_get_contact_body>`\ (\ ) |const|     |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_normal<class_VehicleWheel3D_method_get_contact_normal>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_point<class_VehicleWheel3D_method_get_contact_point>`\ (\ ) |const|   |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_rpm<class_VehicleWheel3D_method_get_rpm>`\ (\ ) |const|                       |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_skidinfo<class_VehicleWheel3D_method_get_skidinfo>`\ (\ ) |const|             |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_in_contact<class_VehicleWheel3D_method_is_in_contact>`\ (\ ) |const|           |
   +-------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VehicleWheel3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

Rallenta la ruota applicando una forza frenante. La ruota rallenta solo se è a contatto con una superficie. La forza che devi applicare per rallentare adeguatamente il tuo veicolo dipende dal :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del veicolo. Per un veicolo con una massa impostata su 1000, prova un valore nell'intervallo 25 - 30 per una frenata brusca.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_compression:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_compression** = ``0.83`` :ref:`🔗<class_VehicleWheel3D_property_damping_compression>`

.. rst-class:: classref-property-setget

- |void| **set_damping_compression**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_compression**\ (\ )

Lo smorzamento applicato alla molla quando la molla viene compressa, ovvero quando la ruota si muove verso l'alto rispetto al veicolo. Si misura in Newton-secondi per millimetro (N⋅s/mm), o megagrammi al secondo (Mg/s). Questo valore dovrebbe essere compreso tra 0,0 (nessuno smorzamento) e 1,0, ma può essere più grande. Un valore di 0,0 significa che l'automobile continuerà a rimbalzare poiché la molla conserva la sua energia. Un buon valore per questo è intorno a 0,3 per un'automobile normale, 0,5 per un'automobile da corsa.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_relaxation** = ``0.88`` :ref:`🔗<class_VehicleWheel3D_property_damping_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_damping_relaxation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_relaxation**\ (\ )

Lo smorzamento applicato alla molla durante il rilassamento, ovvero quando la ruota si muove verso il basso rispetto al veicolo. Si misura in Newton-secondi per millimetro (N⋅s/mm), o megagrammi al secondo (Mg/s). Questo valore dovrebbe essere compreso tra 0,0 (nessuno smorzamento) e 1,0, ma può essere più grande. Questo valore dovrebbe sempre essere leggermente superiore alla proprietà :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`. Per un valore di :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>` di 0,3, prova un valore di rilassamento di 0,5.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

Accelera la ruota applicando una forza del motore. La ruota accelera solo se è a contatto con una superficie. La :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del veicolo ha un effetto sull'accelerazione del veicolo. Per un veicolo con una massa impostata su 1000, prova un valore nell'intervallo 25 - 50 per l'accelerazione.

\ **Nota:** La simulazione non tiene conto dell'effetto degli ingranaggi, dovrai aggiungere una logica per questo se desideri simulare gli ingranaggi.

Un valore negativo provocherà l'inversione della ruota.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

Angolo di sterzata per la ruota, in radianti. Impostando questo su un valore diverso da zero, il veicolo sterzerà quando è in movimento.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_max_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_max_force** = ``6000.0`` :ref:`🔗<class_VehicleWheel3D_property_suspension_max_force>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_max_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_max_force**\ (\ )

La forza massima che la molla può resistere. Questo valore dovrebbe essere superiore a un quarto della :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del :ref:`VehicleBody3D<class_VehicleBody3D>` o la molla non sopporterà il peso del veicolo. Spesso si ottengono buoni risultati con un valore che è circa 3 o 4 volte questo numero.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_stiffness** = ``5.88`` :ref:`🔗<class_VehicleWheel3D_property_suspension_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_stiffness**\ (\ )

La rigidità della sospensione, misurata in Newton per millimetro (N/mm) o megagrammi al secondo quadrato (Mg/s²). Usa un valore inferiore a 50 per un'auto fuoristrada, un valore tra 50 e 100 per un'auto da corsa e prova qualcosa intorno a 200 per qualcosa come un'auto di Formula 1.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_travel:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_travel** = ``0.2`` :ref:`🔗<class_VehicleWheel3D_property_suspension_travel>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_travel**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_travel**\ (\ )

Questa è la distanza che la sospensione può percorrere. Poiché le unità di Godot equivalgono a metri, mantieni questa impostazione relativamente bassa. Prova un valore tra 0,1 e 0,3 a seconda del tipo di auto.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_steering:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_steering** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_steering>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_steering**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_steering**\ (\ )

Se ``true``, questa ruota verrà girata quando l'auto sterza. Questo valore viene usato insieme a :ref:`VehicleBody3D.steering<class_VehicleBody3D_property_steering>` e ignorato se si usa invece il valore :ref:`steering<class_VehicleWheel3D_property_steering>` per ogni ruota.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_traction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_traction** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_traction>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_traction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_traction**\ (\ )

Se ``true``, questa ruota trasferisce la forza del motore al terreno per spingere il veicolo in avanti. Questo valore viene usato insieme a :ref:`VehicleBody3D.engine_force<class_VehicleBody3D_property_engine_force>` e ignorato se si usa invece il valore :ref:`engine_force<class_VehicleWheel3D_property_engine_force>` per ogni ruota.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_friction_slip:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_friction_slip** = ``10.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_friction_slip>`

.. rst-class:: classref-property-setget

- |void| **set_friction_slip**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction_slip**\ (\ )

Questo determina quanta aderenza ha questa ruota. È combinato con l'impostazione dell'attrito della superficie con cui la ruota è a contatto. 0,0 significa nessuna aderenza, 1,0 è aderenza normale. Per un'impostazione di auto da drift, prova a impostare l'aderenza delle ruote posteriori leggermente più in basso rispetto alle ruote anteriori, oppure usa un valore inferiore per simulare l'usura degli pneumatici.

È meglio impostarlo su 1,0 per cominciare.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_radius** = ``0.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio della ruota in metri.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_rest_length** = ``0.15`` :ref:`🔗<class_VehicleWheel3D_property_wheel_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_rest_length**\ (\ )

Questa è la distanza in metri a cui la ruota si abbassa dal suo punto di origine. Non impostarla su 0,0 e spostare la ruota in posizione. Sposta invece il punto di origine della tua ruota (il gizmo in Godot) nella posizione che la ruota assumerà quando toccherà il fondo, quindi usa la lunghezza di riposo per spostare la ruota verso il basso nella posizione in cui dovrebbe trovarsi quando l'auto è ferma.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_roll_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_roll_influence** = ``0.1`` :ref:`🔗<class_VehicleWheel3D_property_wheel_roll_influence>`

.. rst-class:: classref-property-setget

- |void| **set_roll_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_roll_influence**\ (\ )

Questo valore influenza il rollio del tuo veicolo. Se impostato su 1.0 per tutte le ruote, il tuo veicolo resisterà al rollio della carrozzeria, mentre un valore di 0.0 sarà incline al ribaltamento.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VehicleWheel3D_method_get_contact_body:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_contact_body**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_body>`

Restituisce il nodo del corpo di contatto se valido nell'albero, come :ref:`Node3D<class_Node3D>`. Al momento, :ref:`GridMap<class_GridMap>` non è supportato, quindi il nodo sarà sempre di tipo :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Restituisce ``null`` se la ruota non è in contatto con una superficie o il corpo di contatto non è un :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_normal**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_normal>`

Restituisce la normale della collisione della sospensione nello spazio mondiale se la ruota è in contatto. Se la ruota non è in contatto con nulla, restituisce un vettore che punta direttamente lungo l'asse della sospensione verso il veicolo nello spazio mondiale.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_point**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_point>`

Restituisce il punto di collisione della sospensione nello spazio mondiale se la ruota è in contatto. Se la ruota non è in contatto con nulla, restituisce il punto massimo del raggio di proiezione della ruota nello spazio mondiale, che è definito da ``wheel_rest_length + wheel_radius``.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_rpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rpm**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_rpm>`

Restituisce la velocità di rotazione della ruota in giri al minuto.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_skidinfo:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skidinfo**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_skidinfo>`

Restituisce un valore compreso tra 0,0 e 1,0 che indica se questa ruota sta slittando. 0,0 significa slittamento (la ruota ha perso aderenza, ad esempio su terreno ghiacciato), 1,0 significa nessun slittamento (la ruota ha piena aderenza, ad esempio su strada asfaltata asciutta).

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_is_in_contact:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_contact**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_is_in_contact>`

Restituisce ``true`` se questa ruota è a contatto con una superficie.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
