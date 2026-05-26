:github_url: hide

.. _class_Time:

Time
====

**Hereda:** :ref:`Object<class_Object>`

Un singleton para trabajar con datos de tiempo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El singleton Time permite convertir el tiempo entre varios formatos y también obtener información del tiempo del sistema.

Esta clase cumple con la mayor cantidad posible de estándares ISO 8601. Todas las fechas siguen el calendario gregoriano proléptico. Como tal, el día anterior a ``1582-10-15`` es ``1582-10-14``, no ``1582-10-04``. El año anterior a 1 d.C. (también conocido como 1 a.C.) es el número ``0``, y el año anterior a ese (2 a.C.) es ``-1``, etc.

Los métodos de conversión asumen "la misma zona horaria" y no manejan las conversiones de zona horaria o el horario de verano automáticamente. Los segundos bisiestos tampoco se manejan, deben hacerse manualmente si se desea. Los sufijos como "Z" no se manejan, debes eliminarlos manualmente.

Al obtener información de tiempo del sistema, el tiempo puede estar en la zona horaria local o en UTC dependiendo del parámetro ``utc``. Sin embargo, el método :ref:`get_unix_time_from_system()<class_Time_method_get_unix_time_from_system>` siempre usa UTC ya que devuelve los segundos transcurridos desde la `época de Unix <https://en.wikipedia.org/wiki/Unix_time>`__.

\ **Importante:** Los métodos ``_from_system`` usan el reloj del sistema que el usuario puede configurar manualmente. **Nunca uses** este método para cálculos de tiempo precisos ya que sus resultados están sujetos a ajustes automáticos por parte del usuario o del sistema operativo. **Usa siempre** :ref:`get_ticks_usec()<class_Time_method_get_ticks_usec>` o :ref:`get_ticks_msec()<class_Time_method_get_ticks_msec>` para cálculos de tiempo precisos en su lugar, ya que se garantiza que sean monótonos (es decir, que nunca disminuyan).

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_Time_Month:

.. rst-class:: classref-enumeration

enum **Month**: :ref:`🔗<enum_Time_Month>`

.. _class_Time_constant_MONTH_JANUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JANUARY** = ``1``

El mes de enero, representado numéricamente como ``01``.

.. _class_Time_constant_MONTH_FEBRUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_FEBRUARY** = ``2``

El mes de febrero, representado numéricamente como ``02``.

.. _class_Time_constant_MONTH_MARCH:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MARCH** = ``3``

El mes de marzo, representado numéricamente como ``03``.

.. _class_Time_constant_MONTH_APRIL:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_APRIL** = ``4``

El mes de abril, representado numéricamente como ``04``.

.. _class_Time_constant_MONTH_MAY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MAY** = ``5``

El mes de mayo, representado numéricamente como ``05``.

.. _class_Time_constant_MONTH_JUNE:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JUNE** = ``6``

El mes de junio, representado numéricamente como ``06``.

.. _class_Time_constant_MONTH_JULY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JULY** = ``7``

El mes de julio, representado numéricamente como ``07``.

.. _class_Time_constant_MONTH_AUGUST:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_AUGUST** = ``8``

El mes de agosto, representado numéricamente como ``08``.

.. _class_Time_constant_MONTH_SEPTEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_SEPTEMBER** = ``9``

El mes de septiembre, representado numéricamente como ``09``.

.. _class_Time_constant_MONTH_OCTOBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_OCTOBER** = ``10``

El mes de octubre, representado numéricamente como ``10``.

.. _class_Time_constant_MONTH_NOVEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_NOVEMBER** = ``11``

El mes de noviembre, representado numéricamente como ``11``.

.. _class_Time_constant_MONTH_DECEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_DECEMBER** = ``12``

El mes de diciembre, representado numéricamente como ``12``.

.. rst-class:: classref-item-separator

----

.. _enum_Time_Weekday:

.. rst-class:: classref-enumeration

enum **Weekday**: :ref:`🔗<enum_Time_Weekday>`

.. _class_Time_constant_WEEKDAY_SUNDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SUNDAY** = ``0``

El día domingo de la semana, representado numéricamente como ``0``.

.. _class_Time_constant_WEEKDAY_MONDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_MONDAY** = ``1``

El día lunes de la semana, representado numéricamente como ``1``.

.. _class_Time_constant_WEEKDAY_TUESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_TUESDAY** = ``2``

El día martes de la semana, representado numéricamente como ``2``.

.. _class_Time_constant_WEEKDAY_WEDNESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_WEDNESDAY** = ``3``

El día miércoles de la semana, representado numéricamente como ``3``.

.. _class_Time_constant_WEEKDAY_THURSDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_THURSDAY** = ``4``

El día jueves de la semana, representado numéricamente como ``4``.

.. _class_Time_constant_WEEKDAY_FRIDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_FRIDAY** = ``5``

El día viernes de la semana, representado numéricamente como ``5``.

.. _class_Time_constant_WEEKDAY_SATURDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SATURDAY** = ``6``

El día sábado de la semana, representado numéricamente como ``6``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Time_method_get_date_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_system>`

Devuelve la fecha actual como un diccionario de claves: ``year``, ``month``, ``day`` y ``weekday``.

Los valores devueltos están en la hora local del sistema cuando ``utc`` es ``false``, de lo contrario, están en UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_unix_time>`

Convierte la marca de tiempo de Unix dada en un diccionario de claves: ``year``, ``month``, ``day`` y ``weekday``.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_system>`

Devuelve la fecha actual como una string de fecha ISO 8601 (AAAA-MM-DD).

Los valores devueltos están en la hora local del sistema cuando ``utc`` es ``false``, de lo contrario, están en UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_unix_time>`

Convierte la marca de tiempo de Unix dada en una string de fecha ISO 8601 (AAAA-MM-DD).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_datetime_string:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`, weekday\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_datetime_string>`

Converts the given ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS) to a dictionary of keys: ``year``, ``month``, ``day``, ``weekday``, ``hour``, ``minute``, and ``second``.

If ``weekday`` is ``false``, then the ``weekday`` entry is excluded (the calculation is relatively expensive).

\ **Note:** Any decimal fraction in the time string will be ignored silently.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_system>`

Devuelve la fecha actual como un diccionario de claves: ``year``, ``month``, ``day``, ``weekday``, ``hour``, ``minute``, ``second`` y ``dst`` (horario de verano).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_unix_time>`

Convierte la marca de tiempo de Unix dada en un diccionario de claves: ``year``, ``month``, ``day``, ``weekday``, ``hour``, ``minute`` y ``second``.

Los valores del diccionario devuelto serán los mismos que los de :ref:`get_datetime_dict_from_system()<class_Time_method_get_datetime_dict_from_system>` si la marca de tiempo de Unix es la hora actual, con la excepción del horario de verano, ya que no se puede determinar a partir de la época.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_datetime_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`, use_space\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_datetime_dict>`

Convierte el diccionario de claves dado en una string de fecha y hora ISO 8601 (AAAA-MM-DDTHH:MM:SS).

El diccionario dado se puede rellenar con las siguientes claves: ``year``, ``month``, ``day``, ``hour``, ``minute`` y ``second``. Cualquier otra entrada (incluyendo ``dst``) se ignora.

Si el diccionario está vacío, se devuelve ``0``. Si se omiten algunas claves, el valor predeterminado es el equivalente a la marca de tiempo de la época de Unix 0 (1970-01-01 a las 00:00:00).

Si ``use_space`` es ``true``, los bits de fecha y hora se separan con un carácter de espacio vacío en lugar de la letra T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_system>`

Devuelve la fecha y hora actuales como una string de fecha y hora ISO 8601 (AAAA-MM-DDTHH:MM:SS).

Los valores devueltos están en la hora local del sistema cuando ``utc`` es ``false``; de lo contrario, están en UTC.

Si ``use_space`` es ``true``, los bits de fecha y hora se separan con un carácter de espacio vacío en lugar de la letra T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_unix_time>`

Convierte la marca de tiempo de Unix dada en una string de fecha y hora ISO 8601 (AAAA-MM-DDTHH:MM:SS).

Si ``use_space`` es ``true``, los bits de fecha y hora se separan con un carácter de espacio vacío en lugar de la letra T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_offset_string_from_offset_minutes:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_offset_string_from_offset_minutes**\ (\ offset_minutes\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_offset_string_from_offset_minutes>`

Convierte el desplazamiento de la zona horaria dado en minutos en una string de desplazamiento de la zona horaria. Por ejemplo, -480 devuelve "-08:00", 345 devuelve "+05:45" y 0 devuelve "+00:00".

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_msec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_msec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_msec>`

Devuelve la cantidad de tiempo transcurrido en milisegundos desde que se inició el motor.

Siempre será positivo o 0 y utiliza un valor de 64 bits (se ajustará después de aproximadamente 500 millones de años).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_usec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_usec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_usec>`

Devuelve la cantidad de tiempo transcurrido en microsegundos desde que se inició el motor.

Siempre será positivo o 0 y utiliza un valor de 64 bits (se ajustará después de aproximadamente medio millón de años).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_system>`

Devuelve la hora actual como un diccionario de claves: ``hour``, ``minute`` y ``second``.

Los valores devueltos están en la hora local del sistema cuando ``utc`` es ``false``; de lo contrario, están en UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_unix_time>`

Convierte la hora dada en un diccionario de claves: ``hour``, ``minute`` y ``second``.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_system>`

Devuelve la hora actual como una string de hora ISO 8601 (HH:MM:SS).

Los valores devueltos están en la hora local del sistema cuando ``utc`` es ``false``; de lo contrario, están en UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_unix_time>`

Convierte la marca de tiempo de Unix dada en una string de hora ISO 8601 (HH:MM:SS).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_zone_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_zone_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_time_zone_from_system>`

Devuelve la zona horaria actual como un diccionario de claves: ``bias`` y ``name``.

- ``bias`` es la diferencia con respecto a UTC en minutos, ya que no todas las zonas horarias son múltiplos de una hora con respecto a UTC.

- ``name`` es el nombre localizado de la zona horaria, de acuerdo con la configuración regional del sistema operativo del usuario actual.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_dict:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_dict>`

Convierte un diccionario de valores de tiempo a un timestamp de Unix.

El diccionario dado puede ser rellenado con las siguientes claves: ``year``, ``month``, ``day``, ``hour``, ``minute``, y ``second``. Cualquier otra entrada (incluyendo ``dst``) se ignora.

Si el diccionario está vacío, se devuelve ``0``. Si algunas claves se omiten, se establece por defecto el valor equivalente para el timestamp de la época de Unix 0 (1970-01-01 a las 00:00:00).

Puedes pasar la salida de :ref:`get_datetime_dict_from_unix_time()<class_Time_method_get_datetime_dict_from_unix_time>` directamente a esta función y obtener lo mismo que se introdujo.

\ **Nota:** Los timestamps de Unix suelen estar en UTC. Este método no realiza ninguna conversión de zona horaria, por lo que el timestamp estará en la misma zona horaria que el diccionario de fecha y hora dado.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_string:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_string>`

Convierte la string de fecha y/u hora ISO 8601 dada a un timestamp de Unix. La string puede contener solo una fecha, solo una hora o ambas.

\ **Nota:** Los timestamps de Unix suelen estar en UTC. Este método no realiza ninguna conversión de zona horaria, por lo que el timestamp estará en la misma zona horaria que la string de fecha y hora dada.

\ **Nota:** Cualquier fracción decimal en la string de tiempo se ignorará silenciosamente.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_system:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_unix_time_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_system>`

Devuelve el timestamp de Unix actual en segundos basado en la hora del sistema en UTC. Este método es implementado por el sistema operativo y siempre devuelve la hora en UTC. El timestamp de Unix es el número de segundos transcurridos desde 1970-01-01 a las 00:00:00, la `época de Unix <https://en.wikipedia.org/wiki/Unix_time>`__.

\ **Nota:** A diferencia de otros métodos que utilizan timestamps enteros, este método devuelve el timestamp como un :ref:`float<class_float>` para una precisión de sub-segundos.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
