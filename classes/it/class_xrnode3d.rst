:github_url: hide

.. _class_XRNode3D:

XRNode3D
========

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`XRAnchor3D<class_XRAnchor3D>`, :ref:`XRController3D<class_XRController3D>`

Un nodo 3D la cui posizione è aggiornata automaticamente dal :ref:`XRServer<class_XRServer>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo si può associare a una posa specifica di un :ref:`XRPositionalTracker<class_XRPositionalTracker>` e il suo :ref:`Node3D.transform<class_Node3D_property_transform>` sarà automaticamente aggiornato dal :ref:`XRServer<class_XRServer>`. I nodi di questo tipo si devono aggiungere come figli del nodo :ref:`XROrigin3D<class_XROrigin3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                          | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`pose<class_XRNode3D_property_pose>`                           | ``&"default"``                                                                |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`show_when_tracked<class_XRNode3D_property_show_when_tracked>` | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`tracker<class_XRNode3D_property_tracker>`                     | ``&""``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`get_has_tracking_data<class_XRNode3D_method_get_has_tracking_data>`\ (\ ) |const|                                                                                                                                                                                                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`get_is_active<class_XRNode3D_method_get_is_active>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRPose<class_XRPose>` | :ref:`get_pose<class_XRNode3D_method_get_pose>`\ (\ )                                                                                                                                                                                                                                   |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`trigger_haptic_pulse<class_XRNode3D_method_trigger_haptic_pulse>`\ (\ action_name\: :ref:`String<class_String>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_XRNode3D_signal_tracking_changed:

.. rst-class:: classref-signal

**tracking_changed**\ (\ tracking\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_XRNode3D_signal_tracking_changed>`

Emesso quando il :ref:`tracker<class_XRNode3D_property_tracker>` inizia o smette di ricevere i dati di tracciamento aggiornati per la :ref:`pose<class_XRNode3D_property_pose>` tracciata. L'argomento ``tracking`` indica se il tracciatore sta ricevendo dati di tracciamento aggiornati.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRNode3D_property_pose:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **pose** = ``&"default"`` :ref:`🔗<class_XRNode3D_property_pose>`

.. rst-class:: classref-property-setget

- |void| **set_pose_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_pose_name**\ (\ )

Il nome della posa a cui siamo associati. Non è noto quali pose supporta un tracker durante la fase di progettazione.

Godot definisce un numero di nomi di pose standard come ``aim`` e ``grip`` ma è possibile configurarne altre all'interno di una determinata :ref:`XRInterface<class_XRInterface>`.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_property_show_when_tracked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_when_tracked** = ``false`` :ref:`🔗<class_XRNode3D_property_show_when_tracked>`

.. rst-class:: classref-property-setget

- |void| **set_show_when_tracked**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_show_when_tracked**\ (\ )

Consente di mostrare il nodo quando inizia il tracciamento e di nasconderlo quando il tracciamento viene perso.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_property_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tracker** = ``&""`` :ref:`🔗<class_XRNode3D_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker**\ (\ )

Il nome del tracciatore a cui siamo associati. Non è noto quali tracciatori sono disponibili durante la fase di progettazione.

Godot definisce un certo numero di tracciatori standard come ``left_hand`` e ``right_hand`` ma è possibile configurarne altri all'interno di una determinata :ref:`XRInterface<class_XRInterface>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_XRNode3D_method_get_has_tracking_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_has_tracking_data**\ (\ ) |const| :ref:`🔗<class_XRNode3D_method_get_has_tracking_data>`

Restituisce ``true`` se il :ref:`tracker<class_XRNode3D_property_tracker>` ha i dati attuali di tracciamento per la :ref:`pose<class_XRNode3D_property_pose>` tracciata.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_get_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_active**\ (\ ) |const| :ref:`🔗<class_XRNode3D_method_get_is_active>`

Restituisce ``true`` se il :ref:`tracker<class_XRNode3D_property_tracker>` è stato registrato e la :ref:`pose<class_XRNode3D_property_pose>` è tracciata.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_get_pose:

.. rst-class:: classref-method

:ref:`XRPose<class_XRPose>` **get_pose**\ (\ ) :ref:`🔗<class_XRNode3D_method_get_pose>`

Restituisce il :ref:`XRPose<class_XRPose>` contenente lo stato attuale della posa che è tracciata. Questo fornisce l'accesso a ulteriori proprietà di questa posa.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_trigger_haptic_pulse:

.. rst-class:: classref-method

|void| **trigger_haptic_pulse**\ (\ action_name\: :ref:`String<class_String>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRNode3D_method_trigger_haptic_pulse>`

Attiva un impulso tattile su un dispositivo associato a questa interfaccia.

\ ``action_name`` è il nome dell'azione per questo impulso.

\ ``frequency`` è la frequenza dell'impulso, impostata su ``0.0`` per far sì che il sistema utilizzi una frequenza predefinita.

\ ``amplitude`` è l'ampiezza dell'impulso tra ``0.0`` e ``1.0``.

\ ``duration_sec`` è la durata dell'impulso in secondi.

\ ``delay_sec`` è un ritardo in secondi prima che sia fornito l'impulso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
