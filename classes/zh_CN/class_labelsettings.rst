:github_url: hide

.. _class_LabelSettings:

LabelSettings
=============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供能够在 :ref:`Label<class_Label>` 中自定义文本的常见设置。

.. rst-class:: classref-introduction-group

描述
----

**LabelSettings** 是一种提供在 :ref:`Label<class_Label>` 中自定义文本的常见设置的资源。优先于 :ref:`Control.theme<class_Control_property_theme>` 中定义的属性。该资源可以在多个标签之间共享，可以随时替换，因此可以方便、灵活地设置文本样式。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Font<class_Font>`       | :ref:`font<class_LabelSettings_property_font>`                                   |                       |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`font_color<class_LabelSettings_property_font_color>`                       | ``Color(1, 1, 1, 1)`` |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`font_size<class_LabelSettings_property_font_size>`                         | ``16``                |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`line_spacing<class_LabelSettings_property_line_spacing>`                   | ``3.0``               |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`outline_color<class_LabelSettings_property_outline_color>`                 | ``Color(1, 1, 1, 1)`` |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`outline_size<class_LabelSettings_property_outline_size>`                   | ``0``                 |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`paragraph_spacing<class_LabelSettings_property_paragraph_spacing>`         | ``0.0``               |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`shadow_color<class_LabelSettings_property_shadow_color>`                   | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`shadow_offset<class_LabelSettings_property_shadow_offset>`                 | ``Vector2(1, 1)``     |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`shadow_size<class_LabelSettings_property_shadow_size>`                     | ``1``                 |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_outline_count<class_LabelSettings_property_stacked_outline_count>` | ``0``                 |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_shadow_count<class_LabelSettings_property_stacked_shadow_count>`   | ``0``                 |
   +-------------------------------+----------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_stacked_outline<class_LabelSettings_method_add_stacked_outline>`\ (\ index\: :ref:`int<class_int>` = -1\ )                                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_stacked_shadow<class_LabelSettings_method_add_stacked_shadow>`\ (\ index\: :ref:`int<class_int>` = -1\ )                                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`     | :ref:`get_stacked_outline_color<class_LabelSettings_method_get_stacked_outline_color>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_stacked_outline_size<class_LabelSettings_method_get_stacked_outline_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`     | :ref:`get_stacked_shadow_color<class_LabelSettings_method_get_stacked_shadow_color>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_stacked_shadow_offset<class_LabelSettings_method_get_stacked_shadow_offset>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_stacked_shadow_outline_size<class_LabelSettings_method_get_stacked_shadow_outline_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                       |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`move_stacked_outline<class_LabelSettings_method_move_stacked_outline>`\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ )           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`move_stacked_shadow<class_LabelSettings_method_move_stacked_shadow>`\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ )             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_stacked_outline<class_LabelSettings_method_remove_stacked_outline>`\ (\ index\: :ref:`int<class_int>`\ )                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_stacked_shadow<class_LabelSettings_method_remove_stacked_shadow>`\ (\ index\: :ref:`int<class_int>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_outline_color<class_LabelSettings_method_set_stacked_outline_color>`\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_outline_size<class_LabelSettings_method_set_stacked_outline_size>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ )               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_shadow_color<class_LabelSettings_method_set_stacked_shadow_color>`\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_shadow_offset<class_LabelSettings_method_set_stacked_shadow_offset>`\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`Vector2<class_Vector2>`\ )   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_shadow_outline_size<class_LabelSettings_method_set_stacked_shadow_outline_size>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_LabelSettings_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_LabelSettings_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

文本使用的 :ref:`Font<class_Font>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_font_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LabelSettings_property_font_color>`

.. rst-class:: classref-property-setget

- |void| **set_font_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_font_color**\ (\ )

文本的颜色。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``16`` :ref:`🔗<class_LabelSettings_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

文本的大小。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``3.0`` :ref:`🔗<class_LabelSettings_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

行与行之间的额外纵向留白（单位为像素），留白会被添加到行的降部。该值可以为负数。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_outline_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **outline_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LabelSettings_property_outline_color>`

.. rst-class:: classref-property-setget

- |void| **set_outline_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_outline_color**\ (\ )

轮廓的颜色。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_LabelSettings_property_outline_size>`

.. rst-class:: classref-property-setget

- |void| **set_outline_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_size**\ (\ )

文本轮廓大小。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_paragraph_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **paragraph_spacing** = ``0.0`` :ref:`🔗<class_LabelSettings_property_paragraph_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_paragraph_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_paragraph_spacing**\ (\ )

段落之间的垂直空间。在 :ref:`line_spacing<class_LabelSettings_property_line_spacing>` 上添加。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_LabelSettings_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

阴影效果的颜色。如果 Alpha 为 ``0`` ，则不会绘制阴影。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **shadow_offset** = ``Vector2(1, 1)`` :ref:`🔗<class_LabelSettings_property_shadow_offset>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_shadow_offset**\ (\ )

阴影效果的偏移，单位为像素。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_size** = ``1`` :ref:`🔗<class_LabelSettings_property_shadow_size>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_size**\ (\ )

阴影效果的大小。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_outline_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_outline_count** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_outline_count>`

.. rst-class:: classref-property-setget

- |void| **set_stacked_outline_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stacked_outline_count**\ (\ )

堆叠轮廓的数量。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_shadow_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_shadow_count** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_shadow_count>`

.. rst-class:: classref-property-setget

- |void| **set_stacked_shadow_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stacked_shadow_count**\ (\ )

堆叠阴影的数量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_LabelSettings_method_add_stacked_outline:

.. rst-class:: classref-method

|void| **add_stacked_outline**\ (\ index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_LabelSettings_method_add_stacked_outline>`

为标签在索引为 ``index`` 处添加新的堆叠轮廓。如果 ``index`` 为 ``-1``\ ，则新的堆叠轮廓会添加到列表的末尾。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_add_stacked_shadow:

.. rst-class:: classref-method

|void| **add_stacked_shadow**\ (\ index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_LabelSettings_method_add_stacked_shadow>`

为标签在索引为 ``index`` 处添加新的堆叠阴影。如果 ``index`` 为 ``-1``\ ，则新的堆叠阴影会添加到列表的末尾。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_outline_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_stacked_outline_color**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_outline_color>`

返回索引为 ``index`` 的堆叠轮廓的颜色。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_outline_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stacked_outline_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_outline_size>`

返回索引为 ``index`` 的堆叠轮廓的大小。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_stacked_shadow_color**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_color>`

返回索引为 ``index`` 的堆叠阴影的颜色。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_stacked_shadow_offset**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_offset>`

返回索引为 ``index`` 的堆叠阴影的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_outline_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stacked_shadow_outline_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_outline_size>`

返回索引为 ``index`` 的堆叠阴影的轮廓大小。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_move_stacked_outline:

.. rst-class:: classref-method

|void| **move_stacked_outline**\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_move_stacked_outline>`

将索引为 ``from_index`` 的堆叠轮廓移动至数组中的 ``to_position`` 位置。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_move_stacked_shadow:

.. rst-class:: classref-method

|void| **move_stacked_shadow**\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_move_stacked_shadow>`

将索引为 ``from_index`` 的堆叠阴影移动至数组中的 ``to_position`` 位置。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_remove_stacked_outline:

.. rst-class:: classref-method

|void| **remove_stacked_outline**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_remove_stacked_outline>`

移除索引为 ``index`` 的堆叠轮廓。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_remove_stacked_shadow:

.. rst-class:: classref-method

|void| **remove_stacked_shadow**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_remove_stacked_shadow>`

移除索引为 ``index`` 的堆叠阴影。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_outline_color:

.. rst-class:: classref-method

|void| **set_stacked_outline_color**\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_outline_color>`

将索引为 ``index`` 的堆叠轮廓的颜色设为 ``color``\ 。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_outline_size:

.. rst-class:: classref-method

|void| **set_stacked_outline_size**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_outline_size>`

将索引为 ``index`` 的堆叠轮廓的大小设为 ``size``\ 。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_color:

.. rst-class:: classref-method

|void| **set_stacked_shadow_color**\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_color>`

将索引为 ``index`` 的堆叠阴影的颜色设为 ``color``\ 。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_offset:

.. rst-class:: classref-method

|void| **set_stacked_shadow_offset**\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_offset>`

将索引为 ``index`` 的堆叠阴影的偏移量设为 ``offset``\ 。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_outline_size:

.. rst-class:: classref-method

|void| **set_stacked_shadow_outline_size**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_outline_size>`

将索引为 ``index`` 的堆叠阴影的轮廓大小设为 ``size``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
