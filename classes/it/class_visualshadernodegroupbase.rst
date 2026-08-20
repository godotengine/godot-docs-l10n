:github_url: hide

.. _class_VisualShaderNodeGroupBase:

VisualShaderNodeGroupBase
=========================

**Eredita:** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>`

Classe di base per una famiglia di nodi con un numero variabile di porte di ingresso e di uscita all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Attualmente, non ha un uso diretto, utilizza invece le classi derivate.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_input_port<class_VisualShaderNodeGroupBase_method_add_input_port>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_output_port<class_VisualShaderNodeGroupBase_method_add_output_port>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_input_ports<class_VisualShaderNodeGroupBase_method_clear_input_ports>`\ (\ )                                                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_output_ports<class_VisualShaderNodeGroupBase_method_clear_output_ports>`\ (\ )                                                                                         |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_free_input_port_id<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`\ (\ ) |const|                                                                         |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_free_output_port_id<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`\ (\ ) |const|                                                                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_input_port_count<class_VisualShaderNodeGroupBase_method_get_input_port_count>`\ (\ ) |const|                                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_inputs<class_VisualShaderNodeGroupBase_method_get_inputs>`\ (\ ) |const|                                                                                                 |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_output_port_count<class_VisualShaderNodeGroupBase_method_get_output_port_count>`\ (\ ) |const|                                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_outputs<class_VisualShaderNodeGroupBase_method_get_outputs>`\ (\ ) |const|                                                                                               |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_input_port<class_VisualShaderNodeGroupBase_method_has_input_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_output_port<class_VisualShaderNodeGroupBase_method_has_output_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_valid_port_name<class_VisualShaderNodeGroupBase_method_is_valid_port_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_input_port<class_VisualShaderNodeGroupBase_method_remove_input_port>`\ (\ id\: :ref:`int<class_int>`\ )                                                               |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_output_port<class_VisualShaderNodeGroupBase_method_remove_output_port>`\ (\ id\: :ref:`int<class_int>`\ )                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_input_port_name<class_VisualShaderNodeGroupBase_method_set_input_port_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_input_port_type<class_VisualShaderNodeGroupBase_method_set_input_port_type>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ )                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_inputs<class_VisualShaderNodeGroupBase_method_set_inputs>`\ (\ inputs\: :ref:`String<class_String>`\ )                                                                   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_output_port_name<class_VisualShaderNodeGroupBase_method_set_output_port_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                     |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_output_port_type<class_VisualShaderNodeGroupBase_method_set_output_port_type>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ )                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_outputs<class_VisualShaderNodeGroupBase_method_set_outputs>`\ (\ outputs\: :ref:`String<class_String>`\ )                                                                |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VisualShaderNodeGroupBase_method_add_input_port:

.. rst-class:: classref-method

|void| **add_input_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_input_port>`

Aggiunge una porta d'ingresso con il tipo specificato ``type`` (vedi :ref:`PortType<enum_VisualShaderNode_PortType>`) e il nome ``name``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_add_output_port:

.. rst-class:: classref-method

|void| **add_output_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_output_port>`

Aggiunge una porta di uscita con il tipo specificato ``type`` (vedi :ref:`PortType<enum_VisualShaderNode_PortType>`) e il nome ``name``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_input_ports:

.. rst-class:: classref-method

|void| **clear_input_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_input_ports>`

Rimuove tutte le porte di ingresso specificate in precedenza.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_output_ports:

.. rst-class:: classref-method

|void| **clear_output_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_output_ports>`

Rimuove tutte le porte di uscita specificate in precedenza.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_input_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_input_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`

Restituisce un ID di porta d'ingresso libero che può essere utilizzato in :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_output_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_output_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`

Restituisce un ID di porta di uscita libero che può essere utilizzato in :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_input_port_count>`

Restituisce il numero di porte di ingresso in uso. Alternativa per :ref:`get_free_input_port_id()<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_inputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_inputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_inputs>`

Restituisce una stringa di descrizione delle porte di ingresso come un elenco separato dal due punti usando il formato ``id,tipo,nome;`` (vedi :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_output_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_output_port_count>`

Restituisce il numero di porte di uscita in uso. Alternativa per :ref:`get_free_output_port_id()<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_outputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_outputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_outputs>`

Restituisce una stringa di descrizione delle porte di uscita come un elenco separato dal due punti usando il formato ``id,tipo,nome;`` (vedi :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_input_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_input_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_input_port>`

Restituisce ``true`` se esiste la porta di ingresso specificata.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_output_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_output_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_output_port>`

Restituisce ``true`` se esiste la porta di uscita specificata.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_is_valid_port_name:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_port_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_is_valid_port_name>`

Restituisce ``true`` se il nome della porta specificato non sovrascrive un nome di porta esistente ed è valido all'interno dello shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_input_port:

.. rst-class:: classref-method

|void| **remove_input_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_input_port>`

Rimuove la porta di ingresso specificata.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_output_port:

.. rst-class:: classref-method

|void| **remove_output_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_output_port>`

Rimuove la porta di uscita specificata.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_name:

.. rst-class:: classref-method

|void| **set_input_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_name>`

Rinomina la porta di ingresso specificata.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_type:

.. rst-class:: classref-method

|void| **set_input_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_type>`

Imposta il tipo della porta di ingresso specificata (vedi :ref:`PortType<enum_VisualShaderNode_PortType>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_inputs:

.. rst-class:: classref-method

|void| **set_inputs**\ (\ inputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_inputs>`

Definisce tutte le porte di ingresso tramite una stringa formattata come un elenco separato dal due punti ``id,tipo,nome;`` (vedi :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_name:

.. rst-class:: classref-method

|void| **set_output_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_name>`

Rinomina la porta di uscita specificata.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_type:

.. rst-class:: classref-method

|void| **set_output_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_type>`

Imposta il tipo della porta di uscita specificata (vedi :ref:`PortType<enum_VisualShaderNode_PortType>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_outputs:

.. rst-class:: classref-method

|void| **set_outputs**\ (\ outputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_outputs>`

Definisce tutte le porte di uscita tramite una stringa formattata come un elenco separato dal due punti ``id,tipo,nome;`` (vedi :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
