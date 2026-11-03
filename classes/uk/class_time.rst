:github_url: hide

.. _class_Time:

Time
====

**Успадковує:** :ref:`Object<class_Object>`

Однотон для роботи з даними часу.

.. rst-class:: classref-introduction-group

Опис
--------

Однотон Time дозволяє перетворювати час між різними форматами, а також отримувати інформацію про час від системи.

Даний клас відповідає якнайбільше стандартів ISO 8601. Всі дати слідувати за Пролептичним Григорієм. Так, день до ``1582-10-15``.\ ``1582-10-14``, не ``1582-10-04``. Рік до 1 AD (aka 1 BC) є число ``0``, з роком до того, що (2 BC) будучи ``-1`` і т.д.

Перетворення методів передбачається "то ж часовий пояс", і не обробляти часові перетворення або DST автоматично. Пропустити секунди також не обробляється, вони повинні бути зроблені вручну при бажанні. Суфікси, такі як "Z" не обробляються, потрібно роздягати їх вручну.

Коли отримувати інформацію про час від системи, час може бути в локальному часовому поясі або UTC залежно від параметра ``utc``. Тим не менш, метод :ref:`get_unix_time_from_system()<class_Time_method_get_unix_time_from_system>` завжди використовує UTC, оскільки він повертає секунди, передані з `Unix epoch <https://en.wikipedia.org/wiki/Unix_time>`__.

\ **Important:** ``_from_system`` методи використання системного годинника, який користувач може вручну встановити. **Never use** Цей метод для точного розрахунку часу, оскільки його результати підлягають автоматичним регулюванням користувача або операційної системи. **Always use** :ref:`get_ticks_usec()<class_Time_method_get_ticks_usec>` або :ref:`get_ticks_msec()<class_Time_method_get_ticks_msec>` для точного розрахунку часу замість того, як вони гарантовані бути монотонними (тобто ніколи не зменшуються).

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

.. _enum_Time_Month:

.. rst-class:: classref-enumeration

enum **Month**: :ref:`🔗<enum_Time_Month>`

.. _class_Time_constant_MONTH_JANUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JANUARY** = ``1``

Місяць січня, представлений чисельно, як ``01``.

.. _class_Time_constant_MONTH_FEBRUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_FEBRUARY** = ``2``

Місяць лютого, представлений чисельно як ``02``.

.. _class_Time_constant_MONTH_MARCH:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MARCH** = ``3``

Місяць березня, представлений чисельно як ``03``.

.. _class_Time_constant_MONTH_APRIL:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_APRIL** = ``4``

Місяць квітня, представлений чисельно як ``04``.

.. _class_Time_constant_MONTH_MAY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MAY** = ``5``

Місяць травня, представлений чисельно як ``05``.

.. _class_Time_constant_MONTH_JUNE:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JUNE** = ``6``

Місяць червня, представлений чисельно як ``06``.

.. _class_Time_constant_MONTH_JULY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JULY** = ``7``

На місяць липня представлено чисельно як ``07``.

.. _class_Time_constant_MONTH_AUGUST:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_AUGUST** = ``8``

Рік серпня, представлений чисельно як ``08``.

.. _class_Time_constant_MONTH_SEPTEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_SEPTEMBER** = ``9``

Місяць вересня, представлений чисельно як ``09``.

.. _class_Time_constant_MONTH_OCTOBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_OCTOBER** = ``10``

Місяць жовтня, представлений чисельно як ``10``.

.. _class_Time_constant_MONTH_NOVEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_NOVEMBER** = ``11``

Місяць листопада, представлений чисельно як ``11``.

.. _class_Time_constant_MONTH_DECEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_DECEMBER** = ``12``

Місяць грудня, представлений чисельно, як ``12``.

.. rst-class:: classref-item-separator

----

.. _enum_Time_Weekday:

.. rst-class:: classref-enumeration

enum **Weekday**: :ref:`🔗<enum_Time_Weekday>`

.. _class_Time_constant_WEEKDAY_SUNDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SUNDAY** = ``0``

У день неділі тижня, представлений числом, як ``0``.

.. _class_Time_constant_WEEKDAY_MONDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_MONDAY** = ``1``

День тижня Понеділок, представлена чисельно як ``1``.

.. _class_Time_constant_WEEKDAY_TUESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_TUESDAY** = ``2``

Днів тижня Вівторок, представлена чисельно як ``2``.

.. _class_Time_constant_WEEKDAY_WEDNESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_WEDNESDAY** = ``3``

У день тижня середа, представлена чисельно як ``3``.

.. _class_Time_constant_WEEKDAY_THURSDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_THURSDAY** = ``4``

День тижня Четвер, представлений числом, як ``4``.

.. _class_Time_constant_WEEKDAY_FRIDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_FRIDAY** = ``5``

День тижня П'ятниця, представлена чисельно як ``5``.

.. _class_Time_constant_WEEKDAY_SATURDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SATURDAY** = ``6``

У день тижня субота, представлена чисельно як ``6``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Time_method_get_date_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_system>`

Повертає поточну дату як словник ключів: ``year``, ``month``, ``day``, і ``weekday``.

Повернуті значення в локальний час системи, коли ``utc`` ``false``, інакше вони знаходяться в UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_unix_time>`

Перетворює заданий Unix timestamp у словник ключів: ``year``, ``month``, ``day``, і ``weekday``.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_system>`

Повертає поточну дату ISO 8601 дата рядка (YYYY-MM-DDDD).

Повернуті значення в локальний час системи, коли ``utc`` ``false``, інакше вони знаходяться в UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_unix_time>`

Конвертує заданий Unix timestamp до ISO 8601 дата рядка (YYYY-MM-DDDD).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_datetime_string:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`, weekday\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_datetime_string>`

Перетворює заданий рядок дати та часу у форматі ISO 8601 (YYYY-MM-DDTHH:MM:SS) у словник ключів: ``рік``, ``місяць``, ``день``, ``день тижня``, ``година``, ``хвилина`` та ``секунда``.

Якщо ``weekday`` має значення ``false``, то запис ``день тижня`` виключається (обчислення є відносно ресурсоємним).

\ **Примітка:** Будь-яка десяткова частка у рядку часу буде проігнорована без попередження.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_system>`

Повертає поточну дату як словник ключів: ``year``, ``month``, ``day``, ``weekday``, ``час``, `` хвилини``, ``сек``, і ``dst`` (Daylight Savings Time).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_unix_time>`

Перетворює заданий Unix timestamp до словника ключів: ``year``, ``month``, ``day``, ``weekday``, ``год``, ``хвили``, і ``секунд``.

Повернуті значення словника будуть такими самими, як :ref:`get_datetime_dict_from_system()<class_Time_method_get_datetime_dict_from_system>`, якщо унікс частамп є поточний час, за винятком Daylight Savings Time, оскільки він не може бути визначений з епоху.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_datetime_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`, use_space\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_datetime_dict>`

Перетворює даний словник ключів до ISO 8601 дата і часовий рядок (YYYY-MM-DDDTHH:MM:SS).

Заданий словник може бути ізольований з наступними ключами: ``year``, `` місяць``, ``day``, ``год``, ``хвили``, і ``сек``. Будь-які інші записи (включаючи ``dst``) ігноруються.

Якщо словник порожній, ``0`` повертається. Якщо деякі ключі випускаються, вони за замовчуванням до еквівалентних значень для Unix epoch timestamp 0 (1970-01-01 о 00:00:00).

Якщо ``use_space`` є ``true``, дата і час біти відокремлені порожньою символом простору замість літери T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_system>`

Повертає поточну дату та час як ISO 8601 дата та часовий рядок (YYYY-MM-DDDTHH:MM:SS).

Повернуті значення в локальний час системи, коли ``utc`` ``false``, інакше вони знаходяться в UTC.

Якщо ``use_space`` є ``true``, дата і час біти відокремлені порожньою символом простору замість літери T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_unix_time>`

Конвертує заданий Unix timestamp до ISO 8601 дата та часовий рядок (YYYY-MM-DDDTHH:MM:SS).

Якщо ``use_space`` є ``true``, дата і часові біти відокремлені порожньою символом простору замість літери T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_offset_string_from_offset_minutes:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_offset_string_from_offset_minutes**\ (\ offset_minutes\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_offset_string_from_offset_minutes>`

Перетворює заданий часзоновий зсув протягом декількох хвилин на рядок зсуву часу. Наприклад, -480 повертає "-08:00", 345 повертає "+05:45", а 0 повертає "+00:00".

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_msec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_msec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_msec>`

Повертає кількість часу, що пропущена в мілісекундах з моменту запуску двигуна.

Ми завжди повинні бути позитивними або 0 і використовує 64-бітне значення (він буде обгорнути після приблизно 500 мільйонів років).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_usec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_usec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_usec>`

Повертає кількість часу, що пропущена в мікросекундах, починаючи з початку двигуна.

Чи завжди буде позитивним або 0 і використовує 64-розрядне значення (навіть після грубої половини мільйонів років).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_system>`

Повертає поточний час як словник ключів: ``год`` i `` хвилини,`` i ``секунд``.

Повернуті значення в локальний час системи, коли ``utc`` ``false``, інакше вони знаходяться в UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_unix_time>`

Перетворює вказаний час у словник ключів: ``година``, ``хвилина`` та ``секунда``.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_system>`

Повертає поточний час як ISO 8601 рядок часу (HH:MM:SS).

Повернуті значення в локальний час системи, коли ``utc`` ``false``, інакше вони знаходяться в UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_unix_time>`

Конвертує заданий Unix timestamp до ISO 8601 рядок часу (HH:MM:SS).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_zone_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_zone_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_time_zone_from_system>`

Повертає поточний часовий пояс як словник ключів: ``bias`` і ``name``.

- ``bias`` є офсетом з UTC за хвилину, так як не всі часові зони є безліччю години з UTC.

- ``name`` є локалізованою назвою часової зони, відповідно до параметрів локалізації ОС поточного користувача.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_dict:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_dict>`

Конвертує словник значень часу в Unix.

Заданий словник може бути заповнений наступними ключами: ``year``, `` місяць``, ``day``, ``год``, ``хвилин``, і ``сек``. Будь-які інші записи (включаючи ``dst``) ігноруються.

Якщо словник порожній, ``0`` повертається. Якщо деякі ключі випускаються, вони за замовчуванням до еквівалентних значень для Unix epoch timestamp 0 (1970-01-01 о 00:00:00).

Ви можете пройти вихід з :ref:`get_datetime_dict_unix_time_time()<class_Time_method_get_datetime_dict_unix_time_time>` безпосередньо в цю функцію і отримати те саме, що було зроблено.

\ **Примітка:** Unix частампи часто зустрічаються в UTC. Цей метод не робить ніяких перетворень часового поясу, тому часовий апарат буде в той же час, як даний словник часу.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_string:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_string>`

Перетворення заданої ISO 8601 дата та / або часової рядки до Unix timestamp. Рядок може містити дату тільки, час тільки, або обидва.

\ **Note:** Unix частампи часто зустрічаються в UTC. Цей метод не робить ніяких перетворень часового поясу, тому часовий апарат буде в той же час, як заданий рядок часу.

\ **Примітка:** Будь-яка десяткова дроба в рядку часу буде ігноруватися мовно.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_system:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_unix_time_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_system>`

Повернення поточної одноразової за секундами на основі системного часу в UTC. Цей метод реалізується операційною системою і завжди повертає час в UTC. Унікс частамп є числом секунд, що пройшли з 1970-01-01 в 00:00:00, `Unix epoch <https://en.wikipedia.org/wiki/Unix_time>`__.

\ **Примітка:** На відміну від інших методів, які використовують цілі мітки часу, цей метод повертає мітку часу, як :ref:`float<class_float>` для субсекундної точності.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
