:github_url: hide

.. _class_ScriptExtension:

ScriptExtension
===============

**Hereda:** :ref:`Script<class_Script>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_can_instantiate<class_ScriptExtension_private_method__can_instantiate>`\ (\ ) |virtual| |required| |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_editor_can_reload_from_file<class_ScriptExtension_private_method__editor_can_reload_from_file>`\ (\ ) |virtual| |required|                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Script<class_Script>`                                      | :ref:`_get_base_script<class_ScriptExtension_private_method__get_base_script>`\ (\ ) |virtual| |required| |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_class_icon_path<class_ScriptExtension_private_method__get_class_icon_path>`\ (\ ) |virtual| |const|                                                                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_constants<class_ScriptExtension_private_method__get_constants>`\ (\ ) |virtual| |required| |const|                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`_get_doc_class_name<class_ScriptExtension_private_method__get_doc_class_name>`\ (\ ) |virtual| |required| |const|                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_documentation<class_ScriptExtension_private_method__get_documentation>`\ (\ ) |virtual| |required| |const|                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`_get_global_name<class_ScriptExtension_private_method__get_global_name>`\ (\ ) |virtual| |required| |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`_get_instance_base_type<class_ScriptExtension_private_method__get_instance_base_type>`\ (\ ) |virtual| |required| |const|                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ScriptLanguage<class_ScriptLanguage>`                      | :ref:`_get_language<class_ScriptExtension_private_method__get_language>`\ (\ ) |virtual| |required| |const|                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_member_line<class_ScriptExtension_private_method__get_member_line>`\ (\ member\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const|                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`_get_members<class_ScriptExtension_private_method__get_members>`\ (\ ) |virtual| |required| |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_method_info<class_ScriptExtension_private_method__get_method_info>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const|                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_get_property_default_value<class_ScriptExtension_private_method__get_property_default_value>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const| |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_get_rpc_config<class_ScriptExtension_private_method__get_rpc_config>`\ (\ ) |virtual| |required| |const|                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_get_script_method_argument_count<class_ScriptExtension_private_method__get_script_method_argument_count>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_script_method_list<class_ScriptExtension_private_method__get_script_method_list>`\ (\ ) |virtual| |required| |const|                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_script_property_list<class_ScriptExtension_private_method__get_script_property_list>`\ (\ ) |virtual| |required| |const|                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_script_signal_list<class_ScriptExtension_private_method__get_script_signal_list>`\ (\ ) |virtual| |required| |const|                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_source_code<class_ScriptExtension_private_method__get_source_code>`\ (\ ) |virtual| |required| |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_method<class_ScriptExtension_private_method__has_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const|                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_property_default_value<class_ScriptExtension_private_method__has_property_default_value>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const| |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_script_signal<class_ScriptExtension_private_method__has_script_signal>`\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const|                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_source_code<class_ScriptExtension_private_method__has_source_code>`\ (\ ) |virtual| |required| |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_static_method<class_ScriptExtension_private_method__has_static_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const|                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_inherits_script<class_ScriptExtension_private_method__inherits_script>`\ (\ script\: :ref:`Script<class_Script>`\ ) |virtual| |required| |const|                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | ``void*``                                                        | :ref:`_instance_create<class_ScriptExtension_private_method__instance_create>`\ (\ for_object\: :ref:`Object<class_Object>`\ ) |virtual| |required| |const|                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_instance_has<class_ScriptExtension_private_method__instance_has>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| |const|                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_abstract<class_ScriptExtension_private_method__is_abstract>`\ (\ ) |virtual| |const|                                                                                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_placeholder_fallback_enabled<class_ScriptExtension_private_method__is_placeholder_fallback_enabled>`\ (\ ) |virtual| |required| |const|                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_tool<class_ScriptExtension_private_method__is_tool>`\ (\ ) |virtual| |required| |const|                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_valid<class_ScriptExtension_private_method__is_valid>`\ (\ ) |virtual| |required| |const|                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_placeholder_erased<class_ScriptExtension_private_method__placeholder_erased>`\ (\ placeholder\: ``void*``\ ) |virtual|                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | ``void*``                                                        | :ref:`_placeholder_instance_create<class_ScriptExtension_private_method__placeholder_instance_create>`\ (\ for_object\: :ref:`Object<class_Object>`\ ) |virtual| |required| |const|     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_reload<class_ScriptExtension_private_method__reload>`\ (\ keep_state\: :ref:`bool<class_bool>`\ ) |virtual| |required|                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_set_source_code<class_ScriptExtension_private_method__set_source_code>`\ (\ code\: :ref:`String<class_String>`\ ) |virtual| |required|                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_update_exports<class_ScriptExtension_private_method__update_exports>`\ (\ ) |virtual| |required|                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ScriptExtension_private_method__can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_instantiate**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__can_instantiate>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__editor_can_reload_from_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_editor_can_reload_from_file**\ (\ ) |virtual| |required| :ref:`🔗<class_ScriptExtension_private_method__editor_can_reload_from_file>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_base_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **_get_base_script**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_base_script>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_class_icon_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_class_icon_path**\ (\ ) |virtual| |const| :ref:`🔗<class_ScriptExtension_private_method__get_class_icon_path>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_constants:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_constants**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_constants>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_doc_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_doc_class_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_doc_class_name>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_documentation:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_documentation**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_documentation>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_global_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_global_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_global_name>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_instance_base_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_instance_base_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_instance_base_type>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_language:

.. rst-class:: classref-method

:ref:`ScriptLanguage<class_ScriptLanguage>` **_get_language**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_language>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_member_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_member_line**\ (\ member\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_member_line>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_members:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **_get_members**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_members>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_method_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_method_info**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_method_info>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_property_default_value**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_property_default_value>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_rpc_config:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_rpc_config**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_rpc_config>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_script_method_argument_count:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_script_method_argument_count**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ScriptExtension_private_method__get_script_method_argument_count>`

Devuelve el número de argumentos esperado para el ``method`` dado, o ``null`` si no se puede determinar (que entonces recurrirá al comportamiento predeterminado).

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_script_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_script_method_list**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_script_method_list>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_script_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_script_property_list**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_script_property_list>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_script_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_script_signal_list**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_script_signal_list>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__get_source_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_source_code**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__get_source_code>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__has_method>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__has_property_default_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_property_default_value**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__has_property_default_value>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__has_script_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_script_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__has_script_signal>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__has_source_code:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_source_code**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__has_source_code>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__has_static_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_static_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__has_static_method>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__inherits_script:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_inherits_script**\ (\ script\: :ref:`Script<class_Script>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__inherits_script>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__instance_create:

.. rst-class:: classref-method

``void*`` **_instance_create**\ (\ for_object\: :ref:`Object<class_Object>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__instance_create>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__instance_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_instance_has**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| |const| :ref:`🔗<class_ScriptExtension_private_method__instance_has>`

**Obsoleto:** This method is not called by the engine.

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__is_abstract:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_abstract**\ (\ ) |virtual| |const| :ref:`🔗<class_ScriptExtension_private_method__is_abstract>`

Devuelve ``true`` si el script es un script abstracto. Los scripts abstractos no se pueden instanciar directamente, en su lugar, otros scripts deben heredarlos. Los scripts abstractos no se podrán seleccionar u ocultar en el diálogo Crear nuevo nodo (no se podrán seleccionar si hay clases no abstractas que lo hereden, de lo contrario, se ocultarán).

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__is_placeholder_fallback_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_placeholder_fallback_enabled**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__is_placeholder_fallback_enabled>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__is_tool:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_tool**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__is_tool>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_valid**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__is_valid>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__placeholder_erased:

.. rst-class:: classref-method

|void| **_placeholder_erased**\ (\ placeholder\: ``void*``\ ) |virtual| :ref:`🔗<class_ScriptExtension_private_method__placeholder_erased>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__placeholder_instance_create:

.. rst-class:: classref-method

``void*`` **_placeholder_instance_create**\ (\ for_object\: :ref:`Object<class_Object>`\ ) |virtual| |required| |const| :ref:`🔗<class_ScriptExtension_private_method__placeholder_instance_create>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__reload:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_reload**\ (\ keep_state\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_ScriptExtension_private_method__reload>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__set_source_code:

.. rst-class:: classref-method

|void| **_set_source_code**\ (\ code\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_ScriptExtension_private_method__set_source_code>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ScriptExtension_private_method__update_exports:

.. rst-class:: classref-method

|void| **_update_exports**\ (\ ) |virtual| |required| :ref:`🔗<class_ScriptExtension_private_method__update_exports>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
