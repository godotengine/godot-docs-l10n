:github_url: hide

.. _class_LightmapProbe:

LightmapProbe
=============

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Rappresenta una singola sonda posizionata manualmente per l'illuminazione dinamica di oggetti con :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**LightmapProbe** rappresenta la posizione di una singola sonda posizionata manualmente per l'illuminazione dinamica degli oggetti con :ref:`LightmapGI<class_LightmapGI>`. Le sonde lightmap influenzano l'illuminazione dei nodi derivati da :ref:`GeometryInstance3D<class_GeometryInstance3D>` che hanno il loro :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` impostato su :ref:`GeometryInstance3D.GI_MODE_DYNAMIC<class_GeometryInstance3D_constant_GI_MODE_DYNAMIC>`.

In genere, le sonde :ref:`LightmapGI<class_LightmapGI>` vengono posizionate automaticamente impostando :ref:`LightmapGI.generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` su un valore diverso da :ref:`LightmapGI.GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. Creando nodi **LightmapProbe** prima di precalcolare le lightmap, è possibile aggiungere più sonde in aree specifiche per maggiori dettagli o disabilitare la generazione automatica e fare affidamento solo sulle sonde posizionate manualmente.

\ **Nota:** I nodi **LightmapProbe** che vengono posizionati dopo aver precalcolato le lightmap vengono ignorati dagli oggetti dinamici. Dopo aver creato o modificato **LightmapProbe**, è necessario ricalcolare la lightmap affinché le sonde siano efficaci.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
