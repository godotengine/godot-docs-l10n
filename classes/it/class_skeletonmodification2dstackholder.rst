:github_url: hide

.. _class_SkeletonModification2DStackHolder:

SkeletonModification2DStackHolder
=================================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modificazione che contiene ed esegue uno :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo :ref:`SkeletonModification2D<class_SkeletonModification2D>` contiene un riferimento a uno :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, consentendo di utilizzare più pile di modificazioni su un singolo :ref:`Skeleton2D<class_Skeleton2D>`.

\ **Nota:** Le modificazioni nello :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` contenuto saranno eseguite solo se la loro modalità di esecuzione corrisponde alla modalità di esecuzione dello SkeletonModification2DStackHolder.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_held_modification_stack<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`\ (\ ) |const|                                                                                          |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_held_modification_stack<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonModification2DStackHolder_method_get_held_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_held_modification_stack**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`

Restituisce lo :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` che questa modificazione contiene.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DStackHolder_method_set_held_modification_stack:

.. rst-class:: classref-method

|void| **set_held_modification_stack**\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`

Imposta lo :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` che questa modificazione contiene. Questa pila di modificazioni sarà quindi eseguita quando questa modificazione è eseguita.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
