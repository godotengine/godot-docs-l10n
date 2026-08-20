:github_url: hide

.. _class_ClassDB:

ClassDB
=======

**Hereda:** :ref:`Object<class_Object>`

Un repositorio de información de clases.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Proporciona acceso a los metadatos almacenados para cada clase disponible del motor.

\ **Nota:** Las clases definidas mediante scripts con ``class_name`` no forman parte de **ClassDB**, por lo que no devolverán datos de reflexión como listas de métodos o propiedades. Sin embargo, las clases definidas mediante :ref:`GDExtension<class_GDExtension>` *sí* forman parte de **ClassDB**, por lo que devolverán datos de reflexión.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_ClassDB_APIType:

.. rst-class:: classref-enumeration

enum **APIType**: :ref:`🔗<enum_ClassDB_APIType>`

.. _class_ClassDB_constant_API_CORE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_CORE** = ``0``

Tipo de clase nativa del núcleo.

.. _class_ClassDB_constant_API_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR** = ``1``

Tipo de clase nativa del editor.

.. _class_ClassDB_constant_API_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EXTENSION** = ``2``

Tipo de clase de GDExtension.

.. _class_ClassDB_constant_API_EDITOR_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR_EXTENSION** = ``3``

Tipo de clase de editor de GDExtension.

.. _class_ClassDB_constant_API_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_NONE** = ``4``

Tipo de clase desconocido.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ClassDB_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_can_instantiate>`

Devuelve ``true`` si se pueden instanciar objetos desde la ``class`` especificada, de lo contrario devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_call_static:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_call_static**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_ClassDB_method_class_call_static>`

Llama a un método estático en una clase.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_exists**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_exists>`

Devuelve si la ``class`` especificada está disponible o no.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_api_type:

.. rst-class:: classref-method

:ref:`APIType<enum_ClassDB_APIType>` **class_get_api_type**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_api_type>`

Devuelve el tipo de API de la ``class`` especificada.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_constants:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_constants**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_constants>`

Devuelve un array con todas las claves en el ``enum`` de ``class`` o su ascendencia.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_list>`

Devuelve un array con todos los enums de ``class`` o su ascendencia.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant>`

Devuelve el valor de la constante entera ``name`` de ``class`` o su ascendencia. Siempre devuelve 0 si no se pudo encontrar la constante.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_enum:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_integer_constant_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_enum>`

Devuelve a qué enum pertenece la constante de tipo integer ``name`` de ``class`` o su ascendencia.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_integer_constant_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_list>`

Devuelve un array con los nombres de todas las constantes de tipo integer de ``class`` o su ascendencia.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_method_argument_count**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_argument_count>`

Devuelve el número de argumentos del método ``method`` de ``class`` o su ascendencia si ``no_inheritance`` es ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_method_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_list>`

Devuelve un array con todos los métodos de ``class`` o su ascendencia si ``no_inheritance`` es ``false``. Cada elemento del array es un :ref:`Dictionary<class_Dictionary>` con las siguientes claves: ``args``, ``default_args``, ``flags``, ``id``, ``name``, ``return: (class_name, hint, hint_string, name, type, usage)``.

\ **Nota:** En las compilaciones de lanzamiento exportadas, la información de depuración no está disponible, por lo que los diccionarios devueltos solo contendrán los nombres de métodos.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property>`

Devuelve el valor de ``property`` de ``object`` o su ascendencia.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property_default_value**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_default_value>`

Devuelve el valor por defecto de ``property`` de ``class`` o sus clases ascendentes.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_getter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_getter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_getter>`

Devuelve el nombre del método getter de ``property`` de ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_property_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_list>`

Devuelve un array con todas las propiedades de ``class`` o su ascendencia si ``no_inheritance`` es ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_setter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_setter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_setter>`

Devuelve el nombre del método setter de ``property`` de ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **class_get_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal>`

Devuelve los datos de la señal ``signal`` de ``class`` o su ascendencia. El valor devuelto es un :ref:`Dictionary<class_Dictionary>` con las siguientes claves: ``args``, ``default_args``, ``flags``, ``id``, ``name``, ``return: (class_name, hint, hint_string, name, type, usage)``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_signal_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal_list>`

Devuelve un array con todas las señales de ``class`` o su ascendencia si ``no_inheritance`` es ``false``. Cada elemento del array es un :ref:`Dictionary<class_Dictionary>` como se describe en :ref:`class_get_signal()<class_ClassDB_method_class_get_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_enum:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_enum>`

Devuelve si ``class`` o su ascendencia tiene un enum llamado ``name`` o no.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_integer_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_integer_constant>`

Devuelve si ``class`` o su ascendencia tiene una constante de tipo integer llamada ``name`` o no.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_method**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_method>`

Devuelve si ``class`` (o su ascendencia si ``no_inheritance`` es ``false``) tiene un método llamado ``method`` o no.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_signal>`

Returns whether ``class`` or its ancestry has a signal called ``signal`` or not.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_set_property:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **class_set_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_set_property>`

Establece el valor de la ``property`` de ``object`` a ``value``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_class_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_class_list**\ (\ ) |const| :ref:`🔗<class_ClassDB_method_get_class_list>`

Devuelve los nombres de todas las clases disponibles en el motor .

\ **Nota:** Las clases definidas mediante scripts con ``class_name`` no se incluyen en esta lista. Utiliza :ref:`ProjectSettings.get_global_class_list()<class_ProjectSettings_method_get_global_class_list>` para obtener, en su lugar, una lista de las clases definidas mediante scripts.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_inheriters_from_class:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_inheriters_from_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_inheriters_from_class>`

Devuelve los nombres de todas las clases del motor que heredan directa o indirectamente de ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_parent_class:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_parent_class>`

Devuelve la clase padre de ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_instantiate:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_instantiate>`

Crea una instancia de ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enabled**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enabled>`

Devuelve si esta ``class`` está habilitada o no.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enum_bitfield:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enum_bitfield**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enum_bitfield>`

Devuelve si ``class`` (o sus clases ancestras si ``no_inheritance`` es ``false``) tiene un enum llamado ``enum`` que es un campo de bits.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_parent_class:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`, inherits\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_parent_class>`

Devuelve si ``inherits`` es un ancestro de ``class`` o no.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
