:github_url: hide

.. _class_GraphElement:

GraphElement
============

**继承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`GraphFrame<class_GraphFrame>`, :ref:`GraphNode<class_GraphNode>`

表示可以放置在 :ref:`GraphEdit<class_GraphEdit>` 控件内的基本元素的容器。

.. rst-class:: classref-introduction-group

描述
----

**GraphElement** 允许为 :ref:`GraphEdit<class_GraphEdit>` 图表创建自定义元素。默认情况下，可以此类元素可以被选择、调整大小和重新定位，但它们无法被连接。对于允许连接的图形元素，请参阅 :ref:`GraphNode<class_GraphNode>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`draggable<class_GraphElement_property_draggable>`             | ``true``          |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position_offset<class_GraphElement_property_position_offset>` | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`resizable<class_GraphElement_property_resizable>`             | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`scaling_menus<class_GraphElement_property_scaling_menus>`     | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`selectable<class_GraphElement_property_selectable>`           | ``true``          |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`selected<class_GraphElement_property_selected>`               | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`resizer<class_GraphElement_theme_icon_resizer>` |
   +-----------------------------------+-------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_GraphElement_signal_delete_request:

.. rst-class:: classref-signal

**delete_request**\ (\ ) :ref:`🔗<class_GraphElement_signal_delete_request>`

请求删除 GraphElement 时发出。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_dragged>`

当 GraphElement 被拖动时发出。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_node_deselected:

.. rst-class:: classref-signal

**node_deselected**\ (\ ) :ref:`🔗<class_GraphElement_signal_node_deselected>`

当 GraphElement 被取消选择时发出。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_node_selected:

.. rst-class:: classref-signal

**node_selected**\ (\ ) :ref:`🔗<class_GraphElement_signal_node_selected>`

当 GraphElement 被选中时发出。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_position_offset_changed:

.. rst-class:: classref-signal

**position_offset_changed**\ (\ ) :ref:`🔗<class_GraphElement_signal_position_offset_changed>`

当 GraphElement 被移动时触发。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_raise_request:

.. rst-class:: classref-signal

**raise_request**\ (\ ) :ref:`🔗<class_GraphElement_signal_raise_request>`

当 GraphElement 被要求显示在其他节点之上时触发。在 GraphElement 获得焦点（鼠标点击进入）时触发。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_resize_end:

.. rst-class:: classref-signal

**resize_end**\ (\ new_size\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_resize_end>`

拖动调整大小手柄后释放鼠标按钮时发出（见 :ref:`resizable<class_GraphElement_property_resizable>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_resize_request:

.. rst-class:: classref-signal

**resize_request**\ (\ new_size\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_resize_request>`

当 GraphElement 被要求调整大小时发出。在拖动调整器手柄时发生（见 :ref:`resizable<class_GraphElement_property_resizable>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GraphElement_property_draggable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draggable** = ``true`` :ref:`🔗<class_GraphElement_property_draggable>`

.. rst-class:: classref-property-setget

- |void| **set_draggable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draggable**\ (\ )

如果为 ``true``\ ，则用户能够拖动该 GraphElement。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_GraphElement_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position_offset**\ (\ )

GraphElement 的偏移量，相对于 :ref:`GraphEdit<class_GraphEdit>` 的滚动偏移量。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_resizable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resizable** = ``false`` :ref:`🔗<class_GraphElement_property_resizable>`

.. rst-class:: classref-property-setget

- |void| **set_resizable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_resizable**\ (\ )

如果为 ``true``\ ，则用户可以调整 GraphElement 的大小。

\ **注意：**\ 拖动手柄只会发出 :ref:`resize_request<class_GraphElement_signal_resize_request>` 和 :ref:`resize_end<class_GraphElement_signal_resize_end>` 信号，GraphElement 需要手动调整大小。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_scaling_menus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scaling_menus** = ``false`` :ref:`🔗<class_GraphElement_property_scaling_menus>`

.. rst-class:: classref-property-setget

- |void| **set_scaling_menus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scaling_menus**\ (\ )

如果为 ``true``\ ，则作为该 GraphElement 后代的 :ref:`PopupMenu<class_PopupMenu>` 会随着 :ref:`GraphEdit<class_GraphEdit>` 的缩放而缩放。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_selectable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selectable** = ``true`` :ref:`🔗<class_GraphElement_property_selectable>`

.. rst-class:: classref-property-setget

- |void| **set_selectable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selectable**\ (\ )

如果为 ``true``\ ，则用户能够选中该 GraphElement。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selected** = ``false`` :ref:`🔗<class_GraphElement_property_selected>`

.. rst-class:: classref-property-setget

- |void| **set_selected**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selected**\ (\ )

如果为 ``true``\ ，则选中该 GraphElement 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_GraphElement_theme_icon_resizer:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **resizer** :ref:`🔗<class_GraphElement_theme_icon_resizer>`

用于调整大小的图标，在 :ref:`resizable<class_GraphElement_property_resizable>` 被启用时可见。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
