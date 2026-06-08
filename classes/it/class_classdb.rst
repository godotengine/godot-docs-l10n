:github_url: hide

.. _class_ClassDB:

ClassDB
=======

**Eredita:** :ref:`Object<class_Object>`

Un archivio di informazioni sulle classi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Fornisce l'accesso ai metadati memorizzati per ogni classe disponibile nel motore.

\ **Nota:** Le classi definite tramite script con ``class_name`` non fanno parte di **ClassDB**, quindi non restituiranno dati di riflessione come liste di metodi o proprietà. Tuttavia, le classi definite tramite :ref:`GDExtension<class_GDExtension>` *fanno* parte di **ClassDB**, quindi restituiranno dati di riflessione.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_instantiate<class_ClassDB_method_can_instantiate>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_call_static<class_ClassDB_method_class_call_static>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_exists<class_ClassDB_method_class_exists>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`APIType<enum_ClassDB_APIType>`                             | :ref:`class_get_api_type<class_ClassDB_method_class_get_api_type>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_enum_constants<class_ClassDB_method_class_get_enum_constants>`\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_enum_list<class_ClassDB_method_class_get_enum_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`class_get_integer_constant<class_ClassDB_method_class_get_integer_constant>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_integer_constant_enum<class_ClassDB_method_class_get_integer_constant_enum>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_integer_constant_list<class_ClassDB_method_class_get_integer_constant_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`class_get_method_argument_count<class_ClassDB_method_class_get_method_argument_count>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_method_list<class_ClassDB_method_class_get_method_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_get_property<class_ClassDB_method_class_get_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                  |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_get_property_default_value<class_ClassDB_method_class_get_property_default_value>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_property_getter<class_ClassDB_method_class_get_property_getter>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ )                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_property_list<class_ClassDB_method_class_get_property_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_property_setter<class_ClassDB_method_class_get_property_setter>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ )                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`class_get_signal<class_ClassDB_method_class_get_signal>`\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_signal_list<class_ClassDB_method_class_get_signal_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_enum<class_ClassDB_method_class_has_enum>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_integer_constant<class_ClassDB_method_class_has_integer_constant>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_method<class_ClassDB_method_class_has_method>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_signal<class_ClassDB_method_class_has_signal>`\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`class_set_property<class_ClassDB_method_class_set_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |const|                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_class_list<class_ClassDB_method_get_class_list>`\ (\ ) |const|                                                                                                                                                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_inheriters_from_class<class_ClassDB_method_get_inheriters_from_class>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_parent_class<class_ClassDB_method_get_parent_class>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`instantiate<class_ClassDB_method_instantiate>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_enabled<class_ClassDB_method_is_class_enabled>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_enum_bitfield<class_ClassDB_method_is_class_enum_bitfield>`\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_parent_class<class_ClassDB_method_is_parent_class>`\ (\ class\: :ref:`StringName<class_StringName>`, inherits\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ClassDB_APIType:

.. rst-class:: classref-enumeration

enum **APIType**: :ref:`🔗<enum_ClassDB_APIType>`

.. _class_ClassDB_constant_API_CORE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_CORE** = ``0``

Tipo di classe core nativa.

.. _class_ClassDB_constant_API_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR** = ``1``

Tipo di classe dell'editor nativa.

.. _class_ClassDB_constant_API_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EXTENSION** = ``2``

Tipo di classe GDExtension.

.. _class_ClassDB_constant_API_EDITOR_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR_EXTENSION** = ``3``

Tipo di classe GDExtension dell'editor.

.. _class_ClassDB_constant_API_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_NONE** = ``4``

Tipo di classe sconosciuto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ClassDB_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_can_instantiate>`

Restituisce ``true`` se gli oggetti possono essere istanziati dalla classe ``class``, altrimenti restituisce ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_call_static:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_call_static**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_ClassDB_method_class_call_static>`

Chiama un metodo statico su una classe.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_exists**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_exists>`

Restituisce se la classe ``class`` è disponibile o meno.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_api_type:

.. rst-class:: classref-method

:ref:`APIType<enum_ClassDB_APIType>` **class_get_api_type**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_api_type>`

Restituisce il tipo di API della classe ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_constants:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_constants**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_constants>`

Restituisce un array con tutte le chiavi dell'enumerazione ``enum`` della classe ``class`` o i suoi antenati.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_list>`

Restituisce un array con tutte le enumerazioni della classe ``class`` o i suoi antenati.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant>`

Restituisce il valore della costante intera denominata ``name`` della classe ``class`` o i suoi antenati. Restituisce sempre 0 quando non è stato possibile trovare la costante.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_enum:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_integer_constant_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_enum>`

Restituisce l'enumerazione a cui appartiene la costante intera denominata ``name`` della classe ``class`` o i suoi antenati.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_integer_constant_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_list>`

Restituisce un array con i nomi di tutte le costanti intere della classe ``class`` o dei suoi antenati.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_method_argument_count**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_argument_count>`

Restituisce il numero di argomenti del metodo ``method`` della classe ``class`` o i suoi antenati se ``no_inheritance`` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_method_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_list>`

Restituisce un array con tutti i metodi della classe ``class`` o i suoi antenati se ``no_inheritance`` è ``false``. Ogni elemento dell'array è un :ref:`Dictionary<class_Dictionary>` con le seguenti chiavi: ``args``, ``default_args``, ``flags``, ``id`` , ``name``, ``return: (class_name, hint, hint_string, name, type, usage)``.

\ **Nota:** Nelle build di rilascio esportate le informazioni di debug non sono disponibili, quindi i dizionari restituiti conterranno solo nomi dei metodi.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property>`

Restituisce il valore della proprietà denominata ``property`` dell'oggetto ``object`` o della sua discendenza.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property_default_value**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_default_value>`

Restituisce il valore predefinito della proprietà denominata ``property`` della classe ``class`` o le sue classi antenate.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_getter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_getter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_getter>`

Restituisce il nome del metodo getter della proprietà denominata ``property`` della classe ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_property_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_list>`

Restituisce un array con tutte le proprietà della classe ``class`` o i suoi antenati se ``no_inheritance`` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_setter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_setter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_setter>`

Restituisce il nome del metodo setter della proprietà denominata ``property`` della classe ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **class_get_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal>`

Restituisce i dati del segnale denominato ``signal`` della classe ``class`` o i suoi antenati. Il valore restituito è un :ref:`Dictionary<class_Dictionary>` con le seguenti chiavi: ``args``, ``default_args``, ``flags``, ``id``, ``name``, ``return: (class_name, hint, hint_string, name, type, usage)``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_signal_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal_list>`

Restituisce un array con tutti i segnali della classe ``class`` o dei suoi antenati se ``no_inheritance`` è ``false``. Ogni elemento dell'array è un :ref:`Dictionary<class_Dictionary>` come descritto in :ref:`class_get_signal()<class_ClassDB_method_class_get_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_enum:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_enum>`

Restituisce se la classe ``class`` o uno dei suoi antenati ha un'enumerazione chiamata ``name`` o meno.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_integer_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_integer_constant>`

Restituisce se la classe ``class`` o uno dei suoi antenati ha una constante intera chiamata ``name`` o meno.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_method**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_method>`

Restituisce se la classe ``class`` (o uno dei suoi antenati se ``no_inheritance`` è ``false``)) ha un metodo chiamato ``method`` o meno.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_signal>`

Restituisce se la classe ``class`` o uno dei suoi antenati ha un segnale chiamato ``signal`` o meno.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_set_property:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **class_set_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_set_property>`

Imposta il valore della proprietà denominata ``property`` dell'oggetto ``object`` a ``value``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_class_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_class_list**\ (\ ) |const| :ref:`🔗<class_ClassDB_method_get_class_list>`

Restituisce i nomi di tutte le classi disponibili nel motore.

\ **Nota:** Le classi definite da script con ``class_name`` non sono incluse in questa lista. Usa invece :ref:`ProjectSettings.get_global_class_list()<class_ProjectSettings_method_get_global_class_list>` per ottenere una lista di classi definite da script.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_inheriters_from_class:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_inheriters_from_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_inheriters_from_class>`

Restituisce i nomi di tutte le classi nel motore che ereditano dalla classe ``class`` direttamente o indirettamente.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_parent_class:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_parent_class>`

Restituisce la classe madre della classe con nome ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_instantiate:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_instantiate>`

Crea un'istanza della classe denominata ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enabled**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enabled>`

Restituisce se la classe ``class`` è abilitata o meno.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enum_bitfield:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enum_bitfield**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enum_bitfield>`

Restituisce se la classe ``class`` (o le sue classi antenate se ``no_inheritance`` è ``false``) ha un'enumerazione chiamata ``enum`` che è un bitfield.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_parent_class:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`, inherits\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_parent_class>`

Restituisce se la classe denominata ``inherits`` è un antenato della classe ``class`` o meno.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
