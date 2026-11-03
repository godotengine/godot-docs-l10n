:github_url: hide

.. _class_Time:

Time
====

**繼承：** :ref:`Object<class_Object>`

用於處理時間資料的單例。

.. rst-class:: classref-introduction-group

說明
----

Time 單例可以轉換各種不同格式的時間，也可以從系統取得時間資訊。

這個類盡可能多地符合了 ISO 8601 標準。所有日期都遵循“外推格里歷”。因此 ``1582-10-15`` 的前一天是 ``1582-10-14``\ ，而不是 ``1582-10-04``\ 。公元 1 年的前一年（即公元前 1 年）是數字 ``0``\ ，再往前的一年（公元前 2 年）是 ``-1``\ ，以此類推。

轉換方法假設“時區相同”，不會自動處理時區或 DST（夏令時）的轉換。不會對閏秒進行處理，如果需要必須手動處理。“Z”等後綴也沒有處理，你需要進行手動剝除。

從系統取得時間資訊時，時間可能是本機時間或 UTC 時間，取決於 ``utc`` 參數。不過 :ref:`get_unix_time_from_system()<class_Time_method_get_unix_time_from_system>` 方法始終使用 UTC，因為回傳的是從 `Unix 時間原點 <https://zh.wikipedia.org/zh-cn/UNIX%E6%97%B6%E9%97%B4>`__\ 起經過的秒數。

\ **重要：**\ ``_from_system`` 系列方法使用的是系統始終，使用者可以自行設定。\ **千萬不要**\ 使用該方法進行精確的時間計算，因為計算結果可能受到使用者或作業系統的自動調整的影響。精確時間的計算\ **請始終使用** :ref:`get_ticks_usec()<class_Time_method_get_ticks_usec>` 或 :ref:`get_ticks_msec()<class_Time_method_get_ticks_msec>`\ ，可以保證單調性（即不會變小）。

.. rst-class:: classref-reftable-group

方法
----

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

列舉
----

.. _enum_Time_Month:

.. rst-class:: classref-enumeration

enum **Month**: :ref:`🔗<enum_Time_Month>`

.. _class_Time_constant_MONTH_JANUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JANUARY** = ``1``

一月份，使用數字 ``01`` 表示。

.. _class_Time_constant_MONTH_FEBRUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_FEBRUARY** = ``2``

二月份，使用數字 ``02`` 表示。

.. _class_Time_constant_MONTH_MARCH:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MARCH** = ``3``

三月份，使用數字 ``03`` 表示。

.. _class_Time_constant_MONTH_APRIL:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_APRIL** = ``4``

四月份，使用數字 ``04`` 表示。

.. _class_Time_constant_MONTH_MAY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MAY** = ``5``

五月份，使用數字 ``05`` 表示。

.. _class_Time_constant_MONTH_JUNE:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JUNE** = ``6``

六月份，使用數字 ``06`` 表示。

.. _class_Time_constant_MONTH_JULY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JULY** = ``7``

七月份，使用數字 ``07`` 表示。

.. _class_Time_constant_MONTH_AUGUST:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_AUGUST** = ``8``

八月份，使用數字 ``08`` 表示。

.. _class_Time_constant_MONTH_SEPTEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_SEPTEMBER** = ``9``

九月份，使用數字 ``09`` 表示。

.. _class_Time_constant_MONTH_OCTOBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_OCTOBER** = ``10``

十月份，使用數字 ``10`` 表示。

.. _class_Time_constant_MONTH_NOVEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_NOVEMBER** = ``11``

十一月份，使用數字 ``11`` 表示。

.. _class_Time_constant_MONTH_DECEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_DECEMBER** = ``12``

十二月份，使用數字 ``12`` 表示。

.. rst-class:: classref-item-separator

----

.. _enum_Time_Weekday:

.. rst-class:: classref-enumeration

enum **Weekday**: :ref:`🔗<enum_Time_Weekday>`

.. _class_Time_constant_WEEKDAY_SUNDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SUNDAY** = ``0``

星期日，使用數字 ``0`` 表示。

.. _class_Time_constant_WEEKDAY_MONDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_MONDAY** = ``1``

星期一，使用數字 ``1`` 表示。

.. _class_Time_constant_WEEKDAY_TUESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_TUESDAY** = ``2``

星期二，使用數字 ``2`` 表示。

.. _class_Time_constant_WEEKDAY_WEDNESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_WEDNESDAY** = ``3``

星期三，使用數字 ``3`` 表示。

.. _class_Time_constant_WEEKDAY_THURSDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_THURSDAY** = ``4``

星期四，使用數字 ``4`` 表示。

.. _class_Time_constant_WEEKDAY_FRIDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_FRIDAY** = ``5``

星期五，使用數字 ``5`` 表示。

.. _class_Time_constant_WEEKDAY_SATURDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SATURDAY** = ``6``

星期六，使用數字 ``6`` 表示。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Time_method_get_date_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_system>`

以字典的形式返回目前時間，包含的鍵為：\ ``year``\ 、\ ``month``\ 、\ ``day`` 和 ``weekday``\ 。

當 ``utc`` 為 ``false`` 時，返回的是系統的本地時間，否則為 UTC 時間。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_unix_time>`

將給定的 Unix 時間戳記轉換為字典，包含的鍵為：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``weekday``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_system>`

以 ISO 8601 日期字串的形式返回目前日期（YYYY-MM-DD）。

當 ``utc`` 為 ``false`` 時，返回的是系統的本地時間，否則為 UTC 時間。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_unix_time>`

將給定的 Unix 時間戳記轉換為 ISO 8601 日期字串（YYYY-MM-DD）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_datetime_string:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`, weekday\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_datetime_string>`

將給定的 ISO 8601 日期和時間字串（YYYY-MM-DDTHH:MM:SS）轉換為字典，包含的鍵為：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``weekday``\ 、\ ``hour``\ 、\ ``minute``\ 、\ ``second``\ 。

當 ``weekday`` 為 ``false`` 時，不包含 ``weekday`` 記錄（計算花費相對較大）。

\ **注意：**\ 時間字串中的小數會被靜默忽略。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_system>`

以字典形式返回目前日期，包含的鍵為：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``weekday``\ 、\ ``hour``\ 、\ ``minute``\ 、\ ``second`` 以及 ``dst``\ （夏令時，Daylight Savings Time）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_unix_time>`

將給定的 Unix 時間戳記轉換為字典，包含的鍵為：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``weekday``\ 、\ ``hour``\ 、\ ``minute``\ 、和 ``second``\ 。

如果 Unix 時間戳記是目前時間，則返回的字典值將與 :ref:`get_datetime_dict_from_system()<class_Time_method_get_datetime_dict_from_system>` 相同，夏令時除外，因為它無法根據紀元確定。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_datetime_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`, use_space\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_datetime_dict>`

將給定的時間值字典轉換為 ISO 8601 日期和時間字串（YYYY-MM-DDTHH:MM:SS）。

給定的字典可以包含以下鍵：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``hour``\ 、\ ``minute``\ 、\ ``second``\ 。其他的記錄（包括 ``dst``\ ）都會被忽略。

字典為空時將返回 ``0``\ 。如果省略了部分鍵，預設使用 Unix 紀元時間戳記 0（1970-01-01 的 00:00:00）的對應部分。

當 ``use_space`` 為 ``true`` 時，將使用空格代替中間的字母 T。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_system>`

以 ISO 8601 日期和時間字串的形式返回目前日期和時間（YYYY-MM-DDTHH:MM:SS）。

當 ``utc`` 為 ``false`` 時，返回的是系統的本地時間，否則為 UTC 時間。

當 ``use_space`` 為 ``true`` 時，將使用空格代替中間的字母 T。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_unix_time>`

將給定的 Unix 時間戳記轉換為 ISO 8601 日期和時間字串（YYYY-MM-DDTHH:MM:SS）。

當 ``use_space`` 為 ``true`` 時，將使用空格代替中間的字母 T。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_offset_string_from_offset_minutes:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_offset_string_from_offset_minutes**\ (\ offset_minutes\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_offset_string_from_offset_minutes>`

將給定的時區偏移分鐘數轉換為時區偏移字串。例如，-480 返回 "-08:00"、345 返回 "+05:45"、0 返回 "+00:00"。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_msec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_msec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_msec>`

返回從引擎啟動開始所經過的時間，單位為毫秒。

始終為正數或 0，使用 64 位值（會在約 5 億年後繞回）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_usec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_usec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_usec>`

返回從引擎啟動開始所經過的時間，單位為微秒。

始終為正數或 0，使用 64 位值（會在約 50 萬年後繞回）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_system>`

以字典的形式返回目前時間，包含的鍵為：\ ``hour``\ 、\ ``minute``\ 、\ ``second``\ 。

當 ``utc`` 為 ``false`` 時，返回的是系統的本地時間，否則為 UTC 時間。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_unix_time>`

將給定的時間轉換為字典，包含的鍵為：時 ``hour``\ 、分 ``minute``\ 、秒 ``second``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_system>`

以 ISO 8601 時間字串的形式返回目前時間（HH:MM:SS）。

當 ``utc`` 為 ``false`` 時，返回的是系統的本地時間，否則為 UTC 時間。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_unix_time>`

將給定的 Unix 時間戳記轉換為 ISO 8601 時間字串（HH:MM:SS）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_zone_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_zone_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_time_zone_from_system>`

以字典的形式回傳目前時區，包含的鍵為：\ ``bias`` 和 ``name``\ 。

- ``bias`` 是相對於 UTC 的偏移量，單位為分鐘，因為並不是所有時區與 UTC 的時間差都是整數倍小時。

- ``name`` 是時區的在地化名稱，取決於目前使用者的作業系統區域設定。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_dict:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_dict>`

將時間值字典轉換為 Unix 時間戳記。

給定的字典可以包含以下鍵：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``hour``\ 、\ ``minute``\ 、\ ``second``\ 。其他的記錄（包括 ``dst``\ ）都會被忽略。

字典為空時將返回 ``0``\ 。如果省略了部分鍵，預設使用 Unix 紀元時間戳記 0（1970-01-01 的 00:00:00）的對應部分。

你可以將 :ref:`get_datetime_dict_from_unix_time()<class_Time_method_get_datetime_dict_from_unix_time>` 的輸出直接傳給本函式，得到的就是最初的輸入。

\ **注意：**\ Unix 時間戳記通常是 UTC 的。本方法不會做任何時區轉換，所以時間戳記的時區與給定的日期時間字典相同。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_string:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_string>`

將給定的 ISO 8601 日期和/或時間字串轉換為 Unix 時間戳記。字串中可以只包含日期、只包含時間，也可以兩者都包含。

\ **注意：**\ Unix 時間戳記通常是 UTC 的。本方法不會做任何時區轉換，所以時間戳記的時區與給定的日期時間字串相同。

\ **注意：**\ 時間字串中的小數會被靜默忽略。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_system:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_unix_time_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_system>`

回傳目前的 Unix 時間戳記，以秒為單位，基於 UTC 系統時間。本方法由作業系統實作，回傳的時間總是 UTC 的。Unix 時間戳記是從 `Unix 時間原點 <https://zh.wikipedia.org/zh-cn/UNIX%E6%97%B6%E9%97%B4>`__ 1970-01-01 的 00:00:00 起經過的秒數。

\ **注意：**\ 與其他使用整數時間戳記的方法不同，這個方法回傳的是 :ref:`float<class_float>` 型別的時間戳記，可以表示比秒更高的精度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
