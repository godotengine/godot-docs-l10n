:github_url: hide

.. _class_TextureRect:

TextureRect
===========

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

显示纹理的控件。

.. rst-class:: classref-introduction-group

描述
----

显示纹理的控件，例如显示 GUI 中的图标。可以使用 :ref:`stretch_mode<class_TextureRect_property_stretch_mode>` 属性控制纹理的放置。可以在边界框中进行缩放、平铺、居中。

.. rst-class:: classref-introduction-group

教程
----

- `3D 体素演示 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`ExpandMode<enum_TextureRect_ExpandMode>`   | :ref:`expand_mode<class_TextureRect_property_expand_mode>`   | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_h<class_TextureRect_property_flip_h>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_v<class_TextureRect_property_flip_v>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`     | mouse_filter                                                 | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`StretchMode<enum_TextureRect_StretchMode>` | :ref:`stretch_mode<class_TextureRect_property_stretch_mode>` | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                | :ref:`texture<class_TextureRect_property_texture>`           |                                                                       |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_TextureRect_ExpandMode:

.. rst-class:: classref-enumeration

enum **ExpandMode**: :ref:`🔗<enum_TextureRect_ExpandMode>`

.. _class_TextureRect_constant_EXPAND_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_KEEP_SIZE** = ``0``

最小尺寸将等于纹理尺寸，即 **TextureRect** 不能小于纹理。

.. _class_TextureRect_constant_EXPAND_IGNORE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_IGNORE_SIZE** = ``1``

纹理尺寸不会用于计算最小尺寸，所以 **TextureRect** 可以缩减得比纹理尺寸小。

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH** = ``2``

会忽略纹理的高度。最小宽度与当前高度一致。可用于横向布局，例如在 :ref:`HBoxContainer<class_HBoxContainer>` 中。

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH_PROPORTIONAL** = ``3``

与 :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>` 相同，但保持纹理的长宽比。

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT** = ``4``

会忽略纹理的宽度。最小高度与当前宽度一致。可用于纵向布局，例如在 :ref:`VBoxContainer<class_VBoxContainer>` 中。

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT_PROPORTIONAL** = ``5``

与 :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>` 相同，但保持纹理的长宽比。

.. rst-class:: classref-item-separator

----

.. _enum_TextureRect_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_TextureRect_StretchMode>`

.. _class_TextureRect_constant_STRETCH_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_SCALE** = ``0``

缩放以适应节点的边界矩形。

.. _class_TextureRect_constant_STRETCH_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_TILE** = ``1``

在节点的边界矩形内平铺。

.. _class_TextureRect_constant_STRETCH_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP** = ``2``

纹理保持它的原始尺寸，并保持在边界矩形的左上角。

.. _class_TextureRect_constant_STRETCH_KEEP_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_CENTERED** = ``3``

纹理保持其原始大小，并在节点的边界矩形中保持居中。

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT** = ``4``

缩放纹理以适应节点的边界矩形，但保持纹理的长宽比。

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_CENTERED** = ``5``

缩放纹理以适应节点的边界矩形，使其居中并保持其长宽比。

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_COVERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_COVERED** = ``6``

缩放纹理，使较短的一边适应边界矩形。另一边则裁剪到节点的界限内。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TextureRect_property_expand_mode:

.. rst-class:: classref-property

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **expand_mode** = ``0`` :ref:`🔗<class_TextureRect_property_expand_mode>`

.. rst-class:: classref-property-setget

- |void| **set_expand_mode**\ (\ value\: :ref:`ExpandMode<enum_TextureRect_ExpandMode>`\ )
- :ref:`ExpandMode<enum_TextureRect_ExpandMode>` **get_expand_mode**\ (\ )

**实验性：** Using :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>`, :ref:`EXPAND_FIT_WIDTH_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL>`, :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>`, or :ref:`EXPAND_FIT_HEIGHT_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL>` may result in unstable behavior in some :ref:`Container<class_Container>` controls. This behavior may be re-evaluated and changed in the future.

定义如何根据纹理的大小确定最小大小。

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TextureRect_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

如果为 ``true``\ ，纹理将被水平翻转。

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TextureRect_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

如果为 ``true``\ ，纹理将被垂直翻转。

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_TextureRect_StretchMode>` **stretch_mode** = ``0`` :ref:`🔗<class_TextureRect_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_TextureRect_StretchMode>`\ )
- :ref:`StretchMode<enum_TextureRect_StretchMode>` **get_stretch_mode**\ (\ )

控件纹理在调整节点边界矩形时的行为。

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TextureRect_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

该节点的 :ref:`Texture2D<class_Texture2D>` 资源。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
