:github_url: hide

.. _class_SkeletonModificationStack2D:

SkeletonModificationStack2D
===========================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una risorsa che contiene una pila di :ref:`SkeletonModification2D<class_SkeletonModification2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa risorsa è utilizzata dallo Skeleton e contiene una pila di :ref:`SkeletonModification2D<class_SkeletonModification2D>`.

Ciò controlla l'ordine delle modificazioni e il modo in cui sono applicate. L'ordine delle modificazioni è particolarmente importante per le configurazioni IK a corpo intero, poiché è necessario eseguire le modificazioni nell'ordine corretto per ottenere i risultati desiderati. Ad esempio, si desidera eseguire una modificazione sulla colonna vertebrale *prima* delle braccia su uno scheletro umanoide.

Questa risorsa controlla anche la forza con cui tutte le modificazioni sono applicate allo :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`enabled<class_SkeletonModificationStack2D_property_enabled>`                       | ``false`` |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>` | ``0``     |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`strength<class_SkeletonModificationStack2D_property_strength>`                     | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`add_modification<class_SkeletonModificationStack2D_method_add_modification>`\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ )                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`delete_modification<class_SkeletonModificationStack2D_method_delete_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ )                                                                       |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`enable_all_modifications<class_SkeletonModificationStack2D_method_enable_all_modifications>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`execute<class_SkeletonModificationStack2D_method_execute>`\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ )                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`get_is_setup<class_SkeletonModificationStack2D_method_get_is_setup>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModification2D<class_SkeletonModification2D>` | :ref:`get_modification<class_SkeletonModificationStack2D_method_get_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton2D<class_Skeleton2D>`                         | :ref:`get_skeleton<class_SkeletonModificationStack2D_method_get_skeleton>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_modification<class_SkeletonModificationStack2D_method_set_modification>`\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`setup<class_SkeletonModificationStack2D_method_setup>`\ (\ )                                                                                                                                    |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SkeletonModificationStack2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``false`` :ref:`🔗<class_SkeletonModificationStack2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

Se ``true``, le modificazioni nella pila saranno chiamate. Ciò viene gestito automaticamente attraverso il nodo :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_modification_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **modification_count** = ``0`` :ref:`🔗<class_SkeletonModificationStack2D_property_modification_count>`

.. rst-class:: classref-property-setget

- |void| **set_modification_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_modification_count**\ (\ )

Il numero di modificazioni nella pila.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_SkeletonModificationStack2D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

La forza di interpolazione delle modificazioni nella pila. Con un forza di ``0`` le modificazioni non sono applicate, con una forza di ``0.5`` saranno applicate per metà e con una forza di ``1`` le modificazioni saranno applicate totalmente, sovrascrivendo le pose dei :ref:`Bone2D<class_Bone2D>` dello :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonModificationStack2D_method_add_modification:

.. rst-class:: classref-method

|void| **add_modification**\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_add_modification>`

Aggiunge lo :ref:`SkeletonModification2D<class_SkeletonModification2D>` specificato alla pila.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_delete_modification:

.. rst-class:: classref-method

|void| **delete_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_delete_modification>`

Elimina lo :ref:`SkeletonModification2D<class_SkeletonModification2D>` nella posizione di indice ``mod_idx``, se esiste.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_enable_all_modifications:

.. rst-class:: classref-method

|void| **enable_all_modifications**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_enable_all_modifications>`

Abilita tutti gli :ref:`SkeletonModification2D<class_SkeletonModification2D>` nella pila.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_execute:

.. rst-class:: classref-method

|void| **execute**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_execute>`

Esegue tutti gli :ref:`SkeletonModification2D<class_SkeletonModification2D>` nella pila che utilizzano la stessa modalità di esecuzione di ``execution_mode``, a partire dall'indice ``0`` fino a :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>`.

\ **Nota:** L'ordine delle modificazioni può essere importante a seconda delle modificazioni. Ad esempio, le modificazioni su una spina dorsale dovrebbero essere eseguite prima delle modificazioni sulle braccia per ottenere risultati adeguati.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_is_setup>`

Restituisce un valore booleano che indica se la pila di modificazioni è configurata e può essere eseguita.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_modification:

.. rst-class:: classref-method

:ref:`SkeletonModification2D<class_SkeletonModification2D>` **get_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_modification>`

Restituisce il :ref:`SkeletonModification2D<class_SkeletonModification2D>` all'indice passato ``mod_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton2D<class_Skeleton2D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_skeleton>`

Restituisce il nodo :ref:`Skeleton2D<class_Skeleton2D>` a cui è associato lo SkeletonModificationStack2D.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_set_modification:

.. rst-class:: classref-method

|void| **set_modification**\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_set_modification>`

Imposta la modificazione all'indice ``mod_idx`` sulla modificazione passata, ``modification``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_setup>`

Configura la pila di modificazioni in modo che possa essere eseguita. Questa funzione dovrebbe essere chiamata da uno :ref:`Skeleton2D<class_Skeleton2D>` e non dovrebbe essere chiamata manualmente a meno che tu non sappia cosa stai facendo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
