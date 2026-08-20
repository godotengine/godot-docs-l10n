:github_url: hide

.. _class_ResourceFormatSaver:

ResourceFormatSaver
===================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Salva un tipo specifico di risorsa in un file.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il motore può salvare risorse quando si fa dall'editor o quando si usa il singleton :ref:`ResourceSaver<class_ResourceSaver>`. Ciò è possibile grazie a più **ResourceFormatSaver**, ognuno dei quali gestisce il proprio formato e viene chiamato automaticamente dal motore.

Per impostazione predefinita, Godot salva le risorse come ``.tres`` (basato su testo), ``.res`` (binario) o un altro formato integrato, ma è possibile scegliere di creare il proprio formato estendendo questa classe. Assicurarsi di rispettare i tipi di ritorno e i valori documentati. Sarebbe necessario dargli un nome di classe globale con ``class_name`` affinché venga registrato. Come i ResourceFormatSaver integrati, verrà chiamato automaticamente quando si salvano risorse dei suoi tipi riconosciuti. È possibile anche implementare un :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatSaver_private_method__get_recognized_extensions>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize<class_ResourceFormatSaver_private_method__recognize>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                                                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatSaver_private_method__recognize_path>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const|    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_save<class_ResourceFormatSaver_private_method__save>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_set_uid<class_ResourceFormatSaver_private_method__set_uid>`\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual|                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ResourceFormatSaver_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__get_recognized_extensions>`

Restituisce la lista delle estensioni disponibili per salvare l'oggetto risorsa, a condizione che sia riconosciuto (vedi :ref:`_recognize()<class_ResourceFormatSaver_private_method__recognize>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize>`

Restituisce se l'oggetto risorsa specificato può essere salvato da questo salvatore.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize_path>`

Restituisce ``true`` se questo salvatore gestisce un determinato percorso di salvataggio e ``false`` in caso contrario.

Se questo metodo non è implementato, il comportamento predefinito restituisce se l'estensione del percorso è compresa tra quelle fornite da :ref:`_get_recognized_extensions()<class_ResourceFormatSaver_private_method__get_recognized_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__save>`

Salva l'oggetto risorsa specificato in un file nel percorso ``path``. ``flags`` è una maschera di bit composta da costanti di :ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, o una costante di :ref:`Error<enum_@GlobalScope_Error>` in caso di errore.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_set_uid**\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__set_uid>`

Imposta un nuovo UID per la risorsa nel percorso ``path``. Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo o una costante di :ref:`Error<enum_@GlobalScope_Error>` in caso di errore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
