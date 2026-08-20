:github_url: hide

.. _class_OpenXRFutureExtension:

OpenXRFutureExtension
=====================

**Eredita:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

L'estensione OpenXR Future consente l'utilizzo di API asincrone.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa è un'estensione di supporto in OpenXR che consente ad altre estensioni OpenXR di avviare funzioni asincrone e di ottenere un callback al termine di tali funzioni. Non è pensata per l'utilizzo in GDScript, ma è accessibile da GDExtension.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`cancel_future<class_OpenXRFutureExtension_method_cancel_future>`\ (\ future\: :ref:`int<class_int>`\ )                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_active<class_OpenXRFutureExtension_method_is_active>`\ (\ ) |const|                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`register_future<class_OpenXRFutureExtension_method_register_future>`\ (\ future\: :ref:`int<class_int>`, on_success\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRFutureExtension_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ future\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRFutureExtension_method_cancel_future>`

Annulla un futuro in corso. ``future`` deve essere un valore ``XrFutureEXT`` restituito in precedenza da un'API che ha avviato una funzione asincrona.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureExtension_method_is_active>`

Restituisce ``true`` se i future sono disponibili nel runtime OpenXR utilizzato. Questa funzione restituirà un risultato utilizzabile solo dopo l'inizializzazione di OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_register_future:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **register_future**\ (\ future\: :ref:`int<class_int>`, on_success\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRFutureExtension_method_register_future>`

Registra un oggetto OpenXR Future in modo da monitorarne il completamento. ``future`` deve essere un valore ``XrFutureEXT`` precedentemente restituito da un'API che ha avviato una funzione asincrona.

Facoltativamente, è possibile specificare ``on_success``, il quale sarà invocato al completamento corretto del futuro.

In alternativa, è possibile usare l'oggetto :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` restituito per attendere (``await``) il suo segnale :ref:`OpenXRFutureResult.completed<class_OpenXRFutureResult_signal_completed>`.

::

    var future_result = OpenXRFutureExtension.register_future(future)
    await future_result.completed
    if future_result.get_status() == OpenXRFutureResult.RESULT_FINISHED:
        # Gestisci il tuo successo
        pass

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
