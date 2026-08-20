:github_url: hide

.. _class_TextServerFallback:

TextServerFallback
==================

**Eredita:** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A fallback implementation of Godot's text server, without support for BiDi and complex text layout.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A fallback implementation of Godot's text server. This fallback is faster than :ref:`TextServerAdvanced<class_TextServerAdvanced>` for processing a lot of text, but it does not support BiDi and complex text layout.

\ **Note:** This text server is not part of official Godot binaries. If you want to use it, compile the engine with the option ``module_text_server_fb_enabled=yes``. When building with **TextServerFallback**, consider also disabling :ref:`TextServerAdvanced<class_TextServerAdvanced>` with ``module_text_server_adv_enabled=no`` to reduce binary size.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
