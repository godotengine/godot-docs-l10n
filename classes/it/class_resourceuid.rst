:github_url: hide

.. _class_ResourceUID:

ResourceUID
===========

**Eredita:** :ref:`Object<class_Object>`

Un singleton che gestisce gli identificatori univoci di tutte le risorse all'interno di un progetto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Gli UID delle risorse (Unique IDentifier) consentono al motore di mantenere intatti i riferimenti tra le risorse, anche se i file sono rinominati o spostati. Sono accessibili con ``uid://``.

\ **ResourceUID** tiene traccia di tutti gli UID registrati delle risorse in un progetto, genera nuovi UID e converte tra le loro rappresentazioni di stringa e di numeri interi.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_id<class_ResourceUID_method_add_id>`\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`create_id<class_ResourceUID_method_create_id>`\ (\ )                                                           |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`create_id_for_path<class_ResourceUID_method_create_id_for_path>`\ (\ path\: :ref:`String<class_String>`\ )     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ensure_path<class_ResourceUID_method_ensure_path>`\ (\ path_or_uid\: :ref:`String<class_String>`\ ) |static|   |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_id_path<class_ResourceUID_method_get_id_path>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                   |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_id<class_ResourceUID_method_has_id>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                             |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`id_to_text<class_ResourceUID_method_id_to_text>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`path_to_uid<class_ResourceUID_method_path_to_uid>`\ (\ path\: :ref:`String<class_String>`\ ) |static|          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_id<class_ResourceUID_method_remove_id>`\ (\ id\: :ref:`int<class_int>`\ )                               |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_id<class_ResourceUID_method_set_id>`\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`text_to_id<class_ResourceUID_method_text_to_id>`\ (\ text_id\: :ref:`String<class_String>`\ ) |const|          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`uid_to_path<class_ResourceUID_method_uid_to_path>`\ (\ uid\: :ref:`String<class_String>`\ ) |static|           |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_ResourceUID_constant_INVALID_ID:

.. rst-class:: classref-constant

**INVALID_ID** = ``-1`` :ref:`🔗<class_ResourceUID_constant_INVALID_ID>`

Il valore da utilizzare per un UID non valido, ad esempio se la risorsa non può essere caricata.

La sua rappresentazione testuale è ``uid://<invalid>``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ResourceUID_method_add_id:

.. rst-class:: classref-method

|void| **add_id**\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_add_id>`

Aggiunge un nuovo valore di UID che viene mappato al percorso della risorsa specificato.

Fallisce con un errore se l'UID esiste già, quindi assicurati di controllare prima :ref:`has_id()<class_ResourceUID_method_has_id>`, oppure usa :ref:`set_id()<class_ResourceUID_method_set_id>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_create_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_id**\ (\ ) :ref:`🔗<class_ResourceUID_method_create_id>`

Genera un UID di risorsa casuale che è garantito di essere univoco all'interno della lista degli UID attualmente caricati.

Per registrare questo UID, è necessario chiamare :ref:`add_id()<class_ResourceUID_method_add_id>` o :ref:`set_id()<class_ResourceUID_method_set_id>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_create_id_for_path:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_create_id_for_path>`

Simile a :ref:`create_id()<class_ResourceUID_method_create_id>`, ma l'UID è generato con il parametro ``path`` fornito e il nome del progetto. Gli UID generati per quel percorso saranno sempre gli stessi all'interno del progetto attuale.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_ensure_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **ensure_path**\ (\ path_or_uid\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_ensure_path>`

Restituisce un percorso, convertendo ``path_or_uid`` se necessario. Fallisce e restituisce una stringa vuota se viene fornito un UID non valido.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_get_id_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_path**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_get_id_path>`

Restituisce il percorso a cui fa riferimento il valore UID specificato.

Fallisce con un errore se l'UID non esiste, quindi assicurati di controllare prima :ref:`has_id()<class_ResourceUID_method_has_id>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_has_id:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_id**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_has_id>`

Restituisce se il valore UID fornito è presente nella cache.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_id_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **id_to_text**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_id_to_text>`

Converte l'UID specificato in un valore di stringa ``uid://``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_path_to_uid:

.. rst-class:: classref-method

:ref:`String<class_String>` **path_to_uid**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_path_to_uid>`

Converte la risorsa fornita al percorso ``path`` in un UID. Restituisce il percorso invariato se non ha un UID associato.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_remove_id:

.. rst-class:: classref-method

|void| **remove_id**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ResourceUID_method_remove_id>`

Rimuove un valore UID caricato dalla cache.

Fallisce con un errore se l'UID non esiste, quindi assicurati di controllare prima :ref:`has_id()<class_ResourceUID_method_has_id>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_set_id:

.. rst-class:: classref-method

|void| **set_id**\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_set_id>`

Aggiorna il percorso della risorsa di un UID esistente.

Fallisce con un errore se l'UID non esiste, quindi assicurati di controllare prima :ref:`has_id()<class_ResourceUID_method_has_id>` o di usare :ref:`add_id()<class_ResourceUID_method_add_id>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_text_to_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **text_to_id**\ (\ text_id\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ResourceUID_method_text_to_id>`

Estrae il valore UID dalla stringa ``uid://`` specificata.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_uid_to_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **uid_to_path**\ (\ uid\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_uid_to_path>`

Converte l'``uid`` fornito in un percorso. Stampa un errore se l'UID non è valido.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
