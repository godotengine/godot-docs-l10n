:github_url: hide

.. _class_GraphFrame:

GraphFrame
==========

**Наследует:** :ref:`GraphElement<class_GraphElement>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

GraphFrame — это специальный :ref:`GraphElement<class_GraphElement>`, который можно использовать для организации других :ref:`GraphElement<class_GraphElement>` внутри :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-introduction-group

Описание
----------------

GraphFrame — это специальный :ref:`GraphElement<class_GraphElement>`, к которому могут быть присоединены другие :ref:`GraphElement<class_GraphElement>`. Его можно настроить на автоматическое изменение размера, чтобы охватить все присоединенные :ref:`GraphElement<class_GraphElement>`. Если рамка перемещена, все присоединенные :ref:`GraphElement<class_GraphElement>` внутри нее также будут перемещены.

GraphFrame всегда хранится за слоем соединений, а другие :ref:`GraphElement<class_GraphElement>` — внутри :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` | ``true``                                                              |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`autoshrink_margin<class_GraphFrame_property_autoshrink_margin>`   | ``40``                                                                |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`drag_margin<class_GraphFrame_property_drag_margin>`               | ``16``                                                                |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>` | mouse_filter                                                            | ``0`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                    | :ref:`tint_color<class_GraphFrame_property_tint_color>`                 | ``Color(0.3, 0.3, 0.3, 0.75)``                                        |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`tint_color_enabled<class_GraphFrame_property_tint_color_enabled>` | ``false``                                                             |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                  | :ref:`title<class_GraphFrame_property_title>`                           | ``""``                                                                |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`HBoxContainer<class_HBoxContainer>` | :ref:`get_titlebar_hbox<class_GraphFrame_method_get_titlebar_hbox>`\ (\ ) |
   +-------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`resizer_color<class_GraphFrame_theme_color_resizer_color>`         | ``Color(0.875, 0.875, 0.875, 1)`` |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_GraphFrame_theme_style_panel>`                         |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel_selected<class_GraphFrame_theme_style_panel_selected>`       |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`titlebar<class_GraphFrame_theme_style_titlebar>`                   |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`titlebar_selected<class_GraphFrame_theme_style_titlebar_selected>` |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_GraphFrame_signal_autoshrink_changed:

.. rst-class:: classref-signal

**autoshrink_changed**\ (\ ) :ref:`🔗<class_GraphFrame_signal_autoshrink_changed>`

Вызывается при изменении :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` или :ref:`autoshrink_margin<class_GraphFrame_property_autoshrink_margin>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GraphFrame_property_autoshrink_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoshrink_enabled** = ``true`` :ref:`🔗<class_GraphFrame_property_autoshrink_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoshrink_enabled**\ (\ )

Если ``true``, прямоугольник рамки будет автоматически скорректирован так, чтобы охватить все прикрепленные :ref:`GraphElement<class_GraphElement>`.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_autoshrink_margin:

.. rst-class:: classref-property

:ref:`int<class_int>` **autoshrink_margin** = ``40`` :ref:`🔗<class_GraphFrame_property_autoshrink_margin>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_margin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_autoshrink_margin**\ (\ )

Поле вокруг присоединенных узлов, которое используется для расчета размера фрейма, когда :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_drag_margin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_margin** = ``16`` :ref:`🔗<class_GraphFrame_property_drag_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_margin**\ (\ )

Поле внутри рамки, которое можно использовать для перетаскивания рамки.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_tint_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_color** = ``Color(0.3, 0.3, 0.3, 0.75)`` :ref:`🔗<class_GraphFrame_property_tint_color>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_color**\ (\ )

Цвет рамки, когда :ref:`tint_color_enabled<class_GraphFrame_property_tint_color_enabled>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_tint_color_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tint_color_enabled** = ``false`` :ref:`🔗<class_GraphFrame_property_tint_color_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tint_color_enabled**\ (\ )

Если ``true``, цвет оттенка будет использоваться для тонирования рамки.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_GraphFrame_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Заголовок рамки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GraphFrame_method_get_titlebar_hbox:

.. rst-class:: classref-method

:ref:`HBoxContainer<class_HBoxContainer>` **get_titlebar_hbox**\ (\ ) :ref:`🔗<class_GraphFrame_method_get_titlebar_hbox>`

Возвращает :ref:`HBoxContainer<class_HBoxContainer>`, используемый для строки заголовка, содержащий только :ref:`Label<class_Label>` для отображения заголовка по умолчанию.

Это можно использовать для добавления пользовательских элементов управления в строку заголовка, таких как кнопки выбора или закрытия.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_GraphFrame_theme_color_resizer_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **resizer_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_GraphFrame_theme_color_resizer_color>`

Цветовая модуляция, примененная к значку изменения размера.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_GraphFrame_theme_style_panel>`

:ref:`StyleBox<class_StyleBox>` по умолчанию используемый для фона **GraphFrame**.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_panel_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel_selected** :ref:`🔗<class_GraphFrame_theme_style_panel_selected>`

:ref:`StyleBox<class_StyleBox>`, используемый для фона **GraphFrame**, когда он выбран.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_titlebar:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **titlebar** :ref:`🔗<class_GraphFrame_theme_style_titlebar>`

:ref:`StyleBox<class_StyleBox>`, используемый для заголовка **GraphFrame**.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_titlebar_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **titlebar_selected** :ref:`🔗<class_GraphFrame_theme_style_titlebar_selected>`

:ref:`StyleBox<class_StyleBox>`, используемый для заголовка **GraphFrame**, когда он выбран.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
