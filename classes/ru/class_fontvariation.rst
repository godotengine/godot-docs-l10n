:github_url: hide

.. _class_FontVariation:

FontVariation
=============

**Наследует:** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вариант шрифта с дополнительными настройками.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет вариации OpenType, имитацию жирного/наклонного начертания и дополнительные настройки шрифта, такие как функции OpenType и дополнительный интервал.

Чтобы использовать имитацию жирного шрифта:


.. tabs::

 .. code-tab:: gdscript

    var fv = FontVariation.new()
    fv.base_font = load("res://BarlowCondensed-Regular.ttf")
    fv.variation_embolden = 1.2
    $Label.add_theme_font_override("font", fv)
    $Label.add_theme_font_size_override("font_size", 64)

 .. code-tab:: csharp

    var fv = new FontVariation();
    fv.SetBaseFont(ResourceLoader.Load<FontFile>("res://BarlowCondensed-Regular.ttf"));
    fv.SetVariationEmbolden(1.2);
    GetNode("Label").AddThemeFontOverride("font", fv);
    GetNode("Label").AddThemeFontSizeOverride("font_size", 64);



To set the coordinate of multiple variation axes:

::

    var fv = FontVariation.new();
    var ts = TextServerManager.get_primary_interface()
    fv.base_font = load("res://BarlowCondensed-Regular.ttf")
    fv.variation_opentype = { ts.name_to_tag("wght"): 900, ts.name_to_tag("custom_hght"): 900 }

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_spacing<class_FontVariation_method_set_spacing>`\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ ) |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_FontVariation_property_base_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **base_font** :ref:`🔗<class_FontVariation_property_base_font>`

.. rst-class:: classref-property-setget

- |void| **set_base_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_base_font**\ (\ )

Базовый шрифт, используемый для создания вариации. Если не задано, используется шрифт по умолчанию :ref:`Theme<class_Theme>`.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_baseline_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **baseline_offset** = ``0.0`` :ref:`🔗<class_FontVariation_property_baseline_offset>`

.. rst-class:: classref-property-setget

- |void| **set_baseline_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_baseline_offset**\ (\ )

Дополнительное смещение базовой линии (в виде доли высоты шрифта).

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_FontVariation_property_opentype_features>`

.. rst-class:: classref-property-setget

- |void| **set_opentype_features**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_opentype_features**\ (\ )

Набор тегов функций OpenType. Дополнительная информация: `Теги функций OpenType <https://docs.microsoft.com/en-us/typography/opentype/spec/featuretags>`__.

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

Дополнительный интервал внизу строки в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_glyph:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_glyph** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_glyph>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Дополнительный интервал между графическими глифами.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_space:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_space** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_space>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Дополнительная ширина пробельных глифов.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_top** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_top>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Дополнительный интервал в верхней части строки в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_embolden:

.. rst-class:: classref-property

:ref:`float<class_float>` **variation_embolden** = ``0.0`` :ref:`🔗<class_FontVariation_property_variation_embolden>`

.. rst-class:: classref-property-setget

- |void| **set_variation_embolden**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_variation_embolden**\ (\ )

Если не равно нулю, то контуры шрифта становятся жирными. Отрицательные значения уменьшают толщину контура.

\ **Примечание:** У жирных шрифтов могут быть самопересекающиеся контуры, что помешает корректной работе шрифтов MSDF и :ref:`TextMesh<class_TextMesh>`.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_face_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **variation_face_index** = ``0`` :ref:`🔗<class_FontVariation_property_variation_face_index>`

.. rst-class:: classref-property-setget

- |void| **set_variation_face_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_variation_face_index**\ (\ )

Активный индекс шрифтов в файле коллекции TrueType/OpenType.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_opentype:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **variation_opentype** = ``{}`` :ref:`🔗<class_FontVariation_property_variation_opentype>`

.. rst-class:: classref-property-setget

- |void| **set_variation_opentype**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_variation_opentype**\ (\ )

Координаты вариаций шрифта OpenType. Дополнительная информация: `Теги вариаций OpenType <https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg>`__.

\ **Примечание:** Этот :ref:`Dictionary<class_Dictionary>` использует теги OpenType в качестве ключей. Оси вариаций можно идентифицировать как по тегам (:ref:`int<class_int>`, например ``0x77678674``), так и по именам (:ref:`String<class_String>`, например ``wght``). Некоторые оси могут быть доступны по нескольким именам. Например, ``wght`` относится к той же оси, что и ``weight``. Теги, с другой стороны, уникальны. Для преобразования между именами и тегами используйте :ref:`TextServer.name_to_tag()<class_TextServer_method_name_to_tag>` и :ref:`TextServer.tag_to_name()<class_TextServer_method_tag_to_name>`.

\ **Примечание:** Чтобы получить доступные оси вариаций шрифта, используйте :ref:`Font.get_supported_variation_list()<class_Font_method_get_supported_variation_list>`.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **variation_transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_FontVariation_property_variation_transform>`

.. rst-class:: classref-property-setget

- |void| **set_variation_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_variation_transform**\ (\ )

2D-преобразование, применяемое к контурам шрифта, можно использовать для наклона, переворачивания и поворота глифов.

Например, чтобы имитировать курсивное начертание с помощью наклона, примените следующее преобразование `` [code``\ Transform2D(1.0, slant, 0.0, 1.0, 0.0, 0.0)[/code].

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_FontVariation_method_set_spacing:

.. rst-class:: classref-method

|void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FontVariation_method_set_spacing>`

Устанавливает интервал для ``spacing`` на ``value`` в пикселях (не относительно размера шрифта).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
