:github_url: hide

.. _class_XRController3D:

XRController3D
==============

**Eredita:** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo 3D che rappresenta un controller tracciato nello spazio.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo è un nodo 3D ausiliare collegato al tracciamento dei controller. Offre anche diversi utili passthrough allo stato dei pulsanti e simili sui controller.

I controller sono collegati tramite il loro ID. È possibile creare nodi controller prima che i controller siano disponibili. Se il tuo gioco utilizza sempre due controller (uno per ogni mano), puoi predefinire i controller con ID 1 e 2; diventeranno attivi non appena i controller saranno identificati. Se prevedi che siano utilizzati controller aggiuntivi, dovresti reagire ai segnali e aggiungere nodi XRController3D alla tua scena.

La posizione del nodo controller è aggiornata automaticamente dal :ref:`XRServer<class_XRServer>`. Ciò rende questo nodo ideale per aggiungere nodi figlio per visualizzare il controller.

L':ref:`XRInterface<class_XRInterface>` attuale definisce i nomi degli input. Nel caso di OpenXR, questi sono i nomi delle azioni nell'insieme di azioni attuale dalla mappa di azioni di OpenXR.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                | :ref:`get_float<class_XRController3D_method_get_float>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                            | :ref:`get_input<class_XRController3D_method_get_input>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`get_tracker_hand<class_XRController3D_method_get_tracker_hand>`\ (\ ) |const|                                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_vector2<class_XRController3D_method_get_vector2>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|             |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_button_pressed<class_XRController3D_method_is_button_pressed>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_XRController3D_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_pressed>`

Emesso quando un pulsante su questo controller viene premuto.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_released>`

Emesso quando un pulsante su questo controller viene rilasciato.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRController3D_signal_input_float_changed>`

Emesso quando un grilletto o un input simile su questo controller cambia valore.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRController3D_signal_input_vector2_changed>`

Emesso quando una levetta o un thumbpad su questo controller viene mosso.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_profile_changed>`

Emesso quando il profilo di interazione su questo controller viene cambiato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_XRController3D_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_float>`

Restituisce un valore numerico per l'input con il nome ``name``. È utilizzato per grilletti e sensori grip.

\ **Nota:** L'attuale :ref:`XRInterface<class_XRInterface>` definisce il ``name`` per ciascun input. Nel caso di OpenXR, questi sono i nomi delle azioni nell'insieme di azioni attuale.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_input>`

Restituisce una :ref:`Variant<class_Variant>` per l'input con il nome ``name``. Funziona per qualsiasi tipo di input, la variante sarà tipizzata in base alla configurazione delle azioni.

\ **Nota:** L'interfaccia attuale di :ref:`XRInterface<class_XRInterface>` definisce il ``name`` per ogni input. Nel caso di OpenXR, questi sono i nomi delle azioni nell'insieme di azioni attuale.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_tracker_hand:

.. rst-class:: classref-method

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ ) |const| :ref:`🔗<class_XRController3D_method_get_tracker_hand>`

Restituisce la mano che mantiene questo controller, se nota.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_vector2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vector2**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_vector2>`

Restituisce un :ref:`Vector2<class_Vector2>` per l'input con il nome ``name``. È utilizzato per le levette e i thumbpad presenti su molti controller.

\ **Nota:** L'interfaccia attuale di :ref:`XRInterface<class_XRInterface>` definisce il ``name`` per ogni input. Nel caso di OpenXR, questi sono i nomi delle azioni nell'insieme di azioni attuale.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_is_button_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_button_pressed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_is_button_pressed>`

Restituisce ``true`` se il pulsante con il nome ``name`` è premuto.

\ **Nota:** L'attuale :ref:`XRInterface<class_XRInterface>` definisce il ``name`` per ciascun input. Nel caso di OpenXR, questi sono i nomi delle azioni nell'insieme di azioni attuale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
