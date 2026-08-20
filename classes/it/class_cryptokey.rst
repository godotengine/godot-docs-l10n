:github_url: hide

.. _class_CryptoKey:

CryptoKey
=========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una chiave crittografica (RSA o a curva ellittica).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La classe CryptoKey rappresenta una chiave crittografica. Le chiavi possono essere caricate e salvate come qualsiasi altra :ref:`Resource<class_Resource>`.

Possono essere utilizzate per generare un :ref:`X509Certificate<class_X509Certificate>` autofirmato tramite :ref:`Crypto.generate_self_signed_certificate()<class_Crypto_method_generate_self_signed_certificate>` e come chiave privata in :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` insieme al certificato appropriato.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Certificati SSL <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_public_only<class_CryptoKey_method_is_public_only>`\ (\ ) |const|                                                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CryptoKey_method_load>`\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ )                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_string<class_CryptoKey_method_load_from_string>`\ (\ string_key\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save<class_CryptoKey_method_save>`\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ )                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`save_to_string<class_CryptoKey_method_save_to_string>`\ (\ public_only\: :ref:`bool<class_bool>` = false\ )                                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CryptoKey_method_is_public_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_public_only**\ (\ ) |const| :ref:`🔗<class_CryptoKey_method_is_public_only>`

Restituisce ``true`` se questa CryptoKey contiene solo la parte pubblica e non quella privata.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_load>`

Carica una chiave dal percorso ``path``. Se ``public_only`` è ``true``, verrà caricata solo la chiave pubblica.

\ **Nota:** ``path`` dovrebbe essere un file "\*.pub" se ``public_only`` è ``true``, altrimenti un file "\*.key".

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_load_from_string:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_string**\ (\ string_key\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_load_from_string>`

Carica una chiave da ``string_key``. Se ``public_only`` è ``true``, verrà caricata solo la chiave pubblica.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_save>`

Salva una chiave nel percorso ``path``. Se ``public_only`` è ``true``, verrà salvata solo la chiave pubblica.

\ **Nota:** ``path`` dovrebbe essere un file "\*.pub" se ``public_only`` è ``true``, altrimenti un file "\*.key".

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_save_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **save_to_string**\ (\ public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_save_to_string>`

Restituisce una stringa contenente la chiave in formato PEM. Se ``public_only`` è ``true``, verrà inclusa solo la chiave pubblica.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
