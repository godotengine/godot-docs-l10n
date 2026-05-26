:github_url: hide

.. _class_SplitContainer:

SplitContainer
==============

**Наследует:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`HSplitContainer<class_HSplitContainer>`, :ref:`VSplitContainer<class_VSplitContainer>`

Контейнер, в котором элементы управления для дочерних узлов располагаются горизонтально или вертикально, и предусмотрены захваты для регулировки соотношения разделения пространства между ними.

.. rst-class:: classref-introduction-group

Описание
----------------

Контейнер, который располагает дочерние элементы управления горизонтально или вертикально и создает между ними захватные элементы. Захватные элементы можно перетаскивать, чтобы изменять соотношение размеров между дочерними элементами управления.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование контейнеров <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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
   | :ref:`bool<class_bool>`                                         | :ref:`drag_nested_intersections<class_SplitContainer_property_drag_nested_intersections>`         | ``false``               |
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

Методы
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

Свойства темы
--------------------------

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

Сигналы
--------------

.. _class_SplitContainer_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_ended>`

Генерируется, когда пользователь заканчивает перетаскивание.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_started>`

Генерируется, когда пользователь начинает перетаскивание.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ offset\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplitContainer_signal_dragged>`

Вызывается при перетаскивании любого объекта пользователем.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_SplitContainer_DraggerVisibility:

.. rst-class:: classref-enumeration

enum **DraggerVisibility**: :ref:`🔗<enum_SplitContainer_DraggerVisibility>`

.. _class_SplitContainer_constant_DRAGGER_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_VISIBLE** = ``0``

Значок раздельного перетаскивателя всегда виден, когда :ref:`autohide<class_SplitContainer_theme_constant_autohide>` равно ``false``, в противном случае виден только при наведении курсора на него.

Размер значка захвата определяет минимальное :ref:`separation<class_SplitContainer_theme_constant_separation>`.

Значок перетаскивателя автоматически скрывается, если длина значка захвата больше, чем разделительная полоса.

.. _class_SplitContainer_constant_DRAGGER_HIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN** = ``1``

Значок раздельного перетаскивателя никогда не отображается независимо от значения :ref:`autohide<class_SplitContainer_theme_constant_autohide>`.

Размер значка перетаскивателя определяет минимальное :ref:`separation<class_SplitContainer_theme_constant_separation>`.

.. _class_SplitContainer_constant_DRAGGER_HIDDEN_COLLAPSED:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN_COLLAPSED** = ``2``

Значок перетаскивателя для разделения не отображается, а полоса разделения свернута до нулевой толщины.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SplitContainer_property_collapsed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collapsed** = ``false`` :ref:`🔗<class_SplitContainer_property_collapsed>`

.. rst-class:: classref-property-setget

- |void| **set_collapsed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collapsed**\ (\ )

Если ``true``, перетаскиватели будут отключены, а размеры дочерних элементов будут такими, как если бы все :ref:`split_offsets<class_SplitContainer_property_split_offsets>` было ``0``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_highlight_in_editor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_area_highlight_in_editor** = ``false`` :ref:`🔗<class_SplitContainer_property_drag_area_highlight_in_editor>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_highlight_in_editor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_area_highlight_in_editor_enabled**\ (\ )

Выделяет область перетаскивания :ref:`Rect2<class_Rect2>`, чтобы вы могли видеть, где она находится во время разработки. Область перетаскивания золотая, если :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>` равно ``true``, и красная, если ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_begin** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_begin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_begin**\ (\ )

Уменьшает размер области перетаскивания и разделительной полосы :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` в начале контейнера.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_end** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_end>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_end**\ (\ )

Уменьшает размер области перетаскивания и разделительной полосы :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` в конце контейнера.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_offset**\ (\ )

Смещает область перетаскивания по оси контейнера, чтобы предотвратить перекрытие области перетаскивания :ref:`ScrollBar<class_ScrollBar>` или другого выбираемого :ref:`Control<class_Control>` дочернего узла.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_nested_intersections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_nested_intersections** = ``false`` :ref:`🔗<class_SplitContainer_property_drag_nested_intersections>`

.. rst-class:: classref-property-setget

- |void| **set_drag_nested_intersections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dragging_nested_intersections**\ (\ )

Adds extra draggers at the intersection of the draggers of two SplitContainers to allow dragging both at once. This must be set to ``true`` for both SplitContainers, and one needs to be a descendant of the other. They also must be orthogonal (their :ref:`vertical<class_SplitContainer_property_vertical>` are different) and the descendant must be next to at least one of the ancestor's draggers (within :ref:`minimum_grab_thickness<class_SplitContainer_theme_constant_minimum_grab_thickness>`).

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragger_visibility:

.. rst-class:: classref-property

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **dragger_visibility** = ``0`` :ref:`🔗<class_SplitContainer_property_dragger_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_dragger_visibility**\ (\ value\: :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>`\ )
- :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **get_dragger_visibility**\ (\ )

Определяет видимость перетаскивателя. Это свойство не определяет, включено ли перетаскивание или нет. Для этого используйте :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragging_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dragging_enabled** = ``true`` :ref:`🔗<class_SplitContainer_property_dragging_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dragging_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dragging_enabled**\ (\ )

Включает или отключает раздельное перетаскивание.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **split_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_split_offset>`

.. rst-class:: classref-property-setget

- |void| **set_split_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_split_offset**\ (\ )

**Устарело:** Use :ref:`split_offsets<class_SplitContainer_property_split_offsets>` instead. The first element of the array is the split offset between the first two children.

Первый элемент :ref:`split_offsets<class_SplitContainer_property_split_offsets>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offsets:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **split_offsets** = ``PackedInt32Array(0)`` :ref:`🔗<class_SplitContainer_property_split_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_split_offsets**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_split_offsets**\ (\ )

Смещение для каждого перетаскиваемого элемента в пикселях. Каждое из них представляет собой смещение разделения между узлами :ref:`Control<class_Control>` до и после перетаскиваемого элемента, при этом ``0`` — положение по умолчанию. Положение по умолчанию определяется флагами расширения и минимальными размерами узлов :ref:`Control<class_Control>`. См. :ref:`Control.size_flags_horizontal<class_Control_property_size_flags_horizontal>`, :ref:`Control.size_flags_vertical<class_Control_property_size_flags_vertical>` и :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`.

Если ни один из узлов :ref:`Control<class_Control>` до перетаскиваемого элемента не расширен, положение по умолчанию будет в начале **SplitContainer**. Если ни один из узлов :ref:`Control<class_Control>` после перетаскиваемого элемента не расширен, положение по умолчанию будет в конце **SplitContainer**. Если перетаскиваемый элемент находится между расширенными узлами :ref:`Control<class_Control>`, положение по умолчанию будет посередине, исходя из :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>` и минимальных размеров.

\ **Примечание:** Если смещения при разделении приводят к перекрытию узлов :ref:`Control<class_Control>`, то при определении позиций приоритет будет иметь первое разделение.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_touch_dragger_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **touch_dragger_enabled** = ``false`` :ref:`🔗<class_SplitContainer_property_touch_dragger_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_touch_dragger_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_touch_dragger_enabled**\ (\ )

Если ``true``, сенсорный манипулятор перетаскивания будет включен для лучшего использования на экранах меньшего размера. В отличие от стандартного захвата, этот манипулятор перекрывает дочерние элементы **SplitContainer** и не влияет на их минимальное разделение. Стандартный захват больше не будет отображаться, если эта опция включена.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_SplitContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Если ``true``, **SplitContainer** расположит свои дочерние элементы вертикально, а не горизонтально.

Нельзя изменить при использовании :ref:`HSplitContainer<class_HSplitContainer>` и :ref:`VSplitContainer<class_VSplitContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SplitContainer_method_clamp_split_offset:

.. rst-class:: classref-method

|void| **clamp_split_offset**\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SplitContainer_method_clamp_split_offset>`

Ограничивает значения :ref:`split_offsets<class_SplitContainer_property_split_offsets>`, чтобы гарантировать, что они находятся в допустимых диапазонах и не перекрываются друг с другом. При возникновении перекрытий этот метод отдает приоритет одному смещению разделения (по индексу ``priority_index``), ограничивая все перекрывающиеся смещения разделения этим смещением.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_drag_area_control**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_control>`

**Устарело:** Use the first element of :ref:`get_drag_area_controls()<class_SplitContainer_method_get_drag_area_controls>` instead.

Возвращает область перетаскивания :ref:`Control<class_Control>`. Например, вы можете переместить предварительно настроенную кнопку в область перетаскивания :ref:`Control<class_Control>`, чтобы она перемещалась вместе с разделительной полосой. Попробуйте установить якоря :ref:`Button<class_Button>` на ``center`` до вызова ``reparent()``.

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_control())

\ **Примечание:** Область перетаскивания :ref:`Control<class_Control>` рисуется поверх дочерних элементов **SplitContainer**, поэтому объекты рисования :ref:`CanvasItem<class_CanvasItem>`, вызываемые из :ref:`Control<class_Control>`, и дочерние элементы, добавленные в :ref:`Control<class_Control>`, также будут отображаться поверх дочерних элементов **SplitContainer**. Попробуйте установить :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` пользовательских дочерних элементов на :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`, чтобы предотвратить блокировку мыши при перетаскивании, если это необходимо.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_controls:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] **get_drag_area_controls**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_controls>`

Возвращает массив элементов управления :ref:`Control<class_Control>` области перетаскивания. Это интерактивные узлы :ref:`Control<class_Control>` между каждым дочерним элементом. Например, это можно использовать для добавления предварительно настроенной кнопки к элементу управления :ref:`Control<class_Control>` области перетаскивания, чтобы она располагалась рядом с разделительной полосой. Попробуйте установить привязки :ref:`Button<class_Button>` в ``center`` перед вызовом :ref:`Node.reparent()<class_Node_method_reparent>`.

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_controls()[0])

\ **Примечание:** Элементы управления :ref:`Control<class_Control>` области перетаскивания отображаются поверх дочерних элементов **SplitContainer**, поэтому :ref:`CanvasItem<class_CanvasItem>` рисует объекты, вызываемые из области перетаскивания, и дочерние элементы, добавленные к ней, также будут отображаться поверх дочерних элементов **SplitContainer**. Попробуйте установить для элемента :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` пользовательских дочерних элементов значение :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`, чтобы предотвратить блокировку перетаскивания мыши, если это необходимо.

\ **Предупреждение:** Это необходимые внутренние узлы, их удаление или освобождение может привести к сбою.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_SplitContainer_theme_color_touch_dragger_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_color** = ``Color(1, 1, 1, 0.3)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_color>`

Цвет сенсорного перетаскивателя.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_hover_color** = ``Color(1, 1, 1, 0.6)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_hover_color>`

Цвет сенсорного ползунка при наведении курсора.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_pressed_color>`

Цвет сенсорного ползунка при нажатии.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_autohide:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **autohide** = ``1`` :ref:`🔗<class_SplitContainer_theme_constant_autohide>`

Логическое Bool значение. Если ``1`` (``true``), элементы захвата будут автоматически скрываться, когда они не находятся под курсором. Если ``0`` (``false``), элементы захвата всегда видны. :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` должен быть :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_minimum_grab_thickness:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **minimum_grab_thickness** = ``6`` :ref:`🔗<class_SplitContainer_theme_constant_minimum_grab_thickness>`

Минимальная толщина области, на которую пользователи могут щелкнуть, чтобы захватить разделительную полосу. Это гарантирует, что разделительную полосу можно будет перетаскивать, даже если размер :ref:`separation<class_SplitContainer_theme_constant_separation>` или :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` / :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` слишком мал для удобного выбора.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``12`` :ref:`🔗<class_SplitContainer_theme_constant_separation>`

Толщина разделительной полосы, то есть расстояние между каждым дочерним элементом контейнера. Это значение переопределяется размером значка захвата, если :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` установлено в :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>` или :ref:`DRAGGER_HIDDEN<class_SplitContainer_constant_DRAGGER_HIDDEN>`, и :ref:`separation<class_SplitContainer_theme_constant_separation>` меньше размера значка захвата по той же оси.

\ **Примечание:** Чтобы получить значения :ref:`separation<class_SplitContainer_theme_constant_separation>` меньше размера значка захвата, например, ``1 px`` тонкой линии, установите :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` или :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` в новое значение :ref:`ImageTexture<class_ImageTexture>`, что фактически устанавливает размер значка захвата равным ``0 px``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_SplitContainer_theme_icon_grabber>`

Значок, используемый для элементов захвата, отображаемых в разделителях. Он используется только в :ref:`HSplitContainer<class_HSplitContainer>` и :ref:`VSplitContainer<class_VSplitContainer>`. Для **SplitContainer** см. :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` и :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_grabber** :ref:`🔗<class_SplitContainer_theme_icon_h_grabber>`

Значок, используемый для элементов захвата, отображаемых в разделительных линиях, когда :ref:`vertical<class_SplitContainer_property_vertical>` имеет значение ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_h_touch_dragger>`

Значок, используемый для маркера перетаскивания, когда :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` имеет значение ``true``, а :ref:`vertical<class_SplitContainer_property_vertical>` имеет значение ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_touch_dragger>`

Значок, используемый для ручки перетаскивания, когда :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` равен ``true``. Используется только в :ref:`HSplitContainer<class_HSplitContainer>` и :ref:`VSplitContainer<class_VSplitContainer>`. Для **SplitContainer** см. :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>` и :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_grabber** :ref:`🔗<class_SplitContainer_theme_icon_v_grabber>`

Значок, используемый для элементов захвата, отображаемых в разделительных линиях, когда :ref:`vertical<class_SplitContainer_property_vertical>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_v_touch_dragger>`

Значок, используемый для маркера перетаскивания, когда :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` имеет значение ``true`` и :ref:`vertical<class_SplitContainer_property_vertical>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_style_split_bar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **split_bar_background** :ref:`🔗<class_SplitContainer_theme_style_split_bar_background>`

Определяет фон разделенной полосы, если ее толщина больше нуля.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
