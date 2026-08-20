:github_url: hide

.. _class_UniformSetCacheRD:

UniformSetCacheRD
=================

**Eredita:** :ref:`Object<class_Object>`

Gestore di cache di set di uniformi per i renderer basati su Rendering Device.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Gestore della cache per i set di uniformi, per i renderer basati su :ref:`RenderingDevice<class_RenderingDevice>`. Fornisce un modo per creare un set di uniformi e riutilizzarlo nelle chiamate successive fin quando esiste il set di uniformi. Il set di uniformi verrà automaticamente ripulito quando gli oggetti dipendenti vengono liberati.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_cache<class_UniformSetCacheRD_method_get_cache>`\ (\ shader\: :ref:`RID<class_RID>`, set\: :ref:`int<class_int>`, uniforms\: :ref:`Array<class_Array>`\[:ref:`RDUniform<class_RDUniform>`\]\ ) |static| |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_UniformSetCacheRD_method_get_cache:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_cache**\ (\ shader\: :ref:`RID<class_RID>`, set\: :ref:`int<class_int>`, uniforms\: :ref:`Array<class_Array>`\[:ref:`RDUniform<class_RDUniform>`\]\ ) |static| :ref:`🔗<class_UniformSetCacheRD_method_get_cache>`

Crea e restituisce un set di uniformi memorizzato nella cache in base alle uniformi fornite per lo shader specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
