:github_url: hide

.. _class_BlitMaterial:

BlitMaterial
============

**继承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一种用于处理向 DrawableTexture 执行位块传输调用的材质。

.. rst-class:: classref-introduction-group

描述
----

一种可供 DrawableTextures 在处理位块传输调用时使用的材质资源。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------+-------+
   | :ref:`BlendMode<enum_BlitMaterial_BlendMode>` | :ref:`blend_mode<class_BlitMaterial_property_blend_mode>` | ``0`` |
   +-----------------------------------------------+-----------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_BlitMaterial_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_BlitMaterial_BlendMode>`

.. _class_BlitMaterial_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_MIX** = ``0``

混合混合模式。假设颜色与 Alpha 值（不透明度）无关。

.. _class_BlitMaterial_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_ADD** = ``1``

添加混合模式。

.. _class_BlitMaterial_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_SUB** = ``2``

减去混合模式。

.. _class_BlitMaterial_constant_BLEND_MODE_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_MUL** = ``3``

正片叠底混合模式。

.. _class_BlitMaterial_constant_BLEND_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_DISABLED** = ``4``

无混合模式，直接进行颜色复制。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_BlitMaterial_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_BlitMaterial_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_BlitMaterial_BlendMode>`\ )
- :ref:`BlendMode<enum_BlitMaterial_BlendMode>` **get_blend_mode**\ (\ )

新执行位块传输的纹理与原始 DrawableTexture 进行混合的方式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
