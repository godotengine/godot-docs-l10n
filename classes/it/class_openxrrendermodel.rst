:github_url: hide

.. _class_OpenXRRenderModel:

OpenXRRenderModel
=================

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Questo nodo visualizzerà un modello di rendering OpenXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo visualizzerà un modello di rendering OpenXR accedendo al GLTF associato ed elaborerà tutti i dati di animazione (se supportati dal runtime XR).

I modelli di rendering sono stati introdotti per consentire di mostrare il modello corretto per il controller (o altro dispositivo) in uso dall'utente, poiché la mappa di azioni OpenXR non fornisce informazioni sull'hardware utilizzato dall'utente. Si noti che, sebbene il controller (o dispositivo) possa essere in qualche modo dedotto dal profilo della mappa di azioni associata, questo è un approccio rischioso, poiché l'utente potrebbe utilizzare hardware non noto al momento dello sviluppo e OpenXR si limiterà a simulare un profilo di interazione disponibile.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------+-----------+
   | :ref:`RID<class_RID>` | :ref:`render_model<class_OpenXRRenderModel_property_render_model>` | ``RID()`` |
   +-----------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_top_level_path<class_OpenXRRenderModel_method_get_top_level_path>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRRenderModel_signal_render_model_top_level_path_changed:

.. rst-class:: classref-signal

**render_model_top_level_path_changed**\ (\ ) :ref:`🔗<class_OpenXRRenderModel_signal_render_model_top_level_path_changed>`

Emesso quando il percorso di livello superiore di questo modello di rendering viene cambiato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRRenderModel_property_render_model:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **render_model** = ``RID()`` :ref:`🔗<class_OpenXRRenderModel_property_render_model>`

.. rst-class:: classref-property-setget

- |void| **set_render_model**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_render_model**\ (\ )

Il RID del modello di rendering da caricare, come restituito da :ref:`OpenXRRenderModelExtension.render_model_create()<class_OpenXRRenderModelExtension_method_render_model_create>` o :ref:`OpenXRRenderModelExtension.render_model_get_all()<class_OpenXRRenderModelExtension_method_render_model_get_all>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRRenderModel_method_get_top_level_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_top_level_path**\ (\ ) |const| :ref:`🔗<class_OpenXRRenderModel_method_get_top_level_path>`

Restituisce il percorso di livello superiore correlato a questo modello di rendering.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
