:github_url: hide

.. _class_ColorPalette:

ColorPalette
============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于管理调色板的资源类，可以用 :ref:`ColorPicker<class_ColorPicker>` 来加载和保存。

.. rst-class:: classref-introduction-group

描述
----

**ColorPalette** 资源可用于存储和管理颜色的合集。常用于需要一组预设颜色的场景，例如创建主题、设计用户界面、管理游戏资产等。内置的 :ref:`ColorPicker<class_ColorPicker>` 控件无需额外编写代码就可以使用 **ColorPalette**\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`colors<class_ColorPalette_property_colors>` | ``PackedColorArray()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ColorPalette_property_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **colors** = ``PackedColorArray()`` :ref:`🔗<class_ColorPalette_property_colors>`

.. rst-class:: classref-property-setget

- |void| **set_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_colors**\ (\ )

包含调色板中颜色的 :ref:`PackedColorArray<class_PackedColorArray>`\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
