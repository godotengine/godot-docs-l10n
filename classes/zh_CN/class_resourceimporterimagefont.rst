:github_url: hide

.. _class_ResourceImporterImageFont:

ResourceImporterImageFont
=========================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入位图字体，所有字形使用的都是相同的宽高。

.. rst-class:: classref-introduction-group

描述
----

这种基于图像的工作流程比 :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>` 更易于使用，但它要求所有字形具有相同的宽度和高度，字形前进和绘制偏移可以自定义。这使得 **ResourceImporterImageFont** 最适合固定宽度的字体。

另见 :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `位图字体——使用字体 <../tutorials/ui/gui_using_fonts.html#bitmap-fonts>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`ascent<class_ResourceImporterImageFont_property_ascent>`                     | ``0``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Rect2i<class_Rect2i>`                       | :ref:`character_margin<class_ResourceImporterImageFont_property_character_margin>` | ``Rect2i(0, 0, 0, 0)``  |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`character_ranges<class_ResourceImporterImageFont_property_character_ranges>` | ``PackedStringArray()`` |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`columns<class_ResourceImporterImageFont_property_columns>`                   | ``1``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`compress<class_ResourceImporterImageFont_property_compress>`                 | ``true``                |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`descent<class_ResourceImporterImageFont_property_descent>`                   | ``0``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`fallbacks<class_ResourceImporterImageFont_property_fallbacks>`               | ``[]``                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Rect2i<class_Rect2i>`                       | :ref:`image_margin<class_ResourceImporterImageFont_property_image_margin>`         | ``Rect2i(0, 0, 0, 0)``  |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`kerning_pairs<class_ResourceImporterImageFont_property_kerning_pairs>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`rows<class_ResourceImporterImageFont_property_rows>`                         | ``1``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`scaling_mode<class_ResourceImporterImageFont_property_scaling_mode>`         | ``2``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ResourceImporterImageFont_property_ascent:

.. rst-class:: classref-property

:ref:`int<class_int>` **ascent** = ``0`` :ref:`🔗<class_ResourceImporterImageFont_property_ascent>`

字体的上高（基线上方的像素数）。如果设为 ``0`` 则使用字符高度的一半。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_character_margin:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **character_margin** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_ResourceImporterImageFont_property_character_margin>`

在每个导入的字形周围应用边距。如果你的字体图像包含参考线（以字形之间的线的形式）或者字符之间的间距看起来不正确，请尝试调整 :ref:`character_margin<class_ResourceImporterImageFont_property_character_margin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_character_ranges:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **character_ranges** = ``PackedStringArray()`` :ref:`🔗<class_ResourceImporterImageFont_property_character_ranges>`

从字体图像导入的字符范围。这是一个数组，能够对图像上的每一个位置做映射（使用图块坐标，而非像素坐标）。字体图集是从左到右、从上到下遍历的。可以使用十进制数字（127）、十六进制数字（\ ``0x007f`` 或 ``U+007f``\ ）、单引号（\ ``'~'``\ ）来指定字符。在字符之间加上连字符指定的就是一个范围。

例如 ``0-127`` 表示的是完整的 ASCII 范围。这个范围也可以写作 ``0x0000-0x007f``\ （或者 ``U+0000-U+007f``\ ）。再比如，\ ``' '-'~'`` 等价于 ``32-127``\ ，表示的是可打印（可见）ASCII 字符的范围。

指定范围时如果在后面加上三个用空格分隔的整数值，就可以自定义字符的前进量和偏移（额外前进量、X 偏移量、Y 偏移量）。例如 ``'a'-'b' 4 5 2`` 就是将 `a` 和 `b` 这两个字符的前进量设为 ``char_width + 4`` 并将偏移量设为 ``Vector2(5, 2)``\ 。

\ **注意：**\ 总字符数必须不超过 :ref:`columns<class_ResourceImporterImageFont_property_columns>` 与 :ref:`rows<class_ResourceImporterImageFont_property_rows>` 的乘积。否则字体将无法导入。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_columns:

.. rst-class:: classref-property

:ref:`int<class_int>` **columns** = ``1`` :ref:`🔗<class_ResourceImporterImageFont_property_columns>`

字体图像中的列数。另见 :ref:`rows<class_ResourceImporterImageFont_property_rows>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterImageFont_property_compress>`

如果为 ``true``\ ，则会对得到的字体使用无损压缩。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_descent:

.. rst-class:: classref-property

:ref:`int<class_int>` **descent** = ``0`` :ref:`🔗<class_ResourceImporterImageFont_property_descent>`

字体的下深（基线下方的像素数）。如果设为 ``0`` 则使用字符高度的一半。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterImageFont_property_fallbacks>`

回退字体列表，在这个位图字体中未找到某个字形时使用。优先尝试靠前的字体。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_image_margin:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **image_margin** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_ResourceImporterImageFont_property_image_margin>`

整个图像两侧的裁减边距。这可被用于裁减该图像包含属性信息或类似信息的部分。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_kerning_pairs:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **kerning_pairs** = ``PackedStringArray()`` :ref:`🔗<class_ResourceImporterImageFont_property_kerning_pairs>`

字体中的字偶列表。字偶的作用是调整特定的两个字符的间距。

每个字符串都是由空格分隔的三个值：“from”字符串、“to”字符串、整数偏移量。两个字符串中的字符两两组合成字偶，例如 ``ab cd -3`` 会创建字偶 ``ac``\ 、\ ``ad``\ 、\ ``bc``\ 、\ ``bd``\ ，这些字偶的偏移量都是 ``-3``\ 。可以使用转义序列 ``\uXXXX`` 添加 Unicode 字符。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_rows:

.. rst-class:: classref-property

:ref:`int<class_int>` **rows** = ``1`` :ref:`🔗<class_ResourceImporterImageFont_property_rows>`

字体图像中的行数。另见 :ref:`columns<class_ResourceImporterImageFont_property_columns>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_scaling_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **scaling_mode** = ``2`` :ref:`🔗<class_ResourceImporterImageFont_property_scaling_mode>`

字体缩放模式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
