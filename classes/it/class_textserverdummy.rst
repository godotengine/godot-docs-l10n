:github_url: hide

.. _class_TextServerDummy:

TextServerDummy
===============

**Eredita:** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un server di testo fittizio che non può renderizzare testo o gestire i font.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'interfaccia fittizia di :ref:`TextServer<class_TextServer>` che non fa nulla. Utile per liberare memoria quando non è necessario il rendering del testo, poiché i server di testo sono ad alta intensità di risorse. Può anche essere utilizzata per confronti di prestazioni in GUI complesse per verificare l'impatto del rendering del testo.

Un server di testo fittizio è sempre disponibile all'inizio di un progetto. Ecco come accedervi:

::

    var dummy_text_server = TextServerManager.find_interface("Dummy")
    if dummy_text_server != null:
        TextServerManager.set_primary_interface(dummy_text_server)
        # If the other text servers are unneeded, they can be removed:
        for i in TextServerManager.get_interface_count():
            var text_server = TextServerManager.get_interface(i)
            if text_server != dummy_text_server:
                TextServerManager.remove_interface(text_server)

L'argomento della riga di comando ``--text-driver Dummy`` (sensibile alle maiuscole e alle minuscole) può essere utilizzato per forzare il :ref:`TextServer<class_TextServer>` "Dummy" su qualsiasi progetto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
