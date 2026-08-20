:github_url: hide

.. _class_OpenXRFutureResult:

OpenXRFutureResult
==================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Oggetto risultato che tiene traccia del risultato asincrono di un oggetto OpenXR Future.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Oggetto risultato che tiene traccia del risultato asincrono di un oggetto OpenXR Future; è possibile utilizzare questo oggetto per tenere traccia dello stato del risultato.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`cancel_future<class_OpenXRFutureResult_method_cancel_future>`\ (\ )                                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_future<class_OpenXRFutureResult_method_get_future>`\ (\ ) |const|                                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                             | :ref:`get_result_value<class_OpenXRFutureResult_method_get_result_value>`\ (\ ) |const|                                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` | :ref:`get_status<class_OpenXRFutureResult_method_get_status>`\ (\ ) |const|                                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_result_value<class_OpenXRFutureResult_method_set_result_value>`\ (\ result_value\: :ref:`Variant<class_Variant>`\ ) |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRFutureResult_signal_completed:

.. rst-class:: classref-signal

**completed**\ (\ result\: :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`\ ) :ref:`🔗<class_OpenXRFutureResult_signal_completed>`

Emesso quando la funzione asincrona ha terminato o è stata annullata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRFutureResult_ResultStatus:

.. rst-class:: classref-enumeration

enum **ResultStatus**: :ref:`🔗<enum_OpenXRFutureResult_ResultStatus>`

.. _class_OpenXRFutureResult_constant_RESULT_RUNNING:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_RUNNING** = ``0``

La funzione asincrona è in esecuzione.

.. _class_OpenXRFutureResult_constant_RESULT_FINISHED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_FINISHED** = ``1``

La funzione asincrona ha terminato.

.. _class_OpenXRFutureResult_constant_RESULT_CANCELLED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_CANCELLED** = ``2``

La funzione asincrona è stata annullata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRFutureResult_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ ) :ref:`🔗<class_OpenXRFutureResult_method_cancel_future>`

Annulla questo futuro, ciò interromperà e fermerà la funzione asincrona.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_future:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_future**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_future>`

Restituisce il valore ``XrFutureEXT`` a cui è associato questo risultato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_result_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_result_value**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_result_value>`

Restituisce il valore risultante della nostra funzione asincrona (se impostato dall'estensione). Il tipo di questo valore risultante dipende dalla funzione chiamata. Consulta la documentazione della funzione interessata.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_status:

.. rst-class:: classref-method

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **get_status**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_status>`

Restituisce lo stato di questo risultato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_set_result_value:

.. rst-class:: classref-method

|void| **set_result_value**\ (\ result_value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OpenXRFutureResult_method_set_result_value>`

Memorizza il valore risultato che esponiamo all'utente.

\ **Nota:** Si dovrebbe chiamare questo metodo solo da un'estensione OpenXR che implementa una funzione asincrona.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
