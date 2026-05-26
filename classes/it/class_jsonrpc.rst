:github_url: hide

.. _class_JSONRPC:

JSONRPC
=======

**Eredita:** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`GDScriptLanguageProtocol<class_GDScriptLanguageProtocol>`

Una classe di supporto per gestire dizionari che hanno l'aspetto di documenti JSONRPC.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

`JSON-RPC <https://www.jsonrpc.org/>`__ è uno standard che racchiude una chiamata di metodo in un oggetto :ref:`JSON<class_JSON>`. L'oggetto ha una struttura particolare e identifica quale metodo viene chiamato e con quali parametri, e contiene un ID per tenere traccia delle risposte. Questa classe implementa quello standard su :ref:`Dictionary<class_Dictionary>`; sarà necessario convertire tra un :ref:`Dictionary<class_Dictionary>` e :ref:`JSON<class_JSON>` con altre funzioni.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_notification<class_JSONRPC_method_make_notification>`\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`\ )                                               |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_request<class_JSONRPC_method_make_request>`\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ )                     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_response<class_JSONRPC_method_make_response>`\ (\ result\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ )                                                         |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_response_error<class_JSONRPC_method_make_response_error>`\ (\ code\: :ref:`int<class_int>`, message\: :ref:`String<class_String>`, id\: :ref:`Variant<class_Variant>` = null\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`process_action<class_JSONRPC_method_process_action>`\ (\ action\: :ref:`Variant<class_Variant>`, recurse\: :ref:`bool<class_bool>` = false\ )                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`process_string<class_JSONRPC_method_process_string>`\ (\ action\: :ref:`String<class_String>`\ )                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_method<class_JSONRPC_method_set_method>`\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`\ )                                                           |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_JSONRPC_ErrorCode:

.. rst-class:: classref-enumeration

enum **ErrorCode**: :ref:`🔗<enum_JSONRPC_ErrorCode>`

.. _class_JSONRPC_constant_PARSE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **PARSE_ERROR** = ``-32700``

La richiesta non può essere elaborata perché non è valida secondo lo standard JSON (:ref:`JSON.parse()<class_JSON_method_parse>` non riuscito).

.. _class_JSONRPC_constant_INVALID_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_REQUEST** = ``-32600``

È stata richiesta una chiamata a un metodo, ma il formato della richiesta non è valido.

.. _class_JSONRPC_constant_METHOD_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **METHOD_NOT_FOUND** = ``-32601``

È stata richiesta una chiamata a un metodo, ma non esisteva alcuna funzione con quel nome nella sottoclasse JSONRPC.

.. _class_JSONRPC_constant_INVALID_PARAMS:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_PARAMS** = ``-32602``

È stata richiesta una chiamata a un metodo, ma i parametri specificati del metodo non sono validi. Non utilizzato dal JSONRPC integrato.

.. _class_JSONRPC_constant_INTERNAL_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INTERNAL_ERROR** = ``-32603``

Si è verificato un errore interno durante l'elaborazione della richiesta. Non utilizzato dal JSONRPC integrato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_JSONRPC_method_make_notification:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_notification**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_notification>`

Restituisce un dizionario sotto forma di notifica JSON-RPC. Le notifiche sono messaggi a colpo singolo che non prevedono una risposta.

- ``method``: Nome del metodo richiamato.

- ``params``: Array o dizionario di parametri passati al metodo.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_request:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_request**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_request>`

Restituisce un dizionario sotto forma di richiesta JSON-RPC. Le richieste vengono inviate a un server con l'aspettativa di una risposta. Il campo ID è utilizzato dal server per specificare a quale richiesta esatta sta rispondendo.

- ``method``: Nome del metodo chiamato.

- ``params``: Un array o dizionario di parametri passati al metodo.

- ``id``: Identifica questa richiesta in modo univoco. Il server deve inviare una risposta con lo stesso ID.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response**\ (\ result\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_response>`

Quando un server ha ricevuto ed elaborato una richiesta, ci si aspetta che invii una risposta. Se non si desiderava una risposta, è necessario inviare una notifica.

- ``result``: il valore restituito dalla funzione che è stata chiamata.

- ``id``: l'ID della richiesta a cui è indirizzata questa risposta.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response_error:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response_error**\ (\ code\: :ref:`int<class_int>`, message\: :ref:`String<class_String>`, id\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_JSONRPC_method_make_response_error>`

Crea una risposta che indica che una risposta precedente non è riuscita in qualche modo.

- ``code``: Il codice di errore che corrisponde al tipo di errore. Vedi le costanti di :ref:`ErrorCode<enum_JSONRPC_ErrorCode>`.

- ``message``: Un messaggio personalizzato su questo errore.

- ``id``: La richiesta a cui questo errore è una risposta.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_process_action:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **process_action**\ (\ action\: :ref:`Variant<class_Variant>`, recurse\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSONRPC_method_process_action>`

Fornito un dizionario che assume la forma di una richiesta JSON-RPC: decomprime la richiesta e la esegue. I metodi vengono risolti esaminando il campo denominato "method" e cercando una funzione con un nome equivalente nell'oggetto JSONRPC. Se ne viene trovata una, tale metodo viene chiamato.

Per aggiungere nuovi metodi supportati, estendi la classe JSONRPC e chiama :ref:`process_action()<class_JSONRPC_method_process_action>` sulla sottoclasse.

\ ``action``: L'azione da eseguire, come un dizionario sotto forma di richiesta o notifica JSON-RPC.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_process_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **process_string**\ (\ action\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JSONRPC_method_process_string>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_set_method:

.. rst-class:: classref-method

|void| **set_method**\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JSONRPC_method_set_method>`

Registers a callback for the given method name.

- ``name``: The name that clients can use to access the callback.

- ``callback``: The callback which will handle the specified method.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
