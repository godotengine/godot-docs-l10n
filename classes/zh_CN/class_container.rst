:github_url: hide

.. _class_Container:

Container
=========

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AspectRatioContainer<class_AspectRatioContainer>`, :ref:`BoxContainer<class_BoxContainer>`, :ref:`CenterContainer<class_CenterContainer>`, :ref:`EditorProperty<class_EditorProperty>`, :ref:`FlowContainer<class_FlowContainer>`, :ref:`FoldableContainer<class_FoldableContainer>`, :ref:`GraphElement<class_GraphElement>`, :ref:`GridContainer<class_GridContainer>`, :ref:`MarginContainer<class_MarginContainer>`, :ref:`PanelContainer<class_PanelContainer>`, :ref:`ScrollContainer<class_ScrollContainer>`, :ref:`SplitContainer<class_SplitContainer>`, :ref:`SubViewportContainer<class_SubViewportContainer>`, :ref:`TabContainer<class_TabContainer>`

所有 GUI 容器的基类。

.. rst-class:: classref-introduction-group

描述
----

所有 GUI 容器的基础节点。\ **Container** 包含其他控件，并自动以某种方式排列它们。可以继承此类来生成自定义的容器类。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------+--------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>` | mouse_filter | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +----------------------------------------------+--------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_horizontal<class_Container_private_method__get_allowed_size_flags_horizontal>`\ (\ ) |virtual| |const|              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_vertical<class_Container_private_method__get_allowed_size_flags_vertical>`\ (\ ) |virtual| |const|                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fit_child_in_rect<class_Container_method_fit_child_in_rect>`\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`queue_sort<class_Container_method_queue_sort>`\ (\ )                                                                                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Container_signal_pre_sort_children:

.. rst-class:: classref-signal

**pre_sort_children**\ (\ ) :ref:`🔗<class_Container_signal_pre_sort_children>`

子节点将要被排序时发出。

.. rst-class:: classref-item-separator

----

.. _class_Container_signal_sort_children:

.. rst-class:: classref-signal

**sort_children**\ (\ ) :ref:`🔗<class_Container_signal_sort_children>`

需要对子节点进行排序时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_PRE_SORT_CHILDREN** = ``50`` :ref:`🔗<class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN>`

在子节点将要被排序之前通知，以防有事情需要事先处理。

.. _class_Container_constant_NOTIFICATION_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_SORT_CHILDREN** = ``51`` :ref:`🔗<class_Container_constant_NOTIFICATION_SORT_CHILDREN>`

对子节点进行排序时的通知，必须立即服从。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Container_private_method__get_allowed_size_flags_horizontal:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_horizontal**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_horizontal>`

实现以返回子节点允许的水平 :ref:`SizeFlags<enum_Control_SizeFlags>` 列表。这在技术上并不妨碍任何其他大小标志的使用，如果你的实现需要这样做。这只会限制检查器停靠面板中用户可用的选项。

\ **注意：**\ 没有大小标志等同于有 :ref:`Control.SIZE_SHRINK_BEGIN<class_Control_constant_SIZE_SHRINK_BEGIN>`\ 。因此，该值始终是隐式允许的。

.. rst-class:: classref-item-separator

----

.. _class_Container_private_method__get_allowed_size_flags_vertical:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_vertical**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_vertical>`

实现以返回子节点允许的垂直 :ref:`SizeFlags<enum_Control_SizeFlags>` 列表。这在技术上并不妨碍任何其他大小标志的使用，如果你的实现需要这样做。这只会限制检查器停靠面板中用户可用的选项。

\ **注意：**\ 没有大小标志等同于有 :ref:`Control.SIZE_SHRINK_BEGIN<class_Control_constant_SIZE_SHRINK_BEGIN>`\ 。因此，该值始终是隐式允许的。

.. rst-class:: classref-item-separator

----

.. _class_Container_method_fit_child_in_rect:

.. rst-class:: classref-method

|void| **fit_child_in_rect**\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Container_method_fit_child_in_rect>`

在给定的矩形中适配子控件。这主要是用于创建自定义容器类的辅助工具。

.. rst-class:: classref-item-separator

----

.. _class_Container_method_queue_sort:

.. rst-class:: classref-method

|void| **queue_sort**\ (\ ) :ref:`🔗<class_Container_method_queue_sort>`

将子节点的重排加入队列。虽然会被自动调用，但也可以在需要时手动调用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
