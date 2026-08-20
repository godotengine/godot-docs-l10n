:github_url: hide

.. _class_TextServerManager:

TextServerManager
=================

**Eredita:** :ref:`Object<class_Object>`

Un singleton per la gestione delle implementazioni di :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**TextServerManager** è il backend API per caricare, enumerare e cambiare i :ref:`TextServer<class_TextServer>`.

\ **Nota:** Cambiare server di testo in fase di esecuzione è possibile, ma invaliderà tutti i font e i buffer di testo. Assicurati di svuotare tutti i controlli, i font e i temi prima di farlo.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_interface<class_TextServerManager_method_add_interface>`\ (\ interface\: :ref:`TextServer<class_TextServer>`\ )             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`find_interface<class_TextServerManager_method_find_interface>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`get_interface<class_TextServerManager_method_get_interface>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_interface_count<class_TextServerManager_method_get_interface_count>`\ (\ ) |const|                                          |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_interfaces<class_TextServerManager_method_get_interfaces>`\ (\ ) |const|                                                    |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`get_primary_interface<class_TextServerManager_method_get_primary_interface>`\ (\ ) |const|                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_interface<class_TextServerManager_method_remove_interface>`\ (\ interface\: :ref:`TextServer<class_TextServer>`\ )       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_primary_interface<class_TextServerManager_method_set_primary_interface>`\ (\ index\: :ref:`TextServer<class_TextServer>`\ ) |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_TextServerManager_signal_interface_added:

.. rst-class:: classref-signal

**interface_added**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TextServerManager_signal_interface_added>`

Emesso quando una nuova interfaccia è stata aggiunta.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_signal_interface_removed:

.. rst-class:: classref-signal

**interface_removed**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TextServerManager_signal_interface_removed>`

Emesso quando una nuova interfaccia è stata rimossa.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TextServerManager_method_add_interface:

.. rst-class:: classref-method

|void| **add_interface**\ (\ interface\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_add_interface>`

Registra un'interfaccia :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_find_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **find_interface**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TextServerManager_method_find_interface>`

Trova un'interfaccia tramite il suo nome (``name``).

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **get_interface**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interface>`

Restituisce l'interfaccia registrata a un indice fornito.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interface_count**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interface_count>`

Restituisce il numero di interfacce attualmente registrate.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_interfaces**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interfaces>`

Restituisce una lista di interfacce disponibili, con l'indice e il nome di ciascuna interfaccia.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_primary_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **get_primary_interface**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_primary_interface>`

Restituisce l'interfaccia principale :ref:`TextServer<class_TextServer>` attualmente in uso.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_remove_interface:

.. rst-class:: classref-method

|void| **remove_interface**\ (\ interface\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_remove_interface>`

Rimuove un'interfaccia. È necessario liberare tutti i font e le cache del testo sagomato prima di rimuovere un'interfaccia.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_set_primary_interface:

.. rst-class:: classref-method

|void| **set_primary_interface**\ (\ index\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_set_primary_interface>`

Imposta l'interfaccia :ref:`TextServer<class_TextServer>` principale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
