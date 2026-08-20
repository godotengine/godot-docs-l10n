:github_url: hide

.. _class_OptimizedTranslation:

OptimizedTranslation
====================

**Eredita:** :ref:`Translation<class_Translation>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una traduzione ottimizzata.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una traduzione ottimizzata. Utilizza traduzioni compresse in tempo reale, che risultano in dizionari molto piccoli.

Questa classe non memorizza le stringhe non tradotte per motivi di ottimizzazione. Pertanto, :ref:`Translation.get_message_list()<class_Translation_method_get_message_list>` restituisce sempre un array vuoto e :ref:`Translation.get_message_count()<class_Translation_method_get_message_count>` restituisce sempre ``0``.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`generate<class_OptimizedTranslation_method_generate>`\ (\ from\: :ref:`Translation<class_Translation>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OptimizedTranslation_method_generate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **generate**\ (\ from\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_OptimizedTranslation_method_generate>`

Genera e imposta una traduzione ottimizzata dalla risorsa :ref:`Translation<class_Translation>` specificata. Restituisce ``true`` in caso di successo.

\ **Nota:** I messaggi in ``from`` non devono utilizzare i contesti o le forme plurali.

\ **Nota:** Questo metodo è destinato all'uso nell'editor. Non fa nulla quando viene chiamato da un progetto esportato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
