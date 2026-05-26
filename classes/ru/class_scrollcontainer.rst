:github_url: hide

.. _class_ScrollContainer:

ScrollContainer
===============

**Наследует:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`EditorInspector<class_EditorInspector>`

Контейнер, используемый для предоставления полос прокрутки дочернему элементу управления при необходимости.

.. rst-class:: classref-introduction-group

Описание
----------------

Контейнер, используемый для предоставления дочернему элементу управления полос прокрутки при необходимости. Полосы прокрутки будут автоматически отрисованы справа (для вертикали) или снизу (для горизонтали) и позволят перетаскивать видимый элемент управления (и его дочерние элементы) в пределах ScrollContainer. Полосы прокрутки также автоматически изменят размер захвата на основе :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` элемента управления относительно ScrollContainer.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование контейнеров <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Свойства темы
--------------------------

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

Сигналы
--------------

.. _class_ScrollContainer_signal_scroll_ended:

.. rst-class:: classref-signal

**scroll_ended**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_ended>`

Выдается, когда прокрутка останавливается при перетаскивании прокручиваемой области *событием касания*. Этот сигнал *не* выдается при прокрутке путем перетаскивания полосы прокрутки, прокрутки колесиком мыши или прокрутки с помощью событий клавиатуры/геймпада.

\ **Примечание:** Этот сигнал выдается только на Android или iOS, или на настольных/веб-платформах, когда включен :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_signal_scroll_started:

.. rst-class:: classref-signal

**scroll_started**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_started>`

Выдается при начале прокрутки при перетаскивании прокручиваемой области с *событием касания*. Этот сигнал *не* выдается при прокрутке путем перетаскивания полосы прокрутки, прокрутки колесиком мыши или прокрутки с помощью событий клавиатуры/геймпада.

\ **Примечание:** Этот сигнал выдается только на Android или iOS, или на настольных/веб-платформах, когда включен :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_ScrollContainer_ScrollMode:

.. rst-class:: classref-enumeration

enum **ScrollMode**: :ref:`🔗<enum_ScrollContainer_ScrollMode>`

.. _class_ScrollContainer_constant_SCROLL_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_DISABLED** = ``0``

Прокрутка отключена, полоса прокрутки будет невидима.

.. _class_ScrollContainer_constant_SCROLL_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_AUTO** = ``1``

Прокрутка включена, полоса прокрутки будет видна только при необходимости, т. е. если содержимое контейнера больше самого контейнера.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_ALWAYS** = ``2``

Прокрутка включена, полоса прокрутки всегда будет видна.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_NEVER** = ``3``

Прокрутка включена, полоса прокрутки будет скрыта.

.. _class_ScrollContainer_constant_SCROLL_MODE_RESERVE:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_RESERVE** = ``4``

Объединяет :ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>` и :ref:`SCROLL_MODE_SHOW_ALWAYS<class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS>`. Полоса прокрутки видна только при необходимости, но размер контента регулируется так, как если бы он был виден всегда. Это полезно для обеспечения того, чтобы размер контента оставался неизменным независимо от того, видна ли полоса прокрутки.

.. rst-class:: classref-item-separator

----

.. _enum_ScrollContainer_ScrollHintMode:

.. rst-class:: classref-enumeration

enum **ScrollHintMode**: :ref:`🔗<enum_ScrollContainer_ScrollHintMode>`

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_DISABLED** = ``0``

Подсказки при прокрутке никогда не будут отображаться.

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_ALL** = ``1``

Подсказки при прокрутке будут отображаться вверху и внизу (при вертикальной прокрутке) или слева и справа (при горизонтальной прокрутке).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_TOP_AND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_TOP_AND_LEFT** = ``2``

Подсказки при прокрутке будут отображаться вверху (если прокрутка вертикальная) или слева (если прокрутка горизонтальная).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_BOTTOM_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_BOTTOM_AND_RIGHT** = ``3``

Подсказки при прокрутке будут отображаться внизу (если горизонтальная прокрутка) или справа (если горизонтальная прокрутка).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ScrollContainer_property_draw_focus_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_focus_border** = ``false`` :ref:`🔗<class_ScrollContainer_property_draw_focus_border>`

.. rst-class:: classref-property-setget

- |void| **set_draw_focus_border**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_focus_border**\ (\ )

Если ``true``, :ref:`focus<class_ScrollContainer_theme_style_focus>` отрисовывается, когда ScrollContainer или один из его дочерних узлов находится в фокусе.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_follow_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_focus** = ``false`` :ref:`🔗<class_ScrollContainer_property_follow_focus>`

.. rst-class:: classref-property-setget

- |void| **set_follow_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_focus**\ (\ )

Если ``true``, ScrollContainer автоматически прокрутит до сфокусированных дочерних элементов (включая косвенные дочерние элементы), чтобы убедиться, что они полностью видны.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_horizontal_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **horizontal_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_horizontal_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_horizontal_scroll_mode**\ (\ )

Управляет возможностью использования горизонтальной полосы прокрутки и тем, когда она должна быть видна.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_deadzone:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_deadzone** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_deadzone>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_deadzone**\ (\ )

Мертвая зона для сенсорной прокрутки. Меньшая мертвая зона делает прокрутку более чувствительной.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_hint_mode:

.. rst-class:: classref-property

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **scroll_hint_mode** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_hint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_hint_mode**\ (\ value\: :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>`\ )
- :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **get_scroll_hint_mode**\ (\ )

Будут отображаться подсказки о прокрутке (индикаторы, показывающие, что контент все еще можно прокручивать в определенном направлении).

\ **Примечание:** Подсказки не будут отображаться, если контент можно прокручивать как вертикально, так и горизонтально.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_horizontal** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_h_scroll**\ (\ )

Текущее значение горизонтальной прокрутки.

\ **Примечание:** Если вы устанавливаете это значение в функции :ref:`Node._ready()<class_Node_private_method__ready>` или более ранней, его необходимо обернуть в :ref:`Object.set_deferred()<class_Object_method_set_deferred>`, поскольку :ref:`Range.max_value<class_Range_property_max_value>` полосы прокрутки еще не инициализирован.

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

Переопределяет :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>`, используемый при нажатии кнопок горизонтального увеличения и уменьшения внутренней полосы прокрутки или при использовании клавиш со стрелками, когда :ref:`ScrollBar<class_ScrollBar>` находится в фокусе.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_vertical** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_v_scroll**\ (\ )

Текущее значение вертикальной прокрутки.

\ **Примечание:** Раннюю установку необходимо отложить, как и в :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>`.

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

Переопределяет :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>`, используемый при нажатии кнопок вертикального увеличения и уменьшения внутренней полосы прокрутки или при использовании клавиш со стрелками, когда :ref:`ScrollBar<class_ScrollBar>` находится в фокусе.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_tile_scroll_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tile_scroll_hint** = ``false`` :ref:`🔗<class_ScrollContainer_property_tile_scroll_hint>`

.. rst-class:: classref-property-setget

- |void| **set_tile_scroll_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scroll_hint_tiled**\ (\ )

Если ``true``, текстура подсказки прокрутки будет мозаичной, а не растянутой. См. :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_vertical_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **vertical_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_vertical_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_vertical_scroll_mode**\ (\ )

Управляет возможностью использования вертикальной полосы прокрутки и тем, когда она должна быть видна.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ScrollContainer_method_ensure_control_visible:

.. rst-class:: classref-method

|void| **ensure_control_visible**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_ScrollContainer_method_ensure_control_visible>`

Гарантирует, что заданный ``control`` виден (должен быть прямым или косвенным дочерним элементом ScrollContainer). Используется :ref:`follow_focus<class_ScrollContainer_property_follow_focus>`.

\ **Примечание:** Это не будет работать на узле, который был только что добавлен в том же кадре. Если вы хотите прокрутить до недавно добавленного дочернего элемента, вы должны дождаться следующего кадра, используя :ref:`SceneTree.process_frame<class_SceneTree_signal_process_frame>`:

::

    add_child(child_node)
    await get_tree().process_frame
    ensure_control_visible(child_node)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_h_scroll_bar:

.. rst-class:: classref-method

:ref:`HScrollBar<class_HScrollBar>` **get_h_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_h_scroll_bar>`

Возвращает горизонтальную полосу прокрутки :ref:`HScrollBar<class_HScrollBar>` этого **ScrollContainer**.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите отключить или скрыть полосу прокрутки, вы можете использовать :ref:`horizontal_scroll_mode<class_ScrollContainer_property_horizontal_scroll_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_v_scroll_bar:

.. rst-class:: classref-method

:ref:`VScrollBar<class_VScrollBar>` **get_v_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_v_scroll_bar>`

Возвращает вертикальную полосу прокрутки :ref:`VScrollBar<class_VScrollBar>` этого **ScrollContainer**.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите отключить или скрыть полосу прокрутки, вы можете использовать :ref:`vertical_scroll_mode<class_ScrollContainer_property_vertical_scroll_mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_ScrollContainer_theme_color_scroll_hint_horizontal_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_horizontal_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>`

:ref:`Color<class_Color>` используется для модуляции текстуры :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_color_scroll_hint_vertical_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_vertical_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`

:ref:`Color<class_Color>` используется для модуляции текстуры :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_h_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_h_separation>`

Расстояние между вертикальной полосой прокрутки ScrollContainer и его содержимым, в пикселях. Если минимальный размер содержимого превышает размер ScrollContainer, расстояние не добавляется.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_v_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_v_separation>`

Расстояние между горизонтальной полосой прокрутки ScrollContainer и его содержимым, в пикселях. Если минимальный размер содержимого превышает размер ScrollContainer, расстояние не добавляется.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_horizontal:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_horizontal** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`

Индикатор, который будет отображаться, когда контент еще можно прокручивать по горизонтали. См. :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_vertical:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_vertical** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_vertical>`

Индикатор, который будет отображаться, когда контент еще можно прокручивать вертикально. См. :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_ScrollContainer_theme_style_focus>`

Граница фокуса :ref:`StyleBox<class_StyleBox>` **ScrollContainer**. Используется только если :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_ScrollContainer_theme_style_panel>`

Фон :ref:`StyleBox<class_StyleBox>` **ScrollContainer**.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
