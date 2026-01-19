:github_url: hide

.. _class_BackBufferCopy:

BackBufferCopy
==============

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

这种节点能够将屏幕中的某个区域复制到缓冲中，方便从着色器代码中访问。

.. rst-class:: classref-introduction-group

描述
----

用于后台缓冲当前显示屏幕的节点。会根据 :ref:`copy_mode<class_BackBufferCopy_property_copy_mode>` 对 **BackBufferCopy** 节点中定义的区域所覆盖的屏幕内容或整个屏幕进行缓冲。可以在着色器脚本中使用屏幕纹理来访问（即带有 ``hint_screen_texture`` 的 uniform 采样器）。

\ **注意：**\ 由于该节点继承自 :ref:`Node2D<class_Node2D>`\ （而非 :ref:`Control<class_Control>`\ ），因此锚点和边距不适用于子 :ref:`Control<class_Control>` 派生节点。这在调整窗口大小时可能会出现问题。为避免这种情况，请将 :ref:`Control<class_Control>` 派生节点添加为 **BackBufferCopy** 节点的\ *同级*\ 节点，而不是将它们添加为子节点。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`读屏着色器 <../tutorials/shaders/screen-reading_shaders>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------+---------------------------------+
   | :ref:`CopyMode<enum_BackBufferCopy_CopyMode>` | :ref:`copy_mode<class_BackBufferCopy_property_copy_mode>` | ``1``                           |
   +-----------------------------------------------+-----------------------------------------------------------+---------------------------------+
   | :ref:`Rect2<class_Rect2>`                     | :ref:`rect<class_BackBufferCopy_property_rect>`           | ``Rect2(-100, -100, 200, 200)`` |
   +-----------------------------------------------+-----------------------------------------------------------+---------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_BackBufferCopy_CopyMode:

.. rst-class:: classref-enumeration

enum **CopyMode**: :ref:`🔗<enum_BackBufferCopy_CopyMode>`

.. _class_BackBufferCopy_constant_COPY_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **COPY_MODE_DISABLED** = ``0``

禁用缓冲模式。这意味着该 **BackBufferCopy** 节点将直接使用它所覆盖的屏幕部分。

.. _class_BackBufferCopy_constant_COPY_MODE_RECT:

.. rst-class:: classref-enumeration-constant

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **COPY_MODE_RECT** = ``1``

**BackBufferCopy** 缓冲一个矩形区域。

.. _class_BackBufferCopy_constant_COPY_MODE_VIEWPORT:

.. rst-class:: classref-enumeration-constant

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **COPY_MODE_VIEWPORT** = ``2``

**BackBufferCopy** 缓冲整个屏幕。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_BackBufferCopy_property_copy_mode:

.. rst-class:: classref-property

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **copy_mode** = ``1`` :ref:`🔗<class_BackBufferCopy_property_copy_mode>`

.. rst-class:: classref-property-setget

- |void| **set_copy_mode**\ (\ value\: :ref:`CopyMode<enum_BackBufferCopy_CopyMode>`\ )
- :ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **get_copy_mode**\ (\ )

缓冲模式。

.. rst-class:: classref-item-separator

----

.. _class_BackBufferCopy_property_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **rect** = ``Rect2(-100, -100, 200, 200)`` :ref:`🔗<class_BackBufferCopy_property_rect>`

.. rst-class:: classref-property-setget

- |void| **set_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_rect**\ (\ )

该 **BackBufferCopy** 所覆盖的区域。只有当 :ref:`copy_mode<class_BackBufferCopy_property_copy_mode>` 为 :ref:`COPY_MODE_RECT<class_BackBufferCopy_constant_COPY_MODE_RECT>` 时才使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
