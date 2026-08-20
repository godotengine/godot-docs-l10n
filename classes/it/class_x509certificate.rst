:github_url: hide

.. _class_X509Certificate:

X509Certificate
===============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un certificato X509 (ad esempio per TLS).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La classe X509Certificate rappresenta un certificato X509. È possibile caricare e salvare i certificati come qualsiasi altra :ref:`Resource<class_Resource>`.

Possono essere utilizzati come certificato per i server in :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` (insieme al :ref:`CryptoKey<class_CryptoKey>` adeguato), e per specificare l'unico certificato che dovrebbe essere accettato quando ci si collega a un server TLS tramite :ref:`StreamPeerTLS.connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Certificati SSL <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_X509Certificate_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_string<class_X509Certificate_method_load_from_string>`\ (\ string\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save<class_X509Certificate_method_save>`\ (\ path\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`save_to_string<class_X509Certificate_method_save_to_string>`\ (\ )                                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_X509Certificate_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load>`

Carica un certificato dal percorso ``path`` (file "\*.crt").

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_load_from_string:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_string**\ (\ string\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load_from_string>`

Carica un certificato dalla stringa ``string``.

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_save>`

Salva un certificato al percorso ``path`` (dovrebbe essere un file "\*.crt").

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **save_to_string**\ (\ ) :ref:`🔗<class_X509Certificate_method_save_to_string>`

Restituisce un stringa che rappresenta il certificato, o una stringa vuota se il certificato è invalido.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
