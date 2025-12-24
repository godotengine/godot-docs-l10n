:github_url: hide

.. _class_Sprite3D:

Sprite3D
========

**继承：** :ref:`SpriteBase3D<class_SpriteBase3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D 世界中的 2D 精灵节点。

.. rst-class:: classref-introduction-group

描述
----

在 3D 环境中显示 2D 纹理的节点。显示的纹理可以是来自较大图集纹理的区域，也可以是来自精灵表动画的帧。另见 :ref:`SpriteBase3D<class_SpriteBase3D>`\ ，定义有公告板模式等属性。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`frame<class_Sprite3D_property_frame>`                   | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`frame_coords<class_Sprite3D_property_frame_coords>`     | ``Vector2i(0, 0)``    |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`hframes<class_Sprite3D_property_hframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_enabled<class_Sprite3D_property_region_enabled>` | ``false``             |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region_rect<class_Sprite3D_property_region_rect>`       | ``Rect2(0, 0, 0, 0)`` |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_Sprite3D_property_texture>`               |                       |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`vframes<class_Sprite3D_property_vframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Sprite3D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_frame_changed>`

当 :ref:`frame<class_Sprite3D_property_frame>` 更改时发出。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_texture_changed>`

当 :ref:`texture<class_Sprite3D_property_texture>` 更改时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Sprite3D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite3D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

当前显示的精灵表中的帧。\ :ref:`hframes<class_Sprite3D_property_hframes>` 和 :ref:`vframes<class_Sprite3D_property_vframes>` 必须大于 1。\ :ref:`hframes<class_Sprite3D_property_hframes>` 或 :ref:`vframes<class_Sprite3D_property_vframes>` 发生变化时会自动调整该属性，让它在视觉上保持指向同一帧（同一行、同一列）。 如果无法保持，则会重置为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite3D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

显示的帧在精灵表中的坐标。这是 :ref:`frame<class_Sprite3D_property_frame>` 属性的别名。\ :ref:`vframes<class_Sprite3D_property_vframes>` 或 :ref:`hframes<class_Sprite3D_property_hframes>` 必须大于 1。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite3D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

精灵表中的列数。该属性发生变化时会对 :ref:`frame<class_Sprite3D_property_frame>` 进行调整，在视觉上维持相同的帧（同一行、同一列）。如果无法维持，则会将 :ref:`frame<class_Sprite3D_property_frame>` 重置为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite3D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

如果为 ``true``\ ，则该精灵会使用 :ref:`region_rect<class_Sprite3D_property_region_rect>`\ ，只显示纹理中的指定部分。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite3D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

要显示的图集纹理区域。\ :ref:`region_enabled<class_Sprite3D_property_region_enabled>` 必须是 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

要绘制的 :ref:`Texture2D<class_Texture2D>` 对象。如果使用 :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`\ ，则这个属性会被覆盖。仍会使用尺寸信息。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite3D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

精灵表中的行数。该属性发生变化时会对 :ref:`frame<class_Sprite3D_property_frame>` 进行调整，在视觉上维持相同的帧（同一行、同一列）。如果无法维持，则会将 :ref:`frame<class_Sprite3D_property_frame>` 重置为 ``0``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
