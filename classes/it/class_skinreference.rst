:github_url: hide

.. _class_SkinReference:

SkinReference
=============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un oggetto contenitore con conteggio dei riferimenti per uno scheletro RID utilizzato nel :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un oggetto interno contenente una mappatura da una :ref:`Skin<class_Skin>` utilizzato nel contesto di un particolare :ref:`MeshInstance3D<class_MeshInstance3D>` per fare riferimento al :ref:`RID<class_RID>` dello scheletro nel RenderingServer.

Vedi anche :ref:`MeshInstance3D.get_skin_reference()<class_MeshInstance3D_method_get_skin_reference>` e :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

Notare che nonostante la denominazione simile, il RID dello scheletro utilizzato nel :ref:`RenderingServer<class_RenderingServer>` non ha una corrispondenza diretta con un nodo :ref:`Skeleton3D<class_Skeleton3D>`.

In particolare, un nodo :ref:`Skeleton3D<class_Skeleton3D>` senza figli :ref:`MeshInstance3D<class_MeshInstance3D>` potrebbe essere sconosciuto al :ref:`RenderingServer<class_RenderingServer>`.

D'altro canto, uno :ref:`Skeleton3D<class_Skeleton3D>` con più nodi :ref:`MeshInstance3D<class_MeshInstance3D>` che hanno ciascuno diversi oggetti :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` potrebbe avere più istanze di SkinReference (e quindi, più :ref:`RID<class_RID>` di scheletro).

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_skeleton<class_SkinReference_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`Skin<class_Skin>` | :ref:`get_skin<class_SkinReference_method_get_skin>`\ (\ ) |const|         |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkinReference_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skeleton>`

Restituisce il :ref:`RID<class_RID>` posseduto da questo SkinReference, come restituito da :ref:`RenderingServer.skeleton_create()<class_RenderingServer_method_skeleton_create>`.

.. rst-class:: classref-item-separator

----

.. _class_SkinReference_method_get_skin:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **get_skin**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skin>`

Restituisce lo :ref:`Skin<class_Skin>` connesso a questo SkinReference. Nel caso di :ref:`MeshInstance3D<class_MeshInstance3D>` senza :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` assegnato, questo farà riferimento a uno :ref:`Skin<class_Skin>` predefinito interno posseduto da quel :ref:`MeshInstance3D<class_MeshInstance3D>`.

Nota che un singolo :ref:`Skin<class_Skin>` può avere più di uno **SkinReference** nel caso in cui sia condiviso da mesh su più nodi :ref:`Skeleton3D<class_Skeleton3D>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
