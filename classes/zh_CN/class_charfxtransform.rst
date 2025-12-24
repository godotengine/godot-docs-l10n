:github_url: hide

.. _class_CharFXTransform:

CharFXTransform
===============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

控制单个字符在 :ref:`RichTextEffect<class_RichTextEffect>` 中的显示方式。

.. rst-class:: classref-introduction-group

描述
----

通过在此对象上设置各种属性，可以控制单个字符在 :ref:`RichTextEffect<class_RichTextEffect>` 中的显示方式。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`RichTextLabel 中的 BBCode <../tutorials/ui/bbcode_in_richtextlabel>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`color<class_CharFXTransform_property_color>`                   | ``Color(0, 0, 0, 1)``             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`elapsed_time<class_CharFXTransform_property_elapsed_time>`     | ``0.0``                           |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`env<class_CharFXTransform_property_env>`                       | ``{}``                            |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`font<class_CharFXTransform_property_font>`                     | ``RID()``                         |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_count<class_CharFXTransform_property_glyph_count>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_flags<class_CharFXTransform_property_glyph_flags>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_index<class_CharFXTransform_property_glyph_index>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`offset<class_CharFXTransform_property_offset>`                 | ``Vector2(0, 0)``                 |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`outline<class_CharFXTransform_property_outline>`               | ``false``                         |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2i<class_Vector2i>`       | :ref:`range<class_CharFXTransform_property_range>`                   | ``Vector2i(0, 0)``                |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`relative_index<class_CharFXTransform_property_relative_index>` | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_CharFXTransform_property_transform>`           | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`visible<class_CharFXTransform_property_visible>`               | ``true``                          |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CharFXTransform_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CharFXTransform_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

绘制字符所用的颜色。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_elapsed_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **elapsed_time** = ``0.0`` :ref:`🔗<class_CharFXTransform_property_elapsed_time>`

.. rst-class:: classref-property-setget

- |void| **set_elapsed_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_elapsed_time**\ (\ )

自 :ref:`RichTextLabel<class_RichTextLabel>` 被添加到场景树以来经过的时间（单位：秒）。时间在 :ref:`RichTextLabel<class_RichTextLabel>` 暂停时停止（参见 :ref:`Node.process_mode<class_Node_property_process_mode>`\ ）。在 :ref:`RichTextLabel<class_RichTextLabel>` 中的文本改变时重置。

\ **注意：**\ 当 :ref:`RichTextLabel<class_RichTextLabel>` 被隐藏时，时间仍在流逝。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_env:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **env** = ``{}`` :ref:`🔗<class_CharFXTransform_property_env>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_environment**\ (\ )

包含在开头的 BBCode 标记中传递的参数。默认情况下，参数是字符串。如果它们的内容与 :ref:`bool<class_bool>`\ 、\ :ref:`int<class_int>`\ 、\ :ref:`float<class_float>` 之类的类型匹配，它们将被自动转换。格式为 ``#rrggbb`` 或 ``#rgb`` 的颜色代码将转换为不透明的 :ref:`Color<class_Color>`\ 。字符串参数即使使用引号也不能包含空格。如果存在，引号也将出现在最终字符串中。

例如，开头的 BBCode 标签 ``[example foo = hello bar = true baz = 42 color =＃ffffff]`` 将映射到以下 :ref:`Dictionary<class_Dictionary>`\ ：

::

    {"foo": "hello", "bar": true, "baz": 42, "color": Color(1, 1, 1, 1)}

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_font:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **font** = ``RID()`` :ref:`🔗<class_CharFXTransform_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_font**\ (\ )

渲染字形所用字体的 :ref:`TextServer<class_TextServer>` RID，该值可以通过 ``TextServer.font_*`` 方法来检索字体信息。

\ **注意：**\ 只读。设置该属性不影响绘制。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_count** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_count>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_count**\ (\ )

字素簇中的字形数量。该值在簇的第一个字形中设置。

\ **注意：**\ 只读。设置该属性不会影响绘制。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_flags:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_flags** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_flags>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_flags**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_flags**\ (\ )

字形标志。详见 :ref:`GraphemeFlag<enum_TextServer_GraphemeFlag>`\ 。

\ **注意：**\ 只读。设置该属性不会影响绘制。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_index** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_index>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_index**\ (\ )

特定于 :ref:`font<class_CharFXTransform_property_font>` 的字形索引。如果你想替换该字形，请使用 :ref:`font<class_CharFXTransform_property_font>` 调用 :ref:`TextServer.font_get_glyph_index()<class_TextServer_method_font_get_glyph_index>` 获取单个字符的新字形索引。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_CharFXTransform_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

绘制字符的位置偏移量（单位：像素）。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_outline:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **outline** = ``false`` :ref:`🔗<class_CharFXTransform_property_outline>`

.. rst-class:: classref-property-setget

- |void| **set_outline**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_outline**\ (\ )

如果为 ``true``\ ，则调用 FX 变换进行轮廓绘制。

\ **注意：**\ 只读。设置该属性不会影响绘制。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_range:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **range** = ``Vector2i(0, 0)`` :ref:`🔗<class_CharFXTransform_property_range>`

.. rst-class:: classref-property-setget

- |void| **set_range**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_range**\ (\ )

该字符串中的绝对字符范围，对应于字形。

\ **注意：**\ 只读。设置该属性不会影响绘制。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_relative_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **relative_index** = ``0`` :ref:`🔗<class_CharFXTransform_property_relative_index>`

.. rst-class:: classref-property-setget

- |void| **set_relative_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_relative_index**\ (\ )

该字形的字符偏移量，相对于当前 :ref:`RichTextEffect<class_RichTextEffect>` 自定义块。

\ **注意：**\ 只读。设置该属性不会影响绘制。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_CharFXTransform_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

当前字形的当前变换。可以被覆盖（例如根据曲线来确定位置和旋转）。你还可以修改现有值，在其他效果的基础上应用变换。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_CharFXTransform_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visibility**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

如果为 ``true``\ ，将绘制字符。如果为 ``false``\ ，则隐藏字符。隐藏字符周围的字符将回流以占用隐藏字符的空间。如果不希望这样做，可以将它们的 :ref:`color<class_CharFXTransform_property_color>` 设置为\ ``Color(1, 1, 1, 0)``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
