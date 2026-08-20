:github_url: hide

.. _class_PlaceholderCubemapArray:

PlaceholderCubemapArray
=======================

**Eredita:** :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un :ref:`CubemapArray<class_CubemapArray>` senza dati di immagine.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe sostituisce una :ref:`CubemapArray<class_CubemapArray>` o una classe derivata da :ref:`CubemapArray<class_CubemapArray>` in 2 condizioni:

- In modalità server dedicato, dove i dati dell'immagine non dovrebbero influenzare la logica del gioco. Ciò consente di ridurre significativamente le dimensioni del PCK esportato.

- Quando manca la classe derivata da :ref:`CubemapArray<class_CubemapArray>`, ad esempio quando si utilizza una versione diversa del motore.

\ **Nota:** Questa classe non è destinata al rendering o all'uso negli shader. Non è garantito il funzionamento di operazioni come il calcolo degli UV.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
