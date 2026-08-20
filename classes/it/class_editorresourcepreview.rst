:github_url: hide

.. _class_EditorResourcePreview:

EditorResourcePreview
=====================

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo utilizzato per generare anteprime di risorse o file.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo serve per generare anteprime per le risorse o i file.

\ **Nota:** Questa classe non dovrebbe essere istanziata direttamente. Invece, accedi al singleton tramite :ref:`EditorInterface.get_resource_previewer()<class_EditorInterface_method_get_resource_previewer>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_preview_generator<class_EditorResourcePreview_method_add_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                           |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`check_for_invalidation<class_EditorResourcePreview_method_check_for_invalidation>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                              |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_edited_resource_preview<class_EditorResourcePreview_method_queue_edited_resource_preview>`\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_resource_preview<class_EditorResourcePreview_method_queue_resource_preview>`\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ )                       |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_preview_generator<class_EditorResourcePreview_method_remove_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_EditorResourcePreview_signal_preview_invalidated:

.. rst-class:: classref-signal

**preview_invalidated**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_signal_preview_invalidated>`

Emesso se un'anteprima è stata invalidata (modificata). ``path`` corrisponde al percorso dell'anteprima.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorResourcePreview_method_add_preview_generator:

.. rst-class:: classref-method

|void| **add_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_add_preview_generator>`

Crea un generatore di anteprime personalizzato.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_check_for_invalidation:

.. rst-class:: classref-method

|void| **check_for_invalidation**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_method_check_for_invalidation>`

Verifica se la risorsa è cambiata, in tal caso verrà invalidata e verrà emesso il segnale corrispondente.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_edited_resource_preview:

.. rst-class:: classref-method

|void| **queue_edited_resource_preview**\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_edited_resource_preview>`

Mette in coda la risorsa ``resource`` in fase di modifica per l'anteprima. Una volta che l'anteprima è pronta, sarà chiamata la funzione ``receiver_func`` del ricevitore ``receiver``. ``receiver_func`` deve accettare i seguenti quattro argomenti: :ref:`String<class_String>` percorso, :ref:`Texture2D<class_Texture2D>` anteprima, :ref:`Texture2D<class_Texture2D>` anteprima in miniatura, :ref:`Variant<class_Variant>` userdata. ``userdata`` può essere qualsiasi cosa e sarà restituito quando ``receiver_func`` viene chiamato.

\ **Nota:** Se non è stato possibile creare l'anteprima, ``receiver_func`` verrà comunque chiamata, ma l'anteprima sarà ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_resource_preview:

.. rst-class:: classref-method

|void| **queue_resource_preview**\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_resource_preview>`

Mette in coda il file risorsa situato al percorso ``path`` per l'anteprima. Una volta che l'anteprima è pronta, sarà chiamata la funzione ``receiver_func`` del ricevitore ``receiver``. ``receiver_func`` deve accettare i seguenti quattro argomenti: :ref:`String<class_String>` percorso, :ref:`Texture2D<class_Texture2D>` anteprima, :ref:`Texture2D<class_Texture2D>` anteprima in miniatura, :ref:`Variant<class_Variant>` userdata. ``userdata`` può essere qualsiasi cosa e sarà restituito quando ``receiver_func`` viene chiamato.

\ **Nota:** Se non è stato possibile creare l'anteprima, ``receiver_func`` verrà comunque chiamata, ma l'anteprima sarà ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_remove_preview_generator:

.. rst-class:: classref-method

|void| **remove_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_remove_preview_generator>`

Rimuove un generatore di anteprime personalizzato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
