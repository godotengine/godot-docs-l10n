:github_url: hide

.. _class_Lightmapper:

Lightmapper
===========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`LightmapperRD<class_LightmapperRD>`

Classe astratta estesa dai lightmapper, per l'uso in :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe dovrebbe essere estesa da classi lightmapper personalizzate. I lightmapper possono quindi essere utilizzati con :ref:`LightmapGI<class_LightmapGI>` per fornire un'illuminazione globale precalcolata rapida in 3D.

Godot contiene un lightmapper basato su GPU :ref:`LightmapperRD<class_LightmapperRD>` che utilizza shader di calcolo, ma è possibile implementare lightmapper personalizzati tramite moduli C++.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
