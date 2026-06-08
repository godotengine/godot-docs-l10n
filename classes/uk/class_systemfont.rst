:github_url: hide

.. _class_SystemFont:

SystemFont
==========

**Успадковує:** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Завантажений шрифт з системного шрифту. Повернутися до типового шрифту теми, якщо не реалізовано на ОС.

.. rst-class:: classref-introduction-group

Опис
--------

**SystemFont** завантажує шрифт з системного шрифту з ім'ям першого матчу з :ref:`font_names<class_SystemFont_property_font_names>`.

Вона спробує відповідати стилю шрифту, але це не гарантується.

Повернутий шрифт може бути частиною збору шрифту або бути змінним шрифтом з OpenType "вагою", "width" та/або "italic".

Ви можете створювати :ref:`FontVariation<class_FontVariation>` системного шрифту для точного контролю за його функціями.

\ **Примітка:** Цей клас реалізується на iOS, Linux, macOS та Windows, на інших платформах він буде повернено до шрифту теми за замовчуванням.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`allow_system_fallback<class_SystemFont_property_allow_system_fallback>`                           | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>`       | :ref:`antialiasing<class_SystemFont_property_antialiasing>`                                             | ``1``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`disable_embedded_bitmaps<class_SystemFont_property_disable_embedded_bitmaps>`                     | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`font_italic<class_SystemFont_property_font_italic>`                                               | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`               | :ref:`font_names<class_SystemFont_property_font_names>`                                                 | ``PackedStringArray()`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`font_stretch<class_SystemFont_property_font_stretch>`                                             | ``100``                 |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`font_weight<class_SystemFont_property_font_weight>`                                               | ``400``                 |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`force_autohinter<class_SystemFont_property_force_autohinter>`                                     | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`generate_mipmaps<class_SystemFont_property_generate_mipmaps>`                                     | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Hinting<enum_TextServer_Hinting>`                         | :ref:`hinting<class_SystemFont_property_hinting>`                                                       | ``1``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`keep_rounding_remainders<class_SystemFont_property_keep_rounding_remainders>`                     | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`modulate_color_glyphs<class_SystemFont_property_modulate_color_glyphs>`                           | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>`                                     | ``16``                  |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`msdf_size<class_SystemFont_property_msdf_size>`                                                   | ``48``                  |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                                       | :ref:`oversampling<class_SystemFont_property_oversampling>`                                             | ``0.0``                 |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>` | :ref:`subpixel_positioning<class_SystemFont_property_subpixel_positioning>`                             | ``1``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SystemFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_SystemFont_property_allow_system_fallback>`

.. rst-class:: classref-property-setget

- |void| **set_allow_system_fallback**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_system_fallback**\ (\ )

Якщо встановити на ``true``, можна автоматично використовувати шрифти системи.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **antialiasing** = ``1`` :ref:`🔗<class_SystemFont_property_antialiasing>`

.. rst-class:: classref-property-setget

- |void| **set_antialiasing**\ (\ value\: :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>`\ )
- :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **get_antialiasing**\ (\ )

Шрифт антиалюзивний режим.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_SystemFont_property_disable_embedded_bitmaps>`

.. rst-class:: classref-property-setget

- |void| **set_disable_embedded_bitmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_disable_embedded_bitmaps**\ (\ )

Якщо встановити на ``true``, вбудоване завантаження бітма в шрифті вимкнено (розрядні та кольорові шрифти ігнорують цю властивість).

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_italic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **font_italic** = ``false`` :ref:`🔗<class_SystemFont_property_font_italic>`

.. rst-class:: classref-property-setget

- |void| **set_font_italic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_font_italic**\ (\ )

Якщо встановити до ``true``, italic або oblique font.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **font_names** = ``PackedStringArray()`` :ref:`🔗<class_SystemFont_property_font_names>`

.. rst-class:: classref-property-setget

- |void| **set_font_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_font_names**\ (\ )

Використовуються доменні імена шрифтів для пошуку.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_stretch:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_stretch** = ``100`` :ref:`🔗<class_SystemFont_property_font_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_font_stretch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_stretch**\ (\ )

Пристрочений розмір шрифту, у порівнянні з нормальною шириною. Відсоткова вартість між ``50%`` і ``200%``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_weight:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_weight** = ``400`` :ref:`🔗<class_SystemFont_property_font_weight>`

.. rst-class:: classref-property-setget

- |void| **set_font_weight**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_weight**\ (\ )

Забарвлена вага (брудність) шрифту. Значення в діапазоні ``100...999``, нормальна вага шрифту ``400``, смілива вага шрифту ``700``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_SystemFont_property_force_autohinter>`

.. rst-class:: classref-property-setget

- |void| **set_force_autohinter**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_autohinter**\ (\ )

Якщо встановити до ``true``, автоматично закріплюється і віддають перевагу над шрифтом вбудованим натяком.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_SystemFont_property_generate_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_generate_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_generate_mipmaps**\ (\ )

Якщо встановити на ``true``, генеруйте карти для текстур шрифту.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_hinting:

.. rst-class:: classref-property

:ref:`Hinting<enum_TextServer_Hinting>` **hinting** = ``1`` :ref:`🔗<class_SystemFont_property_hinting>`

.. rst-class:: classref-property-setget

- |void| **set_hinting**\ (\ value\: :ref:`Hinting<enum_TextServer_Hinting>`\ )
- :ref:`Hinting<enum_TextServer_Hinting>` **get_hinting**\ (\ )

Режим натягування шрифту.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_SystemFont_property_keep_rounding_remainders>`

.. rst-class:: classref-property-setget

- |void| **set_keep_rounding_remainders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_keep_rounding_remainders**\ (\ )

Якщо встановлено значення ``true``, під час вирівнювання гліфів до меж пікселів залишки округлення накопичуються для забезпечення більш рівномірного розподілу гліфів. Цей параметр не діє, якщо ввімкнено субпіксельне позиціонування.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_modulate_color_glyphs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modulate_color_glyphs** = ``false`` :ref:`🔗<class_SystemFont_property_modulate_color_glyphs>`

.. rst-class:: classref-property-setget

- |void| **set_modulate_color_glyphs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_modulate_color_glyphs**\ (\ )

Якщо встановлено значення ``true``, колірна модуляція застосовується під час малювання кольорових гліфів, інакше вона застосовується лише до монохромних гліфів.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_msdf_pixel_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_pixel_range** = ``16`` :ref:`🔗<class_SystemFont_property_msdf_pixel_range>`

.. rst-class:: classref-property-setget

- |void| **set_msdf_pixel_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_msdf_pixel_range**\ (\ )

Ширина діапазону навколо форми між мінімальною і максимальною відкритою Якщо ви використовуєте шрифти, :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>` необхідно встановити принаймні *twice* розмір найбільшого шрифту. ``16`` дозволяє визначити розміри до ``8``, щоб виглядати правильно.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_SystemFont_property_msdf_size>`

.. rst-class:: classref-property-setget

- |void| **set_msdf_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_msdf_size**\ (\ )

Розмір шрифту джерела використовується для створення текстур MSDF. Найвищі значення дозволяють більш точність, але повільніше рендерити і вимагати більше пам'яті. Тільки збільшити це значення, якщо ви помітили видимий недолік точності в рендерингу glyph.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_SystemFont_property_multichannel_signed_distance_field>`

.. rst-class:: classref-property-setget

- |void| **set_multichannel_signed_distance_field**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multichannel_signed_distance_field**\ (\ )

Якщо встановити до ``true``, glyphs всіх розмірів подаються за допомогою одного багатоканального підписаного поля відстані, створеного з динамічних вхідних даних шрифту.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_oversampling:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversampling** = ``0.0`` :ref:`🔗<class_SystemFont_property_oversampling>`

.. rst-class:: classref-property-setget

- |void| **set_oversampling**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_oversampling**\ (\ )

Якщо встановлено додатне значення, перевизначає коефіцієнт передискретизації області перегляду, в якій використовується цей шрифт. Див. :ref:`Viewport.oversampling<class_Viewport_property_oversampling>`. Це значення не перевизначає параметр ``oversampling`` методів ``draw_*``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_subpixel_positioning:

.. rst-class:: classref-property

:ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>` **subpixel_positioning** = ``1`` :ref:`🔗<class_SystemFont_property_subpixel_positioning>`

.. rst-class:: classref-property-setget

- |void| **set_subpixel_positioning**\ (\ value\: :ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>`\ )
- :ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>` **get_subpixel_positioning**\ (\ )

Режим позиціонування шрифту glyph. Підпіксельне позиціонування забезпечує формувальний текст та кращий кермінг для менших розмірів шрифтів, за вартістю використання пам'яті та швидкості обертання шрифту. Використовуйте :ref:`TextServer. SUBPIXEL_SETTINGING_AUTO<class_TextServer_constant_ SUBPIXEL_SETTINGING_AUTO>` для автоматичного включення його на основі розміру шрифту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
