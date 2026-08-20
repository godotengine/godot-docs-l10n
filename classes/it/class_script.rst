:github_url: hide

.. _class_Script:

Script
======

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CSharpScript<class_CSharpScript>`, :ref:`GDScript<class_GDScript>`, :ref:`ScriptExtension<class_ScriptExtension>`

Una classe memorizzata come risorsa.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una classe memorizzata come risorsa. Uno script estende la funzionalità di tutti gli oggetti che lo istanziano.

Questa è la classe di base per tutti gli script e non dovrebbe essere utilizzata direttamente. Tentare di creare un nuovo script con questa classe causerà un errore.

Il metodo ``new`` di una sottoclasse di script crea una nuova istanza. :ref:`Object.set_script()<class_Object_method_set_script>` estende un oggetto esistente, se la classe di quell'oggetto corrisponde a una delle classi di base dello script.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione di scripting <../tutorials/scripting/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`source_code<class_Script_property_source_code>` |
   +-----------------------------+-------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_instantiate<class_Script_method_can_instantiate>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Script<class_Script>`                                      | :ref:`get_base_script<class_Script_method_get_base_script>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_global_name<class_Script_method_get_global_name>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_instance_base_type<class_Script_method_get_instance_base_type>`\ (\ ) |const|                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_property_default_value<class_Script_method_get_property_default_value>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_rpc_config<class_Script_method_get_rpc_config>`\ (\ ) |const|                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_script_constant_map<class_Script_method_get_script_constant_map>`\ (\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_method_list<class_Script_method_get_script_method_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_property_list<class_Script_method_get_script_property_list>`\ (\ )                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_signal_list<class_Script_method_get_script_signal_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_script_method<class_Script_method_has_script_method>`\ (\ method_name\: :ref:`StringName<class_StringName>`\ ) |const|        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_script_signal<class_Script_method_has_script_signal>`\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const|        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_source_code<class_Script_method_has_source_code>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`instance_has<class_Script_method_instance_has>`\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const|                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_abstract<class_Script_method_is_abstract>`\ (\ ) |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_tool<class_Script_method_is_tool>`\ (\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`reload<class_Script_method_reload>`\ (\ keep_state\: :ref:`bool<class_bool>` = false\ )                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Script_property_source_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_code** :ref:`🔗<class_Script_property_source_code>`

.. rst-class:: classref-property-setget

- |void| **set_source_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_source_code**\ (\ )

Il codice sorgente dello script o una stringa vuota se il codice sorgente non è disponibile. Quando impostato, non ricarica automaticamente l'implementazione della classe.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Script_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_Script_method_can_instantiate>`

Restituisce ``true`` se lo script può essere istanziato.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_base_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_base_script**\ (\ ) |const| :ref:`🔗<class_Script_method_get_base_script>`

Restituisce lo script direttamente ereditato da questo script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_global_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_global_name**\ (\ ) |const| :ref:`🔗<class_Script_method_get_global_name>`

Restituisce il nome della classe associata allo script, se presente. Altrimenti, restituisce una stringa vuota.

Per assegnare un nome globale allo script, puoi usare la parola chiave ``class_name`` in GDScript e l'attributo ``[GlobalClass]`` in C#.


.. tabs::

 .. code-tab:: gdscript

    class_name MyNode
    extends Node

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class MyNode : Node
    {
    }



.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_instance_base_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_instance_base_type**\ (\ ) |const| :ref:`🔗<class_Script_method_get_instance_base_type>`

Restituisce il tipo base dello script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_property_default_value**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Script_method_get_property_default_value>`

Restituisce il valore predefinito della proprietà specificata.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_rpc_config:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_rpc_config**\ (\ ) |const| :ref:`🔗<class_Script_method_get_rpc_config>`

Restituisce un :ref:`Dictionary<class_Dictionary>` che mappa i nomi dei metodi alla loro configurazione RPC definita da questo script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_constant_map:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_script_constant_map**\ (\ ) :ref:`🔗<class_Script_method_get_script_constant_map>`

Restituisce un dizionario contenente i nomi delle costanti e i relativi valori.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_method_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_method_list>`

Restituisce la lista dei metodi in questo **Script**.

\ **Nota:** I dizionari restituiti da questo metodo sono formattati in modo identico a quelli restituiti da :ref:`Object.get_method_list()<class_Object_method_get_method_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_property_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_property_list>`

Restituisce la lista delle proprietà in questo **Script**.

\ **Nota:** I dizionari restituiti da questo metodo sono formattati in modo identico a quelli restituiti da :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_signal_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_signal_list>`

Restituisce la lista dei segnali definiti in questo **Script**.

\ **Nota:** I dizionari restituiti da questo metodo sono formattati in modo identico a quelli restituiti da :ref:`Object.get_signal_list()<class_Object_method_get_signal_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_script_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_script_method**\ (\ method_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Script_method_has_script_method>`

Restituisce ``true`` se lo script, o una classe base, definisce un metodo con il nome specificato.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_script_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_script_signal**\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Script_method_has_script_signal>`

Restituisce ``true`` se lo script, o una classe base, definisce un segnale con il nome specificato.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_source_code:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_source_code**\ (\ ) |const| :ref:`🔗<class_Script_method_has_source_code>`

Restituisce ``true`` se lo script contiene codice sorgente non vuoto.

\ **Nota:** Se uno script non ha codice sorgente, ciò non significa che non sia valido o inutilizzabile. Ad esempio, un :ref:`GDScript<class_GDScript>` esportato con tokenizzazione binaria non ha codice sorgente, ma si comporta comunque come previsto e può essere istanziato. Questo può essere verificato con :ref:`can_instantiate()<class_Script_method_can_instantiate>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_instance_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **instance_has**\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_Script_method_instance_has>`

**Deprecato:** Compare this script with :ref:`Object.get_script()<class_Object_method_get_script>` instead.

Restituisce ``true`` se ``base_object`` è un'istanza di questo script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_abstract:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_abstract**\ (\ ) |const| :ref:`🔗<class_Script_method_is_abstract>`

Restituisce ``true`` se lo script è uno script astratto. Uno script astratto non ha un costruttore e non può essere istanziato.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_tool:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tool**\ (\ ) |const| :ref:`🔗<class_Script_method_is_tool>`

Restituisce ``true`` se lo script è uno script di strumento. Uno script di strumento può eseguirsi nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_reload:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload**\ (\ keep_state\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Script_method_reload>`

Ricarica l'implementazione della classe dello script. Restituisce un codice d'errore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
