:github_url: hide

.. _class_MenuBar:

MenuBar
=======

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

水平菜单栏，会为每个 :ref:`PopupMenu<class_PopupMenu>` 类型的子节点创建一个菜单。

.. rst-class:: classref-introduction-group

描述
----

水平菜单栏，会为每个 :ref:`PopupMenu<class_PopupMenu>` 类型的子节点创建一个菜单。通过添加 :ref:`PopupMenu<class_PopupMenu>` 节点来创建新的项目。项目的标题由 :ref:`Window.title<class_Window_property_title>` 决定，如果 :ref:`Window.title<class_Window_property_title>` 为空则使用节点的名称。可以使用 :ref:`set_menu_title()<class_MenuBar_method_set_menu_title>` 覆盖项目标题。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flat<class_MenuBar_property_flat>`                             | ``false``                                                           |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`         | focus_mode                                                           | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`language<class_MenuBar_property_language>`                     | ``""``                                                              |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`prefer_global_menu<class_MenuBar_property_prefer_global_menu>` | ``true``                                                            |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`start_index<class_MenuBar_property_start_index>`               | ``-1``                                                              |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`switch_on_hover<class_MenuBar_property_switch_on_hover>`       | ``true``                                                            |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>` | :ref:`text_direction<class_MenuBar_property_text_direction>`         | ``0``                                                               |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_menu_count<class_MenuBar_method_get_menu_count>`\ (\ ) |const|                                                                  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PopupMenu<class_PopupMenu>` | :ref:`get_menu_popup<class_MenuBar_method_get_menu_popup>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_menu_title<class_MenuBar_method_get_menu_title>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_menu_tooltip<class_MenuBar_method_get_menu_tooltip>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_menu_disabled<class_MenuBar_method_is_menu_disabled>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_menu_hidden<class_MenuBar_method_is_menu_hidden>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_native_menu<class_MenuBar_method_is_native_menu>`\ (\ ) |const|                                                                  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_disable_shortcuts<class_MenuBar_method_set_disable_shortcuts>`\ (\ disabled\: :ref:`bool<class_bool>`\ )                        |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_disabled<class_MenuBar_method_set_menu_disabled>`\ (\ menu\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_hidden<class_MenuBar_method_set_menu_hidden>`\ (\ menu\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ )        |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_title<class_MenuBar_method_set_menu_title>`\ (\ menu\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ )       |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_tooltip<class_MenuBar_method_set_menu_tooltip>`\ (\ menu\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_MenuBar_theme_color_font_color>`                             | ``Color(0.875, 0.875, 0.875, 1)``   |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_disabled_color<class_MenuBar_theme_color_font_disabled_color>`           | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_focus_color<class_MenuBar_theme_color_font_focus_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_color<class_MenuBar_theme_color_font_hover_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_pressed_color<class_MenuBar_theme_color_font_hover_pressed_color>` | ``Color(1, 1, 1, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_MenuBar_theme_color_font_outline_color>`             | ``Color(0, 0, 0, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_pressed_color<class_MenuBar_theme_color_font_pressed_color>`             | ``Color(1, 1, 1, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`h_separation<class_MenuBar_theme_constant_h_separation>`                      | ``4``                               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_MenuBar_theme_constant_outline_size>`                      | ``0``                               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_MenuBar_theme_font_font>`                                          |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_MenuBar_theme_font_size_font_size>`                           |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`disabled<class_MenuBar_theme_style_disabled>`                                 |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`disabled_mirrored<class_MenuBar_theme_style_disabled_mirrored>`               |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover<class_MenuBar_theme_style_hover>`                                       |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_mirrored<class_MenuBar_theme_style_hover_mirrored>`                     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_pressed<class_MenuBar_theme_style_hover_pressed>`                       |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_pressed_mirrored<class_MenuBar_theme_style_hover_pressed_mirrored>`     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal<class_MenuBar_theme_style_normal>`                                     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_mirrored<class_MenuBar_theme_style_normal_mirrored>`                   |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed<class_MenuBar_theme_style_pressed>`                                   |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_mirrored<class_MenuBar_theme_style_pressed_mirrored>`                 |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MenuBar_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_MenuBar_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

扁平的 **MenuBar**\ ，不显示项目装饰。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_MenuBar_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Language code used for line-breaking and text shaping algorithms. If left empty, the current locale is used instead.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_prefer_global_menu:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **prefer_global_menu** = ``true`` :ref:`🔗<class_MenuBar_property_prefer_global_menu>`

.. rst-class:: classref-property-setget

- |void| **set_prefer_global_menu**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_prefer_global_menu**\ (\ )

如果为 ``true``\ ，则系统支持全局菜单时 **MenuBar** 会使用全局菜单。

\ **注意：**\ 如果为 ``true`` 且支持全局菜单，则不会显示该节点，其大小为零，\ :ref:`PopupMenu<class_PopupMenu>` 外的所有子节点都无法访问。

\ **注意：**\ 该属性会覆盖子节点的 :ref:`PopupMenu.prefer_native_menu<class_PopupMenu_property_prefer_native_menu>` 属性。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_start_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **start_index** = ``-1`` :ref:`🔗<class_MenuBar_property_start_index>`

.. rst-class:: classref-property-setget

- |void| **set_start_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_start_index**\ (\ )

在全局菜单中插入 **MenuBar** 项目的位置顺序。\ **MenuBar** 中的所有菜单项都始终会作为连续的范围插入。\ :ref:`start_index<class_MenuBar_property_start_index>` 较低的菜单会优先插入。\ :ref:`start_index<class_MenuBar_property_start_index>` 等于 ``-1`` 的菜单会最后插入。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_switch_on_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_hover** = ``true`` :ref:`🔗<class_MenuBar_property_switch_on_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_switch_on_hover**\ (\ )

如果为 ``true``\ ，当光标悬停在菜单项上方时，将关闭当前的 :ref:`PopupMenu<class_PopupMenu>` 并打开另一个。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_MenuBar_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

基础文本书写方向。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MenuBar_method_get_menu_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_menu_count**\ (\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_count>`

返回菜单项的数量。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_menu_popup**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_popup>`

返回与菜单项关联的 :ref:`PopupMenu<class_PopupMenu>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_title**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_title>`

返回菜单项的标题。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_tooltip>`

返回菜单项的工具提示。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_menu_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_menu_disabled**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_is_menu_disabled>`

Returns ``true`` if the menu item is disabled.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_menu_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_menu_hidden**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_is_menu_hidden>`

Returns ``true`` if the menu item is hidden.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_native_menu:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_native_menu**\ (\ ) |const| :ref:`🔗<class_MenuBar_method_is_native_menu>`

Returns ``true`` if the current system's global menu is supported and used by this **MenuBar**.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_disable_shortcuts>`

如果为 ``true``\ ，快捷方式将被禁用，无法用于触发按钮。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_disabled:

.. rst-class:: classref-method

|void| **set_menu_disabled**\ (\ menu\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_disabled>`

为 ``true`` 时，菜单项为禁用状态。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_hidden:

.. rst-class:: classref-method

|void| **set_menu_hidden**\ (\ menu\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_hidden>`

为 ``true`` 时，菜单项为隐藏状态。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_title:

.. rst-class:: classref-method

|void| **set_menu_title**\ (\ menu\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_title>`

设置菜单项的标题。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_tooltip:

.. rst-class:: classref-method

|void| **set_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_tooltip>`

设置菜单项的工具提示。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_MenuBar_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_color>`

菜单项的默认文字 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_MenuBar_theme_color_font_disabled_color>`

菜单项处于禁用状态时使用的文字 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_focus_color>`

菜单项处于聚焦状态时使用的文字 :ref:`Color<class_Color>`\ 。只替换按钮的正常文本颜色。禁用、悬停和按下状态优先于这个颜色。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_color>`

菜单项处于悬停状态时使用的文字 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_pressed_color>`

菜单项处于悬停且按下状态时使用的文字 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_outline_color>`

菜单项文本轮廓的色调。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_pressed_color>`

菜单项处于按下状态时使用的文字 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_MenuBar_theme_constant_h_separation>`

菜单项之间的水平距离。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_MenuBar_theme_constant_outline_size>`

文字轮廓的大小。

\ **注意：**\ 如果使用启用了 :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` 的字体，其 :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` 必须至少设置为 :ref:`outline_size<class_MenuBar_theme_constant_outline_size>` 的\ *两倍*\ ，轮廓渲染才能看起来正确。否则，轮廓可能会比预期的更早被切断。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_MenuBar_theme_font_font>`

菜单项文本的字体 :ref:`Font<class_Font>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_MenuBar_theme_font_size_font_size>`

菜单项文本的字体大小。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled** :ref:`🔗<class_MenuBar_theme_style_disabled>`

菜单项处于禁用状态时使用的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled_mirrored** :ref:`🔗<class_MenuBar_theme_style_disabled_mirrored>`

菜单项处于禁用状态时使用的 :ref:`StyleBox<class_StyleBox>`\ （用于从右至左布局）。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover** :ref:`🔗<class_MenuBar_theme_style_hover>`

菜单项处于悬停状态时使用的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_mirrored>`

菜单项处于悬停状态时使用的 :ref:`StyleBox<class_StyleBox>`\ （用于从右至左布局）。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed** :ref:`🔗<class_MenuBar_theme_style_hover_pressed>`

菜单项处于按下并悬停状态时使用的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_pressed_mirrored>`

菜单项处于按下并悬停状态时使用的 :ref:`StyleBox<class_StyleBox>`\ （用于从右至左布局）。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_MenuBar_theme_style_normal>`

菜单项的默认 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_mirrored** :ref:`🔗<class_MenuBar_theme_style_normal_mirrored>`

菜单项的默认 :ref:`StyleBox<class_StyleBox>`\ （用于从右至左布局）。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed** :ref:`🔗<class_MenuBar_theme_style_pressed>`

菜单项处于按下状态时使用的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_pressed_mirrored>`

菜单项处于按下状态时使用的 :ref:`StyleBox<class_StyleBox>`\ （用于从右至左布局）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
