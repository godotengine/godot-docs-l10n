:github_url: hide

.. _class_StyleBoxTexture:

StyleBoxTexture
===============

**Успадковує:** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Фактура на основі дев'яти форм :ref:`StyleBox<class_StyleBox>`.

.. rst-class:: classref-introduction-group

Опис
--------

Фактура на основі дев'яти патчів :ref:`StyleBox<class_StyleBox>`, таким чином, як :ref:`NinePatchRect<class_NinePatchRect>`. Ця скринька стилів виконує 3 × 3 масштабування текстури, де повністю простягається тільки клітина центру. Це дає можливість дизайну інтер'єрних стилів незалежно від розміру стилюбокса.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` | :ref:`axis_stretch_horizontal<class_StyleBoxTexture_property_axis_stretch_horizontal>` | ``0``                 |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` | :ref:`axis_stretch_vertical<class_StyleBoxTexture_property_axis_stretch_vertical>`     | ``0``                 |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`draw_center<class_StyleBoxTexture_property_draw_center>`                         | ``true``              |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_bottom<class_StyleBoxTexture_property_expand_margin_bottom>`       | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_left<class_StyleBoxTexture_property_expand_margin_left>`           | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_right<class_StyleBoxTexture_property_expand_margin_right>`         | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_top<class_StyleBoxTexture_property_expand_margin_top>`             | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                    | :ref:`modulate_color<class_StyleBoxTexture_property_modulate_color>`                   | ``Color(1, 1, 1, 1)`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`                                    | :ref:`region_rect<class_StyleBoxTexture_property_region_rect>`                         | ``Rect2(0, 0, 0, 0)`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture<class_StyleBoxTexture_property_texture>`                                 |                       |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_bottom<class_StyleBoxTexture_property_texture_margin_bottom>`     | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_left<class_StyleBoxTexture_property_texture_margin_left>`         | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_right<class_StyleBoxTexture_property_texture_margin_right>`       | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_top<class_StyleBoxTexture_property_texture_margin_top>`           | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_expand_margin<class_StyleBoxTexture_method_get_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                             |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_texture_margin<class_StyleBoxTexture_method_get_texture_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                           |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin<class_StyleBoxTexture_method_set_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )   |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin_all<class_StyleBoxTexture_method_set_expand_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                         |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_texture_margin<class_StyleBoxTexture_method_set_texture_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_texture_margin_all<class_StyleBoxTexture_method_set_texture_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                       |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_StyleBoxTexture_AxisStretchMode:

.. rst-class:: classref-enumeration

enum **AxisStretchMode**: :ref:`🔗<enum_StyleBoxTexture_AxisStretchMode>`

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_STRETCH** = ``0``

Розтягуйте текстуру стильної коробки. Це призводить до видимого спотворення, якщо розмір текстури відповідає розмірам стильної коробки.

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE** = ``1``

Повторює фактуру стилівки, щоб відповідати розмірам стильної коробки за дев'ятикутною системою.

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE_FIT** = ``2``

Повторює фактуру стилівки, щоб відповідати розмірам стильної коробки за дев'ятикутною системою. На відміну від :ref:`AXIS_STRETCH_MODE_TILE<class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE>`, текстура може бути трохи розтягнута, щоб зробити дев'ятикутну текстуру плитки безшовно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_StyleBoxTexture_property_axis_stretch_horizontal:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **axis_stretch_horizontal** = ``0`` :ref:`🔗<class_StyleBoxTexture_property_axis_stretch_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **get_h_axis_stretch_mode**\ (\ )

Керує тим, як текстура stylebox буде розтягуватися або розташовуватися плиткою по горизонталі.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_axis_stretch_vertical:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **axis_stretch_vertical** = ``0`` :ref:`🔗<class_StyleBoxTexture_property_axis_stretch_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **get_v_axis_stretch_mode**\ (\ )

Керує тим, як текстура stylebox буде розтягуватися або розташовуватися вертикально.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_StyleBoxTexture_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

Якщо ``true``, то буде намальована дев'ятикутна текстура.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Розширює нижній край цієї стильної коробки при малюнку, викликаючи його намальовувати більше, ніж запитаний.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Розширює лівий запас цього стилю коробку при малюнку, викликаючи його, щоб зробити більше, ніж запитаний.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Розширює правий запас цієї стильної коробки при малюнку, викликаючи його, щоб бути намальовані більше, ніж запитані.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Розширює верхній запас цієї стильної коробки при малюнку, викликаючи його, щоб тягнути більше, ніж запитаний.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_modulate_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_StyleBoxTexture_property_modulate_color>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Модулює колір текстури при намальовці цього стилю.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_StyleBoxTexture_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

Регіон, який потрібно використовувати з :ref:`texture<class_StyleBoxTexture_property_texture>`.

Це еквівалентно попередньому обгортанню :ref:`texture<class_StyleBoxTexture_property_texture>` в :ref:`AtlasTexture<class_AtlasTexture>` з тим самим регіоном.

Якщо порожнє (``Rect2(0, 0, 0, 0)``), використовується вся :ref:`texture<class_StyleBoxTexture_property_texture>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_StyleBoxTexture_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Текстура для використання при оформленні цього стилю коробка.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Збільшує нижню межу рамки текстури 3×3.

Вище значення означає, що більша частина вихідної текстури вважається частиною нижньої межі рамки 3×3.

Це також значення використовується як резервне для :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>`, якщо воно від'ємне.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Збільшує ліве поле текстурного блоку 3×3.

Вище значення означає, що більша частина вихідної текстури вважається частиною лівого краю блоку 3×3.

Це також значення використовується як резервне для :ref:`StyleBox.content_margin_left<class_StyleBox_property_content_margin_left>`, якщо воно від'ємне.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Збільшує праве поле текстурного блоку 3×3.

Вище значення означає, що більша частина вихідної текстури вважається частиною правого краю блоку 3×3.

Це також значення використовується як резервне для :ref:`StyleBox.content_margin_right<class_StyleBox_property_content_margin_right>`, якщо воно від'ємне.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Збільшує верхню межу рамки текстури 3×3.

Вище значення означає, що більша частина вихідної текстури вважається частиною верхньої межі рамки 3×3.

Це також значення використовується як резервне для :ref:`StyleBox.content_margin_top<class_StyleBox_property_content_margin_top>`, якщо воно від'ємне.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StyleBoxTexture_method_get_expand_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxTexture_method_get_expand_margin>`

Повернення розширювального розміру вказаного :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_get_texture_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxTexture_method_get_texture_margin>`

Повертає розмір поля заданого :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_expand_margin:

.. rst-class:: classref-method

|void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_expand_margin>`

Налаштовує розширювальний запас до ``size`` пікселів для вказаного :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_expand_margin_all:

.. rst-class:: classref-method

|void| **set_expand_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_expand_margin_all>`

Встановлює поле розгортання на ``size`` пікселів для всіх сторін.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_texture_margin:

.. rst-class:: classref-method

|void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_texture_margin>`

Встановлює відступ на ``size`` пікселів для вказаного :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_texture_margin_all:

.. rst-class:: classref-method

|void| **set_texture_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_texture_margin_all>`

Встановлює розрив до ``size`` пікселів для всіх сторін.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
