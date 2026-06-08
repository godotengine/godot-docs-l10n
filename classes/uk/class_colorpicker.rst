:github_url: hide

.. _class_ColorPicker:

ColorPicker
===========

**Успадковує:** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Віджет, який надає інтерфейс для вибору або зміни кольору.

.. rst-class:: classref-introduction-group

Опис
--------

Віджет, який надає інтерфейс для вибору або зміни кольору. Ви можете додатково надати функціональні можливості, такі як кольоровий пробовідбірник, кольорові режими та пресети.

\ **Примітка:** Цей контроль є самим кольором пікера віджету. Ви можете використовувати :ref:`ColorPickerButton<class_ColorPickerButton>` замість того, якщо вам потрібна кнопка, яка приносить **ColorPicker** в попупці.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація інтерполяції Tween <https://godotengine.org/asset-library/asset/2733>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`can_add_swatches<class_ColorPicker_property_can_add_swatches>`       | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                | :ref:`color<class_ColorPicker_property_color>`                             | ``Color(1, 1, 1, 1)`` |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`ColorModeType<enum_ColorPicker_ColorModeType>`     | :ref:`color_mode<class_ColorPicker_property_color_mode>`                   | ``0``                 |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`color_modes_visible<class_ColorPicker_property_color_modes_visible>` | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`deferred_mode<class_ColorPicker_property_deferred_mode>`             | ``false``             |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`edit_alpha<class_ColorPicker_property_edit_alpha>`                   | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`edit_intensity<class_ColorPicker_property_edit_intensity>`           | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`hex_visible<class_ColorPicker_property_hex_visible>`                 | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` | :ref:`picker_shape<class_ColorPicker_property_picker_shape>`               | ``0``                 |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`presets_visible<class_ColorPicker_property_presets_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`sampler_visible<class_ColorPicker_property_sampler_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`sliders_visible<class_ColorPicker_property_sliders_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_preset<class_ColorPicker_method_add_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )                   |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_recent_preset<class_ColorPicker_method_add_recent_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )     |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`erase_preset<class_ColorPicker_method_erase_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )               |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`erase_recent_preset<class_ColorPicker_method_erase_recent_preset>`\ (\ color\: :ref:`Color<class_Color>`\ ) |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`get_presets<class_ColorPicker_method_get_presets>`\ (\ ) |const|                                            |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`get_recent_presets<class_ColorPicker_method_get_recent_presets>`\ (\ ) |const|                              |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Color<class_Color>`         | :ref:`focused_not_editing_cursor_color<class_ColorPicker_theme_color_focused_not_editing_cursor_color>` | ``Color(1, 1, 1, 0.275)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`center_slider_grabbers<class_ColorPicker_theme_constant_center_slider_grabbers>`                  | ``1``                     |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`h_width<class_ColorPicker_theme_constant_h_width>`                                                | ``30``                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`label_width<class_ColorPicker_theme_constant_label_width>`                                        | ``10``                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`margin<class_ColorPicker_theme_constant_margin>`                                                  | ``4``                     |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`sv_height<class_ColorPicker_theme_constant_sv_height>`                                            | ``256``                   |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`sv_width<class_ColorPicker_theme_constant_sv_width>`                                              | ``256``                   |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`add_preset<class_ColorPicker_theme_icon_add_preset>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`bar_arrow<class_ColorPicker_theme_icon_bar_arrow>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_copy<class_ColorPicker_theme_icon_color_copy>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_hue<class_ColorPicker_theme_icon_color_hue>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_script<class_ColorPicker_theme_icon_color_script>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow<class_ColorPicker_theme_icon_expanded_arrow>`                                      |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow<class_ColorPicker_theme_icon_folded_arrow>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_option<class_ColorPicker_theme_icon_menu_option>`                                            |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`overbright_indicator<class_ColorPicker_theme_icon_overbright_indicator>`                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`picker_cursor<class_ColorPicker_theme_icon_picker_cursor>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`picker_cursor_bg<class_ColorPicker_theme_icon_picker_cursor_bg>`                                  |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sample_bg<class_ColorPicker_theme_icon_sample_bg>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sample_revert<class_ColorPicker_theme_icon_sample_revert>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`screen_picker<class_ColorPicker_theme_icon_screen_picker>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_circle<class_ColorPicker_theme_icon_shape_circle>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_rect<class_ColorPicker_theme_icon_shape_rect>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_rect_wheel<class_ColorPicker_theme_icon_shape_rect_wheel>`                                  |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`picker_focus_circle<class_ColorPicker_theme_style_picker_focus_circle>`                           |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`picker_focus_rectangle<class_ColorPicker_theme_style_picker_focus_rectangle>`                     |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`sample_focus<class_ColorPicker_theme_style_sample_focus>`                                         |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_ColorPicker_signal_color_changed:

.. rst-class:: classref-signal

**color_changed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_color_changed>`

Випробувано, коли колір змінюється.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_added:

.. rst-class:: classref-signal

**preset_added**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_added>`

Випробувано при доданні.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_removed:

.. rst-class:: classref-signal

**preset_removed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_removed>`

Випробувано при видаленні пресету.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_ColorPicker_ColorModeType:

.. rst-class:: classref-enumeration

enum **ColorModeType**: :ref:`🔗<enum_ColorPicker_ColorModeType>`

.. _class_ColorPicker_constant_MODE_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RGB** = ``0``

Дозволяє редагувати колір за допомогою повзунків Червоний/Зелений/Синій у колірному просторі sRGB.

.. _class_ColorPicker_constant_MODE_HSV:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_HSV** = ``1``

Дозволяє редагувати колір Hue/Saturation/Value слайдери.

.. _class_ColorPicker_constant_MODE_RAW:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RAW** = ``2``

**Застаріло:** This is replaced by :ref:`MODE_LINEAR<class_ColorPicker_constant_MODE_LINEAR>`.



.. _class_ColorPicker_constant_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_LINEAR** = ``2``

Дозволяє редагувати колір за допомогою повзунків Червоний/Зелений/Синій у лінійному колірному просторі.

.. _class_ColorPicker_constant_MODE_OKHSL:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_OKHSL** = ``3``

Дозволяє редагувати колір Hue/Saturation/Lightness sliders.

OKHSL є новим кольоровим простором, схожим на HSL, але що краще відповідати сприйняттю, використовуючи колірний простір Oklab, який призначений для того, щоб бути простим у використанні, при цьому зробити хорошу роботу при прогнозуванні сприйнятливості, аромату і відтінку.

\ `Okhsv і Okhsl кольорові простори <https://bottosson.github.io/posts/colorpicker/>`__

.. rst-class:: classref-item-separator

----

.. _enum_ColorPicker_PickerShapeType:

.. rst-class:: classref-enumeration

enum **PickerShapeType**: :ref:`🔗<enum_ColorPicker_PickerShapeType>`

.. _class_ColorPicker_constant_SHAPE_HSV_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_RECTANGLE** = ``0``

HSV Колір Модель прямокутника колір простору.

.. _class_ColorPicker_constant_SHAPE_HSV_WHEEL:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_WHEEL** = ``1``

Кольорова модель HSV кольоровий простір з колесом.

.. _class_ColorPicker_constant_SHAPE_VHS_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_VHS_CIRCLE** = ``2``

HSV Колір Модель коло колір простору. Використовуйте насиченість як радіус.

.. _class_ColorPicker_constant_SHAPE_OKHSL_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OKHSL_CIRCLE** = ``3``

HSL OK Колір Модель кола колір простору.

.. _class_ColorPicker_constant_SHAPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_NONE** = ``4``

Кольорова форма простору і форма виберіть кнопка прихована. Не можна вибрати з форми.

.. _class_ColorPicker_constant_SHAPE_OK_HS_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HS_RECTANGLE** = ``5``

Прямокутник кольорової моделі OKHSL з постійною яскравістю.

.. _class_ColorPicker_constant_SHAPE_OK_HL_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HL_RECTANGLE** = ``6``

Прямокутник кольорової моделі OKHSL з постійною насиченістю.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ColorPicker_property_can_add_swatches:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_add_swatches** = ``true`` :ref:`🔗<class_ColorPicker_property_can_add_swatches>`

.. rst-class:: classref-property-setget

- |void| **set_can_add_swatches**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_swatches_enabled**\ (\ )

Якщо ``true``, можна додати пресети під Swatches. Якщо ``false``, кнопка для додавання пресетів вимкнена.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_ColorPicker_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_pick_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_pick_color**\ (\ )

В даний час обраний колір.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_mode:

.. rst-class:: classref-property

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **color_mode** = ``0`` :ref:`🔗<class_ColorPicker_property_color_mode>`

.. rst-class:: classref-property-setget

- |void| **set_color_mode**\ (\ value\: :ref:`ColorModeType<enum_ColorPicker_ColorModeType>`\ )
- :ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **get_color_mode**\ (\ )

Поточний вибраний колірний режим.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_modes_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **color_modes_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_color_modes_visible>`

.. rst-class:: classref-property-setget

- |void| **set_modes_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_modes_visible**\ (\ )

Якщо ``true``, кнопки кольорових режимів відображаються.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_deferred_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deferred_mode** = ``false`` :ref:`🔗<class_ColorPicker_property_deferred_mode>`

.. rst-class:: classref-property-setget

- |void| **set_deferred_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deferred_mode**\ (\ )

Якщо ``true``, колір буде застосовуватися тільки після того, як користувач випускає кнопку миші, інакше він буде застосовуватися відразу навіть у випадку руху миші (що може викликати проблеми виконання).

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_alpha** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_edit_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_alpha**\ (\ )

Якщо ``true``, показує альфа-канал слайдер (опакуратність).

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_intensity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_intensity** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_edit_intensity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_intensity**\ (\ )

Якщо значення ``true``, відображається повзунок інтенсивності. Інтенсивність застосовується наступним чином: колір перетворюється на лінійне кодування, помножується на ``2 ** інтенсивність``, а потім перетворюється назад на нелінійне кодування sRGB.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_hex_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hex_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_hex_visible>`

.. rst-class:: classref-property-setget

- |void| **set_hex_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hex_visible**\ (\ )

Якщо ``true``, поле вхідного коду Hex видимий.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_picker_shape:

.. rst-class:: classref-property

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **picker_shape** = ``0`` :ref:`🔗<class_ColorPicker_property_picker_shape>`

.. rst-class:: classref-property-setget

- |void| **set_picker_shape**\ (\ value\: :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>`\ )
- :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **get_picker_shape**\ (\ )

Форма перегляду колірного простору.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_presets_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **presets_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_presets_visible>`

.. rst-class:: classref-property-setget

- |void| **set_presets_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_presets_visible**\ (\ )

Якщо ``true``, Swatches і останні кольори пресетів видно.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sampler_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sampler_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sampler_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sampler_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sampler_visible**\ (\ )

Якщо ``true``, видимий колірний зразок і кольоровий попередній перегляд.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sliders_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sliders_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sliders_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sliders_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_sliders_visible**\ (\ )

Якщо ``true``, видимі кольорові слайдери.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ColorPicker_method_add_preset:

.. rst-class:: classref-method

|void| **add_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_preset>`

Додавання даного кольору до списку кольорових пресетів. Приставки відображаються в кольорі пікірувальник і користувач зможе вибрати їх.

\ **Примітка:** *this* color picker.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_add_recent_preset:

.. rst-class:: classref-method

|void| **add_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_recent_preset>`

Додає заданий колір до списку кольорових недавніх пресетів, щоб він був обраний пізніше. Недавні пресети - це кольори, які були підібрані нещодавно, новий заміщений і додано в останні пресети, коли ви підбираєте новий колір.

\ **Примітка:** Останній список пресетів тільки для *this* кольоровий пікір.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_preset:

.. rst-class:: classref-method

|void| **erase_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_preset>`

Видаліть заданий колір з переліку кольорових пресетів цього кольорового маркера.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_recent_preset:

.. rst-class:: classref-method

|void| **erase_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_recent_preset>`

Видаліть заданий колір з переліку кольорових останніх пресетів цього кольорового маркера.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_presets>`

Повертає список кольорів в пресетах кольорового маркера.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_recent_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_recent_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_recent_presets>`

Повертає список кольорів в останні пресети кольорового маркера.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_ColorPicker_theme_color_focused_not_editing_cursor_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **focused_not_editing_cursor_color** = ``Color(1, 1, 1, 0.275)`` :ref:`🔗<class_ColorPicker_theme_color_focused_not_editing_cursor_color>`

Колір прямокутника або кола, що малюється, коли частина фігури вибору фокусована, але не може бути редагувана за допомогою клавіатури або джойстика. Відображається *поверх* фігури вибору, тому слід використовувати частково прозорий колір, щоб забезпечити видимість фігури вибору.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_center_slider_grabbers:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_slider_grabbers** = ``1`` :ref:`🔗<class_ColorPicker_theme_constant_center_slider_grabbers>`

Надіславши :ref:`Slider.center_grabber<class_Slider_theme_constant_center_grabber>` тематичне майно слайдерів.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_h_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_width** = ``30`` :ref:`🔗<class_ColorPicker_theme_constant_h_width>`

Ширина ходової підбірки слайдера.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_label_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **label_width** = ``10`` :ref:`🔗<class_ColorPicker_theme_constant_label_width>`

Мінімальна ширина кольорових етикеток поруч з гірками.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin** = ``4`` :ref:`🔗<class_ColorPicker_theme_constant_margin>`

Поле навколо **ColorPicker**.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_height:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_height** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_height>`

Висота оздоблювального ящика.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_width** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_width>`

Ширина оздоблювального ящика.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_add_preset:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **add_preset** :ref:`🔗<class_ColorPicker_theme_icon_add_preset>`

Піктограма кнопки «Додати пресет».

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_bar_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **bar_arrow** :ref:`🔗<class_ColorPicker_theme_icon_bar_arrow>`

Текстура для стрілоподібної крупи.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_copy:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_copy** :ref:`🔗<class_ColorPicker_theme_icon_color_copy>`

Піктограма кнопки, яка копіює колір у текстовому форматі до буфера обміну.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_hue:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_hue** :ref:`🔗<class_ColorPicker_theme_icon_color_hue>`

Користувальницькі фактури для вибору відтінку слайдера праворуч.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_script:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_script** :ref:`🔗<class_ColorPicker_theme_icon_color_script>`

Піктограма кнопки, яка перемикає колір тексту на шістнадцятковий.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_expanded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_expanded_arrow>`

Ікона при розширюванні колірної застібки.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_folded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_folded_arrow>`

Ікона для кольорового заміщення випадаючого меню при складанні.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_menu_option:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_option** :ref:`🔗<class_ColorPicker_theme_icon_menu_option>`

Піктограма для меню попередньо встановлених кольорів.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_overbright_indicator:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **overbright_indicator** :ref:`🔗<class_ColorPicker_theme_icon_overbright_indicator>`

Індикатор використовується для сигналізації, що значення кольору поза діапазоном 0-1.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor>`

Зображення, що відображається поверх кольорового поля/кола (залежно від :ref:`picker_shape<class_ColorPicker_property_picker_shape>`), позначаючи поточний вибраний колір.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor_bg** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor_bg>`

Зображення заливки, що відображається за курсором вибору.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_bg** :ref:`🔗<class_ColorPicker_theme_icon_sample_bg>`

Підземна панель для кольорової коробки попереднього перегляду (видима, коли колір непрозорий).

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_revert:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_revert** :ref:`🔗<class_ColorPicker_theme_icon_sample_revert>`

Ікона для ревертної кнопки (видима на середину «старого» кольору, коли вона відрізняється від вказаного кольору). Ця ікона модулюється з темним кольором, якщо колір «старий» досить яскравий, тому ікона повинна бути яскравою, щоб забезпечити видимість в обох сценаріях.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_screen_picker:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **screen_picker** :ref:`🔗<class_ColorPicker_theme_icon_screen_picker>`

Ікона для кнопки пікіровка екрану.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_circle:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_circle** :ref:`🔗<class_ColorPicker_theme_icon_shape_circle>`

Ікона для фігурного пікера.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect>`

Ікона для прямокутної форми пікера.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect_wheel:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect_wheel** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect_wheel>`

Ікона для прямокутних колісних фігур.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_circle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_circle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_circle>`

:ref:`StyleBox<class_StyleBox>` використовується, коли фокусується кругла частина вибору. Відображається *поверх* форми вибору, тому слід використовувати частково прозорий :ref:`StyleBox<class_StyleBox>`, щоб забезпечити видимість форми вибору. :ref:`StyleBox<class_StyleBox>`, який представляє контур або підкреслення, добре підходить для цієї мети. Щоб вимкнути візуальний ефект фокусування, призначте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Зверніть увагу, що вимкнення візуального ефекту фокусування погіршить зручність навігації за допомогою клавіатури/контролера, тому це не рекомендується з міркувань доступності.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_rectangle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_rectangle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_rectangle>`

:ref:`StyleBox<class_StyleBox>` використовується, коли фокусується прямокутна частина вибору. Відображається *поверх* форми вибору, тому слід використовувати частково прозорий :ref:`StyleBox<class_StyleBox>`, щоб забезпечити видимість форми вибору. :ref:`StyleBox<class_StyleBox>`, який представляє контур або підкреслення, добре підходить для цієї мети. Щоб вимкнути візуальний ефект фокусування, призначте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Зверніть увагу, що вимкнення візуального ефекту фокусування погіршить зручність навігації за допомогою клавіатури/контролера, тому це не рекомендується з міркувань доступності.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_sample_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **sample_focus** :ref:`🔗<class_ColorPicker_theme_style_sample_focus>`

:ref:`StyleBox<class_StyleBox>` використовується для старої частини зразка кольору, коли вона у фокусі. Відображається *поверх* зразка, тому слід використовувати частково прозорий :ref:`StyleBox<class_StyleBox>`, щоб забезпечити видимість форми вибору. :ref:`StyleBox<class_StyleBox>`, який представляє контур або підкреслення, добре підходить для цієї мети. Щоб вимкнути візуальний ефект фокусування, призначте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Зверніть увагу, що вимкнення візуального ефекту фокусування погіршить зручність навігації клавіатурою/контролером, тому це не рекомендується з міркувань доступності.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
