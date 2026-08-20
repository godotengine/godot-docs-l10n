:github_url: hide

.. _class_EditorResourceTooltipPlugin:

EditorResourceTooltipPlugin
===========================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un plugin che fornisce tooltip avanzati per il tipo di risorsa gestita.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Le estensioni tooltip delle risorse sono usati dal :ref:`FileSystemDock<class_FileSystemDock>` per generare tooltip personalizzati per risorse specifiche. Ad esempio, il tooltip per una :ref:`Texture2D<class_Texture2D>` visualizza un'anteprima più grande e le dimensioni della texture.

Un'estensione deve essere prima registrata con :ref:`FileSystemDock.add_resource_tooltip_plugin()<class_FileSystemDock_method_add_resource_tooltip_plugin>`. Quando l'utente passa il mouse su una risorsa nel pannello Filesystem che è gestita dall'estensione, viene chiamato :ref:`_make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` per creare il tooltip. Funziona in modo simile a :ref:`Control._make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_handles<class_EditorResourceTooltipPlugin_private_method__handles>`\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                   |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`_make_tooltip_for_path<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`request_thumbnail<class_EditorResourceTooltipPlugin_method_request_thumbnail>`\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const|                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorResourceTooltipPlugin_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__handles>`

Restituisce ``true`` se il plugin gestirà il tipo ``type`` di :ref:`Resource<class_Resource>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **_make_tooltip_for_path**\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`

Crea e restituisce un tooltip che verrà visualizzato quando l'utente passa il mouse su una risorsa al percorso ``path`` specificato nel pannello Filesystem.

Il dizionario ``metadata`` è fornito dal generatore di anteprime (vedi :ref:`EditorResourcePreviewGenerator._generate()<class_EditorResourcePreviewGenerator_private_method__generate>`).

\ ``base`` è il tooltip predefinito base, che è un :ref:`VBoxContainer<class_VBoxContainer>` con un nome file, un tipo e delle etichette di dimensioni. Se un altra estensione ha gestito lo stesso tipo di file, ``base`` verrà prodotto dall'estensione precedente. Per ottenere il miglior risultato, assicurati che il tooltip base faccia parte del :ref:`Control<class_Control>` restituito.

\ **Nota:** È sconsigliato usare :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`, specialmente con risorse pesanti come modelli o texture, perché renderà l'editor non rispondente durante la creazione del tooltip. È possibile usare :ref:`request_thumbnail()<class_EditorResourceTooltipPlugin_method_request_thumbnail>` se si desidera visualizzare un'anteprima nel tuo tooltip.

\ **Nota:** Se si desidera scartare ``base``, assicurarsi di chiamare :ref:`Node.queue_free()<class_Node_method_queue_free>`, poiché non viene liberato automaticamente.

::

    func _make_tooltip_for_path(path, metadata, base):
        var t_rect = TextureRect.new()
        request_thumbnail(path, t_rect)
        base.add_child(t_rect) # Il TextureRect apparirà in fondo al tooltip.
        return base

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_method_request_thumbnail:

.. rst-class:: classref-method

|void| **request_thumbnail**\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const| :ref:`🔗<class_EditorResourceTooltipPlugin_method_request_thumbnail>`

Richiede una miniatura per il :ref:`TextureRect<class_TextureRect>` fornito. La miniatura viene creata in modo asincrono dall':ref:`EditorResourcePreview<class_EditorResourcePreview>` e impostata automaticamente quando disponibile.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
