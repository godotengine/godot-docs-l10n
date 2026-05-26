:github_url: hide

.. _class_CanvasGroup:

CanvasGroup
===========

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

将若干 2D 节点合并至单次绘制操作。

.. rst-class:: classref-introduction-group

描述
----

**CanvasGroup** 的子 :ref:`CanvasItem<class_CanvasItem>` 节点被绘制成单个对象。例如，它可以绘制重叠的半透明 2D 节点，而不会使重叠部分比预期更不透明（在 **CanvasGroup** 上设置 :ref:`CanvasItem.self_modulate<class_CanvasItem_property_self_modulate>` 属性即可实现该效果）。

\ **注意：**\ **CanvasGroup** 使用一个自定义着色器从后台缓冲区读取以绘制其子节点。为 **CanvasGroup** 指定一个 :ref:`Material<class_Material>` 会覆盖内置着色器。要在自定义 :ref:`Shader<class_Shader>` 中复制内置着色器的行为，请使用以下方法：

::

    shader_type canvas_item;
    render_mode unshaded;

    uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

    void fragment() {
        vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0);

        if (c.a > 0.0001) {
            c.rgb /= c.a;
        }

        COLOR *= c;
    }

\ **注意：**\ 由于 **CanvasGroup** 和 :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` 都使用后台缓冲区，因此 **CanvasGroup** 的子级如果将其 :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` 设置为 :ref:`CanvasItem.CLIP_CHILDREN_DISABLED<class_CanvasItem_constant_CLIP_CHILDREN_DISABLED>` 以外的其他值将无法正常工作。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`clear_margin<class_CanvasGroup_property_clear_margin>` | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`     | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`   | ``false`` |
   +---------------------------+--------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CanvasGroup_property_clear_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **clear_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_clear_margin>`

.. rst-class:: classref-property-setget

- |void| **set_clear_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clear_margin**\ (\ )

设置用于扩展该 **CanvasGroup** 清除矩形的边距大小。会对该 **CanvasGroup** 所使用的后台缓冲的区域进行扩展。边距较小时可以减少后台缓冲的区域大小，从而提升性能，但如果启用了 :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`\ ，较小的边距可能在该 **CanvasGroup** 边缘造成 mipmap 错误。因此，这个值应该尽量调小，但是如果画布组的边缘出现问题，就应该将其调大。

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_fit_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **fit_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_fit_margin>`

.. rst-class:: classref-property-setget

- |void| **set_fit_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fit_margin**\ (\ )

设置用于扩展该 **CanvasGroup** 绘图矩形的边距大小。确定该 **CanvasGroup** 大小的方法是：首先框定子节点的矩形区域，然后将该矩形按照 :ref:`fit_margin<class_CanvasGroup_property_fit_margin>` 进行扩展。会增大该 **CanvasGroup** 所使用的后台缓冲的区域，也会增大该 **CanvasGroup** 所覆盖的面积，两者都会降低性能。这个值应该尽量调小，仅在需要时调大（例如自定义着色器效果）。

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_use_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_mipmaps** = ``false`` :ref:`🔗<class_CanvasGroup_property_use_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_use_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_mipmaps**\ (\ )

如果为 ``true``\ ，则会在绘制该 **CanvasGroup** 之前为其后台缓冲计算 mipmap，附加到该 **CanvasGroup** 的自定义 :ref:`ShaderMaterial<class_ShaderMaterial>` 就可以使用 mipmap。Mipmap 的生成会造成性能消耗，所以应在必要时才启用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
