:github_url: hide

.. _class_Time:

Time
====

**继承：** :ref:`Object<class_Object>`

用于处理时间数据的单例。

.. rst-class:: classref-introduction-group

描述
----

Time 单例可以转换各种不同格式的时间，也可以从系统获取时间信息。

这个类尽可能多地符合了 ISO 8601 标准。所有日期都遵循“外推格里历”。因此 ``1582-10-15`` 的前一天是 ``1582-10-14``\ ，而不是 ``1582-10-04``\ 。公元 1 年的前一年（即公元前 1 年）是数字 ``0``\ ，再往前的一年（公元前 2 年）是 ``-1``\ ，以此类推。

转换方法假设“时区相同”，不会自动处理时区或 DST（夏令时）的转换。不会对闰秒进行处理，如果需要必须手动处理。“Z”等后缀也没有处理，你需要进行手动剥除。

从系统获取时间信息时，时间可能是本地时间或 UTC 时间，取决于 ``utc`` 参数。不过 :ref:`get_unix_time_from_system()<class_Time_method_get_unix_time_from_system>` 方法始终使用 UTC，因为返回的是从 `Unix 时间原点 <https://zh.wikipedia.org/zh-cn/UNIX%E6%97%B6%E9%97%B4>`__\ 起经过的秒数。

\ **重要：**\ ``_from_system`` 系列方法使用的是系统始终，用户可以自行设置。\ **千万不要**\ 使用该方法进行精确的时间计算，因为计算结果可能受到用户或操作系统的自动调整的影响。精确时间的计算\ **请始终使用** :ref:`get_ticks_usec()<class_Time_method_get_ticks_usec>` 或 :ref:`get_ticks_msec()<class_Time_method_get_ticks_msec>`\ ，可以保证单调性（即不会变小）。

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

枚举
----

.. _enum_Time_Month:

.. rst-class:: classref-enumeration

enum **Month**: :ref:`🔗<enum_Time_Month>`

.. _class_Time_constant_MONTH_JANUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JANUARY** = ``1``

一月份，使用数字 ``01`` 表示。

.. _class_Time_constant_MONTH_FEBRUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_FEBRUARY** = ``2``

二月份，使用数字 ``02`` 表示。

.. _class_Time_constant_MONTH_MARCH:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MARCH** = ``3``

三月份，使用数字 ``03`` 表示。

.. _class_Time_constant_MONTH_APRIL:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_APRIL** = ``4``

四月份，使用数字 ``04`` 表示。

.. _class_Time_constant_MONTH_MAY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MAY** = ``5``

五月份，使用数字 ``05`` 表示。

.. _class_Time_constant_MONTH_JUNE:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JUNE** = ``6``

六月份，使用数字 ``06`` 表示。

.. _class_Time_constant_MONTH_JULY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JULY** = ``7``

七月份，使用数字 ``07`` 表示。

.. _class_Time_constant_MONTH_AUGUST:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_AUGUST** = ``8``

八月份，使用数字 ``08`` 表示。

.. _class_Time_constant_MONTH_SEPTEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_SEPTEMBER** = ``9``

九月份，使用数字 ``09`` 表示。

.. _class_Time_constant_MONTH_OCTOBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_OCTOBER** = ``10``

十月份，使用数字 ``10`` 表示。

.. _class_Time_constant_MONTH_NOVEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_NOVEMBER** = ``11``

十一月份，使用数字 ``11`` 表示。

.. _class_Time_constant_MONTH_DECEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_DECEMBER** = ``12``

十二月份，使用数字 ``12`` 表示。

.. rst-class:: classref-item-separator

----

.. _enum_Time_Weekday:

.. rst-class:: classref-enumeration

enum **Weekday**: :ref:`🔗<enum_Time_Weekday>`

.. _class_Time_constant_WEEKDAY_SUNDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SUNDAY** = ``0``

星期日，使用数字 ``0`` 表示。

.. _class_Time_constant_WEEKDAY_MONDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_MONDAY** = ``1``

星期一，使用数字 ``1`` 表示。

.. _class_Time_constant_WEEKDAY_TUESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_TUESDAY** = ``2``

星期二，使用数字 ``2`` 表示。

.. _class_Time_constant_WEEKDAY_WEDNESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_WEDNESDAY** = ``3``

星期三，使用数字 ``3`` 表示。

.. _class_Time_constant_WEEKDAY_THURSDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_THURSDAY** = ``4``

星期四，使用数字 ``4`` 表示。

.. _class_Time_constant_WEEKDAY_FRIDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_FRIDAY** = ``5``

星期五，使用数字 ``5`` 表示。

.. _class_Time_constant_WEEKDAY_SATURDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SATURDAY** = ``6``

星期六，使用数字 ``6`` 表示。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Time_method_get_date_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_system>`

以字典的形式返回当前时间，包含的键为：\ ``year``\ 、\ ``month``\ 、\ ``day`` 和 ``weekday``\ 。

当 ``utc`` 为 ``false`` 时，返回的是系统的本地时间，否则为 UTC 时间。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_unix_time>`

将给定的 Unix 时间戳转换为字典，包含的键为：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``weekday``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_system>`

以 ISO 8601 日期字符串的形式返回当前日期（YYYY-MM-DD）。

当 ``utc`` 为 ``false`` 时，返回的是系统的本地时间，否则为 UTC 时间。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_unix_time>`

将给定的 Unix 时间戳转换为 ISO 8601 日期字符串（YYYY-MM-DD）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_datetime_string:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`, weekday\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_datetime_string>`

将给定的 ISO 8601 日期和时间字符串（YYYY-MM-DDTHH:MM:SS）转换为字典，包含的键为：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``weekday``\ 、\ ``hour``\ 、\ ``minute``\ 、\ ``second``\ 。

当 ``weekday`` 为 ``false`` 时，不包含 ``weekday`` 记录（计算花费相对较大）。

\ **注意：**\ 时间字符串中的小数会被静默忽略。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_system>`

以字典形式返回当前日期，包含的键为：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``weekday``\ 、\ ``hour``\ 、\ ``minute``\ 、\ ``second`` 以及 ``dst``\ （夏令时，Daylight Savings Time）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_unix_time>`

将给定的 Unix 时间戳转换为字典，包含的键为：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``weekday``\ 、\ ``hour``\ 、\ ``minute`` 和 ``second``\ 。

如果 Unix 时间戳是当前时间，则返回的字典值将与 :ref:`get_datetime_dict_from_system()<class_Time_method_get_datetime_dict_from_system>` 相同，夏令时除外，因为它无法根据纪元确定。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_datetime_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`, use_space\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_datetime_dict>`

将给定的时间值字典转换为 ISO 8601 日期和时间字符串（YYYY-MM-DDTHH:MM:SS）。

给定的字典可以包含以下键：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``hour``\ 、\ ``minute``\ 、\ ``second``\ 。其他的记录（包括 ``dst``\ ）都会被忽略。

字典为空时将返回 ``0``\ 。如果省略了部分键，默认使用 Unix 纪元时间戳 0（1970-01-01 的 00:00:00）的对应部分。

当 ``use_space`` 为 ``true`` 时，将使用空格代替中间的字母 T。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_system>`

以 ISO 8601 日期和时间字符串的形式返回当前日期和时间（YYYY-MM-DDTHH:MM:SS）。

当 ``utc`` 为 ``false`` 时，返回的是系统的本地时间，否则为 UTC 时间。

当 ``use_space`` 为 ``true`` 时，将使用空格代替中间的字母 T。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_unix_time>`

将给定的 Unix 时间戳转换为 ISO 8601 日期和时间字符串（YYYY-MM-DDTHH:MM:SS）。

当 ``use_space`` 为 ``true`` 时，将使用空格代替中间的字母 T。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_offset_string_from_offset_minutes:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_offset_string_from_offset_minutes**\ (\ offset_minutes\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_offset_string_from_offset_minutes>`

将给定的时区偏移分钟数转换为时区偏移字符串。例如，-480 返回 "-08:00"、345 返回 "+05:45"、0 返回 "+00:00"。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_msec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_msec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_msec>`

返回从引擎启动开始所经过的时间，单位为毫秒。

始终为正数或 0，使用 64 位值（会在约 5 亿年后绕回）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_usec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_usec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_usec>`

返回从引擎启动开始所经过的时间，单位为微秒。

始终为正数或 0，使用 64 位值（会在约 50 万年后绕回）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_system>`

以字典的形式返回当前时间，包含的键为：\ ``hour``\ 、\ ``minute``\ 、\ ``second``\ 。

当 ``utc`` 为 ``false`` 时，返回的是系统的本地时间，否则为 UTC 时间。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_unix_time>`

将给定的时间转换为字典，包含的键为：时 ``hour``\ 、分 ``minute``\ 、秒 ``second``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_system>`

以 ISO 8601 时间字符串的形式返回当前时间（HH:MM:SS）。

当 ``utc`` 为 ``false`` 时，返回的是系统的本地时间，否则为 UTC 时间。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_unix_time>`

将给定的 Unix 时间戳转换为 ISO 8601 时间字符串（HH:MM:SS）。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_zone_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_zone_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_time_zone_from_system>`

以字典的形式返回当前时区，包含的键为：\ ``bias`` 和 ``name``\ 。

- ``bias`` 是相对于 UTC 的偏移量，单位为分钟，因为并不是所有时区与 UTC 的时间差都是整数倍小时。

- ``name`` 是时区的本地化名称，取决于当前用户的操作系统区域设置。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_dict:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_dict>`

将时间值字典转换为 Unix 时间戳。

给定的字典可以包含以下键：\ ``year``\ 、\ ``month``\ 、\ ``day``\ 、\ ``hour``\ 、\ ``minute``\ 、\ ``second``\ 。其他的记录（包括 ``dst``\ ）都会被忽略。

字典为空时将返回 ``0``\ 。如果省略了部分键，默认使用 Unix 纪元时间戳 0（1970-01-01 的 00:00:00）的对应部分。

你可以将 :ref:`get_datetime_dict_from_unix_time()<class_Time_method_get_datetime_dict_from_unix_time>` 的输出直接传给本函数，得到的就是最初的输入。

\ **注意：**\ Unix 时间戳通常是 UTC 的。本方法不会做任何时区转换，所以时间戳的时区与给定的日期时间字典相同。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_string:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_string>`

将给定的 ISO 8601 日期和/或时间字符串转换为 Unix 时间戳。字符串中可以只包含日期、只包含时间，也可以两者都包含。

\ **注意：**\ Unix 时间戳通常是 UTC 的。本方法不会做任何时区转换，所以时间戳的时区与给定的日期时间字符串相同。

\ **注意：**\ 时间字符串中的小数会被静默忽略。

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_system:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_unix_time_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_system>`

返回当前的 Unix 时间戳，以秒为单位，基于 UTC 系统时间。本方法由操作系统实现，返回的时间总是 UTC 的。Unix 时间戳是从 `Unix 时间原点 <https://zh.wikipedia.org/zh-cn/UNIX%E6%97%B6%E9%97%B4>`__ 1970-01-01 的 00:00:00 起经过的秒数。

\ **注意：**\ 与其他使用整数时间戳的方法不同，这个方法返回的是 :ref:`float<class_float>` 类型的时间戳，可以表示比秒更高的精度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
