:github_url: hide

.. _class_EditorFileSystemImportFormatSupportQuery:

EditorFileSystemImportFormatSupportQuery
========================================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Utilizzato per interrogare e configurare il supporto del formato di importazione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe serve per interrogare e configurare un certo formato di importazione. È usata insieme alle estensioni di importazione di formato per le risorse.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_file_extensions<class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions>`\ (\ ) |virtual| |required| |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_active<class_EditorFileSystemImportFormatSupportQuery_private_method__is_active>`\ (\ ) |virtual| |required| |const|                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_query<class_EditorFileSystemImportFormatSupportQuery_private_method__query>`\ (\ ) |virtual| |required| |const|                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_file_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions>`

Restituite le estensioni di file supportate.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_active**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__is_active>`

Restituisce se questo importatore è abilitato.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__query:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_query**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__query>`

Supporto per le richieste. Restituisci ``false`` se l'importazione non deve continuare.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
