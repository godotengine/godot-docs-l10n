:github_url: hide

.. _class_TranslationDomain:

TranslationDomain
=================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una raccolta indipendente di risorse :ref:`Translation<class_Translation>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**TranslationDomain** è una raccolta a sé stante di risorse :ref:`Translation<class_Translation>`. È possibile aggiungere o rimuovere le traduzioni da essa.

Se stai lavorando con il dominio di traduzione principale, è più comodo usare i metodi "wrap" sul :ref:`TranslationServer<class_TranslationServer>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TranslationDomain_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Se ``true``, la traduzione è abilitata. Altrimenti, :ref:`translate()<class_TranslationDomain_method_translate>` e :ref:`translate_plural()<class_TranslationDomain_method_translate_plural>` restituiranno il messaggio di ingresso invariato, a prescindere dalle impostazioni locali attuali.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_accents_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_accents_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_accents_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_accents_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_accents_enabled**\ (\ )

Sostituisce tutti i caratteri con le loro varianti accentate durante la pseudolocalizzazione.

\ **Nota:** L'aggiornamento di questa proprietà non aggiorna automaticamente i testi nell'albero di scene. Si prega di propagare manualmente la notifica :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` dopo aver terminato di modificare le opzioni relative alla pseudolocalizzazione.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_double_vowels_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_double_vowels_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_double_vowels_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_double_vowels_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_double_vowels_enabled**\ (\ )

Raddoppia le vocali nelle stringhe durante la pseudolocalizzazione per simulare l'allungamento del testo dovuto alla localizzazione.

\ **Nota:** L'aggiornamento di questa proprietà non aggiorna automaticamente i testi nell'albero di scene. Si prega di propagare manualmente la notifica :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` dopo aver terminato di modificare le opzioni relative alla pseudolocalizzazione.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_enabled**\ (\ )

Se ``true``, abilita la pseudolocalizzazione per il progetto. Può essere utilizzata per individuare stringhe non traducibili o problemi di layout che potrebbero verificarsi una volta che il progetto è localizzato in lingue che hanno stringhe più lunghe della lingua di origine.

\ **Nota:** Aggiornando questa proprietà non si aggiorneranno automaticamente i testi nell'albero di scene. Si prega di propagare manualmente la notifica :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` dopo aver finito di modificare le opzioni che riguardano la pseudolocalizzazione.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_expansion_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **pseudolocalization_expansion_ratio** = ``0.0`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_expansion_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_expansion_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pseudolocalization_expansion_ratio**\ (\ )

Il rapporto di espansione da usare durante la pseudolocalizzazione. Un valore di ``0.3`` è sufficiente per la maggior parte degli scopi pratici e aumenterà la lunghezza di ogni stringa del 30%.

\ **Nota:** L'aggiornamento di questa proprietà non aggiorna automaticamente i testi nell'albero di scene. Si prega di propagare manualmente la notifica :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` dopo aver terminato di modificare le opzioni relative alla pseudolocalizzazione.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_fake_bidi_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_fake_bidi_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_fake_bidi_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_fake_bidi_enabled**\ (\ )

Se ``true``, emula il testo bidirezionale (da destra a sinistra) quando è abilitata la pseudolocalizzazione. Ciò serve per individuare problemi con il layout RTL e il rispecchiamento dell'interfaccia utente, i quali si presenteranno se il progetto è localizzato in lingue RTL come l'arabo o l'ebraico.

\ **Nota:** Aggiornando questa proprietà non si aggiorneranno automaticamente i testi nell'albero di scene. Si prega di propagare manualmente la notifica :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` dopo aver finito di modificare le opzioni che riguardano la pseudolocalizzazione.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_override_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_override_enabled** = ``false`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_override_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_override_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_override_enabled**\ (\ )

Sostituisci tutti i caratteri nella stringa con ``*``. Utile per trovare stringhe non localizzabili.

\ **Nota:** L'aggiornamento di questa proprietà non aggiorna automaticamente i testi nell'albero di scene. Si prega di propagare manualmente la notifica :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` dopo aver terminato di modificare le opzioni relative alla pseudolocalizzazione.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_prefix** = ``"["`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_prefix**\ (\ )

Prefisso che verrà anteposto alla stringa pseudolocalizzata.

\ **Nota:** L'aggiornamento di questa proprietà non aggiorna automaticamente i testi nell'albero di scene. Si prega di propagare manualmente la notifica :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` dopo aver terminato di modificare le opzioni relative alla pseudolocalizzazione.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pseudolocalization_skip_placeholders_enabled** = ``true`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_skip_placeholders_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_skip_placeholders_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pseudolocalization_skip_placeholders_enabled**\ (\ )

Ignora i segnaposto per la formattazione delle stringhe come ``%s`` o ``%f`` durante la pseudolocalizzazione. Utile per identificare le stringhe che necessitano di caratteri di controllo aggiuntivi per essere visualizzate correttamente.

\ **Nota:** Aggiornando questa proprietà non si aggiorneranno automaticamente i testi nell'albero di scene. Si prega di propagare manualmente la notifica :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` dopo aver finito di modificare le opzioni che riguardano la pseudolocalizzazione.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_property_pseudolocalization_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **pseudolocalization_suffix** = ``"]"`` :ref:`🔗<class_TranslationDomain_property_pseudolocalization_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_pseudolocalization_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_pseudolocalization_suffix**\ (\ )

Suffisso che verrà apposto alla stringa pseudolocalizzata.

\ **Nota:** L'aggiornamento di questa proprietà non aggiorna automaticamente i testi nell'albero di scene. Si prega di propagare manualmente la notifica :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>` dopo aver terminato di modificare le opzioni relative alla pseudolocalizzazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TranslationDomain_method_add_translation:

.. rst-class:: classref-method

|void| **add_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_add_translation>`

Aggiunge una traduzione.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TranslationDomain_method_clear>`

Rimuove tutte le traduzioni.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_find_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **find_translations**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_find_translations>`

Restituisce le istanze di :ref:`Translation<class_Translation>` che corrispondono a ``locale`` (vedi :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`. Se ``exact`` è ``true``, vengono considerate solo le istanze la cui localizzazione è esattamente uguale a ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_locale_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_locale_override**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_locale_override>`

Restituisce la sostituzione della localizzazione del dominio. Restituisce una stringa vuota se la sostituzione della localizzazione è disabilitata.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translation_object:

.. rst-class:: classref-method

:ref:`Translation<class_Translation>` **get_translation_object**\ (\ locale\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translation_object>`

**Deprecato:** Use :ref:`find_translations()<class_TranslationDomain_method_find_translations>` instead.

Restituisce l'istanza di :ref:`Translation<class_Translation>` che corrisponde di più alla localizzazione ``locale``. Restituisce ``null`` se non ci sono corrispondenze.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_get_translations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Translation<class_Translation>`\] **get_translations**\ (\ ) |const| :ref:`🔗<class_TranslationDomain_method_get_translations>`

Restituisce tutte le istanze di :ref:`Translation<class_Translation>` disponibili, come sono state aggiunte tramite :ref:`add_translation()<class_TranslationDomain_method_add_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation>`

Restituisce ``true`` se questo dominio di traduzione contiene la traduzione ``translation``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_has_translation_for_locale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_translation_for_locale**\ (\ locale\: :ref:`String<class_String>`, exact\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_has_translation_for_locale>`

Restituisce ``true`` se ci sono istanze di :ref:`Translation<class_Translation>` che corrispondono a ``locale`` (vedi :ref:`TranslationServer.compare_locales()<class_TranslationServer_method_compare_locales>`). Se ``exact`` è ``true``, vengono considerate solo le istanze la cui localizzazione è esattamente uguale a ``locale``.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_pseudolocalize:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **pseudolocalize**\ (\ message\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_TranslationDomain_method_pseudolocalize>`

Restituisce la stringa pseudolocalizzata in base al messaggio ``message`` passato.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_remove_translation:

.. rst-class:: classref-method

|void| **remove_translation**\ (\ translation\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_TranslationDomain_method_remove_translation>`

Restituisce la traduzione specificata.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_set_locale_override:

.. rst-class:: classref-method

|void| **set_locale_override**\ (\ locale\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TranslationDomain_method_set_locale_override>`

Imposta la sostituzione della localizzazione del dominio.

Se ``locale`` è una stringa vuota, la sostituzione della localizzazione è disabilitata. Altrimenti, ``locale`` sarà standardizzato per corrispondere alle localizzazioni note (ad esempio, ``en-US`` sarebbe abbinato a ``en_US``).

\ **Nota:** La chiamata a questo metodo non aggiorna automaticamente i testi nell'albero di scene. Si prega di propagare manualmente il segnale :ref:`MainLoop.NOTIFICATION_TRANSLATION_CHANGED<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>`.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate>`

Restituisce la traduzione della localizzazione attuale per il messaggio e il contesto specificati.

.. rst-class:: classref-item-separator

----

.. _class_TranslationDomain_method_translate_plural:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **translate_plural**\ (\ message\: :ref:`StringName<class_StringName>`, message_plural\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_TranslationDomain_method_translate_plural>`

Restituisce la traduzione della localizzazione attuale per il messaggio, il messaggio plurale e il contesto specificati.

Il numero ``n`` è il numero o la quantità dell'oggetto plurale. Sarà usato per guidare il sistema di traduzione a recuperare la forma plurale corretta per la lingua selezionata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
