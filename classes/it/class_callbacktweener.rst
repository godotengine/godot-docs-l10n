:github_url: hide

.. _class_CallbackTweener:

CallbackTweener
===============

**Eredita:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Richiama il metodo specificato dopo un ritardo facoltativo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**CallbackTweener** serve per chiamare un metodo in una sequenza di tweening. Vedi :ref:`Tween.tween_callback()<class_Tween_method_tween_callback>` per maggiori informazioni sull'utilizzo.

Il tweener terminerà automaticamente se l'oggetto di destinazione del callback viene liberato.

\ **Nota:** :ref:`Tween.tween_callback()<class_Tween_method_tween_callback>` è l'unico modo corretto per creare **CallbackTweener**. Qualsiasi **CallbackTweener** creato manualmente non funzionerà correttamente.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`CallbackTweener<class_CallbackTweener>` | :ref:`set_delay<class_CallbackTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CallbackTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`CallbackTweener<class_CallbackTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CallbackTweener_method_set_delay>`

Ritarda la chiamata del callback di un tempo specificato in secondi.

\ **Esempio:** Chiama :ref:`Node.queue_free()<class_Node_method_queue_free>` dopo 2 secondi:

::

    var tween = get_tree().create_tween()
    tween.tween_callback(queue_free).set_delay(2)

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
