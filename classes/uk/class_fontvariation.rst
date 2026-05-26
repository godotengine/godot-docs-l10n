:github_url: hide

.. _class_FontVariation:

FontVariation
=============

**Успадковує:** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Варіант шрифту з додатковими налаштуваннями.

.. rst-class:: classref-introduction-group

Опис
--------

Забезпечує варіації OpenType, симуляцію напівжирного/похилого шрифту та додаткові параметри шрифту, як-от функції OpenType та додаткові інтервали. 

Щоб використати імітований варіант жирного шрифту: 


.. tabs:: 

 .. code-tab:: gdscript
 
    var fv = FontVariation.new() 
    fv.base_font = load("res://BarlowCondensed-Regular.ttf") 
    fv.variation_embolden = 1,2 
    $Label.add_theme_font_override("шрифт", fv) 
    $Label.add_theme_font_size_override("font_size", 64)  

 .. code-tab:: csharp
 
    var fv = new FontVariation(); 
    fv.SetBaseFont(ResourceLoader.Load<FontFile>("res://BarlowCondensed-Regular.ttf")); 
    fv.SetVariationEmbolden(1.2); 
    GetNode("Label").AddThemeFontOverride("font", fv); 
    GetNode("Label").AddThemeFontSizeOverride("font_size", 64);  

 

Щоб встановити координати кількох варіаційних осей: 

::
 
    var fv = FontVariation.new(); 
    var ts = TextServerManager.get_primary_interface() 
    fv.base_font = load("res://BarlowCondensed-Regular.ttf") 
    fv.variation_opentype = { ts.name_to_tag("wght"): 900, ts.name_to_tag("custom_hght"): 900 } 

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`                         | :ref:`base_font<class_FontVariation_property_base_font>`                         |                                   |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                       | :ref:`baseline_offset<class_FontVariation_property_baseline_offset>`             | ``0.0``                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`opentype_features<class_FontVariation_property_opentype_features>`         | ``{}``                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`palette_custom_colors<class_FontVariation_property_palette_custom_colors>` | ``PackedColorArray()``            |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`palette_index<class_FontVariation_property_palette_index>`                 | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_bottom<class_FontVariation_property_spacing_bottom>`               | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_glyph<class_FontVariation_property_spacing_glyph>`                 | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_space<class_FontVariation_property_spacing_space>`                 | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_top<class_FontVariation_property_spacing_top>`                     | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                       | :ref:`variation_embolden<class_FontVariation_property_variation_embolden>`       | ``0.0``                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`variation_face_index<class_FontVariation_property_variation_face_index>`   | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`variation_opentype<class_FontVariation_property_variation_opentype>`       | ``{}``                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>`           | :ref:`variation_transform<class_FontVariation_property_variation_transform>`     | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_spacing<class_FontVariation_method_set_spacing>`\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ ) |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_FontVariation_property_base_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **base_font** :ref:`🔗<class_FontVariation_property_base_font>`

.. rst-class:: classref-property-setget

- |void| **set_base_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_base_font**\ (\ )

Базовий шрифт, який використовується для створення варіації. Якщо не встановлено, використовується шрифт за замовчуванням :ref:`Theme<class_Theme>`.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_baseline_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **baseline_offset** = ``0.0`` :ref:`🔗<class_FontVariation_property_baseline_offset>`

.. rst-class:: classref-property-setget

- |void| **set_baseline_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_baseline_offset**\ (\ )

Додатковий базовий зсув (як дроб висоти шрифту).

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_FontVariation_property_opentype_features>`

.. rst-class:: classref-property-setget

- |void| **set_opentype_features**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_opentype_features**\ (\ )

Набір міток функції OpenType. Детальніше: ` мітки OpenType  <https://docs.microsoft.com/en-us/typography/opentype/spec/featuretags>`__.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_palette_custom_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **palette_custom_colors** = ``PackedColorArray()`` :ref:`🔗<class_FontVariation_property_palette_custom_colors>`

.. rst-class:: classref-property-setget

- |void| **set_palette_custom_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_palette_custom_colors**\ (\ )

An array of colors to override predefined palette. Use ``Color(0, 0, 0, 0)``, to keep predefined palette color at specific position.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_palette_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **palette_index** = ``0`` :ref:`🔗<class_FontVariation_property_palette_index>`

.. rst-class:: classref-property-setget

- |void| **set_palette_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_palette_index**\ (\ )

A palette index.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_bottom** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Додатково просипаючи внизу лінії в пікселях.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_glyph:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_glyph** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_glyph>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Додаткове обмотування графічних гліфів.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_space:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_space** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_space>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Додаткова ширина простору гліфів.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_top** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_top>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Додаткове розсипання у верхній частині лінії у пікселях.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_embolden:

.. rst-class:: classref-property

:ref:`float<class_float>` **variation_embolden** = ``0.0`` :ref:`🔗<class_FontVariation_property_variation_embolden>`

.. rst-class:: classref-property-setget

- |void| **set_variation_embolden**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_variation_embolden**\ (\ )

Якщо не дорівнює нулю, змішайте шрифтові контури. Негативні значення зменшують товщину контуру.

\ **Примітка:** Вбудовані шрифти можуть мати самоінтерсекційні контури, які дозволять запобігти шрифтам MSDF і :ref:`TextMesh<class_TextMesh>` від роботи правильно.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_face_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **variation_face_index** = ``0`` :ref:`🔗<class_FontVariation_property_variation_face_index>`

.. rst-class:: classref-property-setget

- |void| **set_variation_face_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_variation_face_index**\ (\ )

Індекс активного обличчя в файлі TrueType / OpenType.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_opentype:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **variation_opentype** = ``{}`` :ref:`🔗<class_FontVariation_property_variation_opentype>`

.. rst-class:: classref-property-setget

- |void| **set_variation_opentype**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_variation_opentype**\ (\ )

Координація варіаційних кодів Font OpenType. Більш детальна інформація: [url=https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg]{/url]

[b]Примітка:[/b] Ця [Дикаційна] використовує теги OpenType як ключі. Сортування осей можна визначити як за тегами ([int], наприклад [code]0x77678674[/code]) і імен ([String], наприклад [code]wght[/code]). Деякі осі можуть бути доступні кількома іменами. Наприклад, [code]wght[/code] відноситься до тієї ж осі, як [code] вага[/code]. Теги на іншому руці унікальний. Щоб конвертувати між іменами та тегами, скористайтеся [method TextServer.name_to_tag] та [method посібник.tag_to_name].

[b]Примітка:[/b] Щоб отримати доступні варіації осей шрифту, скористайтеся [method Font.get_supported_variation_list].

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **variation_transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_FontVariation_property_variation_transform>`

.. rst-class:: classref-property-setget

- |void| **set_variation_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_variation_transform**\ (\ )

2D трансформатор, наноситься на шрифтові контури, можна використовувати для сланцевих, фліппів і обертів.

Наприклад, для імітації italic typeface від slanting, застосувати наступний трансформатор ``Transform2D(1.0, slant, 0.0, 1.0, 0.0)``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_FontVariation_method_set_spacing:

.. rst-class:: classref-method

|void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FontVariation_method_set_spacing>`

Встановлює інтервал для ``spacing`` на ``value`` у пікселях (не відносно розміру шрифту).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
