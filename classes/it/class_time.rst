:github_url: hide

.. _class_Time:

Time
====

**Eredita:** :ref:`Object<class_Object>`

Un singleton per lavorare con i dati sul tempo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il singleton Time consente di convertire l'ora tra vari formati e anche di ottenere informazioni sull'ora dal sistema.

Questa classe è conforme al maggior numero possibile di standard ISO 8601. Tutte le date seguono il calendario gregoriano prolettico. Pertanto, il giorno prima del ``1582-10-15`` è ``1582-10-14``, non ``1582-10-04``. L'anno prima del 1 d.C. (noto anche come 1 a.C.) è il numero ``0``, mentre l'anno prima (2 a.C.) è ``-1``, ecc.

I metodi di conversione presuppongono "lo stesso fuso orario" e non gestiscono automaticamente le conversioni di fuso orario o l'ora legale. Anche i secondi intercalari non sono gestiti, è necessario farlo manualmente se lo si desidera. I suffissi come "Z" non sono gestiti, è necessario eliminarli manualmente.

Quando si ottengono informazioni sull'ora dal sistema, l'ora può essere nel fuso orario locale o UTC a seconda del parametro ``utc``. Tuttavia, il metodo :ref:`get_unix_time_from_system()<class_Time_method_get_unix_time_from_system>` usa sempre UTC poiché restituisce i secondi trascorsi dall'`epoca Unix <https://it.wikipedia.org/wiki/Tempo_(Unix)>`__.

\ **Importante:** I metodi ``_from_system`` usano l'orologio di sistema che l'utente può impostare manualmente. **Non usare mai** questo metodo per un calcolo preciso dell'ora poiché i suoi risultati sono soggetti a regolazioni automatiche da parte dell'utente o del sistema operativo. **Usa sempre** :ref:`get_ticks_usec()<class_Time_method_get_ticks_usec>` o :ref:`get_ticks_msec()<class_Time_method_get_ticks_msec>` per un calcolo preciso dell'ora, poiché è garantito che siano monotoni (cioè non diminuiscano mai).

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_date_dict_from_system<class_Time_method_get_date_dict_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                         |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_date_dict_from_unix_time<class_Time_method_get_date_dict_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_date_string_from_system<class_Time_method_get_date_string_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                     |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_date_string_from_unix_time<class_Time_method_get_date_string_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_datetime_dict_from_datetime_string<class_Time_method_get_datetime_dict_from_datetime_string>`\ (\ datetime\: :ref:`String<class_String>`, weekday\: :ref:`bool<class_bool>`\ ) |const|           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_datetime_dict_from_system<class_Time_method_get_datetime_dict_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                 |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_datetime_dict_from_unix_time<class_Time_method_get_datetime_dict_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_datetime_string_from_datetime_dict<class_Time_method_get_datetime_string_from_datetime_dict>`\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`, use_space\: :ref:`bool<class_bool>`\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_datetime_string_from_system<class_Time_method_get_datetime_string_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false, use_space\: :ref:`bool<class_bool>` = false\ ) |const|                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_datetime_string_from_unix_time<class_Time_method_get_datetime_string_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`, use_space\: :ref:`bool<class_bool>` = false\ ) |const|          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_offset_string_from_offset_minutes<class_Time_method_get_offset_string_from_offset_minutes>`\ (\ offset_minutes\: :ref:`int<class_int>`\ ) |const|                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_ticks_msec<class_Time_method_get_ticks_msec>`\ (\ ) |const|                                                                                                                                      |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_ticks_usec<class_Time_method_get_ticks_usec>`\ (\ ) |const|                                                                                                                                      |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_time_dict_from_system<class_Time_method_get_time_dict_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                         |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_time_dict_from_unix_time<class_Time_method_get_time_dict_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_time_string_from_system<class_Time_method_get_time_string_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                     |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_time_string_from_unix_time<class_Time_method_get_time_string_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_time_zone_from_system<class_Time_method_get_time_zone_from_system>`\ (\ ) |const|                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_unix_time_from_datetime_dict<class_Time_method_get_unix_time_from_datetime_dict>`\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`\ ) |const|                                                  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_unix_time_from_datetime_string<class_Time_method_get_unix_time_from_datetime_string>`\ (\ datetime\: :ref:`String<class_String>`\ ) |const|                                                      |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_unix_time_from_system<class_Time_method_get_unix_time_from_system>`\ (\ ) |const|                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Time_Month:

.. rst-class:: classref-enumeration

enum **Month**: :ref:`🔗<enum_Time_Month>`

.. _class_Time_constant_MONTH_JANUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JANUARY** = ``1``

Il mese di gennaio, rappresentato numericamente come ``01``.

.. _class_Time_constant_MONTH_FEBRUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_FEBRUARY** = ``2``

Il mese di febbraio, rappresentato numericamente come ``02``.

.. _class_Time_constant_MONTH_MARCH:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MARCH** = ``3``

Il mese di marzo, rappresentato numericamente come ``03``.

.. _class_Time_constant_MONTH_APRIL:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_APRIL** = ``4``

Il mese di aprile, rappresentato numericamente come ``04``.

.. _class_Time_constant_MONTH_MAY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MAY** = ``5``

Il mese di maggio, rappresentato numericamente come ``05``.

.. _class_Time_constant_MONTH_JUNE:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JUNE** = ``6``

Il mese di giugno, rappresentato numericamente come ``06``.

.. _class_Time_constant_MONTH_JULY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JULY** = ``7``

Il mese di luglio, rappresentato numericamente come ``07``.

.. _class_Time_constant_MONTH_AUGUST:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_AUGUST** = ``8``

Il mese di agosto, rappresentato numericamente come ``08``.

.. _class_Time_constant_MONTH_SEPTEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_SEPTEMBER** = ``9``

Il mese di settembre, rappresentato numericamente come ``09``.

.. _class_Time_constant_MONTH_OCTOBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_OCTOBER** = ``10``

Il mese di ottobre, rappresentato numericamente come ``10``.

.. _class_Time_constant_MONTH_NOVEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_NOVEMBER** = ``11``

Il mese di novembre, rappresentato numericamente come ``11``.

.. _class_Time_constant_MONTH_DECEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_DECEMBER** = ``12``

Il mese di dicembre, rappresentato numericamente come ``12``.

.. rst-class:: classref-item-separator

----

.. _enum_Time_Weekday:

.. rst-class:: classref-enumeration

enum **Weekday**: :ref:`🔗<enum_Time_Weekday>`

.. _class_Time_constant_WEEKDAY_SUNDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SUNDAY** = ``0``

Il giorno della settimana, domenica, rappresentato numericamente come ``0``.

.. _class_Time_constant_WEEKDAY_MONDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_MONDAY** = ``1``

Il giorno della settimana, lunedì, rappresentato numericamente come ``1``.

.. _class_Time_constant_WEEKDAY_TUESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_TUESDAY** = ``2``

Il giorno della settimana, martedì, rappresentato numericamente come ``2``.

.. _class_Time_constant_WEEKDAY_WEDNESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_WEDNESDAY** = ``3``

Il giorno della settimana, mercoledì, rappresentato numericamente come ``3``.

.. _class_Time_constant_WEEKDAY_THURSDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_THURSDAY** = ``4``

Il giorno della settimana, giovedì, rappresentato numericamente come ``4``.

.. _class_Time_constant_WEEKDAY_FRIDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_FRIDAY** = ``5``

Il giorno della settimana, venerdì, rappresentato numericamente come ``5``.

.. _class_Time_constant_WEEKDAY_SATURDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SATURDAY** = ``6``

Il giorno della settimana, sabato, rappresentato numericamente come ``6``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Time_method_get_date_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_system>`

Restituisce la data attuale come dizionario di chiavi: ``year`` (anno), ``month`` (mese), ``day`` (giorno) e ``weekday`` (giorno della settimana).

I valori restituiti sono nell'ora locale del sistema quando ``utc`` è ``false``, altrimenti sono in UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_unix_time>`

Converte il timestamp Unix specificato in un dizionario di chiavi: ``year`` (anno), ``month`` (mese), ``day`` (giorno) e ``weekday`` (giorno della settimana).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_system>`

Restituisce la data attuale come stringa di data ISO 8601 (AAAA-MM-GG).

I valori restituiti sono nell'ora locale del sistema quando ``utc`` è ``false``, altrimenti sono in UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_unix_time>`

Converte il timestamp Unix specificato in una stringa con formato di data ISO 8601 (AAAA-MM-GG).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_datetime_string:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`, weekday\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_datetime_string>`

Converte la stringa di data e ora ISO 8601 specificata (AAAA-MM-GGTHH:MM:SS) in un dizionario di chiavi: ``year``, ``month``, ``day``, ``weekday``, ``hour``, ``minute`` e ``second``.

Se ``weekday`` è ``false``, la voce ``weekday`` viene esclusa (il calcolo è relativamente costoso).

\ **Nota:** Qualsiasi frazione decimale nella stringa del tempo sarà ignorata silenziosamente.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_system>`

Restituisce la data attuale come dizionario di chiavi: ``year``, ``month``, ``day``, ``weekday``, ``hour``, ``minute``, ``second`` e ``dst`` (ora legale).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_unix_time>`

Converte il timestamp Unix specificato in un dizionario di chiavi: ``year``, ``month``, ``day``, ``weekday``, ``hour``, ``minute``, e ``second``.

I valori del dizionario restituito saranno gli stessi di :ref:`get_datetime_dict_from_system()<class_Time_method_get_datetime_dict_from_system>` se il timestamp Unix è l'ora corrente, ad eccezione dell'ora legale, poiché non può essere determinata dall'epoca.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_datetime_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`, use_space\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_datetime_dict>`

Converte il dizionario di chiavi specificato in una stringa di data e ora ISO 8601 (AAAA-MM-GGTHH:MM:SS).

Il dizionario specificato può essere popolato con le seguenti chiavi: ``year``, ``month``, ``day``, ``hour``, ``minute``, e ``second``. Tutte le altre voci (incluso ``dst``) sono ignorate.

Se il dizionario è vuoto, viene restituito ``0``. Se alcune chiavi sono omesse, sono impostate sui valori predefiniti equivalenti per il timestamp dell'epoca Unix 0 (1970-01-01 alle 00:00:00).

Se ``use_space`` è ``true``, i bit di data e ora sono separati da uno spazio vuoto anziché dalla lettera T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_system>`

Restituisce la data e l'ora attuale come stringa di data e ora ISO 8601 (AAAA-MM-GGTHH:MM:SS).

I valori restituiti sono nell'ora locale del sistema quando ``utc`` è ``false``, altrimenti sono in UTC.

Se ``use_space`` è ``true``, i bit di data e ora sono separati da uno spazio vuoto anziché dalla lettera T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_unix_time>`

Converte il timestamp Unix specificato in una stringa data e ora ISO 8601 (AAAA-MM-GGTHH:MM:SS).

Se ``use_space`` è ``true``, i bit di data e ora sono separati da uno spazio vuoto anziché dalla lettera T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_offset_string_from_offset_minutes:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_offset_string_from_offset_minutes**\ (\ offset_minutes\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_offset_string_from_offset_minutes>`

Converte l'offset di fuso orario specificato in minuti in una stringa di offset di fuso orario. Ad esempio, -480 restituisce "-08:00", 345 restituisce "+05:45" e 0 restituisce "+00:00".

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_msec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_msec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_msec>`

Restituisce la quantità di tempo trascorso in millisecondi dall'avvio del motore.

Sarà sempre positivo o 0 e utilizzerà un valore a 64 bit (sarà ripristinato dopo circa 500 milioni di anni).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_usec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_usec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_usec>`

Restituisce la quantità di tempo trascorso in microsecondi dall'avvio del motore.

Sarà sempre positivo o 0 e utilizzerà un valore a 64 bit (sarà ripristinato dopo circa mezzo milione di anni).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_system>`

Restituisce l'ora attuale come dizionario di chiavi: ``hour`` (ore), ``minute`` (minuti), e ``second`` (secondi).

I valori restituiti sono nell'ora locale del sistema quando ``utc`` è ``false``, altrimenti sono in UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_unix_time>`

Converte l'ora specificata in un dizionario di chiavi: ``hour``, ``minute`` e ``second``.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_system>`

Restituisce l'ora attuale come stringa di ora ISO 8601 (HH:MM:SS).

I valori restituiti sono nell'ora locale del sistema quando ``utc`` è ``false``, altrimenti sono in UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_unix_time>`

Converte il timestamp Unix specificato in una stringa di formato d'ora ISO 8601 (HH:MM:SS).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_zone_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_zone_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_time_zone_from_system>`

Restituisce il fuso orario attuale come dizionario di chiavi: ``bias`` e ``name``.

- ``bias`` è l'offset da UTC in minuti, poiché non tutti i fusi orari sono multipli di un'ora da UTC.

- ``name`` è il nome localizzato del fuso orario, in base alle impostazioni locali del sistema operativo dell'utente attuale.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_dict:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_dict>`

Converte un dizionario di valori di tempo in un timestamp Unix.

Il dizionario specificato può essere popolato con le seguenti chiavi: ``year``, ``month``, ``day``, ``hour``, ``minute`` e ``second``. Tutte le altre voci (incluso ``dst``) sono ignorate.

Se il dizionario è vuoto, viene restituito ``0``. Se alcune chiavi sono omesse, sono impostate sui valori predefiniti equivalenti per il timestamp Unix epoch 0 (1970-01-01 alle 00:00:00).

Puoi passare il risultato da :ref:`get_datetime_dict_from_unix_time()<class_Time_method_get_datetime_dict_from_unix_time>` direttamente in questa funzione e ottenere lo stesso di quanto inserito.

\ **Nota:** I timestamp Unix sono spesso in UTC. Questo metodo non esegue alcuna conversione di fuso orario, quindi il timestamp sarà nello stesso fuso orario del dizionario di data e ora specificato.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_string:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_string>`

Converte la stringa data e/o ora ISO 8601 specificata in un timestamp Unix. La stringa può contenere solo una data, solo un'ora o entrambe.

\ **Nota:** I timestamp Unix sono spesso in UTC. Questo metodo non esegue alcuna conversione di fuso orario, quindi il timestamp sarà nello stesso fuso orario della stringa data/ora specificata.

\ **Nota:** Qualsiasi frazione decimale nella stringa di ora sarà ignorata silenziosamente.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_system:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_unix_time_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_system>`

Restituisce il timestamp Unix attuale in secondi in base all'ora di sistema in UTC. Questo metodo è implementato dal sistema operativo e restituisce sempre l'ora in UTC. Il timestamp Unix è il numero di secondi trascorsi dal 1970-01-01 alle 00:00:00, l'`epoca Unix <https://it.wikipedia.org/wiki/Tempo_(Unix)>`__.

\ **Nota:** A differenza di altri metodi che utilizzano timestamp interi, questo metodo restituisce il timestamp come :ref:`float<class_float>` per una precisione al di sotto di un secondo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
