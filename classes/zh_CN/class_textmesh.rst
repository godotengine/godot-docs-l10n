:github_url: hide

.. _class_TextMesh:

TextMesh
========

**继承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

根据文本生成 :ref:`PrimitiveMesh<class_PrimitiveMesh>`\ 。

.. rst-class:: classref-introduction-group

描述
----

根据文本生成 :ref:`PrimitiveMesh<class_PrimitiveMesh>`\ 。

使用了矢量字形轮廓的动态字体才能用于生成 TextMesh。不支持位图字体（包括 TrueType/OpenType 容器中的位图数据，例如彩色 Emoji 字体）。

UV 布局由 4 个横条组成，从上到下依次为：正面占 40% 高度，背面占 40% 的高度，外面占 10% 的高度，内侧面占 10% 的高度。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`3D 文本 <../tutorials/3d/3d_text>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                         | :ref:`autowrap_mode<class_TextMesh_property_autowrap_mode>`                                                 | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`curve_step<class_TextMesh_property_curve_step>`                                                       | ``0.5``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`depth<class_TextMesh_property_depth>`                                                                 | ``0.05``          |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Font<class_Font>`                                                   | :ref:`font<class_TextMesh_property_font>`                                                                   |                   |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                     | :ref:`font_size<class_TextMesh_property_font_size>`                                                         | ``16``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`horizontal_alignment<class_TextMesh_property_horizontal_alignment>`                                   | ``1``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_TextMesh_property_justification_flags>`                                     | ``163``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                               | :ref:`language<class_TextMesh_property_language>`                                                           | ``""``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_TextMesh_property_line_spacing>`                                                   | ``0.0``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                             | :ref:`offset<class_TextMesh_property_offset>`                                                               | ``Vector2(0, 0)`` |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`pixel_size<class_TextMesh_property_pixel_size>`                                                       | ``0.01``          |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`         | :ref:`structured_text_bidi_override<class_TextMesh_property_structured_text_bidi_override>`                 | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`                                                 | :ref:`structured_text_bidi_override_options<class_TextMesh_property_structured_text_bidi_override_options>` | ``[]``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                               | :ref:`text<class_TextMesh_property_text>`                                                                   | ``""``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`text_direction<class_TextMesh_property_text_direction>`                                               | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`uppercase<class_TextMesh_property_uppercase>`                                                         | ``false``         |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`             | :ref:`vertical_alignment<class_TextMesh_property_vertical_alignment>`                                       | ``1``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextMesh_property_width>`                                                                 | ``500.0``         |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TextMesh_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_TextMesh_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

如果设置为 :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>` 以外的值，则文本将在节点的边界矩形内自动换行。如果你调整节点大小，就会自动更改其高度，从而显示所有文本。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_curve_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **curve_step** = ``0.5`` :ref:`🔗<class_TextMesh_property_curve_step>`

.. rst-class:: classref-property-setget

- |void| **set_curve_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_curve_step**\ (\ )

Step (in pixels) used to approximate Bézier curves. Lower values result in smoother curves, but is slower to generate and render. Consider adjusting this according to the font size and the typical viewing distance.

\ **Note:** Changing this property will regenerate the mesh, which is a slow operation, especially with large font sizes and long texts.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``0.05`` :ref:`🔗<class_TextMesh_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

生成的网格的深度，设为 ``0.0`` 时只有正面，此时的 UV 布局会变为让正面占据整张纹理。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TextMesh_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

用于显示文本的字体配置。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``16`` :ref:`🔗<class_TextMesh_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

Font size of the **TextMesh**'s text. This property works in tandem with :ref:`pixel_size<class_TextMesh_property_pixel_size>`. Higher values will result in a more detailed font, regardless of :ref:`curve_step<class_TextMesh_property_curve_step>` and :ref:`pixel_size<class_TextMesh_property_pixel_size>`. Consider keeping this value below 63 (inclusive) for good performance, and adjust :ref:`pixel_size<class_TextMesh_property_pixel_size>` as needed to enlarge text.

\ **Note:** Changing this property will regenerate the mesh, which is a slow operation, especially with large font sizes and long texts. To change the text's size in real-time efficiently, change the node's :ref:`Node3D.scale<class_Node3D_property_scale>` instead.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``1`` :ref:`🔗<class_TextMesh_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

控制文本的水平对齐方式。支持左对齐、居中对齐、右对齐、填充（即两端对齐）。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_TextMesh_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

行填充对齐规则。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_TextMesh_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Language code used for line-breaking and text shaping algorithms. If left empty, the current locale is used instead.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_TextMesh_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

行与行之间的额外纵向留白（单位为像素），留白会被添加到行的降部。该值可以为负数。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextMesh_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

The text drawing offset (in pixels).

\ **Note:** Changing this property will regenerate the mesh, which is a slow operation. To change the text's position in real-time efficiently, change the node's :ref:`Node3D.position<class_Node3D_property_position>` instead.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.01`` :ref:`🔗<class_TextMesh_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

The size of one pixel's width on the text to scale it in 3D. This property works in tandem with :ref:`font_size<class_TextMesh_property_font_size>`.

\ **Note:** Changing this property will regenerate the mesh, which is a slow operation, especially with large font sizes and long texts. To change the text's size in real-time efficiently, change the node's :ref:`Node3D.scale<class_Node3D_property_scale>` instead.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_TextMesh_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

为结构化文本设置 BiDi 算法覆盖。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_TextMesh_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

设置 BiDi 覆盖的附加选项。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_TextMesh_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

要从中生成网格的文本。

\ **注意：**\ 由于是 :ref:`Resource<class_Resource>`\ ，所以它并不遵循 :ref:`Node.auto_translate_mode<class_Node_property_auto_translate_mode>` 的规则。如果需要禁用翻译，则应使用 :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>` 手动完成。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_text_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **text_direction** = ``0`` :ref:`🔗<class_TextMesh_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_text_direction**\ (\ )

基础文本书写方向。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_TextMesh_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

如果为 ``true``\ ，所有文本都将显示为大写。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``1`` :ref:`🔗<class_TextMesh_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

控制文本的垂直对齐方式。支持顶部对齐、居中对齐、底部对齐。

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``500.0`` :ref:`🔗<class_TextMesh_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

文本宽度（单位为像素），用于填充对齐。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
