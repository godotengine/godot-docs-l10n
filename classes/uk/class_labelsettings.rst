:github_url: hide

.. _class_LabelSettings:

LabelSettings
=============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Забезпечує загальні налаштування для налаштування тексту в :ref:`Label<class_Label>`.

.. rst-class:: classref-introduction-group

Опис
--------

**LabelSettings** є ресурсом, який надає загальні налаштування для налаштування тексту в :ref:`Label<class_Label>`. Виконайте пріоритет над властивостями, визначеними в ``члені Control.theme``. Ресурс може бути розділений між декількома етикетками і змінено на літа, тому це зручний і гнучкий спосіб налаштування текстового стилю.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Font<class_Font>`       | :ref:`font<class_LabelSettings_property_font>`                                                               |                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`font_color<class_LabelSettings_property_font_color>`                                                   | ``Color(1, 1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`font_size<class_LabelSettings_property_font_size>`                                                     | ``16``                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`line_spacing<class_LabelSettings_property_line_spacing>`                                               | ``3.0``               |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`outline_color<class_LabelSettings_property_outline_color>`                                             | ``Color(1, 1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`outline_size<class_LabelSettings_property_outline_size>`                                               | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`paragraph_spacing<class_LabelSettings_property_paragraph_spacing>`                                     | ``0.0``               |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`shadow_color<class_LabelSettings_property_shadow_color>`                                               | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`shadow_offset<class_LabelSettings_property_shadow_offset>`                                             | ``Vector2(1, 1)``     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`shadow_size<class_LabelSettings_property_shadow_size>`                                                 | ``1``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_outline_count<class_LabelSettings_property_stacked_outline_count>`                             | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`stacked_outline_{index}/color<class_LabelSettings_property_stacked_outline_{index}/color>`             | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_outline_{index}/size<class_LabelSettings_property_stacked_outline_{index}/size>`               | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_shadow_count<class_LabelSettings_property_stacked_shadow_count>`                               | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`stacked_shadow_{index}/color<class_LabelSettings_property_stacked_shadow_{index}/color>`               | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`stacked_shadow_{index}/offset<class_LabelSettings_property_stacked_shadow_{index}/offset>`             | ``Vector2i(1, 1)``    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_shadow_{index}/outline_size<class_LabelSettings_property_stacked_shadow_{index}/outline_size>` | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_stacked_outline<class_LabelSettings_method_add_stacked_outline>`\ (\ index\: :ref:`int<class_int>` = -1\ )                                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_stacked_shadow<class_LabelSettings_method_add_stacked_shadow>`\ (\ index\: :ref:`int<class_int>` = -1\ )                                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`     | :ref:`get_stacked_outline_color<class_LabelSettings_method_get_stacked_outline_color>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_stacked_outline_size<class_LabelSettings_method_get_stacked_outline_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`     | :ref:`get_stacked_shadow_color<class_LabelSettings_method_get_stacked_shadow_color>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_stacked_shadow_offset<class_LabelSettings_method_get_stacked_shadow_offset>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_stacked_shadow_outline_size<class_LabelSettings_method_get_stacked_shadow_outline_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                       |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`move_stacked_outline<class_LabelSettings_method_move_stacked_outline>`\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ )           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`move_stacked_shadow<class_LabelSettings_method_move_stacked_shadow>`\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ )             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_stacked_outline<class_LabelSettings_method_remove_stacked_outline>`\ (\ index\: :ref:`int<class_int>`\ )                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_stacked_shadow<class_LabelSettings_method_remove_stacked_shadow>`\ (\ index\: :ref:`int<class_int>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_outline_color<class_LabelSettings_method_set_stacked_outline_color>`\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_outline_size<class_LabelSettings_method_set_stacked_outline_size>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ )               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_shadow_color<class_LabelSettings_method_set_stacked_shadow_color>`\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_shadow_offset<class_LabelSettings_method_set_stacked_shadow_offset>`\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`Vector2<class_Vector2>`\ )   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_shadow_outline_size<class_LabelSettings_method_set_stacked_shadow_outline_size>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_LabelSettings_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_LabelSettings_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

:ref:`Font<class_Font>` використовується для тексту.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_font_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LabelSettings_property_font_color>`

.. rst-class:: classref-property-setget

- |void| **set_font_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_font_color**\ (\ )

Колір тексту.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``16`` :ref:`🔗<class_LabelSettings_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

Розмір тексту.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``3.0`` :ref:`🔗<class_LabelSettings_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Додатковий вертикальний інтервал між рядками (у пікселях), інтервал додається до рядкового спуску. Це значення може бути негативним.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_outline_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **outline_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LabelSettings_property_outline_color>`

.. rst-class:: classref-property-setget

- |void| **set_outline_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_outline_color**\ (\ )

Колір контуру.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_LabelSettings_property_outline_size>`

.. rst-class:: classref-property-setget

- |void| **set_outline_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_size**\ (\ )

Розмір контуру тексту.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_paragraph_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **paragraph_spacing** = ``0.0`` :ref:`🔗<class_LabelSettings_property_paragraph_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_paragraph_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_paragraph_spacing**\ (\ )

Вертикальний інтервал між абзацами. Додано поверх :ref:`line_spacing<class_LabelSettings_property_line_spacing>`.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_LabelSettings_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

Колір тіньового ефекту. Якщо альфа ``0``, не буде намальовано тінь.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **shadow_offset** = ``Vector2(1, 1)`` :ref:`🔗<class_LabelSettings_property_shadow_offset>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_shadow_offset**\ (\ )

Зняття тіньового ефекту, у пікселях.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_size** = ``1`` :ref:`🔗<class_LabelSettings_property_shadow_size>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_size**\ (\ )

Розмір тіньового ефекту.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_outline_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_outline_count** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_outline_count>`

.. rst-class:: classref-property-setget

- |void| **set_stacked_outline_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stacked_outline_count**\ (\ )

Кількість об'єднаних контурів.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_outline_{index}/color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **stacked_outline_{index}/color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LabelSettings_property_stacked_outline_{index}/color>`

The color of the outline at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_outline_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_outline_{index}/size:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_outline_{index}/size** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_outline_{index}/size>`

The size of the outline at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_outline_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_shadow_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_shadow_count** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_shadow_count>`

.. rst-class:: classref-property-setget

- |void| **set_stacked_shadow_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stacked_shadow_count**\ (\ )

Кількість накладених тіней.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_shadow_{index}/color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **stacked_shadow_{index}/color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LabelSettings_property_stacked_shadow_{index}/color>`

The color of the shadow at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_shadow_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_shadow_{index}/offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **stacked_shadow_{index}/offset** = ``Vector2i(1, 1)`` :ref:`🔗<class_LabelSettings_property_stacked_shadow_{index}/offset>`

The offset of the shadow at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_shadow_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_shadow_{index}/outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_shadow_{index}/outline_size** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_shadow_{index}/outline_size>`

The size of the shadow outline at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_shadow_count - 1`` range.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_LabelSettings_method_add_stacked_outline:

.. rst-class:: classref-method

|void| **add_stacked_outline**\ (\ index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_LabelSettings_method_add_stacked_outline>`

Додає новий об'єднаний контур до мітки за вказаним ``index``. Якщо ``index`` дорівнює ``-1``, новий об'єднаний контур буде додано в кінець списку.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_add_stacked_shadow:

.. rst-class:: classref-method

|void| **add_stacked_shadow**\ (\ index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_LabelSettings_method_add_stacked_shadow>`

Додає нову насипну тінь до мітки за заданим ``index``. Якщо ``index`` дорівнює ``-1``, нова насипна тінь буде додана в кінець списку.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_outline_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_stacked_outline_color**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_outline_color>`

Повертає колір об'єднаного контуру в точці ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_outline_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stacked_outline_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_outline_size>`

Повертає розмір об'єднаного контуру в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_stacked_shadow_color**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_color>`

Повертає колір тіні, що складається з шару, у точці ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_stacked_shadow_offset**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_offset>`

Повертає зміщення об'єднаної тіні в точці ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_outline_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stacked_shadow_outline_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_outline_size>`

Повертає розмір контуру складеної тіні в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_move_stacked_outline:

.. rst-class:: classref-method

|void| **move_stacked_outline**\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_move_stacked_outline>`

Переміщує об'єднаний контур за індексом ``from_index`` у задану позицію ``to_position`` у масиві.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_move_stacked_shadow:

.. rst-class:: classref-method

|void| **move_stacked_shadow**\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_move_stacked_shadow>`

Переміщує накопичену тінь за індексом ``from_index`` у задану позицію ``to_position`` у масиві.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_remove_stacked_outline:

.. rst-class:: classref-method

|void| **remove_stacked_outline**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_remove_stacked_outline>`

Видаляє складений контур за індексом ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_remove_stacked_shadow:

.. rst-class:: classref-method

|void| **remove_stacked_shadow**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_remove_stacked_shadow>`

Видаляє насипну тінь за індексом ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_outline_color:

.. rst-class:: classref-method

|void| **set_stacked_outline_color**\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_outline_color>`

Встановлює колір об'єднаного контуру, визначеного заданим ``index``, на ``color``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_outline_size:

.. rst-class:: classref-method

|void| **set_stacked_outline_size**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_outline_size>`

Встановлює розмір об'єднаного контуру, визначеного заданим ``index``, на ``size``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_color:

.. rst-class:: classref-method

|void| **set_stacked_shadow_color**\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_color>`

Встановлює колір тіні, що утворюється на основі шару, ідентифікованої заданим ``index``, на ``color``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_offset:

.. rst-class:: classref-method

|void| **set_stacked_shadow_offset**\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_offset>`

Встановлює зміщення тіні, що об'єднується, ідентифікованої заданим ``index``, на ``offset``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_outline_size:

.. rst-class:: classref-method

|void| **set_stacked_shadow_outline_size**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_outline_size>`

Встановлює розмір контуру складеної тіні, ідентифікованої заданим ``index``, на ``size``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
