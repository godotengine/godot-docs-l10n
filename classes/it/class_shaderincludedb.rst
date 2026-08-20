:github_url: hide

.. _class_ShaderIncludeDB:

ShaderIncludeDB
===============

**Eredita:** :ref:`Object<class_Object>`

Database interno dei file include integrati degli shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto contiene frammenti di shader dagli shader interni di Godot. È possibile usarli quando è richiesto l'accesso ai buffer interni di uniformi e/o alle funzioni interne, ad esempio quando si compongono effetti compositore o shader di calcolo. Sono caricati solo i frammenti per il dispositivo di rendering attuale.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_built_in_include_file<class_ShaderIncludeDB_method_get_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_built_in_include_file<class_ShaderIncludeDB_method_has_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`list_built_in_include_files<class_ShaderIncludeDB_method_list_built_in_include_files>`\ (\ ) |static|                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ShaderIncludeDB_method_get_built_in_include_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_get_built_in_include_file>`

Restituisce il codice per il frammento di shader integrato. È anche possibile accedervi nel proprio codice di shader tramite ``#include "filename"``.

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_has_built_in_include_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_has_built_in_include_file>`

Restituisce ``true`` se un file include con questo nome esiste.

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_list_built_in_include_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_built_in_include_files**\ (\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_list_built_in_include_files>`

Restituisce una lista dei file include integrati attualmente registrati.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
