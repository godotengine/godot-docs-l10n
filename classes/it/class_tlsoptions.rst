:github_url: hide

.. _class_TLSOptions:

TLSOptions
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configurazione TLS per client e server.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

TLSOptions astrae le opzioni di configurazione per le classi :ref:`StreamPeerTLS<class_StreamPeerTLS>` e :ref:`PacketPeerDTLS<class_PacketPeerDTLS>`.

Non è possibile istanziare direttamente gli oggetti di questa classe e al loro posto è necessario utilizzare uno dei metodi statici :ref:`client()<class_TLSOptions_method_client>`, :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>` o :ref:`server()<class_TLSOptions_method_server>`.


.. tabs::

 .. code-tab:: gdscript

    # Crea una configurazione per un client TLS che usa la nostra catena personalizzata di CA attendibili.
    var client_trusted_cas = load("res://my_trusted_cas.crt")
    var client_tls_options = TLSOptions.client(client_trusted_cas)

    # Crea una configurazione per un server TLS.
    var server_certs = load("res://my_server_cas.crt")
    var server_key = load("res://my_server_key.key")
    var server_tls_options = TLSOptions.server(server_key, server_certs)



.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`client<class_TLSOptions_method_client>`\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`client_unsafe<class_TLSOptions_method_client_unsafe>`\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static|                                            |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_common_name_override<class_TLSOptions_method_get_common_name_override>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`get_own_certificate<class_TLSOptions_method_get_own_certificate>`\ (\ ) |const|                                                                                                       |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CryptoKey<class_CryptoKey>`             | :ref:`get_private_key<class_TLSOptions_method_get_private_key>`\ (\ ) |const|                                                                                                               |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`get_trusted_ca_chain<class_TLSOptions_method_get_trusted_ca_chain>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_server<class_TLSOptions_method_is_server>`\ (\ ) |const|                                                                                                                           |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_unsafe_client<class_TLSOptions_method_is_unsafe_client>`\ (\ ) |const|                                                                                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`server<class_TLSOptions_method_server>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static|                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TLSOptions_method_client:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| :ref:`🔗<class_TLSOptions_method_client>`

Crea una configurazione per un client TLS che convalida i certificati e i loro nomi comuni (nomi di dominio completamente qualificati).

È possibile specificare una serie affidabile personalizzata di autorità di certificazione (``trusted_chain``) (sarà utilizzato la lista di CA predefinita se ``null``) e, facoltativamente, fornire una sostituzione per il nome comune (``common_name_override``) se si prevede che il certificato abbia un nome comune diverso dal FQDN del server.

\ **Nota:** Sulla piattaforma Web, la verifica TLS viene sempre applicata alla lista di CA del browser Web. Questa è considerata una funzionalità di sicurezza.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_client_unsafe:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client_unsafe**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static| :ref:`🔗<class_TLSOptions_method_client_unsafe>`

Crea una configurazione **non sicura** per un client TLS in cui la convalida del certificato è facoltativa. È possibile fornire una serie affidabile valida (``trusted_chain``), ma il nome comune dei certificati non verrà mai controllato. Usare questa configurazione al di fuori dei test **non è consigliato**.

\ **Nota:** Sulla piattaforma Web, la verifica TLS è sempre applicata alla lista di CA del browser Web. Questa è considerata una funzionalità di sicurezza.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_common_name_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_common_name_override**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_common_name_override>`

Restituisce la sostituzione del nome comune (nome di dominio) specificato dalla creazione tramite :ref:`client()<class_TLSOptions_method_client>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_own_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_own_certificate**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_own_certificate>`

Restituisce il :ref:`X509Certificate<class_X509Certificate>` specificato durante la creazione con :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_private_key:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **get_private_key**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_private_key>`

Restituisce il :ref:`CryptoKey<class_CryptoKey>` specificato durante la creazione con :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_trusted_ca_chain:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_trusted_ca_chain**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_trusted_ca_chain>`

Restituisce la catena :ref:`X509Certificate<class_X509Certificate>` CA specificata durante la creazione con :ref:`client()<class_TLSOptions_method_client>` o :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_server>`

Restituisce ``true`` se creato con :ref:`server()<class_TLSOptions_method_server>`, altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_unsafe_client:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_unsafe_client**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_unsafe_client>`

Restituisce ``true`` se creato con :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`, altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_server:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **server**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static| :ref:`🔗<class_TLSOptions_method_server>`

Crea una configurazione del server TLS utilizzando la chiave ``key`` e il certificato ``certificate`` forniti.

\ **Nota:** ``certificate`` dovrebbe includere l'intera catena di certificati fino alla CA firmataria (il file dei certificati può essere concatenato utilizzando un editor di testo generico).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
