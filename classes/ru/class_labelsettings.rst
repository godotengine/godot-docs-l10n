:github_url: hide

.. _class_LabelSettings:

LabelSettings
=============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет общие настройки для настройки текста в :ref:`Label<class_Label>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**LabelSettings** — это ресурс, который предоставляет общие настройки для настройки текста в :ref:`Label<class_Label>`. Он будет иметь приоритет над свойствами, определенными в :ref:`Control.theme<class_Control_property_theme>`. Ресурс может быть общим для нескольких меток и изменяться на лету, поэтому это удобный и гибкий способ настройки стиля текста.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Описания свойств
--------------------------------

.. _class_LabelSettings_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_LabelSettings_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

:ref:`Font<class_Font>`, используемый для текста.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_font_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LabelSettings_property_font_color>`

.. rst-class:: classref-property-setget

- |void| **set_font_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_font_color**\ (\ )

Цвет текста.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``16`` :ref:`🔗<class_LabelSettings_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

Размер текста.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``3.0`` :ref:`🔗<class_LabelSettings_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Дополнительный вертикальный интервал между строками (в пикселях), интервал добавляется к спуску строки. Это значение может быть отрицательным.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_outline_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **outline_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LabelSettings_property_outline_color>`

.. rst-class:: classref-property-setget

- |void| **set_outline_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_outline_color**\ (\ )

Цвет контура.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_LabelSettings_property_outline_size>`

.. rst-class:: classref-property-setget

- |void| **set_outline_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_size**\ (\ )

Размер обводки текста.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_paragraph_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **paragraph_spacing** = ``0.0`` :ref:`🔗<class_LabelSettings_property_paragraph_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_paragraph_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_paragraph_spacing**\ (\ )

Вертикальный интервал между абзацами. Добавляется поверх :ref:`line_spacing<class_LabelSettings_property_line_spacing>`.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_LabelSettings_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

Цвет эффекта тени. Если альфа равен ``0``, тень не будет нарисована.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **shadow_offset** = ``Vector2(1, 1)`` :ref:`🔗<class_LabelSettings_property_shadow_offset>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_shadow_offset**\ (\ )

Смещение эффекта тени в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_size** = ``1`` :ref:`🔗<class_LabelSettings_property_shadow_size>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_size**\ (\ )

Размер эффекта тени.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_outline_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_outline_count** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_outline_count>`

.. rst-class:: classref-property-setget

- |void| **set_stacked_outline_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stacked_outline_count**\ (\ )

Количество сложенных контуров.

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

Количество наложенных друг на друга теней.

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

Описания метода
------------------------------

.. _class_LabelSettings_method_add_stacked_outline:

.. rst-class:: classref-method

|void| **add_stacked_outline**\ (\ index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_LabelSettings_method_add_stacked_outline>`

Добавляет новый сложенный контур к метке по указанному ``index``. Если ``index`` равен ``-1``, новый сложенный контур будет добавлен в конец списка.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_add_stacked_shadow:

.. rst-class:: classref-method

|void| **add_stacked_shadow**\ (\ index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_LabelSettings_method_add_stacked_shadow>`

Добавляет новую стекированную тень к метке с указанным ``index``. Если ``index`` равен ``-1``, новая стекированная тень будет добавлена в конец списка.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_outline_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_stacked_outline_color**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_outline_color>`

Возвращает цвет сложенного контура в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_outline_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stacked_outline_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_outline_size>`

Возвращает размер сложенного контура в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_stacked_shadow_color**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_color>`

Возвращает цвет стекированной тени в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_stacked_shadow_offset**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_offset>`

Возвращает смещение стекированной тени в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_outline_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stacked_shadow_outline_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_outline_size>`

Возвращает размер контура стекированной тени в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_move_stacked_outline:

.. rst-class:: classref-method

|void| **move_stacked_outline**\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_move_stacked_outline>`

Перемещает сложенный контур с индексом ``from_index`` в заданную позицию ``to_position`` в массиве.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_move_stacked_shadow:

.. rst-class:: classref-method

|void| **move_stacked_shadow**\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_move_stacked_shadow>`

Перемещает сложенную тень по индексу ``from_index`` в заданную позицию ``to_position`` в массиве.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_remove_stacked_outline:

.. rst-class:: classref-method

|void| **remove_stacked_outline**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_remove_stacked_outline>`

Удаляет сложенный контур по индексу ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_remove_stacked_shadow:

.. rst-class:: classref-method

|void| **remove_stacked_shadow**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_remove_stacked_shadow>`

Удаляет накопленную тень по индексу ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_outline_color:

.. rst-class:: classref-method

|void| **set_stacked_outline_color**\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_outline_color>`

Устанавливает цвет сложенного контура, идентифицированного заданным ``index``, на ``color``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_outline_size:

.. rst-class:: classref-method

|void| **set_stacked_outline_size**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_outline_size>`

Устанавливает размер сложенного контура, идентифицированного заданным ``index``, равным ``size``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_color:

.. rst-class:: classref-method

|void| **set_stacked_shadow_color**\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_color>`

Устанавливает цвет тени, идентифицированной указанным ``index``, на ``color``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_offset:

.. rst-class:: classref-method

|void| **set_stacked_shadow_offset**\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_offset>`

Устанавливает смещение тени, идентифицированной заданным ``index``, на ``offset``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_outline_size:

.. rst-class:: classref-method

|void| **set_stacked_shadow_outline_size**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_outline_size>`

Устанавливает размер контура тени, идентифицированной указанным ``index``, на ``size``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
