:github_url: hide

.. _class_WeakRef:

WeakRef
=======

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mantiene un oggetto. Se l'oggetto è di tipo :ref:`RefCounted<class_RefCounted>`, non aggiorna il conteggio dei riferimenti.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un weakref può contenere un :ref:`RefCounted<class_RefCounted>` senza contribuire al contatore dei riferimenti. Un weakref può essere creato da un :ref:`Object<class_Object>` usando :ref:`@GlobalScope.weakref()<class_@GlobalScope_method_weakref>`. Se questo oggetto non è un riferimento, weakref funziona comunque, tuttavia, non ha alcun effetto sull'oggetto. I weakref sono utili nei casi in cui più classi hanno variabili che si riferiscono fra di loro. Senza weakref, l'utilizzo di queste classi potrebbe portare a perdite di memoria, visto che entrambi i riferimenti si impediscono di essere rilasciati. Convertire parte delle variabili a un weakref può impedire questa dipendenza ciclica, e consente il rilascio dei riferimenti.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_ref<class_WeakRef_method_get_ref>`\ (\ ) |const| |
   +-------------------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_WeakRef_method_get_ref:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_ref**\ (\ ) |const| :ref:`🔗<class_WeakRef_method_get_ref>`

Restituisce l':ref:`Object<class_Object>` a cui si riferisce questo weakref. Restituisce ``null`` se quell'oggetto non esiste più.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
