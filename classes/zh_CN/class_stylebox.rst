:github_url: hide

.. _class_StyleBox:

StyleBox
========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`, :ref:`StyleBoxFlat<class_StyleBoxFlat>`, :ref:`StyleBoxLine<class_StyleBoxLine>`, :ref:`StyleBoxTexture<class_StyleBoxTexture>`

用于为 UI 元素定义风格化方框的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

样式盒 **StyleBox** 是一个为 UI 元素定义风格化方框的抽象基类。常用于面板、按钮、\ :ref:`LineEdit<class_LineEdit>` 的背景、\ :ref:`Tree<class_Tree>` 的背景等，也用于针对指针信号检查透明遮罩。如果 **StyleBox** 是某个控件的遮罩，而遮罩检查失败，则点击和运动信号会穿透这个控件进入下方控件。

\ **注意：**\ 对于有\ *主题属性*\ 的控件节点，名为 ``focus`` 的 **StyleBox** 会显示在名为 ``normal``\ 、\ ``hover``\ 、\ ``pressed`` 的 **StyleBox**\ 之上。这样的行为有助于 ``focus`` **StyleBox** 在不同节点上复用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_left<class_StyleBox_property_content_margin_left>`     | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_right<class_StyleBox_property_content_margin_right>`   | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_top<class_StyleBox_property_content_margin_top>`       | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_draw<class_StyleBox_private_method__draw>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`           | :ref:`_get_draw_rect<class_StyleBox_private_method__get_draw_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`_get_minimum_size<class_StyleBox_private_method__get_minimum_size>`\ (\ ) |virtual| |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`_test_mask<class_StyleBox_private_method__test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`draw<class_StyleBox_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_content_margin<class_StyleBox_method_get_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CanvasItem<class_CanvasItem>` | :ref:`get_current_item_drawn<class_StyleBox_method_get_current_item_drawn>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_margin<class_StyleBox_method_get_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_minimum_size<class_StyleBox_method_get_minimum_size>`\ (\ ) |const|                                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_offset<class_StyleBox_method_get_offset>`\ (\ ) |const|                                                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin<class_StyleBox_method_set_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin_all<class_StyleBox_method_set_content_margin_all>`\ (\ offset\: :ref:`float<class_float>`\ )                                          |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`test_mask<class_StyleBox_method_test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_StyleBox_property_content_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_bottom** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

该样式盒内容的底边距。增加该值会从底部减少内容的可用空间。

如果该值为负，则忽略该值并使用特定于子项的边距。例如，对于 :ref:`StyleBoxFlat<class_StyleBoxFlat>`\ ，（如果有厚度的话）将使用边框厚度。

内容是什么由使用该样式盒的代码决定：例如，\ :ref:`Button<class_Button>` 会为其文本内容设置该内容边距。

应使用 :ref:`get_margin()<class_StyleBox_method_get_margin>` 作为消费者获取该值，而不是直接读取这些属性。这是因为它能够正确地尊重负值和上面提到的后备值。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_left** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

该样式盒内容的左边距。增加该值会从左侧减少内容的可用空间。

额外的注意事项请参阅 :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_right** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

此样式盒内容的右边距。增加此值会从右侧减少内容的可用空间。

额外的注意事项请参阅 :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_top** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

此样式盒内容的顶边距。增加此值会从顶部减少内容的可用空间。

额外的注意事项请参阅 :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_StyleBox_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| :ref:`🔗<class_StyleBox_private_method__draw>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_draw_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **_get_draw_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_draw_rect>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_minimum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_minimum_size>`

可以由用户实现的虚拟方法。样式盒在绘制时必须遵循所返回的自定义最小尺寸。默认情况下，\ :ref:`get_minimum_size()<class_StyleBox_method_get_minimum_size>` 仅考虑内容边距。可以覆盖这个方法添加其他尺寸限制。会使用默认行为和这个方法输出的组合，两个大小均进行考虑。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__test_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_draw>`

使用由给定 :ref:`RID<class_RID>` 标识的画布项目绘制此样式盒。

\ :ref:`RID<class_RID>` 值可以通过在现有 :ref:`CanvasItem<class_CanvasItem>` 派生节点上调用 :ref:`CanvasItem.get_canvas_item()<class_CanvasItem_method_get_canvas_item>` 得到，也可以在 :ref:`RenderingServer<class_RenderingServer>` 中使用 :ref:`RenderingServer.canvas_item_create()<class_RenderingServer_method_canvas_item_create>` 直接创建。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_content_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_content_margin>`

返回指定边 :ref:`Side<enum_@GlobalScope_Side>` 的默认边距。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_current_item_drawn:

.. rst-class:: classref-method

:ref:`CanvasItem<class_CanvasItem>` **get_current_item_drawn**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_current_item_drawn>`

返回此时处理其 :ref:`CanvasItem.NOTIFICATION_DRAW<class_CanvasItem_constant_NOTIFICATION_DRAW>` 或 :ref:`CanvasItem._draw()<class_CanvasItem_private_method__draw>` 回调的 :ref:`CanvasItem<class_CanvasItem>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_margin>`

返回指定边 :ref:`Side<enum_@GlobalScope_Side>` 的内容边距偏移量。

与 :ref:`Control<class_Control>` 的边距不同，正值会向内减小大小。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_minimum_size**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_minimum_size>`

返回此样式盒可以缩小到的最小尺寸。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_offset**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_offset>`

返回样式盒的“偏移量”。这个辅助函数返回一个等价于 ``Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))`` 的值。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin:

.. rst-class:: classref-method

|void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin>`

将指定边 :ref:`Side<enum_@GlobalScope_Side>` 的默认值设置为 ``offset`` 像素。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin_all:

.. rst-class:: classref-method

|void| **set_content_margin_all**\ (\ offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin_all>`

将所有边的默认边距设置为 ``offset`` 像素。

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_test_mask>`

测试矩形中的一个位置，返回它是否通过遮罩测试。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
