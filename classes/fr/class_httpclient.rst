:github_url: hide

.. _class_HTTPClient:

HTTPClient
==========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Client de protocole de transfert hypertexte de bas niveau.

.. rst-class:: classref-introduction-group

Description
-----------

Hyper-text transfer protocol client (sometimes called "User Agent"). Used to make HTTP requests to download web content, upload files and other data or to communicate with various services, among other use cases.

See the :ref:`HTTPRequest<class_HTTPRequest>` node for a higher-level alternative.

\ **Note:** This client only needs to connect to a host once (see :ref:`connect_to_host()<class_HTTPClient_method_connect_to_host>`) to send multiple requests. Because of this, methods that take URLs usually take just the part after the host instead of the full URL, as the client is already connected to a host. See :ref:`request()<class_HTTPClient_method_request>` for a full example and to get started.

An **HTTPClient** should be reused between multiple requests or to connect to different hosts instead of creating one client per request. Supports Transport Layer Security (TLS), including server certificate verification. HTTP status codes in the 2xx range indicate success, 3xx redirection (i.e. "try again, but over here"), 4xx something was wrong with the request, and 5xx something went wrong on the server's side.

For more information on HTTP, see `MDN's documentation on HTTP <https://developer.mozilla.org/en-US/docs/Web/HTTP>`__ (or read `RFC 2616 <https://tools.ietf.org/html/rfc2616>`__ to get it straight from the source).

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

\ **Note:** It's recommended to use transport encryption (TLS) and to avoid sending sensitive information (such as login credentials) in HTTP GET URL parameters. Consider using HTTP POST requests or HTTP headers for such information instead.

\ **Note:** When performing HTTP requests from a project exported to Web, keep in mind the remote server may not allow requests from foreign origins due to `CORS <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS>`__. If you host the server in question, you should modify its backend to allow requests from foreign origins by adding the ``Access-Control-Allow-Origin: *`` HTTP header.

\ **Note:** TLS support is currently limited to TLSv1.2 and TLSv1.3. Attempting to connect to a server that only supports older (insecure) TLS versions will return an error.

\ **Warning:** TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Classe de client HTTP <../tutorials/networking/http_client_class>`

- :doc:`Certificats TLS <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`blocking_mode_enabled<class_HTTPClient_property_blocking_mode_enabled>` | ``false`` |
   +-------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`StreamPeer<class_StreamPeer>` | :ref:`connection<class_HTTPClient_property_connection>`                       |           |
   +-------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`read_chunk_size<class_HTTPClient_property_read_chunk_size>`             | ``65536`` |
   +-------------------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`close<class_HTTPClient_method_close>`\ (\ )                                                                                                                                                                                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`connect_to_host<class_HTTPClient_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                                              |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_response_body_length<class_HTTPClient_method_get_response_body_length>`\ (\ ) |const|                                                                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_response_code<class_HTTPClient_method_get_response_code>`\ (\ ) |const|                                                                                                                                                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_response_headers<class_HTTPClient_method_get_response_headers>`\ (\ )                                                                                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`get_response_headers_as_dictionary<class_HTTPClient_method_get_response_headers_as_dictionary>`\ (\ )                                                                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_HTTPClient_Status>`             | :ref:`get_status<class_HTTPClient_method_get_status>`\ (\ ) |const|                                                                                                                                                                                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_response<class_HTTPClient_method_has_response>`\ (\ ) |const|                                                                                                                                                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_response_chunked<class_HTTPClient_method_is_response_chunked>`\ (\ ) |const|                                                                                                                                                                               |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`poll<class_HTTPClient_method_poll>`\ (\ )                                                                                                                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`query_string_from_dict<class_HTTPClient_method_query_string_from_dict>`\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`     | :ref:`read_response_body_chunk<class_HTTPClient_method_read_response_body_chunk>`\ (\ )                                                                                                                                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`request<class_HTTPClient_method_request>`\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ )                      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`request_raw<class_HTTPClient_method_request_raw>`\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_http_proxy<class_HTTPClient_method_set_http_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                               |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_https_proxy<class_HTTPClient_method_set_https_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_HTTPClient_Method:

.. rst-class:: classref-enumeration

enum **Method**: :ref:`🔗<enum_HTTPClient_Method>`

.. _class_HTTPClient_constant_METHOD_GET:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_GET** = ``0``

La méthode HTTP GET. La méthode GET demande une représentation de la ressource spécifiée. Les requêtes avec GET ne devrait faire que récupérer des données.

.. _class_HTTPClient_constant_METHOD_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_HEAD** = ``1``

La méthode HTTP "HEAD". La méthode "HEAD" demande une réponse identique à celle d'une requête "GET", mais sans le corps de la réponse. Ceci est utile pour demander des métadonnées comme des en-têtes HTTP ou pour vérifier si une ressource existe.

.. _class_HTTPClient_constant_METHOD_POST:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_POST** = ``2``

La méthode HTTP "POST". La méthode "POST" est utilisée pour soumettre une entité à la ressource spécifiée, causant souvent un changement d'état sur le serveur. Ceci est souvent utilisé pour les formulaires, pour soumettre des données ou télécharger des fichiers.

.. _class_HTTPClient_constant_METHOD_PUT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PUT** = ``3``

La méthode HTTP "PUT". La méthode "PUT" demander à remplacer toutes les représentations actuelles de la ressource cible par les données fournies. (Vous pouvez considérer "POST" comme une méthode pour "créer ou mettre à jour" et "PUT" comme "mise à jour", même que de nombreux services ne font pas de distinction voire en change leur sens).

.. _class_HTTPClient_constant_METHOD_DELETE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_DELETE** = ``4``

La méthode HTTP "DELETE". Elle permet de demander la suppression de la ressource spécifiée.

.. _class_HTTPClient_constant_METHOD_OPTIONS:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_OPTIONS** = ``5``

La méthode HTTP "OPTIONS". La méthode "OPTIONS" demande une description des options de communication pour la ressource cible. Elle est rarement utilisée.

.. _class_HTTPClient_constant_METHOD_TRACE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_TRACE** = ``6``

La méthode HTTP "TRACE". La méthode "TRACE" effectue un test de boucle de message suivant le chemin vers la ressource cible. Renvoie toute la requête HTTP reçue dans le corps de réponse. Rarement utilisée.

.. _class_HTTPClient_constant_METHOD_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_CONNECT** = ``7``

La méthode HTTP "CONNECT". La méthode "CONNECT" établit un tunnel vers serveur identifié par la ressource cible. Elle est rarement utilisée.

.. _class_HTTPClient_constant_METHOD_PATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PATCH** = ``8``

La méthode HTTP "PATCH". La méthode "PATCH" est utilisée pour appliquer des modifications partielles à une ressource.

.. _class_HTTPClient_constant_METHOD_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_MAX** = ``9``

Représente la taille de l'énumération :ref:`Method<enum_HTTPClient_Method>`.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_HTTPClient_Status>`

.. _class_HTTPClient_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_DISCONNECTED** = ``0``

Statut : Déconnecté du serveur.

.. _class_HTTPClient_constant_STATUS_RESOLVING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_RESOLVING** = ``1``

Status : Actuellement en train de résoudre l'hôte de l'URL donnée en adresse IP.

.. _class_HTTPClient_constant_STATUS_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_RESOLVE** = ``2``

Statut : Échec du DNS : N'a pas pu résoudre le nom d'hôte pour l'URL spécifiée.

.. _class_HTTPClient_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTING** = ``3``

Statut : En cours de connexion au serveur.

.. _class_HTTPClient_constant_STATUS_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_CONNECT** = ``4``

État : Ne peut pas se connecter au serveur.

.. _class_HTTPClient_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTED** = ``5``

Statut : Connexion établie.

.. _class_HTTPClient_constant_STATUS_REQUESTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_REQUESTING** = ``6``

Statut : Demande en cours d'envoi.

.. _class_HTTPClient_constant_STATUS_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_BODY** = ``7``

Statut : corps HTTP reçu.

.. _class_HTTPClient_constant_STATUS_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTION_ERROR** = ``8``

Statut : Erreur dans la connexion HTTP.

.. _class_HTTPClient_constant_STATUS_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_TLS_HANDSHAKE_ERROR** = ``9``

Statut : Erreur dans la poignée de main TLS.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_ResponseCode:

.. rst-class:: classref-enumeration

enum **ResponseCode**: :ref:`🔗<enum_HTTPClient_ResponseCode>`

.. _class_HTTPClient_constant_RESPONSE_CONTINUE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONTINUE** = ``100``

Code de statut HTTP ``100 Continue``. La réponse intermédiaire qui indique que tout est bon jusqu'à présent et que le client devrait continuer avec cette demande (ou ignorer ce statut s'il a déjà terminé).

.. _class_HTTPClient_constant_RESPONSE_SWITCHING_PROTOCOLS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCHING_PROTOCOLS** = ``101``

Code de statut HTTP ``101 Switching Protocol``. Envoyé en réponse à une en-tête de requête ``Upgrade`` du client. Précise le nouveau protocole que le serveur utilise dès à présent.

.. _class_HTTPClient_constant_RESPONSE_PROCESSING:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROCESSING** = ``102``

Code de statut HTTP ``102 Processing`` (WebDAV). Indique que le serveur a reçu la requête et la traite, mais aucune réponse n'est disponible pour l'instant.

.. _class_HTTPClient_constant_RESPONSE_OK:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_OK** = ``200``

Code de statut HTTP ``200 OK``. La requête a réussi. Réponse par défaut pour les requêtes réussies. La signification varie selon la requête :

- :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`\  : La ressource a été récupérée et est transmise dans le corps du message.

- :ref:`METHOD_HEAD<class_HTTPClient_constant_METHOD_HEAD>`\  : Les en-têtes de l'entité sont dans le corps du message.

- :ref:`METHOD_POST<class_HTTPClient_constant_METHOD_POST>`\  : La ressource décrivant le résultat de l'action est transmise dans le corps du message.

- :ref:`METHOD_TRACE<class_HTTPClient_constant_METHOD_TRACE>`\  : Le corps du message contient le message de requête comme reçu par le serveur.

.. _class_HTTPClient_constant_RESPONSE_CREATED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CREATED** = ``201``

Code de statut HTTP ``201 Created``. La requête a réussi et une nouvelle ressource a été créée en conséquence. C'est généralement la réponse envoyée après une requête "PUT".

.. _class_HTTPClient_constant_RESPONSE_ACCEPTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ACCEPTED** = ``202``

Code de statut HTTP ``202 Accepted``. La requête a été reçue mais n'a pas encore été traitée. Aucune réponse n'est envoyé même asynchrone indiquant le résultat du traitement de cette requête. Il est destiné aux cas où un autre processus ou un serveur traite la requête, ou pour le traitement par lots.

.. _class_HTTPClient_constant_RESPONSE_NON_AUTHORITATIVE_INFORMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NON_AUTHORITATIVE_INFORMATION** = ``203``

Code de statut HTTP ``203 Non-Authoritative Information``. Ce code de réponse signifie que l'ensemble de méta-donnée retournée n'est pas la copie exacte de celles sur le serveur d'origine, mais composée à partir d'une copie locale ou autre. Sauf dans ce cas, la réponse 200 "OK" est préférable à la place de cette réponse.

.. _class_HTTPClient_constant_RESPONSE_NO_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NO_CONTENT** = ``204``

Code de statut HTTP ``204 No Content``. Il n'y a pas de contenu à envoyer en réponse à cette requête, mais les en-têtes peuvent être utiles. Le user-agent peut mettre à jour les en-têtes de cette ressource avec de nouvelles.

.. _class_HTTPClient_constant_RESPONSE_RESET_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_RESET_CONTENT** = ``205``

Code de statut HTTP ``205 Reset Content``. Le serveur a rempli la requête et souhaite que le client réinitialise son « vue de document » qui a envoyé la requête à son état original tel qu'il a été reçu du serveur d'origine.

.. _class_HTTPClient_constant_RESPONSE_PARTIAL_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PARTIAL_CONTENT** = ``206``

Code de statut HTTP ``206 Partial Content``. Ce code de réponse est utilisé suivant l'intervalle spécifié dans l'en-tête envoyé par le client pour que le téléchargement soit disponible dans plusieurs flux.

.. _class_HTTPClient_constant_RESPONSE_MULTI_STATUS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTI_STATUS** = ``207``

Code de statut HTTP ``207 Multi-Status`` (WebDAV). Une réponse multi-états qui transmet des informations sur plusieurs ressources dans des situations où plusieurs codes de statut seraient appropriés.

.. _class_HTTPClient_constant_RESPONSE_ALREADY_REPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ALREADY_REPORTED** = ``208``

Code de statut HTTP ``208 Already Reported`` (WebDAV). Utilisé à l'intérieur d'un DAV : l'élément de réponse "propstat" pour éviter d'énumérer plusieurs fois les membres internes de liaisons d'une même collection.

.. _class_HTTPClient_constant_RESPONSE_IM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_USED** = ``226``

Code de statut HTTP ``226 IM Used`` (WebDAV). Le serveur a traité une requête GET pour cette ressource, et la réponse est une représentation du résultat d'une ou plusieurs manipulations d'instance appliquées à l'instance actuelle.

.. _class_HTTPClient_constant_RESPONSE_MULTIPLE_CHOICES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTIPLE_CHOICES** = ``300``

Code de statut HTTP ``300 Multiple Choice``. La requête a plusieurs réponses possibles et il n'y a pas de moyen spécifique de choisir la bonne réponse. C'est alors le user-agent ou l'utilisateur qui devrait la choisir parmi celle retournées.

.. _class_HTTPClient_constant_RESPONSE_MOVED_PERMANENTLY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MOVED_PERMANENTLY** = ``301``

Code de statut HTTP ``301 Moved Permanently``. Redirection. Ce code de réponse signifie que l'URI des ressources demandées a été modifiée. La nouvelle URI est généralement retournée dans cette réponse.

.. _class_HTTPClient_constant_RESPONSE_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FOUND** = ``302``

Code de statut HTTP ``302 Found``. Redirection temporaire. Ce code de réponse signifie que l'URI de la ressource demandée a été changée temporairement. De nouveaux changements dans l'URI pourraient être faits à l'avenir. Par conséquent, ce même URI devrait être utilisé par le client dans les demandes futures.

.. _class_HTTPClient_constant_RESPONSE_SEE_OTHER:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SEE_OTHER** = ``303``

Code de statut HTTP ``303 See Other``. Le serveur redirige l'agent utilisateur vers une ressource différente, comme l'indique un URI dans le champ d'en-tête "Location", qui est destiné à fournir une réponse indirecte à la demande initiale.

.. _class_HTTPClient_constant_RESPONSE_NOT_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_MODIFIED** = ``304``

Code de statut HTTP ``304 Not Modified``. Une demande conditionnelle de GET ou de HEAD a été reçue et aurait abouti à une réponse de 200 OK si la condition n'aurait pas été évaluée à ``false``.

.. _class_HTTPClient_constant_RESPONSE_USE_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_USE_PROXY** = ``305``

**Obsolète :** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Code de statut HTTP ``305 Use Proxy``.

.. _class_HTTPClient_constant_RESPONSE_SWITCH_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCH_PROXY** = ``306``

**Obsolète :** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Code de statut HTTP ``306 Switch Proxy``.

.. _class_HTTPClient_constant_RESPONSE_TEMPORARY_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TEMPORARY_REDIRECT** = ``307``

Code de statut HTTP ``307 Temporary Redirect``. La ressource cible réside temporairement sous un URI différent et l'agent utilisateur NE DOIT PAS changer la méthode de demande si elle effectue une redirection automatique vers cet URI.

.. _class_HTTPClient_constant_RESPONSE_PERMANENT_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PERMANENT_REDIRECT** = ``308``

Code de statut HTTP ``308 Permanent Redirect``. La ressource cible a été affectée à un nouvel URI permanent et toute référence future à cette ressource devrait utiliser l'un des URIs joints.

.. _class_HTTPClient_constant_RESPONSE_BAD_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_REQUEST** = ``400``

HTTP status code ``400 Bad Request``. The request was invalid. The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, invalid request contents, or deceptive request routing).

.. _class_HTTPClient_constant_RESPONSE_UNAUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAUTHORIZED** = ``401``

Code de statut HTTP ``401 Unauthorized``. Identifiants requis. La requête n'a pas été appliquée parce qu'elle ne dispose pas d'identifiants d'authentification valables pour la ressource cible.

.. _class_HTTPClient_constant_RESPONSE_PAYMENT_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PAYMENT_REQUIRED** = ``402``

Code de statut HTTP ``402 Payment Required``. Ce code de réponse est réservé à une utilisation future. L'objectif initial de création de ce code était de l'utiliser pour les systèmes de paiement numérique, mais il n'est actuellement pas utilisé.

.. _class_HTTPClient_constant_RESPONSE_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FORBIDDEN** = ``403``

Code de statut HTTP ``403 Forbidden``. Le client n'a pas de droits d'accès au contenu, c'est-à-dire qu'ils sont non autorisés, donc le serveur refuse de donner une réponse appropriée. Contrairement à ``401``, l'identité du client est connue du serveur.

.. _class_HTTPClient_constant_RESPONSE_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_FOUND** = ``404``

Code de statut HTTP ``404 Not Found``. Le serveur ne peut pas trouver de ressources demandées. Soit l'URL n'est pas reconnue ou le endpoint ("point de terminaison") est valide mais la ressource elle-même n'existe pas. Peut également être envoyé au lieu de 403 pour cacher l'existence d'une ressource si le client n'est pas autorisé.

.. _class_HTTPClient_constant_RESPONSE_METHOD_NOT_ALLOWED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_METHOD_NOT_ALLOWED** = ``405``

Code de statut HTTP ``405 Method Not Allowed``. La méthode HTTP de la requête est connue par le serveur mais a été désactivée et ne peut pas être utilisée. Par exemple, une API peut interdire de DELETE (supprimer) une ressource. Les deux méthodes obligatoires, GET et HEAD, ne doivent jamais être désactivées et ne doivent pas renvoyer ce code d'erreur.

.. _class_HTTPClient_constant_RESPONSE_NOT_ACCEPTABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_ACCEPTABLE** = ``406``

Code de statut HTTP ``406 Not Acceptable``. La ressource cible n'a pas de représentation actuelle qui serait acceptable pour l'agent utilisateur, selon les champs d'en-tête de négociation proactives reçus dans la requête. Utilisé lors de la négociation du contenu.

.. _class_HTTPClient_constant_RESPONSE_PROXY_AUTHENTICATION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROXY_AUTHENTICATION_REQUIRED** = ``407``

Code de statut HTTP ``407 Proxy Authentication Required``. Semblable à 401 Unauthorized, mais il indique que le client doit s'authentifier pour utiliser un proxy.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_TIMEOUT** = ``408``

Code de statut HTTP ``408 Request Timeout``. Le serveur n'a pas reçu un message de requête complet durant le temps qu'il était prêt à attendre.

.. _class_HTTPClient_constant_RESPONSE_CONFLICT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONFLICT** = ``409``

Code de statut HTTP ``409 Conflict``. La requête n'a pu être complétée à cause d'un conflit avec l'état actuel de la ressource cible. Ce code est utilisé dans les situations où l'utilisateur peut être capable de résoudre le conflit et de soumettre à nouveau la requête.

.. _class_HTTPClient_constant_RESPONSE_GONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GONE** = ``410``

Code de statut HTTP ``410 Gone``. La ressource cible n'est plus disponible sur le serveur d'origine et cette condition est probablement permanente.

.. _class_HTTPClient_constant_RESPONSE_LENGTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LENGTH_REQUIRED** = ``411``

Code de statut HTTP ``411 Length Required``. Le serveur refuse d'accepter la requête sans une en-tête Content-Length définie.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_FAILED** = ``412``

Code de statut HTTP ``412 Precondition Failed``. Une ou plusieurs conditions dans les champs d'en-tête de la requête sont évaluées à ``false`` lors de l'essai sur le serveur.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_ENTITY_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_ENTITY_TOO_LARGE** = ``413``

Code de statut HTTP ``413 Entity Too Large``. Le serveur refuse de traiter une requête parce que le payload ("charge utile") demandée est plus grande que ce que le serveur est prêt ou capable de traiter.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_URI_TOO_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_URI_TOO_LONG** = ``414``

Code de statut HTTP ``414 Request-URI Too Long``. Le serveur refuse de servir la requête parce que l'entête "request-target" est plus longue que ce que le serveur est prêt à interpréter.

.. _class_HTTPClient_constant_RESPONSE_UNSUPPORTED_MEDIA_TYPE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNSUPPORTED_MEDIA_TYPE** = ``415``

Code de statut HTTP ``415 Unsupported Media Type``. Le serveur d'origine refuse de servir la requête parce que le payload ("charge utile") est dans un format non supporté par cette méthode sur la ressource cible.

.. _class_HTTPClient_constant_RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE** = ``416``

Code de statut HTTP ``416 Requested Range Not Satisfiable``. Aucune des plages du champ d'en-tête "Range" de la requête ne recouvre l'étendue actuelle de la ressource sélectionnée ou l'ensemble des plages demandées a été rejeté en raison de plages invalides ou d'une demande excessive de petites plages ou de plages chevauchantes.

.. _class_HTTPClient_constant_RESPONSE_EXPECTATION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_EXPECTATION_FAILED** = ``417``

Code de statut HTTP ``417 Expectation Failed``. L'expectation donnée dans le champ d'en-tête "Expect" de la requête ne pouvait pas être satisfaite par au moins un des serveurs de réception.

.. _class_HTTPClient_constant_RESPONSE_IM_A_TEAPOT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_A_TEAPOT** = ``418``

Code de statut HTTP ``418 I'm A Teapot``. Toute tentative de préparer du café avec une théière devrait entraîner le code d'erreur "418 I'm a teapot". L'entité résultante PEUT être courte et forte.

.. _class_HTTPClient_constant_RESPONSE_MISDIRECTED_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MISDIRECTED_REQUEST** = ``421``

Code de statut HTTP ``421 Misdirected Request``. La demande a été dirigée vers un serveur qui n'est pas en mesure de produire une réponse. Ceci peut être envoyé par un serveur qui n'est pas configuré pour produire des réponses pour la combinaison de schéma et d'autorité qui sont inclus dans la requête URI.

.. _class_HTTPClient_constant_RESPONSE_UNPROCESSABLE_ENTITY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNPROCESSABLE_ENTITY** = ``422``

Code de statut HTTP ``422 Unprocessable Entity`` (WebDAV). Le serveur comprend le type de contenu de l'entité de requête (ainsi, un code de statut 415 Unsupported Media Type n'est pas approprié) et la syntaxe de l'entité de requête est correcte (c'est pourquoi un code de statut 400 Bad Request est inapproprié) mais n'a pas été en mesure de traiter les instructions contenues.

.. _class_HTTPClient_constant_RESPONSE_LOCKED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOCKED** = ``423``

Code de statut HTTP ``423 Locked`` (WebDAV). La source ou la destination de ressource d'une méthode est verrouillée.

.. _class_HTTPClient_constant_RESPONSE_FAILED_DEPENDENCY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FAILED_DEPENDENCY** = ``424``

Code de statut HTTP ``424 Failed Dependency`` (WebDAV). La méthode ne pouvait être exécutée sur la ressource parce que l'action demandée dépendait d'une autre action et que cette dernière a échoué.

.. _class_HTTPClient_constant_RESPONSE_UPGRADE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UPGRADE_REQUIRED** = ``426``

Code de statut HTTP ``426 Upgrade Required``. Le serveur refuse d'exécuter la requête en utilisant le protocole actuel, mais pourrait être prêt à le faire après que le client se soit mis à jour vers un protocole différent.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_REQUIRED** = ``428``

Code de statut HTTP ``428 Precondition Required``. Le serveur d'origine exige que la requête soit conditionnelle.

.. _class_HTTPClient_constant_RESPONSE_TOO_MANY_REQUESTS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TOO_MANY_REQUESTS** = ``429``

Code de statut HTTP ``429 Too Many Requests``. L'utilisateur a envoyé trop de demandes dans un certain temps (voir le "rate limiting"). Freinez un peu et augmentez le temps entre les requêtes ou essayez à nouveau plus tard.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE** = ``431``

Code de statut HTTP ``431 Request Header Fields Too Large``. Le serveur ne veut pas traiter la requête parce que ses champs d'en-tête sont trop grands. La requête PEUT être soumise à nouveau après avoir réduit la taille des champs d'en-tête de la requête.

.. _class_HTTPClient_constant_RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS** = ``451``

Code de statut HTTP ``451 Response Unavailable For Legal Reasons``. Le serveur refuse l'accès à la ressource en raison d'une demande légale.

.. _class_HTTPClient_constant_RESPONSE_INTERNAL_SERVER_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INTERNAL_SERVER_ERROR** = ``500``

Code de statut HTTP ``500 Internal Server Error``. Le serveur a rencontré une condition inattendue qui l'empêchait de répondre à la requête.

.. _class_HTTPClient_constant_RESPONSE_NOT_IMPLEMENTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_IMPLEMENTED** = ``501``

Code de statut HTTP ``501 Not Implemented``. Le serveur ne supporte pas la fonctionnalité requise pour répondre à la requête.

.. _class_HTTPClient_constant_RESPONSE_BAD_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_GATEWAY** = ``502``

Code de statut HTTP ``502 Bad Gateway``. Le serveur, en agissant comme passerelle ou proxy, a reçu une réponse invalide d'un serveur entrant auquel il a accédé en essayant de répondre à la requête. Habituellement renvoyé par les répartiteurs de charge ou les proxies.

.. _class_HTTPClient_constant_RESPONSE_SERVICE_UNAVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SERVICE_UNAVAILABLE** = ``503``

Code de statut HTTP ``503 Service Unavailable``. Le serveur n'est actuellement pas en mesure de traiter la requête en raison d'une surcharge temporaire ou d'une maintenance planifiée, ce qui sera probablement atténué après un certain temps. Essayez encore plus tard.

.. _class_HTTPClient_constant_RESPONSE_GATEWAY_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GATEWAY_TIMEOUT** = ``504``

Code de statut HTTP ``504 Gateway Timeout``. Le serveur, en agissant comme passerelle ou proxy, n'a pas reçu une réponse à temps d'un serveur en amont dont il avait besoin d'accéder afin de compléter la requête. Habituellement renvoyé par les répartiteurs de charge ou les proxies.

.. _class_HTTPClient_constant_RESPONSE_HTTP_VERSION_NOT_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_HTTP_VERSION_NOT_SUPPORTED** = ``505``

Code de statut HTTP ``505 HTTP Version Not Supported``. Le serveur ne supporte pas, ou refuse de supporter, la version majeure de HTTP utilisée dans le message de requête.

.. _class_HTTPClient_constant_RESPONSE_VARIANT_ALSO_NEGOTIATES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_VARIANT_ALSO_NEGOTIATES** = ``506``

Code de statut HTTP ``506 Variant Also Negotiates``. Le serveur a une erreur de configuration interne : la ressource variante choisie est configurée pour s'engager dans la négociation de contenu transparent elle-même, et n'est donc pas un endpoint ("point de terminaison") dans le processus de négociation.

.. _class_HTTPClient_constant_RESPONSE_INSUFFICIENT_STORAGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INSUFFICIENT_STORAGE** = ``507``

Code de statut HTTP ``507 Insufficient Storage``. La méthode n'a pas pu être exécutée sur la ressource parce que le serveur n'est pas en mesure de stocker la représentation nécessaire pour remplir avec succès la requête.

.. _class_HTTPClient_constant_RESPONSE_LOOP_DETECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOOP_DETECTED** = ``508``

Code de statut HTTP ``508 Loop Detected``. Le serveur a mis fin à une opération parce qu'il a rencontré une boucle infinie tout en traitant une requête avec "Depth: infinity". Cette situation indique que toute l'opération a échoué.

.. _class_HTTPClient_constant_RESPONSE_NOT_EXTENDED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_EXTENDED** = ``510``

Code de statut HTTP ``510 Not Extended``. La politique d'accès à la ressource n'a pas été respectée dans la demande. Le serveur devrait renvoyer toutes les informations nécessaires pour que le client émette une requête étendue.

.. _class_HTTPClient_constant_RESPONSE_NETWORK_AUTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NETWORK_AUTH_REQUIRED** = ``511``

Code de statut HTTP ``511 Network Authentication Required``. Le client doit s'authentifier pour accéder au réseau.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_HTTPClient_property_blocking_mode_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **blocking_mode_enabled** = ``false`` :ref:`🔗<class_HTTPClient_property_blocking_mode_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_blocking_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blocking_mode_enabled**\ (\ )

Si ``true``, l'exécution sera bloquée jusqu'à ce que toutes les données de la réponse soit lues.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_connection:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **connection** :ref:`🔗<class_HTTPClient_property_connection>`

.. rst-class:: classref-property-setget

- |void| **set_connection**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_connection**\ (\ )

La connexion à utiliser pour ce client.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_read_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **read_chunk_size** = ``65536`` :ref:`🔗<class_HTTPClient_property_read_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_read_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_read_chunk_size**\ (\ )

La taille de la mémoire tampon utilisée et le nombre maximal d'octets à lire à chaque itération. Voir :ref:`read_response_body_chunk()<class_HTTPClient_method_read_response_body_chunk>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_HTTPClient_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_HTTPClient_method_close>`

Ferme l'actuelle connexion, permettant de la réutiliser pour cet **HTTPClient**.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_HTTPClient_method_connect_to_host>`

Se connecte à un hôte. Cela est nécessaire avant d'effectuer une quelconque requête.

Si aucun ``port`` n'est spécifié (ou ``-1`` est utilisé), il est automatiquement défini à 80 pour HTTP et 443 pour HTTPS. Vous pouvez passer le paramètre optionnel ``tls_options`` pour personnaliser les autorités de certification de confiance, ou la vérification de nom commun lors de l'utilisation d'HTTPS. Voir :ref:`TLSOptions.client()<class_TLSOptions_method_client>` et :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_body_length:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_body_length**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_body_length>`

Renvoie la longueur du corps de la requête.

\ **Note :** Certains serveurs web peuvent ne pas envoyer une longueur de corps. Dans ce cas, la valeur renvoyée sera ``-1``. Si vous utilisez le chunked transfer encoding, la longueur du corps sera également de ``-1``.

\ **Note :** Cette fonction renvoie toujours ``-1`` sur la plateforme Web en raison des limitations des navigateurs.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_code**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_code>`

Renvoie le code de statut de la réponse HTTP.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_response_headers**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers>`

Renvoie les en-têtes de réponse.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers_as_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_response_headers_as_dictionary**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers_as_dictionary>`

Renvoie tous les en-têtes de réponse en tant que :ref:`Dictionary<class_Dictionary>`. Chaque entrée est composée du nom de l'en-tête, et un :ref:`String<class_String>` contenant les valeurs séparées par ``"; "``. La casse est gardée comme ont été reçus les en-têtes.

::

    {
        "content-length": 12,
        "Content-Type": "application/json; charset=UTF-8",
    }

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_HTTPClient_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_status>`

Renvoie une constante :ref:`Status<enum_HTTPClient_Status>`. Vous devez appeler :ref:`poll()<class_HTTPClient_method_poll>` pour obtenir des mises à jour de statut.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_has_response:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_response**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_has_response>`

Si ``true``, ce **HTTPClient** a une réponse disponible.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_is_response_chunked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_response_chunked**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_is_response_chunked>`

Si ``true``, cet **HTTPClient** reçoit une réponse en différentes parties.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_HTTPClient_method_poll>`

Cela doit être appelé pour que les requêtes puissent être traitée. Vérifiez les résultats avec :ref:`get_status()<class_HTTPClient_method_get_status>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_query_string_from_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_string_from_dict**\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_HTTPClient_method_query_string_from_dict>`

Génère une chaîne de requête de style GET/POST application/x-www-form-urlencoded depuis un dictionnaire fourni, par ex. :


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    # Renvoie "username=user&password=pass"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Renvoie "username=user&password=pass"



En outre, si une clé a une valeur ``null``, seule la clé elle-même est ajoutée, sans signe égal et valeur. Si la valeur est un tableau, pour chaque valeur dans celui-ci une paire avec la même clé est ajoutée.


.. tabs::

 .. code-tab:: gdscript

    var fields = { "single": 123, "not_valued": null, "multiple": [22, 33, 44] }
    var query_string = http_client.query_string_from_dict(fields)
    # Renvoie "single=123&not_valued&multiple=22&multiple=33&multiple=44"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary
    {
        { "single", 123 },
        { "notValued", default },
        { "multiple", new Godot.Collections.Array { 22, 33, 44 } },
    };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Renvoie "single=123&not_valued&multiple=22&multiple=33&multiple=44"



.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_read_response_body_chunk:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_response_body_chunk**\ (\ ) :ref:`🔗<class_HTTPClient_method_read_response_body_chunk>`

Lit une partie de la réponse.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPClient_method_request>`

Envoie une requête HTTP à l'hôte connecté avec la méthode ``method`` donnée.

Le paramètre de l'URL est généralement juste la partie après l'hôte, donc pour ``https://example.com/index.php``, il s'agit de ``/index.php``. Lors de l'envoi de requêtes vers un serveur proxy HTTP, elle devrait être une URL absolue. Pour les requêtes :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>`, ``*`` est aussi autorisé. Pour les requêtes :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>`, elle devrait être le composant d'autorité (\ ``host:port``).

\ ``headers`` sont des en-têtes de requête HTTP.

Pour créer une requête POST avec des chaînes de requête à envoyer sur le serveur, faire :


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    var headers = ["Content-Type: application/x-www-form-urlencoded", "Content-Length: " + str(query_string.length())]
    var result = http_client.request(http_client.METHOD_POST, "/index.php", headers, query_string)

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = new HttpClient().QueryStringFromDict(fields);
    string[] headers = ["Content-Type: application/x-www-form-urlencoded", $"Content-Length: {queryString.Length}"];
    var result = new HttpClient().Request(HttpClient.Method.Post, "index.php", headers, queryString);



\ **Note :** Le paramètre ``body`` est ignoré si ``method`` vaut :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`. C'est parce que les méthodes GET ne peuvent pas contenir de données de requête. Pour contourner cela, vous pouvez passer des données de requête en tant que chaîne de requête dans l'URL. Voir :ref:`String.uri_encode()<class_String_method_uri_encode>` pour un exemple.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPClient_method_request_raw>`

Envoie une requête HTTP brute à l'hôte connecté avec la méthode ``method`` donnée.

Le paramètre URL est généralement juste la partie après le nom de l'hôte, donc pour ``http://example.com/index.php``, il s'agit de ``/index.php``. Lors de l'envoi de requêtes vers un serveur de proxy HTTP, cela devrait être une URL absolue. Pour les requêtes :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>`, ``*`` est également autorisé. Pour les requêtes :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>`, cela devrait être le composant d'autorité (\ ``host:port``).

\ ``headers`` sont les en-têtes de la requête HTTP.

Envoie les données du corps de manière brute, en tant que tableau d'octets et ne l'encode pas du tout.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_http_proxy>`

Définit le serveur de proxy pour les requêtes HTTP.

Le serveur de proxy n'est pas défini si ``host`` est vide ou si ``port`` vaut -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_https_proxy>`

Définit le serveur de proxy pour les requêtes HTTPS.

Le serveur de proxy n'est pas défini si ``host`` est vide ou si ``port`` vaut -1.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
