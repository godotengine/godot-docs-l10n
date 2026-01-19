:github_url: hide

.. _class_ReferenceRect:

ReferenceRect
=============

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于设计 UI 的矩形框。

.. rst-class:: classref-introduction-group

描述
----

仅在对应矩形周围上显示彩色边框的矩形框（见 :ref:`Control.get_rect()<class_Control_method_get_rect>`\ ）。可以用来在测试时显示 :ref:`Control<class_Control>` 的范围。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`border_color<class_ReferenceRect_property_border_color>` | ``Color(1, 0, 0, 1)`` |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`border_width<class_ReferenceRect_property_border_width>` | ``1.0``               |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`editor_only<class_ReferenceRect_property_editor_only>`   | ``true``              |
   +---------------------------+----------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ReferenceRect_property_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **border_color** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_ReferenceRect_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

设置该 **ReferenceRect** 的边框颜色。

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_border_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_width** = ``1.0`` :ref:`🔗<class_ReferenceRect_property_border_width>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_width**\ (\ )

设置该 **ReferenceRect** 的边框宽度。边界相对于矩形框同时向内向外伸长。

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``true`` :ref:`🔗<class_ReferenceRect_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_editor_only**\ (\ )

如果为 ``true``\ ，则 **ReferenceRect** 仅在编辑器中可见。否则，\ **ReferenceRect** 将在正在运行的项目中可见。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
