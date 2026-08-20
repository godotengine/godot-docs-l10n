:github_url: hide

.. _class_SceneState:

SceneState
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce l'accesso alle informazioni di un file di scena.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Mantiene una lista di risorse, nodi, proprietà esportate e sovrascritte e script incorporati associati a una scena. Non possono essere modificati da uno **SceneState**, ma solo accessibili. Utile per dare un'occhiata a cosa contiene un :ref:`PackedScene<class_PackedScene>` senza istanziarlo.

Questa classe non può essere istanziata direttamente, è recuperata per una determinata scena come risultato di :ref:`PackedScene.get_state()<class_PackedScene_method_get_state>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneState<class_SceneState>`               | :ref:`get_base_scene_state<class_SceneState_method_get_base_scene_state>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`get_connection_binds<class_SceneState_method_get_connection_binds>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_count<class_SceneState_method_get_connection_count>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_flags<class_SceneState_method_get_connection_flags>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_connection_method<class_SceneState_method_get_connection_method>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_connection_signal<class_SceneState_method_get_connection_signal>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_connection_source<class_SceneState_method_get_connection_source>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_connection_target<class_SceneState_method_get_connection_target>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_unbinds<class_SceneState_method_get_connection_unbinds>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_count<class_SceneState_method_get_node_count>`\ (\ ) |const|                                                                                  |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_node_groups<class_SceneState_method_get_node_groups>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_index<class_SceneState_method_get_node_index>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedScene<class_PackedScene>`             | :ref:`get_node_instance<class_SceneState_method_get_node_instance>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_node_instance_placeholder<class_SceneState_method_get_node_instance_placeholder>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_name<class_SceneState_method_get_node_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_node_owner_path<class_SceneState_method_get_node_owner_path>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_node_path<class_SceneState_method_get_node_path>`\ (\ idx\: :ref:`int<class_int>`, for_parent\: :ref:`bool<class_bool>` = false\ ) |const|         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_property_count<class_SceneState_method_get_node_property_count>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_property_name<class_SceneState_method_get_node_property_name>`\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const|   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`get_node_property_value<class_SceneState_method_get_node_property_value>`\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_type<class_SceneState_method_get_node_type>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_path<class_SceneState_method_get_path>`\ (\ ) |const|                                                                                              |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_node_instance_placeholder<class_SceneState_method_is_node_instance_placeholder>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SceneState_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_SceneState_GenEditState>`

.. _class_SceneState_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

Se passato a :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, blocca le modifiche allo stato della scena.

.. _class_SceneState_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

Se passato a :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, fornisce le risorse di scena ereditate alla scena locale.

\ **Nota:** Disponibile solo nelle build dell'editor.

.. _class_SceneState_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

Se passato a :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, fornisce le risorse di scena locali alla scena locale. Solo la scena principale dovrebbe ricevere lo stato di modifica principale.

\ **Nota:** Disponibile solo nelle build dell'editor.

.. _class_SceneState_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

Se passato a :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, è simile a :ref:`GEN_EDIT_STATE_MAIN<class_SceneState_constant_GEN_EDIT_STATE_MAIN>`, ma per il caso in cui la scena viene istanziata per essere la base di un'altra.

\ **Nota:** Disponibile solo nelle build dell'editor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SceneState_method_get_base_scene_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_base_scene_state**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_base_scene_state>`

Restituisce lo **SceneState** della scena da cui eredita questa scena, o ``null`` se il nodo non eredita da alcuna scena.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_binds:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connection_binds**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_binds>`

Restituisce la lista dei parametri associati per il segnale all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_count**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_count>`

Restituisce il numero delle connessioni di segnali nella scena.

L'argomento ``idx`` utilizzato per interrogare i metadati di connessione in altri metodi ``get_connection_*`` nell'intervallo ``[0, get_connection_count() - 1]``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_flags:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_flags**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_flags>`

Restituisce i flag di connessione per il segnale all'indice ``idx``. Vedi le costanti di :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_connection_method**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_method>`

Restituisce il metodo collegato al segnale all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_signal:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_connection_signal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_signal>`

Restituisce il nome del segnale all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_source:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_connection_source**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_source>`

Restituisce il percorso al nodo proprietario del segnale all'indice ``idx``, relativo al nodo radice.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_target:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_connection_target**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_target>`

Restituisce il percorso al nodo proprietario del metodo connesso al segnale all'indice ``idx``, relativo al nodo radice.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_unbinds:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_unbinds**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_unbinds>`

Restituisce il numero di parametri rimossi dal segnale all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_node_count>`

Restituisce il numero di nodi nella scena.

L'argomento ``idx`` utilizzato per interrogare i dati dei nodi in altri metodi ``get_node_*`` nell'intervallo ``[0, get_node_count() - 1]``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_groups:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_node_groups**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_groups>`

Restituisce la lista dei nomi di gruppo associati al nodo all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_index**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_index>`

Restituisce l'indice del nodo, che è la sua posizione relativa ai suoi fratelli. Questo è rilevante e salvato solo nelle scene per i casi in cui nuovi nodi sono aggiunti a una scena istanziata o ereditata tra i fratelli dalla scena di base. Nonostante il nome, questo indice non è correlato all'argomento ``idx`` utilizzato qui e in altri metodi.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_instance:

.. rst-class:: classref-method

:ref:`PackedScene<class_PackedScene>` **get_node_instance**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_instance>`

Restituisce un :ref:`PackedScene<class_PackedScene>` per il nodo all'indice ``idx`` (ovvero l'intero ramo che inizia in questo nodo, con i suoi nodi figlio e le sue risorse) oppure ``null`` se il nodo non è un'istanza.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_instance_placeholder:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_instance_placeholder**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_instance_placeholder>`

Restituisce il percorso al file di scena rappresentato se il nodo all'indice ``idx`` è un :ref:`InstancePlaceholder<class_InstancePlaceholder>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_name>`

Restituisce il nome del nodo all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_owner_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_node_owner_path**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_owner_path>`

Restituisce il percorso al proprietario del nodo all'indice ``idx``, relativo al nodo radice.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_node_path**\ (\ idx\: :ref:`int<class_int>`, for_parent\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_SceneState_method_get_node_path>`

Restituisce il percorso al nodo all'indice ``idx``.

Se ``for_parent`` è ``true``, restituisce invece il percorso del genitore del nodo all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_property_count**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_count>`

Restituisce il numero di proprietà esportate o sovrascritte per il nodo all'indice ``idx``.

L'argomento ``prop_idx`` utilizzato per interrogare i dati delle proprietà del nodo in altri metodi ``get_node_property_*`` nell'intervallo ``[0, get_node_property_count() - 1]``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_property_name**\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_name>`

Restituisce il nome della proprietà all'indice ``prop_idx`` per il nodo all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_node_property_value**\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_value>`

Restituisce il valore della proprietà all'indice ``prop_idx`` per il nodo all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_type**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_type>`

Restituisce il tipo del nodo all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_path**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_path>`

Restituisce il percorso di risorsa al :ref:`PackedScene<class_PackedScene>` rappresentato.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_is_node_instance_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_instance_placeholder**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_is_node_instance_placeholder>`

Restituisce ``true`` se il nodo all'indice ``idx`` è un :ref:`InstancePlaceholder<class_InstancePlaceholder>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
