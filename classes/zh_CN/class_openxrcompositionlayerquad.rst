:github_url: hide

.. _class_OpenXRCompositionLayerQuad:

OpenXRCompositionLayerQuad
==========================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

以四边形形式渲染的 OpenXR 合成层。

.. rst-class:: classref-introduction-group

描述
----

能够在四边形上渲染 :ref:`SubViewport<class_SubViewport>` 的 OpenXR 合成层。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`quad_size<class_OpenXRCompositionLayerQuad_property_quad_size>` | ``Vector2(1, 1)`` |
   +-------------------------------+-----------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRCompositionLayerQuad_property_quad_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **quad_size** = ``Vector2(1, 1)`` :ref:`🔗<class_OpenXRCompositionLayerQuad_property_quad_size>`

.. rst-class:: classref-property-setget

- |void| **set_quad_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_quad_size**\ (\ )

四边形的尺寸。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
