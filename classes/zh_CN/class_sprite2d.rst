:github_url: hide

.. _class_Sprite2D:

Sprite2D
========

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

通用精灵节点。

.. rst-class:: classref-introduction-group

描述
----

显示 2D 纹理的节点。显示的纹理可以是较大图集纹理中的某个区域，也可以是精灵表动画中的某一帧。

.. rst-class:: classref-introduction-group

教程
----

- `实例化演示 <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`centered<class_Sprite2D_property_centered>`                                     | ``true``              |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`flip_h<class_Sprite2D_property_flip_h>`                                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`flip_v<class_Sprite2D_property_flip_v>`                                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`frame<class_Sprite2D_property_frame>`                                           | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`frame_coords<class_Sprite2D_property_frame_coords>`                             | ``Vector2i(0, 0)``    |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`hframes<class_Sprite2D_property_hframes>`                                       | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`offset<class_Sprite2D_property_offset>`                                         | ``Vector2(0, 0)``     |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_enabled<class_Sprite2D_property_region_enabled>`                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_filter_clip_enabled<class_Sprite2D_property_region_filter_clip_enabled>` | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region_rect<class_Sprite2D_property_region_rect>`                               | ``Rect2(0, 0, 0, 0)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_Sprite2D_property_texture>`                                       |                       |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`vframes<class_Sprite2D_property_vframes>`                                       | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_rect<class_Sprite2D_method_get_rect>`\ (\ ) |const|                                                    |
   +---------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_pixel_opaque<class_Sprite2D_method_is_pixel_opaque>`\ (\ pos\: :ref:`Vector2<class_Vector2>`\ ) |const| |
   +---------------------------+------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Sprite2D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_frame_changed>`

当 :ref:`frame<class_Sprite2D_property_frame>` 更改时发出。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_texture_changed>`

当 :ref:`texture<class_Sprite2D_property_texture>` 更改时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Sprite2D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_Sprite2D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

如果为 ``true``\ ，则会将纹理居中。

\ **注意：**\ 像素风游戏中，纹理在居中后可能会变形。这是因为此时纹理的位置在两个像素之间。要避免这种情况，请将该属性设为 ``false``\ ，或者考虑启用 :ref:`ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_vertices_to_pixel>` 和 :ref:`ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_transforms_to_pixel>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

如果为 ``true``\ ，纹理将被水平翻转。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

如果为 ``true``\ ，纹理将被垂直翻转。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite2D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

当前显示的精灵表中的帧。\ :ref:`hframes<class_Sprite2D_property_hframes>` 和 :ref:`vframes<class_Sprite2D_property_vframes>` 必须大于 1。\ :ref:`hframes<class_Sprite2D_property_hframes>` 或 :ref:`vframes<class_Sprite2D_property_vframes>` 发生变化时会自动调整该属性，让它在视觉上保持指向同一帧（同一行、同一列）。 如果无法保持，则会重置为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite2D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

显示的帧在精灵表中的坐标。这是 :ref:`frame<class_Sprite2D_property_frame>` 属性的别名。\ :ref:`vframes<class_Sprite2D_property_vframes>` 或 :ref:`hframes<class_Sprite2D_property_hframes>` 必须大于 1。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite2D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

精灵表中的列数。该属性发生变化时会对 :ref:`frame<class_Sprite2D_property_frame>` 进行调整，在视觉上维持相同的帧（同一行、同一列）。如果无法维持，则会将 :ref:`frame<class_Sprite2D_property_frame>` 重置为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Sprite2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

纹理绘制偏移。

\ **注意：**\ 在 Sprite2D 中增大 :ref:`offset<class_Sprite2D_property_offset>`.y 会让精灵在屏幕上向下移动（即 +Y 朝下）。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

如果为 ``true``\ ，则会从更大的图集纹理上裁剪出纹理。见 :ref:`region_rect<class_Sprite2D_property_region_rect>`\ 。

\ **注意：**\ 对 **Sprite2D** 使用自定义 :ref:`Shader<class_Shader>` 时，着色器内置的 ``UV`` 指的是完整纹理空间。请使用内置的 ``REGION_RECT`` 获取 :ref:`region_rect<class_Sprite2D_property_region_rect>` 中定义的当前可见区域。详见《\ :doc:`CanvasItem 着色器 <../tutorials/shaders/shader_reference/canvas_item_shader>`\ 》。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_filter_clip_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_filter_clip_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_filter_clip_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_filter_clip_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_filter_clip_enabled**\ (\ )

如果为 ``true``\ ，则会裁剪 :ref:`region_rect<class_Sprite2D_property_region_rect>` 之外的区域，避免周围纹理像素的出血现象。\ :ref:`region_enabled<class_Sprite2D_property_region_enabled>` 必须为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite2D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

要显示的图集纹理区域。\ :ref:`region_enabled<class_Sprite2D_property_region_enabled>` 必须是 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

要绘制的 :ref:`Texture2D<class_Texture2D>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite2D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

精灵表中的行数。该属性发生变化时会对 :ref:`frame<class_Sprite2D_property_frame>` 进行调整，在视觉上维持相同的帧（同一行、同一列）。如果无法维持，则会将 :ref:`frame<class_Sprite2D_property_frame>` 重置为 ``0``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Sprite2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Sprite2D_method_get_rect>`

返回代表该 Sprite2D 边界的 :ref:`Rect2<class_Rect2>`\ ，使用局部坐标。

\ **示例：**\ 检测该 Sprite2D 是否被点击：


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
            if get_rect().has_point(to_local(event.position)):
                print("我点！")

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventMouseButton inputEventMouse)
        {
            if (inputEventMouse.Pressed && inputEventMouse.ButtonIndex == MouseButton.Left)
            {
                if (GetRect().HasPoint(ToLocal(inputEventMouse.Position)))
                {
                    GD.Print("我点！");
                }
            }
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_method_is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pixel_opaque**\ (\ pos\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Sprite2D_method_is_pixel_opaque>`

Returns ``true`` if the pixel at the given position is opaque, ``false`` otherwise. Also returns ``false`` if the given position is out of bounds or this sprite's :ref:`texture<class_Sprite2D_property_texture>` is ``null``. ``pos`` is in local coordinates.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
