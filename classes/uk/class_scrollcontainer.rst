:github_url: hide

.. _class_ScrollContainer:

ScrollContainer
===============

**Успадковує:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`EditorInspector<class_EditorInspector>`

Контейнер, який використовується для забезпечення прокруток дитини при необхідності.

.. rst-class:: classref-introduction-group

Опис
--------

Контейнер, який використовується для забезпечення контролю дитини з прокрутками при необхідності. Скролборди автоматично будуть намальовані на правому (для вертикального) або дна (для горизонтальних) і дозволять перетягування, щоб перемістити видимий контроль (і його діти) в рамках ScrollContainer. Скролбари також автоматично змінять зчеплення на основі :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` контролю відносно ScrollContainer.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання контейнерів <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | clip_contents                                                                                      | ``true`` (overrides :ref:`Control<class_Control_property_clip_contents>`) |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>`                         | ``false``                                                                 |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`follow_focus<class_ScrollContainer_property_follow_focus>`                                   | ``false``                                                                 |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`         | :ref:`horizontal_scroll_mode<class_ScrollContainer_property_horizontal_scroll_mode>`               | ``1``                                                                     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_deadzone<class_ScrollContainer_property_scroll_deadzone>`                             | ``0``                                                                     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` | :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`                           | ``0``                                                                     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>`                         | ``0``                                                                     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                  | :ref:`scroll_horizontal_custom_step<class_ScrollContainer_property_scroll_horizontal_custom_step>` | ``-1.0``                                                                  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_vertical<class_ScrollContainer_property_scroll_vertical>`                             | ``0``                                                                     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                  | :ref:`scroll_vertical_custom_step<class_ScrollContainer_property_scroll_vertical_custom_step>`     | ``-1.0``                                                                  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`tile_scroll_hint<class_ScrollContainer_property_tile_scroll_hint>`                           | ``false``                                                                 |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`         | :ref:`vertical_scroll_mode<class_ScrollContainer_property_vertical_scroll_mode>`                   | ``1``                                                                     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`ensure_control_visible<class_ScrollContainer_method_ensure_control_visible>`\ (\ control\: :ref:`Control<class_Control>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HScrollBar<class_HScrollBar>` | :ref:`get_h_scroll_bar<class_ScrollContainer_method_get_h_scroll_bar>`\ (\ )                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VScrollBar<class_VScrollBar>` | :ref:`get_v_scroll_bar<class_ScrollContainer_method_get_v_scroll_bar>`\ (\ )                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_horizontal_color<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>` | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_vertical_color<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`     | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_h_separation<class_ScrollContainer_theme_constant_scrollbar_h_separation>`          | ``0``                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_v_separation<class_ScrollContainer_theme_constant_scrollbar_v_separation>`          | ``0``                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`              |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>`                  |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_ScrollContainer_theme_style_focus>`                                               |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`panel<class_ScrollContainer_theme_style_panel>`                                               |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_ScrollContainer_signal_scroll_ended:

.. rst-class:: classref-signal

**scroll_ended**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_ended>`

Випробувано при прокручуванні зупинок при перетягування прокрученої площі * з сенсорною подією *. Цей сигнал *not* введений при прокручуванні, прокручування за допомогою миші або прокручування за допомогою клавіатури / грипада подій.

\ **Примітка:** Цей сигнал використовується тільки на Android або iOS, або на настільних / веб-платформах, коли :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_signal_scroll_started:

.. rst-class:: classref-signal

**scroll_started**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_started>`

Випробувано при прокручуванні починається при перетягування прокрученої площі w\ *ith сенсорний захід*. Цей сигнал *not* вдається при прокручуванні за допомогою прокручування, прокручування за допомогою миші або прокручування за допомогою клавіатури / грипаду подій.

\ **Примітка:** Цей сигнал використовується тільки на Android або iOS, або на настільних / веб-платформах, коли :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_ScrollContainer_ScrollMode:

.. rst-class:: classref-enumeration

enum **ScrollMode**: :ref:`🔗<enum_ScrollContainer_ScrollMode>`

.. _class_ScrollContainer_constant_SCROLL_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_DISABLED** = ``0``

Вимкніть вимкнені, прокрутка буде невидимимим.

.. _class_ScrollContainer_constant_SCROLL_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_AUTO** = ``1``

Увімкнути, прокрутку буде видно тільки при необхідності, тобто вміст контейнера більше, ніж контейнер.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_ALWAYS** = ``2``

Увімкнено прокрутку, прокрутка завжди буде видно.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_NEVER** = ``3``

Увімкніть, прокрутка буде прихована.

.. _class_ScrollContainer_constant_SCROLL_MODE_RESERVE:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_RESERVE** = ``4``

Поєднує :ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>` і :ref:`SCROLL_MODE_SHOW_ALWAYS<class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS>`. Смуга прокрутки відображається лише за необхідності, але розмір вмісту регулюється так, ніби він завжди був видимим. Це корисно для забезпечення того, щоб розмір вмісту залишався незмінним незалежно від того, чи видно смугу прокрутки.

.. rst-class:: classref-item-separator

----

.. _enum_ScrollContainer_ScrollHintMode:

.. rst-class:: classref-enumeration

enum **ScrollHintMode**: :ref:`🔗<enum_ScrollContainer_ScrollHintMode>`

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_DISABLED** = ``0``

Підказки прокручування ніколи не відображатимуться.

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_ALL** = ``1``

Підказки прокручування будуть відображатися вгорі та внизу (якщо вертикально) або ліворуч та праворуч (якщо горизонтально).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_TOP_AND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_TOP_AND_LEFT** = ``2``

Підказки прокручування будуть відображатися зверху (якщо вертикально) або ліворуч (якщо горизонтально).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_BOTTOM_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_BOTTOM_AND_RIGHT** = ``3``

Підказки прокручування будуть відображатися внизу (якщо горизонтальне розташування) або праворуч (якщо горизонтальне розташування).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ScrollContainer_property_draw_focus_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_focus_border** = ``false`` :ref:`🔗<class_ScrollContainer_property_draw_focus_border>`

.. rst-class:: classref-property-setget

- |void| **set_draw_focus_border**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_focus_border**\ (\ )

Якщо ``true``, :ref:`focus<class_ScrollContainer_theme_style_focus>` малюється, коли сфокусовано ScrollContainer або один із його вузлів-нащадків.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_follow_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_focus** = ``false`` :ref:`🔗<class_ScrollContainer_property_follow_focus>`

.. rst-class:: classref-property-setget

- |void| **set_follow_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_focus**\ (\ )

Якщо ``true``, ScrollContainer автоматично прокручує до фокусованих дітей (включаючи непрямі діти), щоб переконатися, що вони повністю видимі.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_horizontal_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **horizontal_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_horizontal_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_horizontal_scroll_mode**\ (\ )

Контролює, чи можна використовувати горизонтальну смугу прокручування та коли вона має бути видимою.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_deadzone:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_deadzone** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_deadzone>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_deadzone**\ (\ )

Дедзон для сенсорного прокручування. Низьке мертвозон робить прокручування більш чутливою.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_hint_mode:

.. rst-class:: classref-property

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **scroll_hint_mode** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_hint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_hint_mode**\ (\ value\: :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>`\ )
- :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **get_scroll_hint_mode**\ (\ )

Спосіб відображення підказок прокручування (індикаторів, які показують, що вміст все ще можна прокручувати в певному напрямку).

\ **Примітка:** Підказки не відображатимуться, якщо вміст можна прокручувати як вертикально, так і горизонтально.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_horizontal** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_h_scroll**\ (\ )

Поточне значення горизонтальної прокрутки. 

\ **Примітка.** Якщо ви встановлюєте це значення у функції :ref:`Node._ready()<class_Node_private_method__ready>` або раніше, його потрібно обернути :ref:`Object.set_deferred()<class_Object_method_set_deferred>`, оскільки :ref:`Range.max_value<class_Range_property_max_value>` смуги прокрутки ще не ініціалізовано. 

::
 
    func _ready(): 
        set_deferred("scroll_horizontal", 600) 

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **scroll_horizontal_custom_step** = ``-1.0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_horizontal_custom_step**\ (\ )

На відміну від :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>` використовується при натисканні на горизонтальну підшлункову планку та натисканні кнопки або при використанні клавіш зі стрілками при фокусі :ref:`ScrollBar<class_ScrollBar>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_vertical** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_v_scroll**\ (\ )

Поточне значення вертикальної прокрутки. 

\ **Примітка: ** Раннє налаштування потрібно відкласти, як і в :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>`. 

::
 
    func _ready(): 
        set_deferred("scroll_vertical", 600) 

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **scroll_vertical_custom_step** = ``-1.0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vertical_custom_step**\ (\ )

На відміну від :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>` використовується при натисканні на вертикальну підв’язкість та відключення кнопки або при використанні клавіш зі стрілками при фокусі :ref:`ScrollBar<class_ScrollBar>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_tile_scroll_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tile_scroll_hint** = ``false`` :ref:`🔗<class_ScrollContainer_property_tile_scroll_hint>`

.. rst-class:: classref-property-setget

- |void| **set_tile_scroll_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scroll_hint_tiled**\ (\ )

Якщо значення ``true``, текстура підказки прокручування буде розкладена мозаїкою, а не розтягнута. Див. :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_vertical_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **vertical_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_vertical_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_vertical_scroll_mode**\ (\ )

Контролює, чи можна використовувати вертикальну смугу прокручування та коли вона має бути видимою.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ScrollContainer_method_ensure_control_visible:

.. rst-class:: classref-method

|void| **ensure_control_visible**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_ScrollContainer_method_ensure_control_visible>`

Забезпечує задану ``параметровий контроль`` видиму (посередньо чи непряму дитину ScrollContainer). Використовуються :ref:`follow_focus<class_ScrollContainer_property_follow_focus>`.

\ **Примітка:** Це не буде працювати на вершині, яка була просто додана під час однакового каркасу. Якщо ви хочете прокрутити до нової дитини, ви повинні чекати до наступного кадру за допомогою :ref:`SceneTree.process_frame<class_SceneTree_signal_process_frame>`:

::

    add_child(child_node)
    await get_tree().process_frame
    ensure_control_visible(child_node)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_h_scroll_bar:

.. rst-class:: classref-method

:ref:`HScrollBar<class_HScrollBar>` **get_h_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_h_scroll_bar>`

Повертає горизонтальну прокрутку :ref:`HScrollBar<class_HScrollBar>` цього **ScrollContainer**.

\ **Попередження:** Це необхідний внутрішній вузол, видаляючи і звільняючи його може призвести до аварії. Якщо ви хочете відключити або приховати прокрутку, ви можете скористатися :ref:`horizontal_scroll_mode<class_ScrollContainer_property_horizontal_scroll_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_v_scroll_bar:

.. rst-class:: classref-method

:ref:`VScrollBar<class_VScrollBar>` **get_v_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_v_scroll_bar>`

Повертає вертикальні прокрутки :ref:`VScrollBar<class_VScrollBar>` цього **ScrollContainer**.

\ **Попередження:** Це необхідний внутрішній вузол, видаляючи і звільняючи його може призвести до аварії. Якщо ви хочете відключити або приховати прокрутку, ви можете скористатися :ref:`vertical_scroll_mode<class_ScrollContainer_property_vertical_scroll_mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_ScrollContainer_theme_color_scroll_hint_horizontal_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_horizontal_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>`

:ref:`Color<class_Color>` використовується для модуляції текстури :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_color_scroll_hint_vertical_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_vertical_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`

:ref:`Color<class_Color>` використовується для модуляції текстури :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_h_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_h_separation>`

Простір між вертикальною смугою прокручування ScrollContainer та його вмістом у пікселях. Простір не додаватиметься, якщо мінімальний розмір вмісту перевищує розмір ScrollContainer.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_v_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_v_separation>`

Простір між горизонтальною смугою прокручування ScrollContainer та його вмістом у пікселях. Простір не додаватиметься, якщо мінімальний розмір вмісту перевищує розмір ScrollContainer.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_horizontal:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_horizontal** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`

Індикатор, який відображатиметься, коли вміст все ще можна прокручувати горизонтально. Див. :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_vertical:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_vertical** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_vertical>`

Індикатор, який відображатиметься, коли вміст все ще можна прокручувати вертикально. Див. :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_ScrollContainer_theme_style_focus>`

Межа фокусу :ref:`StyleBox<class_StyleBox>` **ScrollContainer**. Використовується, лише якщо :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_ScrollContainer_theme_style_panel>`

Підручник :ref:`StyleBox<class_StyleBox>` **ScrollContainer**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
