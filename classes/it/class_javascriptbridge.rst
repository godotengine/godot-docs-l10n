:github_url: hide

.. _class_JavaScriptBridge:

JavaScriptBridge
================

**Eredita:** :ref:`Object<class_Object>`

Singleton che collega il motore al contesto JavaScript del browser nell'esportazione Web.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il singleton JavaScriptBridge è implementato solo nell'esportazione Web. È utilizzato per accedere al contesto JavaScript del browser. Ciò consente di interagire con le pagine incorporanti o chiamare API in JavaScript di terze parti.

\ **Nota:** È possibile disabilitare questo singleton in fase di compilazione per migliore sicurezza. Normalmente, il singleton JavaScriptBridge è abilitato. Anche i modelli di esportazione ufficiali hanno il singleton JavaScriptBridge abilitato. Consulta :doc:`Compilazione per il Web <../contributing/development/compiling/compiling_for_web>` nella documentazione per ulteriori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Il singleton JavaScriptBridge <../tutorials/platform/web/javascript_bridge>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`create_callback<class_JavaScriptBridge_method_create_callback>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`create_object<class_JavaScriptBridge_method_create_object>`\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg|                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`download_buffer<class_JavaScriptBridge_method_download_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`eval<class_JavaScriptBridge_method_eval>`\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ )                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`force_fs_sync<class_JavaScriptBridge_method_force_fs_sync>`\ (\ )                                                                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`get_interface<class_JavaScriptBridge_method_get_interface>`\ (\ interface\: :ref:`String<class_String>`\ )                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_js_buffer<class_JavaScriptBridge_method_is_js_buffer>`\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`js_buffer_to_packed_byte_array<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`pwa_needs_update<class_JavaScriptBridge_method_pwa_needs_update>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`pwa_update<class_JavaScriptBridge_method_pwa_update>`\ (\ )                                                                                                                                                                        |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_JavaScriptBridge_signal_pwa_update_available:

.. rst-class:: classref-signal

**pwa_update_available**\ (\ ) :ref:`🔗<class_JavaScriptBridge_signal_pwa_update_available>`

Emesso quando è stato rilevato un aggiornamento per questa applicazione web progressiva ma è in attesa di essere attivato perché una versione precedente è attiva. Vedi :ref:`pwa_update()<class_JavaScriptBridge_method_pwa_update>` per forzare l'esecuzione immediata dell'aggiornamento.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_JavaScriptBridge_method_create_callback:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **create_callback**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaScriptBridge_method_create_callback>`

Crea un riferimento a un :ref:`Callable<class_Callable>` che può essere utilizzato come callback da JavaScript. Il riferimento deve essere mantenuto finché non avviene il callback, altrimenti non verrà chiamato affatto. Vedi :ref:`JavaScriptObject<class_JavaScriptObject>` per l'utilizzo.

\ **Nota:** la funzione di callback deve accettare esattamente un solo argomento :ref:`Array<class_Array>`, che sarà `l'oggetto argomenti <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments>`__ di JavaScript convertito in un array.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_create_object:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **create_object**\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_JavaScriptBridge_method_create_object>`

Crea un nuovo oggetto JavaScript usando il costruttore ``new``. ``object`` deve essere una proprietà valida della finestra (``window``) di JavaScript . Vedi :ref:`JavaScriptObject<class_JavaScriptObject>` per l'utilizzo.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_download_buffer:

.. rst-class:: classref-method

|void| **download_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) :ref:`🔗<class_JavaScriptBridge_method_download_buffer>`

Richiede all'utente di scaricare un file contenente il ``buffer`` specificato. Il file avrà il nome (``name``) e il tipo (``mime``) specificati.

\ **Nota:** Il browser potrebbe sovrascrivere il `tipo MIME <https://it.wikipedia.org/wiki/Media_type>`__ fornito in base all'estensione del file in ``name``.

\ **Nota:** I browser potrebbero bloccare il download se :ref:`download_buffer()<class_JavaScriptBridge_method_download_buffer>` non è chiamato da un'interazione dell'utente (ad esempio clic sul pulsante).

\ **Nota:** i browser potrebbero chiedere l'autorizzazione all'utente o bloccare il download se sono effettuate più richieste di download in rapida successione.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_eval:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **eval**\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JavaScriptBridge_method_eval>`

Esegui la stringa ``code`` come codice JavaScript all'interno della finestra del browser. Questa è una chiamata alla funzione JavaScript globale ``eval()``.

Se ``use_global_execution_context`` è ``true``, il codice sarà valutato nel contesto di esecuzione globale. Altrimenti, sarà valutato nel contesto di esecuzione di una funzione all'interno dell'ambiente di runtime del motore.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_force_fs_sync:

.. rst-class:: classref-method

|void| **force_fs_sync**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_force_fs_sync>`

Forza la sincronizzazione del file system persistente (se abilitato).

\ **Nota:** Questo è utile solo per moduli o estensioni che non possono usare :ref:`FileAccess<class_FileAccess>` per scrivere file.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_get_interface:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **get_interface**\ (\ interface\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaScriptBridge_method_get_interface>`

Restituisce un'interfaccia a un oggetto JavaScript che può essere utilizzato dagli script. Il parametro ``interface`` deve essere una proprietà valida della finestra (``window``) di JavaScript. Il callback deve accettare un singolo argomento :ref:`Array<class_Array>`, che conterrà gli argomenti (``arguments``) di JavaScript. Vedi :ref:`JavaScriptObject<class_JavaScriptObject>` per l'utilizzo.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_is_js_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_js_buffer**\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_is_js_buffer>`

Restituisce ``true`` se l'oggetto JavaScript ``javascript_object`` è di tipo `ArrayBuffer <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer>`__, `DataView <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView>`__ o uno dei tanti `oggetti array tipizzati <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray>`__.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_js_buffer_to_packed_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **js_buffer_to_packed_byte_array**\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`

Restituisce una copia del contenuto di ``javascript_buffer`` come :ref:`PackedByteArray<class_PackedByteArray>`. Vedi anche :ref:`is_js_buffer()<class_JavaScriptBridge_method_is_js_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_needs_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **pwa_needs_update**\ (\ ) |const| :ref:`🔗<class_JavaScriptBridge_method_pwa_needs_update>`

Restituisce ``true`` se una nuova versione della applicazione web progressiva è in attesa di essere attivata.

\ **Nota:** Rilevante solo se esportata come Applicazione web progressiva.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pwa_update**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_pwa_update>`

Esegue l'aggiornamento live dell'applicazione web progressiva. Forza l'installazione della nuova versione e il ricaricamento della pagina.

\ **Nota:** La tua applicazione verrà **ricaricata in tutte le schede del browser**.

\ **Nota:** Rilevante solo se esportata come applicazione web progressiva e :ref:`pwa_needs_update()<class_JavaScriptBridge_method_pwa_needs_update>` restituisce ``true``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
