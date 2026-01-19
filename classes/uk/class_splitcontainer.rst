:github_url: hide

.. _class_SplitContainer:

SplitContainer
==============

**Успадковує:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`HSplitContainer<class_HSplitContainer>`, :ref:`VSplitContainer<class_VSplitContainer>`

Контейнер, який розташовує дочірні елементи керування горизонтально або вертикально та надає засоби захоплення для налаштування коефіцієнтів поділу між ними.

.. rst-class:: classref-introduction-group

Опис
--------

Контейнер, який розташовує дочірні елементи керування горизонтально або вертикально та створює між ними граббери. Граббери можна перетягувати, щоб змінити співвідношення розмірів між дочірніми елементами керування.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання контейнерів <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`collapsed<class_SplitContainer_property_collapsed>`                                         | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`drag_area_highlight_in_editor<class_SplitContainer_property_drag_area_highlight_in_editor>` | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_margin_begin<class_SplitContainer_property_drag_area_margin_begin>`               | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_margin_end<class_SplitContainer_property_drag_area_margin_end>`                   | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_offset<class_SplitContainer_property_drag_area_offset>`                           | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` | :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>`                       | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>`                           | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`split_offset<class_SplitContainer_property_split_offset>`                                   | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                 | :ref:`split_offsets<class_SplitContainer_property_split_offsets>`                                 | ``PackedInt32Array(0)`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>`                 | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`vertical<class_SplitContainer_property_vertical>`                                           | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                     | :ref:`clamp_split_offset<class_SplitContainer_method_clamp_split_offset>`\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                              | :ref:`get_drag_area_control<class_SplitContainer_method_get_drag_area_control>`\ (\ )                                       |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] | :ref:`get_drag_area_controls<class_SplitContainer_method_get_drag_area_controls>`\ (\ )                                     |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_color<class_SplitContainer_theme_color_touch_dragger_color>`                 | ``Color(1, 1, 1, 0.3)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_hover_color<class_SplitContainer_theme_color_touch_dragger_hover_color>`     | ``Color(1, 1, 1, 0.6)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_pressed_color<class_SplitContainer_theme_color_touch_dragger_pressed_color>` | ``Color(1, 1, 1, 1)``   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`autohide<class_SplitContainer_theme_constant_autohide>`                                    | ``1``                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`minimum_grab_thickness<class_SplitContainer_theme_constant_minimum_grab_thickness>`        | ``6``                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`separation<class_SplitContainer_theme_constant_separation>`                                | ``12``                  |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`grabber<class_SplitContainer_theme_icon_grabber>`                                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>`                                      |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>`                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`touch_dragger<class_SplitContainer_theme_icon_touch_dragger>`                              |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`                                      |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>`               |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_SplitContainer_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_ended>`

Видається, коли користувач завершує перетягування.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_started>`

Видається, коли користувач починає перетягувати.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ offset\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplitContainer_signal_dragged>`

Видається, коли користувач перетягує будь-який елемент перетягування.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_SplitContainer_DraggerVisibility:

.. rst-class:: classref-enumeration

enum **DraggerVisibility**: :ref:`🔗<enum_SplitContainer_DraggerVisibility>`

.. _class_SplitContainer_constant_DRAGGER_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_VISIBLE** = ``0``

Піктограма розділеного перетягувача завжди видима, якщо :ref:`autohide<class_SplitContainer_theme_constant_autohide>` має значення ``false``, інакше вона відображається лише тоді, коли на неї наводиться курсор. 

Розмір піктограми захоплення визначає мінімальний :ref:`separation<class_SplitContainer_theme_constant_separation>`. 

Піктограма перетягування автоматично приховується, якщо довжина піктограми захоплювача більша за смугу розділення.

.. _class_SplitContainer_constant_DRAGGER_HIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN** = ``1``

Значок розділеного перетягувача ніколи не відображається незалежно від значення :ref:`autohide<class_SplitContainer_theme_constant_autohide>`.

Розмір піктограми захоплення визначає мінімальний :ref:`separation<class_SplitContainer_theme_constant_separation>`.

.. _class_SplitContainer_constant_DRAGGER_HIDDEN_COLLAPSED:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN_COLLAPSED** = ``2``

Значок розділеного перетягувача не видно, а панель розділення згорнуто до нульової товщини.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SplitContainer_property_collapsed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collapsed** = ``false`` :ref:`🔗<class_SplitContainer_property_collapsed>`

.. rst-class:: classref-property-setget

- |void| **set_collapsed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collapsed**\ (\ )

Якщо значення ``true``, перетягувачі будуть вимкнені, а розмір дочірніх елементів буде визначено так, ніби всі :ref:`split_offsets<class_SplitContainer_property_split_offsets>` дорівнюють ``0``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_highlight_in_editor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_area_highlight_in_editor** = ``false`` :ref:`🔗<class_SplitContainer_property_drag_area_highlight_in_editor>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_highlight_in_editor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_area_highlight_in_editor_enabled**\ (\ )

Виділяє область перетягування :ref:`Rect2<class_Rect2>`, щоб ви могли бачити, де вона знаходиться під час розробки. Зона перетягування є золотою, якщо :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>` має значення ``true``, і червоною, якщо ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_begin** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_begin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_begin**\ (\ )

Зменшує розмір області перетягування та панелі розділення :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` на початку контейнера.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_end** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_end>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_end**\ (\ )

Зменшує розмір області перетягування та панелі розділення :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` у кінці контейнера.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_offset**\ (\ )

Зміщує область перетягування на осі контейнера, щоб запобігти перекриттю області перетягування :ref:`ScrollBar<class_ScrollBar>` або іншого вибраного :ref:`Control<class_Control>` дочірнього вузла.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragger_visibility:

.. rst-class:: classref-property

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **dragger_visibility** = ``0`` :ref:`🔗<class_SplitContainer_property_dragger_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_dragger_visibility**\ (\ value\: :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>`\ )
- :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **get_dragger_visibility**\ (\ )

Визначає видимість перетягувача. Ця властивість не визначає, чи ввімкнено перетягування. Для цього використовуйте :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragging_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dragging_enabled** = ``true`` :ref:`🔗<class_SplitContainer_property_dragging_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dragging_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dragging_enabled**\ (\ )

Вмикає або вимикає розділене перетягування.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **split_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_split_offset>`

.. rst-class:: classref-property-setget

- |void| **set_split_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_split_offset**\ (\ )

**Застаріло:** Use :ref:`split_offsets<class_SplitContainer_property_split_offsets>` instead. The first element of the array is the split offset between the first two children.

Перший елемент :ref:`split_offsets<class_SplitContainer_property_split_offsets>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offsets:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **split_offsets** = ``PackedInt32Array(0)`` :ref:`🔗<class_SplitContainer_property_split_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_split_offsets**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_split_offsets**\ (\ )

Зміщення для кожного перетягувача в пікселях. Кожне з них – це зміщення розриву між вузлами :ref:`Control<class_Control>` до та після перетягувача, де ``0`` є позицією за замовчуванням. Положення за замовчуванням базується на прапорцях розгортання вузлів :ref:`Control<class_Control>` та мінімальних розмірах. Див. :ref:`Control.size_flags_horizontal<class_Control_property_size_flags_horizontal>`, :ref:`Control.size_flags_vertical<class_Control_property_size_flags_vertical>` та :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`.

Якщо жоден з вузлів :ref:`Control<class_Control>` перед перетягувачем не розгорнуто, позиція за замовчуванням буде на початку **SplitContainer**. Якщо жоден з вузлів :ref:`Control<class_Control>` після перетягувача не розгорнуто, позиція за замовчуванням буде в кінці **SplitContainer**. Якщо перетягувач знаходиться між розгорнутими вузлами :ref:`Control<class_Control>`, позиція за замовчуванням буде посередині, на основі :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>` та мінімальних розмірів.

 **Примітка:** Якщо зміщення розділення призводять до перекриття вузлів :ref:`Control<class_Control>`, перший розділення матиме пріоритет під час визначення позицій.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_touch_dragger_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **touch_dragger_enabled** = ``false`` :ref:`🔗<class_SplitContainer_property_touch_dragger_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_touch_dragger_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_touch_dragger_enabled**\ (\ )

Якщо значення ``true``, буде ввімкнено сенсорний маркер перетягування для кращої зручності використання на менших екранах. На відміну від стандартного інструмента захоплення, цей маркер перетягування перекриває дочірні елементи **SplitContainer** і не впливає на їх мінімальну відстань. Стандартний інструмент захоплення більше не відображатиметься, коли ця опція ввімкнена.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_SplitContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Якщо ``true``, то **SplitContainer** влаштує своїх дітей вертикально, а не горизонтально.

Не можна змінити при використанні :ref:`HSplitContainer<class_HSplitContainer>` і :ref:`VSplitContainer<class_VSplitContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SplitContainer_method_clamp_split_offset:

.. rst-class:: classref-method

|void| **clamp_split_offset**\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SplitContainer_method_clamp_split_offset>`

Фіксує значення :ref:`split_offsets<class_SplitContainer_property_split_offsets>`, щоб переконатися, що вони знаходяться в допустимих діапазонах і не перекриваються одне з одним. У разі перекриття цей метод надає пріоритет одному зміщенню розділення (за індексом ``priority_index``), фіксуючи до нього будь-які зміщення розділення, що перекриваються.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_drag_area_control**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_control>`

**Застаріло:** Use the first element of :ref:`get_drag_area_controls()<class_SplitContainer_method_get_drag_area_controls>` instead.

Повертає область перетягування :ref:`Control<class_Control>`. Наприклад, ви можете перемістити попередньо налаштовану кнопку в область перетягування :ref:`Control<class_Control>`, щоб вона рухалася разом із роздільною смугою. Спробуйте встановити прив’язки :ref:`Button<class_Button>` на ``center`` перед викликом ``reparent()``. 

::
 
    $BarnacleButton.reparent($SplitContainer.get_drag_area_control())  

\ **Примітка:** Область перетягування :ref:`Control<class_Control>` малюється поверх дочірніх елементів **SplitContainer**, тому об’єкти малювання :ref:`CanvasItem<class_CanvasItem>`, викликані з :ref:`Control<class_Control>`, і дочірні об’єкти, додані до :ref:`Control<class_Control>`, також відображатимуться над дочірніми елементами **SplitContainer**. Спробуйте встановити :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` користувацьких дочірніх елементів на :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`, щоб запобігти блокуванню перетягування мишею, якщо це потрібно. 

\ **Попередження:** Це обов’язковий внутрішній вузол, його видалення та звільнення може призвести до збою.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_controls:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] **get_drag_area_controls**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_controls>`

Повертає :ref:`Array<class_Array>` елементів керування області перетягування :ref:`Control<class_Control>`. Це взаємодіючі вузли :ref:`Control<class_Control>` між кожним дочірнім елементом. Наприклад, це можна використовувати для додавання попередньо налаштованої кнопки до області перетягування :ref:`Control<class_Control>`, щоб вона рухалася разом із роздільною панеллю. Спробуйте встановити якорі :ref:`Button<class_Button>` на ``center`` перед викликом методу :ref:`Node.reparent()<class_Node_method_reparent>`.

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_controls()[0])

\ **Примітка:** Елементи керування області перетягування :ref:`Control<class_Control>` малюються поверх дочірніх елементів **SplitContainer**, тому :ref:`CanvasItem<class_CanvasItem>` малює об'єкти, викликані з області перетягування, а дочірні елементи, додані до неї, також відображатимуться поверх дочірніх елементів **SplitContainer**. Спробуйте встановити :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` для користувацьких дочірніх елементів на :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`, щоб запобігти блокуванню перетягування миші, якщо це необхідно. 

\ **Попередження:** Це обов'язкові внутрішні вузли, їх видалення або звільнення може призвести до збою.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_SplitContainer_theme_color_touch_dragger_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_color** = ``Color(1, 1, 1, 0.3)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_color>`

Колір сенсорного перетягувача.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_hover_color** = ``Color(1, 1, 1, 0.6)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_hover_color>`

Колір сенсорного перетягувача при наведенні курсора.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_pressed_color>`

Колір сенсорного перетягувача при натисканні.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_autohide:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **autohide** = ``1`` :ref:`🔗<class_SplitContainer_theme_constant_autohide>`

Логічне значення. Якщо ``1`` (``true``), граббери автоматично приховаються, коли вони не знаходяться під курсором. Якщо ``0`` (``false``), граббери завжди видимі. :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` має бути :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_minimum_grab_thickness:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **minimum_grab_thickness** = ``6`` :ref:`🔗<class_SplitContainer_theme_constant_minimum_grab_thickness>`

Мінімальна товщина області, на яку користувачі можуть натиснути, щоб захопити розділювальну панель. Це гарантує, що розділювальну панель все ще можна буде перетягнути, якщо розмір :ref:`separation<class_SplitContainer_theme_constant_separation>` або :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` / :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` занадто вузький для легкого вибору.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``12`` :ref:`🔗<class_SplitContainer_theme_constant_separation>`

Товщина роздільної смуги, тобто проміжок між кожним дочірнім елементом контейнера. Це значення перевизначається розміром значка граббера, якщо :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` встановлено на :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>` або :ref:`DRAGGER_HIDDEN<class_SplitContainer_constant_DRAGGER_HIDDEN>`, а :ref:`separation<class_SplitContainer_theme_constant_separation>` менше за розмір значка граббера на тій самій осі.

\ **Примітка:** Щоб отримати значення :ref:`separation<class_SplitContainer_theme_constant_separation>`, менші за розмір значка граббера, наприклад, лінію росту ``1 px``, встановіть :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` або :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` на нове :ref:`ImageTexture<class_ImageTexture>`, що фактично встановлює розмір значка граббера на ``0 px``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_SplitContainer_theme_icon_grabber>`

Піктограма, яка використовується для елементів захоплення, намальованих у розділеннях. Використовується лише в :ref:`HSplitContainer<class_HSplitContainer>` та :ref:`VSplitContainer<class_VSplitContainer>`. Для **SplitContainer** дивіться :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` та :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_grabber** :ref:`🔗<class_SplitContainer_theme_icon_h_grabber>`

Піктограма, яка використовується для граберів, що намальовані на розділеннях, коли :ref:`vertical<class_SplitContainer_property_vertical>` має значення ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_h_touch_dragger>`

Піктограма, яка використовується для маркера перетягування, коли :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` має значення ``true``, а :ref:`vertical<class_SplitContainer_property_vertical>` має значення ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_touch_dragger>`

Піктограма, яка використовується для ручки перетягування, коли :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` має значення ``true``. Використовується лише в :ref:`HSplitContainer<class_HSplitContainer>` та :ref:`VSplitContainer<class_VSplitContainer>`. Для **SplitContainer** дивіться :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>` та :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_grabber** :ref:`🔗<class_SplitContainer_theme_icon_v_grabber>`

Піктограма, яка використовується для елементів захоплення, що намальовані на розділеннях, коли :ref:`vertical<class_SplitContainer_property_vertical>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_v_touch_dragger>`

Піктограма, яка використовується для маркера перетягування, коли :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` має значення ``true``, а :ref:`vertical<class_SplitContainer_property_vertical>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_style_split_bar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **split_bar_background** :ref:`🔗<class_SplitContainer_theme_style_split_bar_background>`

Визначає фон розділеної смуги, якщо її товщина більша за нуль.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
