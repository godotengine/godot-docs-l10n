:github_url: hide

.. meta::
	:keywords: sun

.. _class_DirectionalLight2D:

DirectionalLight2D
==================

**继承：** :ref:`Light2D<class_Light2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

来自远处的 2D 平行光。

.. rst-class:: classref-introduction-group

描述
----

平行光是一种 :ref:`Light2D<class_Light2D>` 节点，模拟覆盖整个场景的无数平行光线。可用于远离场景的强光（例如：模拟日光或月光）。

光线沿节点全局基的 +Y 方向发射。对于未旋转的灯光，这意味着光线向下发射。节点的位置会被忽略；只有基被用于确定光线方向

\ **注意：**\ **DirectionalLight2D** 不支持灯光剔除遮罩（但支持阴影剔除遮罩）。它会忽略 2D 节点的 :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>`\ ，始终点亮 2D 节点。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`2D 灯光和阴影 <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`height<class_DirectionalLight2D_property_height>`             | ``0.0``     |
   +---------------------------+---------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`max_distance<class_DirectionalLight2D_property_max_distance>` | ``10000.0`` |
   +---------------------------+---------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_DirectionalLight2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.0`` :ref:`🔗<class_DirectionalLight2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

灯光的高度。用于 2D 法线贴图。范围从 0（平行于平面）到 1（垂直于平面）。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight2D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``10000.0`` :ref:`🔗<class_DirectionalLight2D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

对象在其阴影被剔除前与相机中心的最大距离（单位：像素）。降低这个值可以防止位于相机外部的对象投射阴影（同时还可以提高性能）。\ :ref:`Camera2D.zoom<class_Camera2D_property_zoom>` 不被 :ref:`max_distance<class_DirectionalLight2D_property_max_distance>` 考虑在内，这意味着在较高的缩放值下，当缩放到一个给定的点时，阴影会更快地淡出。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
