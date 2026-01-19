:github_url: hide

.. _class_EditorExportPlatformExtension:

EditorExportPlatformExtension
=============================

**Hereda:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase base para implementaciones personalizadas de :ref:`EditorExportPlatform<class_EditorExportPlatform>` (plugins).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Las implementaciones externas de :ref:`EditorExportPlatform<class_EditorExportPlatform>` deben heredar de esta clase.

Para usar :ref:`EditorExportPlatform<class_EditorExportPlatform>`, regístralo primero usando el método :ref:`EditorPlugin.add_export_platform()<class_EditorPlugin_method_add_export_platform>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_can_export<class_EditorExportPlatformExtension_private_method__can_export>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                                                                                                       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_cleanup<class_EditorExportPlatformExtension_private_method__cleanup>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_pack<class_EditorExportPlatformExtension_private_method__export_pack>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_pack_patch<class_EditorExportPlatformExtension_private_method__export_pack_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_project<class_EditorExportPlatformExtension_private_method__export_project>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |required|                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_zip<class_EditorExportPlatformExtension_private_method__export_zip>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_zip_patch<class_EditorExportPlatformExtension_private_method__export_zip_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|   |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_binary_extensions<class_EditorExportPlatformExtension_private_method__get_binary_extensions>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const|                                                                                                                                                                                       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_debug_protocol<class_EditorExportPlatformExtension_private_method__get_debug_protocol>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_device_architecture<class_EditorExportPlatformExtension_private_method__get_device_architecture>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_get_export_option_visibility<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_export_option_warning<class_EditorExportPlatformExtension_private_method__get_export_option_warning>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_export_options<class_EditorExportPlatformExtension_private_method__get_export_options>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                | :ref:`_get_logo<class_EditorExportPlatformExtension_private_method__get_logo>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_name<class_EditorExportPlatformExtension_private_method__get_name>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                | :ref:`_get_option_icon<class_EditorExportPlatformExtension_private_method__get_option_icon>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_option_label<class_EditorExportPlatformExtension_private_method__get_option_label>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_option_tooltip<class_EditorExportPlatformExtension_private_method__get_option_tooltip>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_options_count<class_EditorExportPlatformExtension_private_method__get_options_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_options_tooltip<class_EditorExportPlatformExtension_private_method__get_options_tooltip>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_os_name<class_EditorExportPlatformExtension_private_method__get_os_name>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_platform_features<class_EditorExportPlatformExtension_private_method__get_platform_features>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_preset_features<class_EditorExportPlatformExtension_private_method__get_preset_features>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                | :ref:`_get_run_icon<class_EditorExportPlatformExtension_private_method__get_run_icon>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_valid_export_configuration<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |required| |const|                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_valid_project_configuration<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const|                                                                                                                                                                   |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_initialize<class_EditorExportPlatformExtension_private_method__initialize>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_executable<class_EditorExportPlatformExtension_private_method__is_executable>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_poll_export<class_EditorExportPlatformExtension_private_method__poll_export>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_run<class_EditorExportPlatformExtension_private_method__run>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, device\: :ref:`int<class_int>`, debug_flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_should_update_export_options<class_EditorExportPlatformExtension_private_method__should_update_export_options>`\ (\ ) |virtual|                                                                                                                                                                                                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_config_error<class_EditorExportPlatformExtension_method_get_config_error>`\ (\ ) |const|                                                                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`get_config_missing_templates<class_EditorExportPlatformExtension_method_get_config_missing_templates>`\ (\ ) |const|                                                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_config_error<class_EditorExportPlatformExtension_method_set_config_error>`\ (\ error_text\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_config_missing_templates<class_EditorExportPlatformExtension_method_set_config_missing_templates>`\ (\ missing_templates\: :ref:`bool<class_bool>`\ ) |const|                                                                                                                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorExportPlatformExtension_private_method__can_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_export**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__can_export>`

Returns ``true`` if the specified ``preset`` is valid and can be exported. Use :ref:`set_config_error()<class_EditorExportPlatformExtension_method_set_config_error>` and :ref:`set_config_missing_templates()<class_EditorExportPlatformExtension_method_set_config_missing_templates>` to set error details.

Usual implementations call :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` and :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` to determine if exporting is possible.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__cleanup:

.. rst-class:: classref-method

|void| **_cleanup**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__cleanup>`

Llamado por el editor antes de que se desregistre la plataforma.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack>`

Crea un archivo PCK en ``path`` para el ``preset`` especificado.

Este método se llama cuando se presiona el botón "Export PCK/ZIP" en el diálogo de exportación, con "Export as Patch" desactivado, y PCK se selecciona como tipo de archivo.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack_patch>`

Crea un archivo PCK de parche en ``path`` para el ``preset`` especificado, que contiene solo los archivos que han cambiado desde el último parche.

Este método se llama cuando se presiona el botón "Export PCK/ZIP" en el diálogo de exportación, con "Export as Patch" habilitado, y PCK se selecciona como tipo de archivo.

\ **Nota:** Los parches proporcionados en ``patches`` ya se han cargado cuando se llama a este método y simplemente se proporcionan como contexto. Cuando esté vacío, se cargarán los parches definidos en el preset de exportación.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_project>`

Crea un proyecto completo en ``path`` para el ``preset`` especificado.

Este método se llama cuando se presiona el botón "Exportar" en el diálogo de exportación.

Esta implementación del método puede llamar a :ref:`EditorExportPlatform.save_pack()<class_EditorExportPlatform_method_save_pack>` o :ref:`EditorExportPlatform.save_zip()<class_EditorExportPlatform_method_save_zip>` para usar el proceso de exportación PCK/ZIP predeterminado, o llama a :ref:`EditorExportPlatform.export_project_files()<class_EditorExportPlatform_method_export_project_files>` e implementa una callback personalizada para procesar cada archivo exportado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip>`

Crea un archivo ZIP en ``path`` para el ``preset`` especificado.

Este método se llama cuando se presiona el botón "Export PCK/ZIP" en el diálogo de exportación, con "Export as Patch" desactivado, y ZIP se selecciona como tipo de archivo.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip_patch>`

Crea un archivo ZIP en ``path`` para el ``preset`` especificado, que contiene solo los archivos que han cambiado desde el último parche.

Este método se llama cuando se presiona el botón "Export PCK/ZIP" en el diálogo de exportación, con "Export as Patch" habilitado, y ZIP se selecciona como tipo de archivo.

\ **Nota:** Los parches proporcionados en ``patches`` ya se han cargado cuando se llama a este método y simplemente se proporcionan como contexto. Cuando esté vacío, se cargarán los parches definidos en el preset de exportación.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_binary_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_binary_extensions**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_binary_extensions>`

Devuelve un array de extensiones binarias compatibles para la exportación completa del proyecto.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_debug_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_debug_protocol**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_debug_protocol>`

Devuelve el protocolo utilizado para la depuración remota. La implementación predeterminada devuelve ``tcp://``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_device_architecture:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_device_architecture**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_device_architecture>`

Devuelve la arquitectura del dispositivo para una implementación con un solo clic.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_export_option_visibility**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`

Valida ``option`` y devuelve la visibilidad para el ``preset`` especificado. La implementación predeterminada devuelve ``true`` para todas las opciones.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_warning:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_export_option_warning**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_warning>`

Valida ``option`` y devuelve un mensaje de advertencia para el ``preset`` especificado. La implementación predeterminada devuelve una string vacía para todas las opciones.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_export_options**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_options>`

Devuelve una lista de propiedades, como un :ref:`Array<class_Array>` de diccionarios. Cada :ref:`Dictionary<class_Dictionary>` debe contener al menos las entradas ``name: StringName`` y ``type: Variant.Type``.

Además, se admiten las siguientes claves:

- ``hint: PropertyHint``\ 

- ``hint_string: String``\ 

- ``usage: PropertyUsageFlags``\ 

- ``class_name: StringName``\ 

- ``default_value: Variant``, valor predeterminado de la propiedad.

- ``update_visibility: bool``, si se establece en ``true``, :ref:`_get_export_option_visibility()<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>` se llama para cada propiedad cuando se cambia esta propiedad.

- ``required: bool``, si se establece en ``true``, las advertencias de esta propiedad son críticas y deben resolverse para que la exportación sea posible. Este valor es una sugerencia para la implementación de :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` y no es utilizado directamente por el motor.

Véase también :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_logo:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_logo**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_logo>`

Devuelve el logo de la plataforma que se muestra en el diálogo de exportación. El logo debería ser de 32×32 píxeles, ajustado a la escala actual del editor (véase :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_name>`

Devuelve el nombre de la plataforma de exportación.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_option_icon**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_icon>`

Devuelve el icono del elemento para el ``device`` especificado en el menú de implementación con un solo clic. El icono debe ser de 16×16 píxeles, ajustado a la escala actual del editor (véase :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_label**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_label>`

Devuelve la etiqueta del elemento del menú de implementación con un solo clic para el ``device`` especificado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_tooltip**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_tooltip>`

Devuelve la información sobre la herramienta del elemento del menú de implementación con un solo clic para el ``device`` especificado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_options_count**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_count>`

Devuelve el número de dispositivos (u otras opciones) disponibles en el menú de implementación con un solo clic.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_options_tooltip**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_tooltip>`

Devuelve la información sobre herramientas del botón del menú de implementación de un clic.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_os_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_os_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_os_name>`

Devuelve el nombre del sistema operativo de destino.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_platform_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_platform_features**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_platform_features>`

Devuelve un array de características específicas de la plataforma.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_preset_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_preset_features**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_preset_features>`

Devuelve un array de características específicas de la plataforma para el ``preset`` especificado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_run_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_run_icon**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_run_icon>`

Devuelve el icono del botón del menú de implementación con un solo clic. El icono debe ser de 16×16 píxeles, ajustado a la escala actual del editor (véase :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_export_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_export_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`

Devuelve ``true`` si la configuración de exportación es válida.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_project_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_project_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`

Devuelve ``true`` si la configuración del proyecto es válida.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__initialize>`

Initializes the plugin. Called by the editor when platform is registered.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__is_executable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_executable**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__is_executable>`

Devuelve ``true`` si el archivo especificado es un ejecutable válido (ejecutable nativo o script) para la plataforma de destino.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__poll_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_poll_export**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__poll_export>`

Devuelve ``true`` si las opciones de implementación con un solo clic se han cambiado y la interfaz del editor debería actualizarse.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__run:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_run**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, device\: :ref:`int<class_int>`, debug_flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__run>`

Este método se llama cuando se selecciona la opción del menú de implementación con un solo clic ``device``.

La implementación debería exportar el proyecto a una ubicación temporal, cargarlo y ejecutarlo en el ``device`` específico, o realizar otra acción asociada con el elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__should_update_export_options:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_should_update_export_options**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__should_update_export_options>`

Devuelve ``true`` si la lista de opciones de exportación ha cambiado y los preajustes deberían actualizarse.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_error:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_error**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_error>`

Devuelve el texto del mensaje de error de configuración actual. Este método solo debe llamarse desde las implementaciones de :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` o :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_missing_templates:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_config_missing_templates**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_missing_templates>`

Devuelve ``true`` si faltan plantillas de exportación en la configuración actual. Este método solo debe llamarse desde las implementaciones de :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` o :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_error:

.. rst-class:: classref-method

|void| **set_config_error**\ (\ error_text\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_error>`

Establece el texto del mensaje de error de configuración actual. Este método solo debe llamarse desde las implementaciones de :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` o :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_missing_templates:

.. rst-class:: classref-method

|void| **set_config_missing_templates**\ (\ missing_templates\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_missing_templates>`

Establece en ``true`` si faltan plantillas de exportación en la configuración actual. Este método solo debe llamarse desde las implementaciones de :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` o :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
