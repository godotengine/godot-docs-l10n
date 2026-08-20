:github_url: hide

.. _class_SubtweenTweener:

SubtweenTweener
===============

**Eredita:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Esegue un :ref:`Tween<class_Tween>` annidato all'interno di un altro :ref:`Tween<class_Tween>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**SubtweenTweener** serve per eseguire un :ref:`Tween<class_Tween>` come solo passaggio in una sequenza definita da un altro :ref:`Tween<class_Tween>`. Vedi :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` per maggiori informazioni sull'utilizzo.

\ **Nota:** :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` è l'unico modo corretto per creare **SubtweenTweener**. Qualsiasi **SubtweenTweener** creato manualmente non funzionerà correttamente.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`SubtweenTweener<class_SubtweenTweener>` | :ref:`set_delay<class_SubtweenTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SubtweenTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`SubtweenTweener<class_SubtweenTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SubtweenTweener_method_set_delay>`

Imposta il tempo in secondi dopo il quale il **SubtweenTweener** inizierà a eseguire il subtween. Per impostazione predefinita, non c'è alcun ritardo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
