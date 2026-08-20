:github_url: hide

.. _class_ImageFormatLoaderExtension:

ImageFormatLoaderExtension
==========================

**Eredita:** :ref:`ImageFormatLoader<class_ImageFormatLoader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe di base per la creazione di estensioni :ref:`ImageFormatLoader<class_ImageFormatLoader>` (aggiungendo supporto per ulteriori formati di immagine).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il motore supporta diversi formati di immagine predefiniti (PNG, SVG, JPEG, WebP per citarne alcuni), ma puoi scegliere di implementare il supporto per ulteriori formati di immagine estendendo questa classe.

Assicurati di rispettare i tipi di ritorno e i valori documentati. Dovresti crearne un'istanza e chiamare :ref:`add_format_loader()<class_ImageFormatLoaderExtension_method_add_format_loader>` per registrare quel loader durante la fase di inizializzazione.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_load_image<class_ImageFormatLoaderExtension_private_method__load_image>`\ (\ image\: :ref:`Image<class_Image>`, fileaccess\: :ref:`FileAccess<class_FileAccess>`, flags\: |bitfield|\[:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>`\], scale\: :ref:`float<class_float>`\ ) |virtual| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_format_loader<class_ImageFormatLoaderExtension_method_add_format_loader>`\ (\ )                                                                                                                                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_format_loader<class_ImageFormatLoaderExtension_method_remove_format_loader>`\ (\ )                                                                                                                                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ImageFormatLoaderExtension_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`

Restituisce la lista delle estensioni di file per questo formato immagine. I file con le estensioni specificate saranno trattati come file immagine e caricati utilizzando questa classe.

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_private_method__load_image:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_load_image**\ (\ image\: :ref:`Image<class_Image>`, fileaccess\: :ref:`FileAccess<class_FileAccess>`, flags\: |bitfield|\[:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>`\], scale\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_ImageFormatLoaderExtension_private_method__load_image>`

Carica il contenuto del ``fileaccess`` nell'immagine ``image`` fornita.

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_method_add_format_loader:

.. rst-class:: classref-method

|void| **add_format_loader**\ (\ ) :ref:`🔗<class_ImageFormatLoaderExtension_method_add_format_loader>`

Aggiunge questo caricatore di formato al motore, consentendogli di riconoscere le estensioni di file restituite da :ref:`_get_recognized_extensions()<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_method_remove_format_loader:

.. rst-class:: classref-method

|void| **remove_format_loader**\ (\ ) :ref:`🔗<class_ImageFormatLoaderExtension_method_remove_format_loader>`

Rimuove questo caricatore di formato dal motore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
