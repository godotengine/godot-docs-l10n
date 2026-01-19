:github_url: hide

.. _class_TranslationServer:

TranslationServer
=================

**Hereda:** :ref:`Object<class_Object>`

El servidor responsable de las traducciones de idiomas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El servidor de traducción es el backend de la API que gestiona todas las traducciones de idiomas.

Las traducciones se almacenan en :ref:`TranslationDomain<class_TranslationDomain>`\ s, a las que se puede acceder por nombre. El dominio de traducción más utilizado es el dominio de traducción principal. Siempre existe y se puede acceder a él utilizando un :ref:`StringName<class_StringName>` vacío. El servidor de traducción proporciona métodos wrapper para acceder al dominio de traducción principal directamente, sin tener que obtener primero el dominio de traducción. Los dominios de traducción personalizados son principalmente para usos avanzados como los plugins del editor. Los nombres que comienzan con ``godot.`` están reservados para los elementos internos del motor.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Internacionalizando los juegos <../tutorials/i18n/internationalizing_games>`

- :doc:`Localización <../tutorials/i18n/locales>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`pseudolocalization_enabled<class_TranslationServer_property_pseudolocalization_enabled>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`add_translation<class_TranslationServer_method_add_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear<class_TranslationServer_method_clear>`\ (\ )                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                              | :ref:`compare_locales<class_TranslationServer_method_compare_locales>`\ (\ locale_a\: :ref:`String<class_String>`, locale_b\: :ref:`String<class_String>`\ ) |const|                                                                                                        |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] | :ref:`find_translations<class_TranslationServer_method_find_translations>`\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const|                                                                                                             |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`format_number<class_TranslationServer_method_format_number>`\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                  | :ref:`get_all_countries<class_TranslationServer_method_get_all_countries>`\ (\ ) |const|                                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                  | :ref:`get_all_languages<class_TranslationServer_method_get_all_languages>`\ (\ ) |const|                                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                  | :ref:`get_all_scripts<class_TranslationServer_method_get_all_scripts>`\ (\ ) |const|                                                                                                                                                                                        |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_country_name<class_TranslationServer_method_get_country_name>`\ (\ country\: :ref:`String<class_String>`\ ) |const|                                                                                                                                               |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_language_name<class_TranslationServer_method_get_language_name>`\ (\ language\: :ref:`String<class_String>`\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                  | :ref:`get_loaded_locales<class_TranslationServer_method_get_loaded_locales>`\ (\ ) |const|                                                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_locale<class_TranslationServer_method_get_locale>`\ (\ ) |const|                                                                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_locale_name<class_TranslationServer_method_get_locale_name>`\ (\ locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TranslationDomain<class_TranslationDomain>`                  | :ref:`get_or_add_domain<class_TranslationServer_method_get_or_add_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ )                                                                                                                                              |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_percent_sign<class_TranslationServer_method_get_percent_sign>`\ (\ locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_plural_rules<class_TranslationServer_method_get_plural_rules>`\ (\ locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_script_name<class_TranslationServer_method_get_script_name>`\ (\ script\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_tool_locale<class_TranslationServer_method_get_tool_locale>`\ (\ )                                                                                                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Translation<class_Translation>`                              | :ref:`get_translation_object<class_TranslationServer_method_get_translation_object>`\ (\ locale\: :ref:`String<class_String>`\ )                                                                                                                                            |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] | :ref:`get_translations<class_TranslationServer_method_get_translations>`\ (\ ) |const|                                                                                                                                                                                      |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_domain<class_TranslationServer_method_has_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_translation<class_TranslationServer_method_has_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const|                                                                                                                                   |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_translation_for_locale<class_TranslationServer_method_has_translation_for_locale>`\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const|                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`parse_number<class_TranslationServer_method_parse_number>`\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`pseudolocalize<class_TranslationServer_method_pseudolocalize>`\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`reload_pseudolocalization<class_TranslationServer_method_reload_pseudolocalization>`\ (\ )                                                                                                                                                                            |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`remove_domain<class_TranslationServer_method_remove_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                      |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`remove_translation<class_TranslationServer_method_remove_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                     |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_locale<class_TranslationServer_method_set_locale>`\ (\ locale\: :ref:`String<class_String>`\ )                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`standardize_locale<class_TranslationServer_method_standardize_locale>`\ (\ locale\: :ref:`String<class_String>`, add_defaults\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                            |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`translate<class_TranslationServer_method_translate>`\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`translate_plural<class_TranslationServer_method_translate_plural>`\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TranslationServer_property_pseudolocalization_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_enabled** = ``false`` :ref:`🔗<class_TranslationServer_property_pseudolocalization_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_enabled**\ (\ )

Si es ``true``, habilita el uso de pseudolocalización en el dominio de traducción principal. Véase :ref:`ProjectSettings.internationalization/pseudolocalization/use_pseudolocalization<class_ProjectSettings_property_internationalization/pseudolocalization/use_pseudolocalization>` para más detalles.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TranslationServer_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_add_translation>`

Añade una traducción al dominio de traducción principal.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationServer_method_clear>`

Elimina todas las traducciones del dominio de traducción principal.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_compare_locales:

.. rst-class:: classref-method

:ref:`int<class_int>` **compare_locales**\ (\ locale_a\: :ref:`String<class_String>`, locale_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_compare_locales>`

Compara dos configuraciones regionales y devuelve una puntuación de similitud entre ``0`` (sin coincidencia) y ``10`` (coincidencia total).

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_find_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **find_translations**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationServer_method_find_translations>`

Devuelve las instancias de :ref:`Translation<class_Translation>` en el dominio de traducción principal que coinciden con ``locale`` (véase :ref:`compare_locales()<class_TranslationServer_method_compare_locales>`). Si ``exact`` es ``true``, solo se devolverán las instancias cuyo locale sea exactamente igual a ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_format_number:

.. rst-class:: classref-method

:ref:`String<class_String>` **format_number**\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_format_number>`

Convierte un número del sistema arábigo occidental (0..9) al sistema numérico utilizado en el ``locale`` dado.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_countries:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_countries**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_countries>`

Devuelve un array de códigos de país conocidos.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_languages:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_languages**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_languages>`

Devuelve un array de códigos de idioma conocidos.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_all_scripts:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_all_scripts**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_all_scripts>`

Devuelve un array de códigos de script conocidos.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_country_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_country_name**\ (\ country\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_country_name>`

Devuelve un nombre de país legible para el código ``country``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_language_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_language_name**\ (\ language\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_language_name>`

Devuelve un nombre de idioma legible para el código ``language``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_loaded_locales:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_loaded_locales**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_loaded_locales>`

Devuelve un array de todas las configuraciones regionales cargadas del proyecto.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_locale>`

Devuelve la configuración regional actual del proyecto.

Véase también :ref:`OS.get_locale()<class_OS_method_get_locale>` y :ref:`OS.get_locale_language()<class_OS_method_get_locale_language>` para consultar la configuración regional del sistema del usuario.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_locale_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale_name**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_locale_name>`

Devuelve el locale de un lenguaje y su variante (por ejemplo, ``"es_ES"`` devolvería ``"Español (España)"``).

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_or_add_domain:

.. rst-class:: classref-method

:ref:`TranslationDomain<class_TranslationDomain>` **get_or_add_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TranslationServer_method_get_or_add_domain>`

Devuelve el dominio de traducción con el nombre especificado. Se creará y agregará un dominio de traducción vacío si no existe.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_percent_sign:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_percent_sign**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_percent_sign>`

Devuelve el signo de porcentaje utilizado en la ``locale`` dada.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_plural_rules:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_plural_rules**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_plural_rules>`

Devuelve las reglas de pluralización predeterminadas para la ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_script_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_script_name**\ (\ script\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_get_script_name>`

Devuelve un nombre de script legible para el código ``script``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_tool_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tool_locale**\ (\ ) :ref:`🔗<class_TranslationServer_method_get_tool_locale>`

Devuelve la configuración regional actual del editor.

\ **Nota:** Cuando se llama desde un proyecto exportado, devuelve el mismo valor que :ref:`get_locale()<class_TranslationServer_method_get_locale>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_translation_object:

.. rst-class:: classref-method

:ref:`Translation<class_Translation>` **get_translation_object**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationServer_method_get_translation_object>`

**Obsoleto:** Use :ref:`find_translations()<class_TranslationServer_method_find_translations>` instead.

Devuelve la instancia de :ref:`Translation<class_Translation>` que mejor coincide con ``locale`` en el dominio de traducción principal. Devuelve ``null`` si no hay coincidencias.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_get_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **get_translations**\ (\ ) |const| :ref:`🔗<class_TranslationServer_method_get_translations>`

Devuelve todas las instancias :ref:`Translation<class_Translation>` disponibles en el dominio de traducción principal, tal como se agregaron con :ref:`add_translation()<class_TranslationServer_method_add_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_domain:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_domain>`

Devuelve ``true`` si existe un dominio de traducción con el nombre especificado.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_translation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_translation>`

Devuelve ``true`` si el dominio de traducción principal contiene la traducción ``translation`` dada.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_has_translation_for_locale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation_for_locale**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationServer_method_has_translation_for_locale>`

Devuelve ``true`` si hay alguna instancia :ref:`Translation<class_Translation>` en el dominio de traducción principal que coincida con ``locale`` (véase :ref:`compare_locales()<class_TranslationServer_method_compare_locales>`). Si ``exact`` es ``true``, solo se consideran las instancias cuya configuración regional sea exactamente igual a ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_parse_number:

.. rst-class:: classref-method

:ref:`String<class_String>` **parse_number**\ (\ number\: :ref:`String<class_String>`, locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationServer_method_parse_number>`

Convierte ``number`` del sistema numérico utilizado en la ``locale`` dada al árabe occidental (0..9).

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationServer_method_pseudolocalize>`

Devuelve la string pseudolocalizada basada en el ``message`` pasado.

\ **Nota:** Este método siempre utiliza el dominio de traducción principal.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_reload_pseudolocalization:

.. rst-class:: classref-method

|void| **reload_pseudolocalization**\ (\ ) :ref:`🔗<class_TranslationServer_method_reload_pseudolocalization>`

Vuelve a analizar las opciones de pseudolocalización y vuelve a cargar la traducción para el dominio de traducción principal.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_domain:

.. rst-class:: classref-method

|void| **remove_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TranslationServer_method_remove_domain>`

Elimina el dominio de traducción con el nombre especificado.

\ **Nota:** Intentar eliminar el dominio de traducción principal es un error.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationServer_method_remove_translation>`

Elimina la traducción dada del dominio de traducción principal.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_set_locale:

.. rst-class:: classref-method

|void| **set_locale**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationServer_method_set_locale>`

Establece la configuración regional del proyecto. La string ``locale`` se estandarizará para que coincida con las configuraciones regionales conocidas (por ejemplo, ``en-US`` se correspondería con ``en_US``).

Si se han cargado traducciones de antemano para la nueva configuración regional, se aplicarán.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_standardize_locale:

.. rst-class:: classref-method

:ref:`String<class_String>` **standardize_locale**\ (\ locale\: :ref:`String<class_String>`, add_defaults\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TranslationServer_method_standardize_locale>`

Devuelve una string ``locale`` estandarizada para que coincida con las configuraciones regionales conocidas (por ejemplo, ``en-US`` se correspondería con ``en_US``). Si ``add_defaults`` es ``true``, es posible que se añada un script o un país por defecto a la configuración regional.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate>`

Devuelve la traducción del idioma actual para el mensaje y el contexto dados.

\ **Nota:** Este método siempre usa el dominio de traducción principal.

.. rst-class:: classref-item-separator

----

.. _class_TranslationServer_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationServer_method_translate_plural>`

Devuelve la traducción del idioma actual para el mensaje dado, el mensaje en plural y el contexto.

El número ``n`` es el número o la cantidad del objeto en plural. Se utilizará para guiar al sistema de traducción para obtener la forma plural correcta para el idioma seleccionado.

\ **Nota:** Este método siempre usa el dominio de traducción principal.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
