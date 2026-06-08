:github_url: hide

.. _class_StyleBoxFlat:

StyleBoxFlat
============

**Успадковує:** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Налаштований :ref:`StyleBox<class_StyleBox>`, який не використовує текстуру.

.. rst-class:: classref-introduction-group

Опис
--------

Налаштувавши різні властивості цього вікна стилю, ви можете досягти багатьох загальних виглядів без потреби в текстурі. Це включає необов’язкові заокруглені рамки, згладжування, тіні та нахил. 

Дозволяється встановити високі значення радіуса кута. Як тільки кути перекриваються, стильове поле перемикається на відносну систему: 

.. code:: text
 
    height = 30 
    corner_radius_top_left = 50 
    corner_radius_bottom_left = 100  

Відносна система тепер бере співвідношення 1:2 двох лівих кутів для обчислення фактичної ширини кута. Обидва додані кути **ніколи** не перевищуватимуть висоту. Результат: 

.. code:: text
 
    corner_radius_top_left: 10 
    corner_radius_bottom_left: 20 

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`anti_aliasing<class_StyleBoxFlat_property_anti_aliasing>`                           | ``true``                    |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`anti_aliasing_size<class_StyleBoxFlat_property_anti_aliasing_size>`                 | ``1.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`bg_color<class_StyleBoxFlat_property_bg_color>`                                     | ``Color(0.6, 0.6, 0.6, 1)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`border_blend<class_StyleBoxFlat_property_border_blend>`                             | ``false``                   |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`border_color<class_StyleBoxFlat_property_border_color>`                             | ``Color(0.8, 0.8, 0.8, 1)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_bottom<class_StyleBoxFlat_property_border_width_bottom>`               | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_left<class_StyleBoxFlat_property_border_width_left>`                   | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_right<class_StyleBoxFlat_property_border_width_right>`                 | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_top<class_StyleBoxFlat_property_border_width_top>`                     | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_detail<class_StyleBoxFlat_property_corner_detail>`                           | ``8``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_bottom_left<class_StyleBoxFlat_property_corner_radius_bottom_left>`   | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_bottom_right<class_StyleBoxFlat_property_corner_radius_bottom_right>` | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_top_left<class_StyleBoxFlat_property_corner_radius_top_left>`         | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_top_right<class_StyleBoxFlat_property_corner_radius_top_right>`       | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`draw_center<class_StyleBoxFlat_property_draw_center>`                               | ``true``                    |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>`             | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_left<class_StyleBoxFlat_property_expand_margin_left>`                 | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_right<class_StyleBoxFlat_property_expand_margin_right>`               | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_top<class_StyleBoxFlat_property_expand_margin_top>`                   | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`shadow_color<class_StyleBoxFlat_property_shadow_color>`                             | ``Color(0, 0, 0, 0.6)``     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`shadow_offset<class_StyleBoxFlat_property_shadow_offset>`                           | ``Vector2(0, 0)``           |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`shadow_size<class_StyleBoxFlat_property_shadow_size>`                               | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`skew<class_StyleBoxFlat_property_skew>`                                             | ``Vector2(0, 0)``           |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_border_width<class_StyleBoxFlat_method_get_border_width>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                               |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_border_width_min<class_StyleBoxFlat_method_get_border_width_min>`\ (\ ) |const|                                                                     |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_corner_radius<class_StyleBoxFlat_method_get_corner_radius>`\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_expand_margin<class_StyleBoxFlat_method_get_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_border_width<class_StyleBoxFlat_method_set_border_width>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )        |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_border_width_all<class_StyleBoxFlat_method_set_border_width_all>`\ (\ width\: :ref:`int<class_int>`\ )                                              |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_corner_radius<class_StyleBoxFlat_method_set_corner_radius>`\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_corner_radius_all<class_StyleBoxFlat_method_set_corner_radius_all>`\ (\ radius\: :ref:`int<class_int>`\ )                                           |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin<class_StyleBoxFlat_method_set_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )   |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin_all<class_StyleBoxFlat_method_set_expand_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_StyleBoxFlat_property_anti_aliasing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **anti_aliasing** = ``true`` :ref:`🔗<class_StyleBoxFlat_property_anti_aliasing>`

.. rst-class:: classref-property-setget

- |void| **set_anti_aliased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_anti_aliased**\ (\ )

Антіаліясинг малює невелике кільце по краях, що віддає прозорості. В результаті краї виглядають набагато гладкіше. Це тільки помітно при використанні округлих кутів або :ref:`skew<class_StyleBoxFlat_property_skew>`.

\ **Примітка:** При використанні скошованих кутів з кутами 45 градусів (:ref:`corner_detail<class_StyleBoxFlat_property_corner_detail>` = 1), рекомендується встановити :ref:`anti_aliasing<class_StyleBoxFlat_property_anti_aliasing>` на ``false``, щоб забезпечити чіткі візуалізації і уникнути можливих візуальних блисків.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_anti_aliasing_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **anti_aliasing_size** = ``1.0`` :ref:`🔗<class_StyleBoxFlat_property_anti_aliasing_size>`

.. rst-class:: classref-property-setget

- |void| **set_aa_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aa_size**\ (\ )

Це змінює розмір антиалюзивного ефекту. ``1.0`` рекомендується для оптимального результату на 100% масштабі, ідентичних як закруглені прямокутники подаються в веб-браузерах і більшості векторних програм для малювання.

\ **Примітка:** Вищі значення можуть виробляти ефект розмиття, але також можуть створювати небажані артефакти на невеликих коробках з великими радіусами.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_bg_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **bg_color** = ``Color(0.6, 0.6, 0.6, 1)`` :ref:`🔗<class_StyleBoxFlat_property_bg_color>`

.. rst-class:: classref-property-setget

- |void| **set_bg_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_bg_color**\ (\ )

Фоновий колір скриньок.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **border_blend** = ``false`` :ref:`🔗<class_StyleBoxFlat_property_border_blend>`

.. rst-class:: classref-property-setget

- |void| **set_border_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_border_blend**\ (\ )

Якщо ``true``, кордон буде впадати в фоновий колір.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **border_color** = ``Color(0.8, 0.8, 0.8, 1)`` :ref:`🔗<class_StyleBoxFlat_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

Встановлює колір кордону.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_bottom** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина кордону для нижньої кордону.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_left>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина кордону для лівого кордону.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_right>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина кордону для правого кордону.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_top** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_top>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина кордону для верхнього кордону.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_detail:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_detail** = ``8`` :ref:`🔗<class_StyleBoxFlat_property_corner_detail>`

.. rst-class:: classref-property-setget

- |void| **set_corner_detail**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_detail**\ (\ )

Це встановлює кількість вершин, які використовуються для кожного кута. Більшість значень призводить до круглих кутів, але прийміть більш переробну потужність, щоб обчислити. При виборі значення слід враховувати кутовий радіус (:ref:`set_corner_radius_all()<class_StyleBoxFlat_method_set_corner_radius_all>`).

Для кутового радіуса менше 10, ``4`` або ``5`` повинен бути достатнім. Для кутового радіуса менше 30, значення між ``8`` та ``12`` повинні бути достатніми.

Кутова деталь ``1`` призведе до фасування кутів замість округлих кутів, які корисні для деяких мистецьких ефектів.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_bottom_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_bottom_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_bottom_left>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Дно-лівий кутовий радіус. Якщо ``0``, кут не закруглений.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_bottom_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_bottom_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_bottom_right>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Дно-правий кутовий радіус. Якщо ``0``, кут не закруглений.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_top_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_top_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_top_left>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Верхній лівий кутовий радіус. Якщо ``0``, кут не закруглений.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_top_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_top_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_top_right>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Верхній кут повороту. Якщо ``0``, кут не закруглений.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_StyleBoxFlat_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

Перемикаємо внутрішню частину стилюбокс.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Розгортає stylebox за межі прямокутника керування по нижньому краю. Корисно в поєднанні з :ref:`border_width_bottom<class_StyleBoxFlat_property_border_width_bottom>` для малювання межі за межами прямокутника керування.

\ **Примітка:** На відміну від :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>`, :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>` *не* впливає на розмір області клікабельності для :ref:`Control<class_Control>`. Це може негативно вплинути на зручність використання, якщо використовувати неправильно, оскільки користувач може спробувати клацнути на області StyleBox, яка насправді не може отримувати кліки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Розгортає stylebox за межі прямокутника керування з лівого краю. Корисно в поєднанні з :ref:`border_width_left<class_StyleBoxFlat_property_border_width_left>` для малювання межі за межами прямокутника керування.

\ **Примітка:** На відміну від :ref:`StyleBox.content_margin_left<class_StyleBox_property_content_margin_left>`, :ref:`expand_margin_left<class_StyleBoxFlat_property_expand_margin_left>` *не* впливає на розмір області клікабельності для :ref:`Control<class_Control>`. Це може негативно вплинути на зручність використання, якщо використовувати неправильно, оскільки користувач може спробувати клацнути на області StyleBox, яка насправді не може отримувати кліки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Розгортає stylebox за межі прямокутника керування по правому краю. Корисно в поєднанні з :ref:`border_width_right<class_StyleBoxFlat_property_border_width_right>` для малювання межі за межами прямокутника керування.

\ **Примітка:** На відміну від :ref:`StyleBox.content_margin_right<class_StyleBox_property_content_margin_right>`, :ref:`expand_margin_right<class_StyleBoxFlat_property_expand_margin_right>` *не* впливає на розмір області клікабельності для :ref:`Control<class_Control>`. Це може негативно вплинути на зручність використання, якщо використовувати неправильно, оскільки користувач може спробувати клацнути на області StyleBox, яка насправді не може отримувати кліки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Розгортає stylebox за межі прямокутника керування по верхньому краю. Корисно в поєднанні з :ref:`border_width_top<class_StyleBoxFlat_property_border_width_top>` для малювання межі за межами прямокутника керування.

\ **Примітка:** На відміну від :ref:`StyleBox.content_margin_top<class_StyleBox_property_content_margin_top>`, :ref:`expand_margin_top<class_StyleBoxFlat_property_expand_margin_top>` *не* впливає на розмір області клікабельності для :ref:`Control<class_Control>`. Це може негативно вплинути на зручність використання, якщо використовувати неправильно, оскільки користувач може спробувати клацнути на області StyleBox, яка насправді не може отримувати кліки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0.6)`` :ref:`🔗<class_StyleBoxFlat_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

Колір тіні. Це не має значення, якщо :ref:`shadow_size<class_StyleBoxFlat_property_shadow_size>` менше за 1.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **shadow_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_StyleBoxFlat_property_shadow_offset>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_shadow_offset**\ (\ )

Туні офсет у пікселях. Регулює позицію тіні відносно стильної коробки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_size** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_shadow_size>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_size**\ (\ )

Розмір тіні в пікселів.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_skew:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **skew** = ``Vector2(0, 0)`` :ref:`🔗<class_StyleBoxFlat_property_skew>`

.. rst-class:: classref-property-setget

- |void| **set_skew**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_skew**\ (\ )

Якщо встановити ненульове значення на будь-якій осі, :ref:`skew<class_StyleBoxFlat_property_skew>` спотворює StyleBox по горизонталі та/або вертикалі. Це можна використовувати для інтерфейсів у «футуристичному» стилі. Додатні значення зміщують StyleBox праворуч (вісь X) та вгору (вісь Y), тоді як від’ємні значення зміщують StyleBox ліворуч (вісь X) та вниз (вісь Y).

\ **Примітка:** Щоб текст не торкався країв StyleBox, спробуйте збільшити поле вмісту :ref:`StyleBox<class_StyleBox>` (див. :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>`). Бажано збільшити поле вмісту, а не поле розгортання (див. :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>`), оскільки збільшення поля розгортання не збільшує розмір області клікання для :ref:`Control<class_Control>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StyleBoxFlat_method_get_border_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_border_width>`

Повертає вказану :ref:`Side<enum_@GlobalScope_Side>` ширину кордону.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_border_width_min:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_border_width_min**\ (\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_border_width_min>`

Повертає найменшу ширину кордону з усіма чотирма кордонами.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_corner_radius:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_corner_radius>`

Повертає радіус заданого ``corner``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_expand_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_expand_margin>`

Повертає розмір вказаного :ref:`Side<enum_@GlobalScope_Side>` розширення запасу.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_border_width:

.. rst-class:: classref-method

|void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_border_width>`

Настроювання вказаної :ref:`Side<enum_@GlobalScope_Side>` ширини кордону ``width`` пікселів.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_border_width_all:

.. rst-class:: classref-method

|void| **set_border_width_all**\ (\ width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_border_width_all>`

Налаштовує бордюрну ширину ``width`` пікселів на всі боки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_corner_radius:

.. rst-class:: classref-method

|void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_corner_radius>`

Встановлює радіус кута на ``radius`` пікселів для заданого ``corner``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_corner_radius_all:

.. rst-class:: classref-method

|void| **set_corner_radius_all**\ (\ radius\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_corner_radius_all>`

Налаштовує кутовий радіус у ``radius`` пікселів на всі кути.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_expand_margin:

.. rst-class:: classref-method

|void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_expand_margin>`

Налаштовує розширювальний запас до ``size`` пікселів для вказаного :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_expand_margin_all:

.. rst-class:: classref-method

|void| **set_expand_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_expand_margin_all>`

Встановлює поле розгортання на ``size`` пікселів для всіх сторін.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
