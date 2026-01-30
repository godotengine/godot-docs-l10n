:github_url: hide

.. meta::
	:keywords: omni, spot

.. _class_PointLight2D:

PointLight2D
============

**继承：** :ref:`Light2D<class_Light2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

位置性 2D 光源。

.. rst-class:: classref-introduction-group

描述
----

在 2D 环境中投射光线。此灯的形状由（通常为灰度）纹理定义。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`2D 灯光和阴影 <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`         | :ref:`height<class_PointLight2D_property_height>`               | ``0.0``           |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`offset<class_PointLight2D_property_offset>`               | ``Vector2(0, 0)`` |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_PointLight2D_property_texture>`             |                   |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`         | :ref:`texture_scale<class_PointLight2D_property_texture_scale>` | ``1.0``           |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PointLight2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.0`` :ref:`🔗<class_PointLight2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

灯光的高度。与 2D 法线贴图一起使用。单位为像素，例如：如果高度为 100，那么它能够照亮 100 像素远且与该平面成 45° 角的对象。

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_PointLight2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_offset**\ (\ )

灯光的 :ref:`texture<class_PointLight2D_property_texture>` 的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_PointLight2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

用于该灯光外观的 :ref:`Texture2D<class_Texture2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_texture_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_scale** = ``1.0`` :ref:`🔗<class_PointLight2D_property_texture_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texture_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_scale**\ (\ )

:ref:`texture<class_PointLight2D_property_texture>` 的缩放系数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
