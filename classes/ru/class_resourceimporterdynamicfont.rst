:github_url: hide

.. _class_ResourceImporterDynamicFont:

ResourceImporterDynamicFont
===========================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует файл шрифта TTF, TTC, OTF, OTC, WOFF или WOFF2 для рендеринга шрифта, адаптируемого к любому размеру.

.. rst-class:: classref-introduction-group

Описание
----------------

В отличие от растровых шрифтов, динамические шрифты можно изменять до любого размера, и они по-прежнему будут выглядеть четкими. Динамические шрифты также опционально поддерживают рендеринг шрифтов MSDF, что позволяет изменять масштаб во время выполнения без затрат на повторную растеризацию.

Хотя WOFF и особенно WOFF2, как правило, приводят к меньшим размерам файлов, не существует универсального «лучшего» формата шрифта. В большинстве ситуаций рекомендуется использовать формат шрифта, предоставленный на веб-сайте разработчика шрифта.

См. также :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>` и :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Динамические шрифты - Использование шрифтов <../tutorials/ui/gui_using_fonts.html#dynamic-fonts>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`                           | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`antialiasing<class_ResourceImporterDynamicFont_property_antialiasing>`                                             | ``1``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterDynamicFont_property_compress>`                                                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`disable_embedded_bitmaps<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`                                                   | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>`                                                       | ``3``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`keep_rounding_remainders<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`                                     | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`modulate_color_glyphs<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`                           | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`                                     | ``8``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_size<class_ResourceImporterDynamicFont_property_msdf_size>`                                                   | ``48``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`opentype_features<class_ResourceImporterDynamicFont_property_opentype_features>`                                   | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`oversampling<class_ResourceImporterDynamicFont_property_oversampling>`                                             | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`preload<class_ResourceImporterDynamicFont_property_preload>`                                                       | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`                                         | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>`                             | ``4``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterDynamicFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_allow_system_fallback>`

Если ``true``, автоматически использовать системные шрифты в качестве резерва, если глиф не найден в этом динамическом шрифте. Это упрощает поддержку символов CJK или эмодзи, поскольку вам не нужно включать шрифт CJK/эмодзи в свой проект. См. также :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`.

\ **Примечание:** Внешний вид системных шрифтов различается на разных платформах. Загрузка системных шрифтов поддерживается только в Windows, macOS, Linux, Android и iOS.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`int<class_int>` **antialiasing** = ``1`` :ref:`🔗<class_ResourceImporterDynamicFont_property_antialiasing>`

Метод сглаживания шрифта, который следует использовать.

\ **Отключено:** Наиболее подходит для шрифтов пиксельной графики, хотя вам не *нужно* менять сглаживание со значения по умолчанию **Оттенки серого**, если файл шрифта был хорошо создан и шрифт используется в целочисленном кратном от предполагаемого размера. Если шрифты пиксельной графики выглядят плохо при предполагаемом размере, попробуйте вместо этого установить :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` на **Отключено**.

\ **Оттенки серого:** Использовать сглаживание в оттенках серого. Этот подход используется операционной системой на macOS, Android и iOS.

\ **Субпиксель ЖК-дисплея:** Использовать сглаживание с субпиксельными шаблонами, чтобы сделать шрифты более четкими на ЖК-дисплеях. Этот подход используется операционной системой на Windows и большинстве дистрибутивов Linux. Недостатком является то, что это может привести к появлению "окантовки" на краях, особенно на дисплеях, которые не используют стандартные субпиксели RGB (например, OLED-дисплеи). Макет субпикселей ЖК-дисплея глобально контролируется :ref:`ProjectSettings.gui/theme/lcd_subpixel_layout<class_ProjectSettings_property_gui/theme/lcd_subpixel_layout>`, что также позволяет вернуться к сглаживанию в оттенках серого.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_compress>`

Если ``true``, используется сжатие без потерь для результирующего шрифта.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`

Если задано значение ``true``, загрузка встроенного растрового изображения шрифта отключена (только растровые и цветные шрифты игнорируют это свойство).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_fallbacks>`

Список резервных шрифтов для использования, если глиф не найден в этом динамическом шрифте. Шрифты в начале массива пробуются первыми, но резервные шрифты, которые не поддерживают язык и скрипт глифа, пробуются последними (см. :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>` и :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`). См. также :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_force_autohinter>`

Если ``true``, принудительно генерирует данные хинтинга для шрифта с использованием `FreeType <https://freetype.org/>`__'s autohinter. Это сделает :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>` эффективным для шрифтов, которые не включают данные хинтинга.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_generate_mipmaps>`

Если ``true``, этот шрифт будет иметь сгенерированные mip-карты. Это предотвращает зернистость текста при уменьшении масштаба :ref:`Control<class_Control>` или при просмотре :ref:`Label3D<class_Label3D>` с большого расстояния (если :ref:`Label3D.texture_filter<class_Label3D_property_texture_filter>` установлен в режим, который отображает mip-карты). 

Включение :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` увеличивает время генерации шрифта и использование памяти. Включайте этот параметр только в том случае, если он вам действительно нужен.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_hinting:

.. rst-class:: classref-property

:ref:`int<class_int>` **hinting** = ``3`` :ref:`🔗<class_ResourceImporterDynamicFont_property_hinting>`

The hinting mode to use. This controls how aggressively glyph edges should be snapped to pixels when rasterizing the font. Depending on personal preference, you may prefer using one hinting mode over the other. Hinting modes other than **None** are only effective if the font contains hinting data (see :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`).

\ **None:** Smoothest appearance, which can make the font look blurry at small sizes.

\ **Light:** Sharp result by snapping glyph edges to pixels on the Y axis only.

\ **Normal:** Sharpest by snapping glyph edges to pixels on both X and Y axes.

\ **Light (Except Pixel Fonts):** **Disabled** for pixel style fonts (each glyph's contours contain only straight horizontal and vertical lines), **Light** for other fonts.

\ **Normal (Except Pixel Fonts):** **Disabled** for pixel style fonts (each glyph's contours contain only straight horizontal and vertical lines), **Normal** for other fonts.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`

Если установлено значение ``true``, при выравнивании глифов по границам пикселей остатки округления накапливаются для обеспечения более равномерного распределения глифов. Этот параметр не действует, если включено субпиксельное позиционирование.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_language_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **language_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_language_support>`

Переопределить список языков, поддерживаемых этим шрифтом. Если оставить пустым, это будет предоставлено метаданными шрифта. Обычно нет необходимости менять это. См. также :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_modulate_color_glyphs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modulate_color_glyphs** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`

Если установлено значение ``true``, цветовая модуляция применяется при рисовании цветных глифов, в противном случае она применяется только к монохромным глифам.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_pixel_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_pixel_range** = ``8`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`

Ширина диапазона вокруг фигуры между минимальным и максимальным представимым расстоянием со знаком. При использовании контуров шрифта :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` должен быть установлен как минимум в *дважды* больше размера самого большого контура шрифта. Значение :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` по умолчанию ``8`` позволяет контурам размером до ``4`` выглядеть правильно.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_size>`

Размер исходного шрифта, используемый для генерации текстур MSDF. Более высокие значения обеспечивают большую точность, но медленнее отрисовываются и требуют больше памяти. Увеличивайте это значение только в том случае, если вы заметили видимую неточность в отрисовке глифов. Эффективно только если :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`

Если установлено значение ``true``, шрифт будет использовать многоканальное поле расстояний со знаком (MSDF) для четкой визуализации при любом размере. Поскольку этот подход не предполагает растеризацию шрифта каждый раз при изменении его размера, это позволяет изменять размер шрифта в реальном времени без потери производительности. Текст также не будет выглядеть зернистым для :ref:`Control<class_Control>`, которые масштабируются в уменьшенном масштабе (или для :ref:`Label3D<class_Label3D>`, просматриваемых с большого расстояния).

Рендеринг шрифта MSDF можно объединить с :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` для дальнейшего улучшения качества визуализации шрифта при уменьшении масштаба.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_opentype_features>`

Функции OpenType для включения, отключения или установки значения для этого шрифта. Это может быть использовано для включения дополнительных функций, предоставляемых шрифтом, таких как лигатуры или альтернативные глифы. Список поддерживаемых функций OpenType зависит от шрифта.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_oversampling:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversampling** = ``0.0`` :ref:`🔗<class_ResourceImporterDynamicFont_property_oversampling>`

Положительное значение переопределяет коэффициент передискретизации области просмотра, в которой используется этот шрифт. См. :ref:`Viewport.oversampling<class_Viewport_property_oversampling>`. Это значение не переопределяет параметр ``oversampling`` методов ``draw_*``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_preload:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **preload** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_preload>`

Глиф варьируется в пределах предварительной визуализации. Это позволяет избежать заиканий во время игры, когда необходимо отрисовывать новых персонажей, особенно если включен :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>`. Недостатком использования preloading является то, что увеличится время начальной загрузки проекта, а также использование памяти.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_script_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **script_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_script_support>`

Переопределить список поддерживаемых шрифтом языковых скриптов. Если оставить пустым, это будет предоставлено метаданными шрифта. Обычно нет необходимости менять это. См. также :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_subpixel_positioning:

.. rst-class:: classref-property

:ref:`int<class_int>` **subpixel_positioning** = ``4`` :ref:`🔗<class_ResourceImporterDynamicFont_property_subpixel_positioning>`

Subpixel positioning improves font rendering appearance, especially at smaller font sizes. The downside is that it takes more time to initially render the font, which can cause stuttering during gameplay, especially if used with large font sizes. This should be set to **Disabled** for fonts with a pixel art appearance.

\ **Disabled:** No subpixel positioning. Lowest quality, fastest rendering.

\ **Auto:** Use subpixel positioning at small font sizes (the chosen quality varies depending on font size). Large fonts will not use subpixel positioning. This is a good tradeoff between performance and quality.

\ **One Half of a Pixel:** Always perform intermediate subpixel positioning regardless of font size. High quality, slow rendering.

\ **One Quarter of a Pixel:** Always perform precise subpixel positioning regardless of font size. Highest quality, slowest rendering.

\ **Auto (Except Pixel Fonts):** **Disabled** for pixel style fonts (each glyph's contours contain only straight horizontal and vertical lines), **Auto** for other fonts.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
