:github_url: hide

.. _class_AwaitTweener:

AwaitTweener
============

**Eredita:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Awaits a specified signal.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**AwaitTweener** serve per attendere un segnale specificato, consentendo passaggi asincroni nell'animazione :ref:`Tween<class_Tween>`. Vedi :ref:`Tween.tween_await()<class_Tween_method_tween_await>` per ulteriori informazioni sull'utilizzo.

Il segnale :ref:`Tweener.finished<class_Tweener_signal_finished>` viene emesso quando viene ricevuto il segnale atteso, quando viene raggiunto il timeout o quando l'oggetto di destinazione viene liberato.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------+------------------------------------------------------------------------------------------------------+
   | :ref:`AwaitTweener<class_AwaitTweener>` | :ref:`set_timeout<class_AwaitTweener_method_set_timeout>`\ (\ timeout\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------+------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AwaitTweener_method_set_timeout:

.. rst-class:: classref-method

:ref:`AwaitTweener<class_AwaitTweener>` **set_timeout**\ (\ timeout\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AwaitTweener_method_set_timeout>`

Imposta il tempo massimo che un **AwaitTweener** può attendere per un segnale. Può servire da misura di sicurezza per i segnali che potrebbero non essere mai emessi. Se non specificato, il tweener attenderà indefinitamente.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
