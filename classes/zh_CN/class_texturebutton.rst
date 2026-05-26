:github_url: hide

.. _class_TextureButton:

TextureButton
=============

**继承：** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基于纹理的按钮。支持按下、悬停、停用和焦点状态。

.. rst-class:: classref-introduction-group

描述
----

**TextureButton** 的功能与 :ref:`Button<class_Button>` 相同，只是它使用精灵而不是 Godot 的 :ref:`Theme<class_Theme>` 主题资源。它的创建速度更快，但它不像更复杂的 :ref:`Control<class_Control>` 那样支持本地化。

另见 :ref:`BaseButton<class_BaseButton>`\ ，它包含了与该节点相关的通用属性和方法。

\ **注意：**\ 建议设置“正常”状态的纹理（\ :ref:`texture_normal<class_TextureButton_property_texture_normal>`\ ）。如果未设置 :ref:`texture_normal<class_TextureButton_property_texture_normal>`\ ，\ **TextureButton** 仍会接受输入事件、仍然可以点击，但是用户无法看到这个按钮，除非设置了其他状态的纹理（例如悬停时会显示 :ref:`texture_hover<class_TextureButton_property_texture_hover>`\ ）。

.. rst-class:: classref-introduction-group

教程
----

- `3D 体素演示 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                            | :ref:`flip_h<class_TextureButton_property_flip_h>`                           | ``false`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                            | :ref:`flip_v<class_TextureButton_property_flip_v>`                           | ``false`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                            | :ref:`ignore_texture_size<class_TextureButton_property_ignore_texture_size>` | ``false`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`StretchMode<enum_TextureButton_StretchMode>` | :ref:`stretch_mode<class_TextureButton_property_stretch_mode>`               | ``2``     |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`BitMap<class_BitMap>`                        | :ref:`texture_click_mask<class_TextureButton_property_texture_click_mask>`   |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_disabled<class_TextureButton_property_texture_disabled>`       |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_focused<class_TextureButton_property_texture_focused>`         |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_hover<class_TextureButton_property_texture_hover>`             |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_normal<class_TextureButton_property_texture_normal>`           |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_pressed<class_TextureButton_property_texture_pressed>`         |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_TextureButton_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_TextureButton_StretchMode>`

.. _class_TextureButton_constant_STRETCH_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_SCALE** = ``0``

缩放以适应节点的边界矩形。

.. _class_TextureButton_constant_STRETCH_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_TILE** = ``1``

在节点的边界矩形内平铺。

.. _class_TextureButton_constant_STRETCH_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP** = ``2``

纹理保持它的原始尺寸，并保持在边界矩形的左上角。

.. _class_TextureButton_constant_STRETCH_KEEP_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_CENTERED** = ``3``

纹理保持其原始大小，并在节点的边界矩形中保持居中。

.. _class_TextureButton_constant_STRETCH_KEEP_ASPECT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_ASPECT** = ``4``

缩放纹理以适应节点的边界矩形，但保持纹理的长宽比。

.. _class_TextureButton_constant_STRETCH_KEEP_ASPECT_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_ASPECT_CENTERED** = ``5``

缩放纹理以适应节点的边界矩形，使其居中，并保持长宽比。

.. _class_TextureButton_constant_STRETCH_KEEP_ASPECT_COVERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_ASPECT_COVERED** = ``6``

缩放纹理，使较短的一边适应边界矩形。另一边则裁剪到节点的界限内。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TextureButton_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TextureButton_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

如果为 ``true``\ ，纹理将被水平翻转。

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TextureButton_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

如果为 ``true``\ ，纹理将被垂直翻转。

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_ignore_texture_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_texture_size** = ``false`` :ref:`🔗<class_TextureButton_property_ignore_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_texture_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_ignore_texture_size**\ (\ )

如果为 ``true``\ ，则计算最小尺寸时不会考虑该纹理的大小，因此 **TextureButton** 能够调整地比该纹理大小还要小。

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_TextureButton_StretchMode>` **stretch_mode** = ``2`` :ref:`🔗<class_TextureButton_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_TextureButton_StretchMode>`\ )
- :ref:`StretchMode<enum_TextureButton_StretchMode>` **get_stretch_mode**\ (\ )

控制调整节点包围矩形时纹理的行为。可用的选项见 :ref:`StretchMode<enum_TextureButton_StretchMode>` 常量。

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_click_mask:

.. rst-class:: classref-property

:ref:`BitMap<class_BitMap>` **texture_click_mask** :ref:`🔗<class_TextureButton_property_texture_click_mask>`

.. rst-class:: classref-property-setget

- |void| **set_click_mask**\ (\ value\: :ref:`BitMap<class_BitMap>`\ )
- :ref:`BitMap<class_BitMap>` **get_click_mask**\ (\ )

用于点击检测的纯黑白 :ref:`BitMap<class_BitMap>` 图像。在遮罩上，白色像素代表按钮的可点击区域。可用它来创建具有弯曲形状的按钮。

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_disabled:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_disabled** :ref:`🔗<class_TextureButton_property_texture_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_texture_disabled**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_disabled**\ (\ )

节点处于禁用状态时显示的纹理。见 :ref:`BaseButton.disabled<class_BaseButton_property_disabled>`\ 。未赋值时 **TextureButton** 会显示 :ref:`texture_normal<class_TextureButton_property_texture_normal>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_focused:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_focused** :ref:`🔗<class_TextureButton_property_texture_focused>`

.. rst-class:: classref-property-setget

- |void| **set_texture_focused**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_focused**\ (\ )

节点持有鼠标或键盘焦点时\ *覆盖在基础纹理上*\ 的纹理。因为 :ref:`texture_focused<class_TextureButton_property_texture_focused>` 会在基础纹理上方显示，所以要让基础纹理可见就应该使用半透明纹理。这种情况下比较适用代表轮廓或者下划线的纹理。要禁用焦点的视觉效果，请分配一张任意大小的全透明纹理。请注意，禁用焦点的视觉效果不利于键盘/控制器的导航，所以出于无障碍访问的原因并不建议这么做。

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_hover:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_hover** :ref:`🔗<class_TextureButton_property_texture_hover>`

.. rst-class:: classref-property-setget

- |void| **set_texture_hover**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_hover**\ (\ )

鼠标悬停在节点上时显示的纹理。未赋值时 **TextureButton** 处于悬停状态会显示 :ref:`texture_normal<class_TextureButton_property_texture_normal>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_TextureButton_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture_normal**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_normal**\ (\ )

节点\ **不处于**\ 禁用、悬停、按下状态时，默认显示的纹理。该纹理仍会在聚焦状态下显示，上层绘制的是 :ref:`texture_focused<class_TextureButton_property_texture_focused>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_pressed:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_pressed** :ref:`🔗<class_TextureButton_property_texture_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_texture_pressed**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_pressed**\ (\ )

鼠标在节点上按下时显示的纹理，要求节点持有键盘焦点且玩家按下了回车键或 :ref:`BaseButton.shortcut<class_BaseButton_property_shortcut>` 键。未赋值时 **TextureButton** 处于按下状态会显示 :ref:`texture_hover<class_TextureButton_property_texture_hover>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
