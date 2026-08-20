:github_url: hide

.. _class_XROrigin3D:

XROrigin3D
==========

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Il punto di origine in AR/VR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo è un nodo speciale all'interno del sistema AR/VR che mappa la posizione fisica del centro del nostro spazio di tracciamento alla posizione virtuale all'interno del nostro mondo di gioco.

È possibile aggiungere più punti di origine all'albero di scene, ma solo uno può essere utilizzato alla volta. Tutti i nodi :ref:`XRCamera3D<class_XRCamera3D>`, :ref:`XRController3D<class_XRController3D>` e :ref:`XRAnchor3D<class_XRAnchor3D>` dovrebbero essere figli diretti di questo nodo affinché il tracciamento spaziale funzioni correttamente.

È la posizione di questo nodo che aggiorni quando il tuo personaggio deve muoversi nel tuo mondo di gioco mentre non ci stiamo muovendo nel mondo reale. Il movimento nel mondo reale è sempre in relazione a questo punto di origine.

Ad esempio, se il tuo personaggio sta guidando un'auto, il nodo **XROrigin3D** dovrebbe essere un nodo figlio di questa auto. Oppure, se stai implementando un sistema di teletrasporto per muovere il tuo personaggio, dovresti cambiare la posizione di questo nodo.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`current<class_XROrigin3D_property_current>`         | ``false`` |
   +---------------------------+-----------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`world_scale<class_XROrigin3D_property_world_scale>` | ``1.0``   |
   +---------------------------+-----------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XROrigin3D_property_current:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **current** = ``false`` :ref:`🔗<class_XROrigin3D_property_current>`

.. rst-class:: classref-property-setget

- |void| **set_current**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_current**\ (\ )

Se ``true``, questo nodo di origine è attualmente utilizzato dal :ref:`XRServer<class_XRServer>`. È possibile utilizzare un solo punto di origine alla volta.

.. rst-class:: classref-item-separator

----

.. _class_XROrigin3D_property_world_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **world_scale** = ``1.0`` :ref:`🔗<class_XROrigin3D_property_world_scale>`

.. rst-class:: classref-property-setget

- |void| **set_world_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_world_scale**\ (\ )

La scala del mondo di gioco rispetto al mondo reale. È la stessa di :ref:`XRServer.world_scale<class_XRServer_property_world_scale>`. Per impostazone predefinita, la maggior parte delle piattaforme AR/VR presuppone che 1 unità di gioco corrisponda a 1 metro del mondo reale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
