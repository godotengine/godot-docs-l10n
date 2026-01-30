:github_url: hide

.. _class_StyleBoxLine:

StyleBoxLine
============

**继承：** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

显示一条线的 :ref:`StyleBox<class_StyleBox>`\ ，可以给定颜色和粗细。

.. rst-class:: classref-introduction-group

描述
----

显示一条线的 :ref:`StyleBox<class_StyleBox>`\ ，可以给定颜色和粗细。可以是横线也可以是竖线。可用作分隔符。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_StyleBoxLine_property_color>`           | ``Color(0, 0, 0, 1)`` |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_begin<class_StyleBoxLine_property_grow_begin>` | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_end<class_StyleBoxLine_property_grow_end>`     | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`     | :ref:`thickness<class_StyleBoxLine_property_thickness>`   | ``1``                 |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`vertical<class_StyleBoxLine_property_vertical>`     | ``false``             |
   +---------------------------+-----------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_StyleBoxLine_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_StyleBoxLine_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

线的颜色。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_begin** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_begin>`

.. rst-class:: classref-property-setget

- |void| **set_grow_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_begin**\ (\ )

线将在 **StyleBoxLine** 的边界之前延伸的像素数。如果设置为负值，则该线将从 **StyleBoxLine** 的边界内开始。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_end** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_end>`

.. rst-class:: classref-property-setget

- |void| **set_grow_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_end**\ (\ )

线将超出 **StyleBoxLine** 边界的像素数。如果设置为负值，则该线将在 **StyleBoxLine** 的边界内结束。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_thickness:

.. rst-class:: classref-property

:ref:`int<class_int>` **thickness** = ``1`` :ref:`🔗<class_StyleBoxLine_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_thickness**\ (\ )

线条的粗细（以像素为单位）。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_StyleBoxLine_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

如果为 ``true``\ ，则该线将是垂直的。如果 ``false``\ ，该线将是水平的。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
