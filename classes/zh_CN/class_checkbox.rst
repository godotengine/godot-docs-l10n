:github_url: hide

.. _class_CheckBox:

CheckBox
========

**继承：** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

代表二元选项的按钮。

.. rst-class:: classref-introduction-group

描述
----

**CheckBox** 允许用户在仅有的两个可能的选项中选择一个。它在功能上类似于 :ref:`CheckButton<class_CheckButton>`\ ，但外观不同。为了遵循既定的 UX 模式，建议在切换而\ **不会**\ 立即对某些内容产生影响时使用 **CheckBox**\ 。例如，切换后只会在按下确认按钮后才执行某些操作时，就可以使用它。

另见 :ref:`BaseButton<class_BaseButton>`\ ，其中包含与该节点相关的通用属性和方法。

当 :ref:`BaseButton.button_group<class_BaseButton_property_button_group>` 指定 :ref:`ButtonGroup<class_ButtonGroup>` 时，\ **CheckBox** 的外观将变为单选按钮，并使用各种 ``radio_*`` 主题属性。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | alignment   | ``0`` (overrides :ref:`Button<class_Button_property_alignment>`)              |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | toggle_mode | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_checked_color<class_CheckBox_theme_color_checkbox_checked_color>`     | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_unchecked_color<class_CheckBox_theme_color_checkbox_unchecked_color>` | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`check_v_offset<class_CheckBox_theme_constant_check_v_offset>`                  | ``0``                 |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked<class_CheckBox_theme_icon_checked>`                                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled<class_CheckBox_theme_icon_checked_disabled>`                  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked<class_CheckBox_theme_icon_radio_checked>`                        |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked_disabled<class_CheckBox_theme_icon_radio_checked_disabled>`      |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked<class_CheckBox_theme_icon_radio_unchecked>`                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked_disabled<class_CheckBox_theme_icon_radio_unchecked_disabled>`  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked<class_CheckBox_theme_icon_unchecked>`                                |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled<class_CheckBox_theme_icon_unchecked_disabled>`              |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_CheckBox_theme_color_checkbox_checked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_checked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_checked_color>`

勾选图标的颜色，该 **CheckBox** 被按下时显示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_color_checkbox_unchecked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_unchecked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_unchecked_color>`

未勾选图标的颜色，该 **CheckBox** 未被按下时显示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_constant_check_v_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **check_v_offset** = ``0`` :ref:`🔗<class_CheckBox_theme_constant_check_v_offset>`

渲染勾选图标时使用的垂直偏移量（单位：像素）。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked** :ref:`🔗<class_CheckBox_theme_icon_checked>`

勾选图标，该 **CheckBox** 被勾选时显示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_checked_disabled>`

勾选图标，该 **CheckBox** 被勾选且被禁用时显示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked** :ref:`🔗<class_CheckBox_theme_icon_radio_checked>`

勾选图标，该 **CheckBox** 被配置为单选按钮、被勾选时显示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_checked_disabled>`

勾选图标，该 **CheckBox** 被配置为单选按钮、被禁用且未勾选时显示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked>`

勾选图标，该 **CheckBox** 被配置为单选按钮、未勾选时显示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked_disabled>`

勾选图标，该 **CheckBox** 被配置为单选按钮、被禁用且未勾选时显示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked** :ref:`🔗<class_CheckBox_theme_icon_unchecked>`

勾选图标，该 **CheckBox** 未勾选时显示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_unchecked_disabled>`

勾选图标，该 **CheckBox** 未勾选且被禁用时显示。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
