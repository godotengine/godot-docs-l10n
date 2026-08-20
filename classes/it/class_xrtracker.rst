:github_url: hide

.. _class_XRTracker:

XRTracker
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`XRFaceTracker<class_XRFaceTracker>`, :ref:`XRPositionalTracker<class_XRPositionalTracker>`

Un oggetto tracciato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto è la base di tutti i tracciatori XR.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------+----------------+
   | :ref:`String<class_String>`                   | :ref:`description<class_XRTracker_property_description>` | ``""``         |
   +-----------------------------------------------+----------------------------------------------------------+----------------+
   | :ref:`StringName<class_StringName>`           | :ref:`name<class_XRTracker_property_name>`               | ``&"Unknown"`` |
   +-----------------------------------------------+----------------------------------------------------------+----------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>` | :ref:`type<class_XRTracker_property_type>`               | ``128``        |
   +-----------------------------------------------+----------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRTracker_property_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **description** = ``""`` :ref:`🔗<class_XRTracker_property_description>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_desc**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tracker_desc**\ (\ )

La descrizione di questo tracciatore.

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** = ``&"Unknown"`` :ref:`🔗<class_XRTracker_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker_name**\ (\ )

Il nome univoco di questo tracciatore. I tracciatori disponibili differiscono tra i vari runtime XR e possono spesso essere configurati dall'utente. Godot mantiene un certo numero di nomi riservati che si aspetta che :ref:`XRInterface<class_XRInterface>` implementi se applicabile:

- ``"head"`` identifica il :ref:`XRPositionalTracker<class_XRPositionalTracker>` della testa del giocatore

- ``"left_hand"`` identifica il :ref:`XRControllerTracker<class_XRControllerTracker>` nella mano sinistra del giocatore

- ``"right_hand"`` identifica il :ref:`XRControllerTracker<class_XRControllerTracker>` nella mano destra del giocatore

- ``"/user/hand_tracker/left"`` identifica il :ref:`XRHandTracker<class_XRHandTracker>` per la mano sinistra del giocatore

- ``"/user/hand_tracker/right"`` identifica il :ref:`XRHandTracker<class_XRHandTracker>` per la mano destra del giocatore

- ``"/user/body_tracker"`` identifica il :ref:`XRBodyTracker<class_XRBodyTracker>` per il corpo del giocatore

- ``"/user/face_tracker"`` identifica il :ref:`XRFaceTracker<class_XRFaceTracker>` per il viso del giocatore

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_type:

.. rst-class:: classref-property

:ref:`TrackerType<enum_XRServer_TrackerType>` **type** = ``128`` :ref:`🔗<class_XRTracker_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_type**\ (\ value\: :ref:`TrackerType<enum_XRServer_TrackerType>`\ )
- :ref:`TrackerType<enum_XRServer_TrackerType>` **get_tracker_type**\ (\ )

Il tipo di tracciatore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
