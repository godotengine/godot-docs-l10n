:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**Eredita:** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo telecamera che si posiziona automaticamente in base ai dati di tracciamento XR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo telecamera che si posiziona automaticamente in base ai dati di tracciamento XR.

A differenza di :ref:`XRController3D<class_XRController3D>`, il thread di rendering ha accesso a dati di tracciamento più aggiornati, e la posizione del nodo **XRCamera3D** può avere un ritardo di alcuni millisecondi rispetto a quella utilizzata per il rendering.

\ **Nota:** Se :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` è ``true``, gran parte delle proprietà della telecamera viene sovrascritta dall'interfaccia :ref:`XRInterface<class_XRInterface>` attiva. Le uniche proprietà di cui ci si può fidare sono i piani vicino e lontano.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
