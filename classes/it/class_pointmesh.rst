:github_url: hide

.. _class_PointMesh:

PointMesh
=========

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mesh primitiva con un singolo punto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un **PointMesh** è una mesh primitiva composto da un singolo punto. Invece di basarsi su triangoli, i punti sono renderizzati come un singolo rettangolo sullo schermo con una dimensione costante. Sono pensati per l'utilizzo con i sistemi di particelle, ma è possibile anche utilizzarli come un modo poco costoso per renderizzare gli sprite con billboard abilitato di dimensioni costanti (ad esempio in una nuvola di punti).

Per essere visualizzati, i point mesh si devono utilizzare con un materiale che ha una dimensione di punto. È possibile accedere alla dimensione di punto in uno shader con l'integrato ``POINT_SIZE``, o in un :ref:`BaseMaterial3D<class_BaseMaterial3D>` impostando le proprietà :ref:`BaseMaterial3D.use_point_size<class_BaseMaterial3D_property_use_point_size>` e :ref:`BaseMaterial3D.point_size<class_BaseMaterial3D_property_point_size>`.

\ **Nota:** Quando si utilizzano i point mesh, le proprietà che normalmente alterano i vertici saranno ignorate, tra cui :ref:`BaseMaterial3D.billboard_mode<class_BaseMaterial3D_property_billboard_mode>`, :ref:`BaseMaterial3D.grow<class_BaseMaterial3D_property_grow>` e :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
