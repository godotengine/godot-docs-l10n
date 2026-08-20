:github_url: hide

.. _class_VisualShaderNodeIf:

VisualShaderNodeIf
==================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Produce un vettore 3D basato sul risultato di un confronto in virgola mobile all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo del grafico di visual shader ha sei porte di ingresso:

- Porta **1** e **2** forniscono i due numeri in virgola mobile ``a`` e ``b`` che verranno confrontati.

- Porta **3** è la tolleranza, che permette di considerare uguali due numeri in virgola mobile simili.

- Porte **4**, **5**, e **6** sono le possibili uscite, restituite rispettivamente se ``a == b``, ``a > b``, o ``a < b``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
