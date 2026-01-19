:github_url: hide

.. _class_ColorPickerButton:

ColorPickerButton
=================

**继承：** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

点击后会显示 :ref:`ColorPicker<class_ColorPicker>` 的按钮。

.. rst-class:: classref-introduction-group

描述
----

封装一个 :ref:`ColorPicker<class_ColorPicker>`\ ，按下按钮即可访问该控件。按下按钮会切换 :ref:`ColorPicker<class_ColorPicker>` 的可见性。

另见 :ref:`BaseButton<class_BaseButton>`\ ，其中包含与该节点关联的通用属性和方法。

\ **注意：**\ 默认情况下，按钮的宽度可能不足以使颜色预览色板可见。确保将 :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` 设置为足够大的值，以便为按钮提供足够的空间。

.. rst-class:: classref-introduction-group

教程
----

- `2D GD 画图演示 <https://godotengine.org/asset-library/asset/2768>`__

- `GUI 拖放演示 <https://godotengine.org/asset-library/asset/2767>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_ColorPickerButton_property_color>`                   | ``Color(0, 0, 0, 1)``                                                         |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`edit_alpha<class_ColorPickerButton_property_edit_alpha>`         | ``true``                                                                      |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`edit_intensity<class_ColorPickerButton_property_edit_intensity>` | ``true``                                                                      |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | toggle_mode                                                            | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------+
   | :ref:`ColorPicker<class_ColorPicker>` | :ref:`get_picker<class_ColorPickerButton_method_get_picker>`\ (\ ) |
   +---------------------------------------+--------------------------------------------------------------------+
   | :ref:`PopupPanel<class_PopupPanel>`   | :ref:`get_popup<class_ColorPickerButton_method_get_popup>`\ (\ )   |
   +---------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`bg<class_ColorPickerButton_theme_icon_bg>` |
   +-----------------------------------+--------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_ColorPickerButton_signal_color_changed:

.. rst-class:: classref-signal

**color_changed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPickerButton_signal_color_changed>`

颜色改变时发出。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_signal_picker_created:

.. rst-class:: classref-signal

**picker_created**\ (\ ) :ref:`🔗<class_ColorPickerButton_signal_picker_created>`

创建 :ref:`ColorPicker<class_ColorPicker>` 时（第一次按下按钮）发出。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_signal_popup_closed:

.. rst-class:: classref-signal

**popup_closed**\ (\ ) :ref:`🔗<class_ColorPickerButton_signal_popup_closed>`

当 :ref:`ColorPicker<class_ColorPicker>` 关闭时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ColorPickerButton_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ColorPickerButton_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_pick_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_pick_color**\ (\ )

当前选择的颜色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_property_edit_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_alpha** = ``true`` :ref:`🔗<class_ColorPickerButton_property_edit_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_edit_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_alpha**\ (\ )

如果为 ``true``\ ，则显示的 :ref:`ColorPicker<class_ColorPicker>` 中的 Alpha 通道将可见。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_property_edit_intensity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_intensity** = ``true`` :ref:`🔗<class_ColorPickerButton_property_edit_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_edit_intensity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_intensity**\ (\ )

如果为 ``true``\ ，则显示的 :ref:`ColorPicker<class_ColorPicker>` 中的强度滑块将可见。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ColorPickerButton_method_get_picker:

.. rst-class:: classref-method

:ref:`ColorPicker<class_ColorPicker>` **get_picker**\ (\ ) :ref:`🔗<class_ColorPickerButton_method_get_picker>`

返回此节点所切换的 :ref:`ColorPicker<class_ColorPicker>`\ 。

\ **警告：**\ 这是一个必需的内部节点，移除和释放它可能会导致崩溃。如果你希望隐藏它或其所有子项，请使用其 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 属性。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupPanel<class_PopupPanel>` **get_popup**\ (\ ) :ref:`🔗<class_ColorPickerButton_method_get_popup>`

返回该控件的 :ref:`PopupPanel<class_PopupPanel>`\ ，它允许连接到其弹出信号。这允许在显示或隐藏 ColorPicker 时处理事件。

\ **警告：**\ 这是一个必需的内部节点，移除和释放它可能会导致崩溃。如果希望隐藏它或它的任何子项，请使用它们的 :ref:`Window.visible<class_Window_property_visible>` 属性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_ColorPickerButton_theme_icon_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **bg** :ref:`🔗<class_ColorPickerButton_theme_icon_bg>`

颜色预览的背景将在按钮上显示。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
