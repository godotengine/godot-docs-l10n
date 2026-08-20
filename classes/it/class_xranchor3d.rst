:github_url: hide

.. _class_XRAnchor3D:

XRAnchor3D
==========

**Eredita:** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un punto di ancoraggio nello spazio AR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il punto **XRAnchor3D** è un :ref:`XRNode3D<class_XRNode3D>` che mappa una posizione del mondo reale identificata dalla piattaforma AR in una posizione all'interno del mondo di gioco. Ad esempio, finché il rilevamento del piano in ARKit è attivo, ARKit identificherà e aggiornerà la posizione dei piani (tavoli, pavimenti, ecc.) e creerà ancoraggi per essi.

Questo nodo è mappato su uno degli ancoraggitramite il suo ID univoco. Quando ricevi un segnale che è disponibile un nuovo ancoraggio, dovresti aggiungere questo nodo alla tua scena per quell'ancoraggio. Puoi predefinire i nodi e impostare l'ID; i nodi rimarranno semplicemente su ``(0, 0, 0)`` finché non sarà riconosciuto un piano.

Tieni presente che, finché il rilevamento del piano è abilitato, le dimensioni, il posizionamento e l'orientamento di un ancoraggio saranno aggiornati man mano che la logica di rilevamento scopre di più sul mondo reale là fuori, soprattutto se solo una parte della superficie è in vista.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`     | :ref:`get_plane<class_XRAnchor3D_method_get_plane>`\ (\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_size<class_XRAnchor3D_method_get_size>`\ (\ ) |const|   |
   +-------------------------------+-------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_XRAnchor3D_method_get_plane:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_plane**\ (\ ) |const| :ref:`🔗<class_XRAnchor3D_method_get_plane>`

Restituisce un piano allineato con il nostro ancoraggio; utile per i test di intersezione.

.. rst-class:: classref-item-separator

----

.. _class_XRAnchor3D_method_get_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_size**\ (\ ) |const| :ref:`🔗<class_XRAnchor3D_method_get_size>`

Restituisce la dimensione stimata del piano che è stato rilevato. Diciamo che quando l'ancoraggio si riferisce a un tavolo nel mondo reale, questa è la dimensione stimata della superficie di quel tavolo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
