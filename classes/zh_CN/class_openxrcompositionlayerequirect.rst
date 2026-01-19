:github_url: hide

.. _class_OpenXRCompositionLayerEquirect:

OpenXRCompositionLayerEquirect
==============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

渲染为球体内部切片的 OpenXR 合成图层。

.. rst-class:: classref-introduction-group

描述
----

一个 OpenXR 合成层，允许在球体的内部切片上渲染 :ref:`SubViewport<class_SubViewport>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`central_horizontal_angle<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>` | ``1.5707964`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`fallback_segments<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`               | ``10``        |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`radius<class_OpenXRCompositionLayerEquirect_property_radius>`                                     | ``1.0``       |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **central_horizontal_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>`

.. rst-class:: classref-property-setget

- |void| **set_central_horizontal_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_central_horizontal_angle**\ (\ )

球体的中心水平角度。用于设置宽度。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_fallback_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_segments** = ``10`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_segments**\ (\ )

回退网格所使用的段数。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_lower_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_vertical_angle**\ (\ )

球体的下垂直角度。（与 :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>` 一起）用于设置高度。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

球体的半径。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_upper_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_vertical_angle**\ (\ )

球体的上垂直角度。（与 :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>` 一起）用于设置高度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
