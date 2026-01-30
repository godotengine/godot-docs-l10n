:github_url: hide

.. _class_GraphFrame:

GraphFrame
==========

**继承：** :ref:`GraphElement<class_GraphElement>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

GraphFrame 是一种特殊的 :ref:`GraphElement<class_GraphElement>`\ ，可用于组织 :ref:`GraphEdit<class_GraphEdit>` 中的其他 :ref:`GraphElement<class_GraphElement>`\ 。

.. rst-class:: classref-introduction-group

描述
----

GraphFrame 是一种特殊的 :ref:`GraphElement<class_GraphElement>`\ ，其他 :ref:`GraphElement<class_GraphElement>` 可以附加到其上。可以将其配置为自动调整大小以包含所有附加的 :ref:`GraphElement<class_GraphElement>`\ 。如果移动该框，则其内的所有附加 :ref:`GraphElement<class_GraphElement>` 也会移动。

GraphFrame 在 :ref:`GraphEdit<class_GraphEdit>` 内始终位于连接层和其他 :ref:`GraphElement<class_GraphElement>` 后面。

.. rst-class:: classref-reftable-group

属性
----

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

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`HBoxContainer<class_HBoxContainer>` | :ref:`get_titlebar_hbox<class_GraphFrame_method_get_titlebar_hbox>`\ (\ ) |
   +-------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主题属性
--------

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

信号
----

.. _class_GraphFrame_signal_autoshrink_changed:

.. rst-class:: classref-signal

**autoshrink_changed**\ (\ ) :ref:`🔗<class_GraphFrame_signal_autoshrink_changed>`

更改 :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` 或 :ref:`autoshrink_margin<class_GraphFrame_property_autoshrink_margin>` 时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GraphFrame_property_autoshrink_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoshrink_enabled** = ``true`` :ref:`🔗<class_GraphFrame_property_autoshrink_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoshrink_enabled**\ (\ )

如果为 ``true``\ ，则框的矩形将自动调整以包含所有附加的 :ref:`GraphElement<class_GraphElement>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_autoshrink_margin:

.. rst-class:: classref-property

:ref:`int<class_int>` **autoshrink_margin** = ``40`` :ref:`🔗<class_GraphFrame_property_autoshrink_margin>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_margin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_autoshrink_margin**\ (\ )

当 :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` 为 ``true`` 时，附加节点周围用于计算框大小的边距。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_drag_margin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_margin** = ``16`` :ref:`🔗<class_GraphFrame_property_drag_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_margin**\ (\ )

框架的内部边距，可用于拖拽该框架。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_tint_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_color** = ``Color(0.3, 0.3, 0.3, 0.75)`` :ref:`🔗<class_GraphFrame_property_tint_color>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_color**\ (\ )

框架在 :ref:`tint_color_enabled<class_GraphFrame_property_tint_color_enabled>` 为 ``true`` 时的颜色。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_tint_color_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tint_color_enabled** = ``false`` :ref:`🔗<class_GraphFrame_property_tint_color_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tint_color_enabled**\ (\ )

如果为 ``true``\ ，则会使用着色颜色着色框架。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_GraphFrame_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

框架的标题。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GraphFrame_method_get_titlebar_hbox:

.. rst-class:: classref-method

:ref:`HBoxContainer<class_HBoxContainer>` **get_titlebar_hbox**\ (\ ) :ref:`🔗<class_GraphFrame_method_get_titlebar_hbox>`

返回标题栏所使用的 :ref:`HBoxContainer<class_HBoxContainer>`\ ，默认只包含一个 :ref:`Label<class_Label>`\ ，用于显示标题。

可用于向标题栏添加自定义控件，例如选项和关闭按钮等。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_GraphFrame_theme_color_resizer_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **resizer_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_GraphFrame_theme_color_resizer_color>`

应用于调整尺寸大小图标的颜色调制。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_GraphFrame_theme_style_panel>`

用于该 **GraphFrame** 背景的默认 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_panel_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel_selected** :ref:`🔗<class_GraphFrame_theme_style_panel_selected>`

当 **GraphFrame** 被选中时，其背景使用的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_titlebar:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **titlebar** :ref:`🔗<class_GraphFrame_theme_style_titlebar>`

用于 **GraphFrame** 标题栏的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_titlebar_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **titlebar_selected** :ref:`🔗<class_GraphFrame_theme_style_titlebar_selected>`

当 **GraphFrame** 被选中时，用于其标题栏的 :ref:`StyleBox<class_StyleBox>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
