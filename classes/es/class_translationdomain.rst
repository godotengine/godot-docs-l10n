:github_url: hide

.. _class_TranslationDomain:

TranslationDomain
=================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una colección autónoma de recursos :ref:`Translation<class_Translation>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**TranslationDomain** es una colección autocontenida de recursos :ref:`Translation<class_Translation>`. Se pueden añadir o eliminar traducciones de ella.

Si estás trabajando con el dominio de traducción principal, es más conveniente utilizar los métodos de envoltura en :ref:`TranslationServer<class_TranslationServer>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`enabled<class_TranslationDomain_property_enabled>`                                                                           | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_accents_enabled<class_TranslationDomain_property_pseudolocalization_accents_enabled>`                     | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_double_vowels_enabled<class_TranslationDomain_property_pseudolocalization_double_vowels_enabled>`         | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_enabled<class_TranslationDomain_property_pseudolocalization_enabled>`                                     | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`pseudolocalization_expansion_ratio<class_TranslationDomain_property_pseudolocalization_expansion_ratio>`                     | ``0.0``   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_fake_bidi_enabled<class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled>`                 | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_override_enabled<class_TranslationDomain_property_pseudolocalization_override_enabled>`                   | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`pseudolocalization_prefix<class_TranslationDomain_property_pseudolocalization_prefix>`                                       | ``"["``   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`pseudolocalization_skip_placeholders_enabled<class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled>` | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`pseudolocalization_suffix<class_TranslationDomain_property_pseudolocalization_suffix>`                                       | ``"]"``   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`add_translation<class_TranslationDomain_method_add_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear<class_TranslationDomain_method_clear>`\ (\ )                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] | :ref:`find_translations<class_TranslationDomain_method_find_translations>`\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const|                                                                                                             |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                        | :ref:`get_locale_override<class_TranslationDomain_method_get_locale_override>`\ (\ ) |const|                                                                                                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Translation<class_Translation>`                              | :ref:`get_translation_object<class_TranslationDomain_method_get_translation_object>`\ (\ locale\: :ref:`String<class_String>`\ ) |const|                                                                                                                                    |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] | :ref:`get_translations<class_TranslationDomain_method_get_translations>`\ (\ ) |const|                                                                                                                                                                                      |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_translation<class_TranslationDomain_method_has_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const|                                                                                                                                   |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`has_translation_for_locale<class_TranslationDomain_method_has_translation_for_locale>`\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const|                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`pseudolocalize<class_TranslationDomain_method_pseudolocalize>`\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                           |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`remove_translation<class_TranslationDomain_method_remove_translation>`\ (\ translation\: :ref:`Translation<class_Translation>`\ )                                                                                                                                     |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_locale_override<class_TranslationDomain_method_set_locale_override>`\ (\ locale\: :ref:`String<class_String>`\ )                                                                                                                                                  |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`translate<class_TranslationDomain_method_translate>`\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                                |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`translate_plural<class_TranslationDomain_method_translate_plural>`\ (\ message\: :ref:`StringName<class_StringName>`, message_plural\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| |
   +--------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TranslationDomain_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si es ``true``, la traducción está activada. De lo contrario, :ref:`translate()<class_TranslationDomain_method_translate>` y :ref:`translate_plural()<class_TranslationDomain_method_translate_plural>` devolverán el mensaje de entrada sin cambios, independientemente de la configuración regional actual.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_accents_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_accents_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_accents_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_accents_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_accents_enabled**\ (\ )

Reemplaza todos los caracteres con sus variantes acentuadas durante la seudolocalización.

\ **Nota:** La actualización de esta propiedad no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la notificación :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente después de que hayas terminado de modificar las opciones relacionadas con la seudolocalización.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_double_vowels_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_double_vowels_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_double_vowels_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_double_vowels_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_double_vowels_enabled**\ (\ )

Duplica las vocales en las strings durante la seudolocalización para simular el alargamiento del texto debido a la localización.

\ **Nota:** La actualización de esta propiedad no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la notificación :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente después de que hayas terminado de modificar las opciones relacionadas con la seudolocalización.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_enabled**\ (\ )

Si es ``true``, activa la seudolocalización para el proyecto. Esto se puede utilizar para detectar strings no traducibles o problemas de diseño que pueden ocurrir una vez que el proyecto se localiza a idiomas que tienen strings más largas que el idioma de origen.

\ **Nota:** La actualización de esta propiedad no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la notificación :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente después de que hayas terminado de modificar las opciones relacionadas con la seudolocalización.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_expansion_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **pseudolocalization_expansion_ratio** = ``0.0`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_expansion_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_expansion_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pseudolocalization_expansion_ratio**\ (\ )

La relación de expansión a utilizar durante la seudolocalización. Un valor de ``0.3`` es suficiente para la mayoría de los propósitos prácticos, y aumentará la longitud de cada string en un 30%.

\ **Nota:** La actualización de esta propiedad no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la notificación :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente después de que hayas terminado de modificar las opciones relacionadas con la seudolocalización.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_fake_bidi_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_fake_bidi_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_fake_bidi_enabled**\ (\ )

Si es ``true``, emula texto bidireccional (de derecha a izquierda) cuando la seudolocalización está activada. Esto se puede utilizar para detectar problemas con el diseño RTL y la duplicación de la interfaz de usuario que surgirán si el proyecto se localiza a idiomas RTL como el árabe o el hebreo.

\ **Nota:** La actualización de esta propiedad no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la notificación :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente después de que hayas terminado de modificar las opciones relacionadas con la seudolocalización.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_override_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_override_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_override_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_override_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_override_enabled**\ (\ )

Reemplaza todos los caracteres de la string con ``*``. Útil para encontrar strings no localizables.

\ **Nota:** La actualización de esta propiedad no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la notificación :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente después de que hayas terminado de modificar las opciones relacionadas con la seudolocalización.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_prefix** = ``"["`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_prefix**\ (\ )

Prefijo que se añadirá a la string pseudolocalizada.

\ **Nota:** La actualización de esta propiedad no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la notificación :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente después de que hayas terminado de modificar las opciones relacionadas con la seudolocalización.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_skip_placeholders_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_skip_placeholders_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_skip_placeholders_enabled**\ (\ )

Omite los marcadores de posición para el formato de strings como ``%s`` o ``%f`` durante la seudolocalización. Útil para identificar strings que necesitan caracteres de control adicionales para mostrarse correctamente.

\ **Nota:** La actualización de esta propiedad no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la notificación :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente después de que hayas terminado de modificar las opciones relacionadas con la seudolocalización.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_suffix** = ``"]"`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_suffix**\ (\ )

Sufijo que se añadirá a la string pseudolocalizada.

\ **Nota:** La actualización de esta propiedad no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la notificación :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente después de que hayas terminado de modificar las opciones relacionadas con la seudolocalización.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TranslationDomain_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_add_translation>`

Añade una traducción.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationDomain_method_clear>`

Elimina todas las traducciones.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_find_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **find_translations**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_find_translations>`

Devuelve las instancias de :ref:`Translation<class_Translation>` que coinciden con ``locale`` (véase :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`). Si ``exact`` es ``true``, solo se devolverán las instancias cuyo locale sea exactamente igual a ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_locale_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale_override**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_locale_override>`

Devuelve la configuración regional del dominio. Si la configuración regional está deshabilitada, devuelve una string vacía.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translation_object:

.. rst-class:: classref-method

:ref:`Translation<class_Translation>` **get_translation_object**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translation_object>`

**Obsoleto:** Use :ref:`find_translations()<class_TranslationDomain_method_find_translations>` instead.

Devuelve la instancia de :ref:`Translation<class_Translation>` que mejor coincide con ``locale``. Devuelve ``null`` si no hay coincidencias.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **get_translations**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translations>`

Devuelve todas las instancias de :ref:`Translation<class_Translation>` disponibles, tal como se agregaron con :ref:`add_translation()<class_TranslationDomain_method_add_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation>`

Devuelve ``true`` si este dominio de traducción contiene la ``translation`` dada.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation_for_locale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation_for_locale**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation_for_locale>`

Devuelve ``true`` si hay alguna instancia de :ref:`Translation<class_Translation>` que coincida con ``locale`` (véase :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`). Si ``exact`` es ``true``, solo se consideran las instancias cuyo locale sea exactamente igual a ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_pseudolocalize>`

Devuelve la string pseudolocalizada basada en el ``message`` pasado.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_remove_translation>`

Elimina la traducción dada.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_set_locale_override:

.. rst-class:: classref-method

|void| **set_locale_override**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationDomain_method_set_locale_override>`

Establece la sobrescritura de la configuración regional del dominio.

Si ``locale`` es una string vacía, la sobrescritura de la configuración regional está desactivada. De lo contrario, ``locale`` se estandarizará para que coincida con las configuraciones regionales conocidas (por ejemplo, ``en-US`` se correspondería con ``en_US``).

\ **Nota:** Llamar a este método no actualiza automáticamente los textos en el árbol de escenas. Por favor, propaga la señal :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` manualmente.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate>`

Devuelve la traducción de la configuración regional actual para el mensaje y el contexto dados.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, message_plural\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate_plural>`

Devuelve la traducción de la configuración regional actual para el mensaje, el mensaje plural y el contexto dados.

El número ``n`` es el número o la cantidad del objeto plural. Se utilizará para guiar al sistema de traducción para obtener la forma plural correcta para el idioma seleccionado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
