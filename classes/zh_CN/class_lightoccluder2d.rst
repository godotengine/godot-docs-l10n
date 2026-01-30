:github_url: hide

.. _class_LightOccluder2D:

LightOccluder2D
===============

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

遮挡由 Light2D 投射的光线，投射阴影。

.. rst-class:: classref-introduction-group

描述
----

遮挡 Light2D 投射的灯光，投射阴影。为了计算阴影，必须为 LightOccluder2D 提供 :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`2D 灯光和阴影 <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` | :ref:`occluder<class_LightOccluder2D_property_occluder>`                       |          |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                             | :ref:`occluder_light_mask<class_LightOccluder2D_property_occluder_light_mask>` | ``1``    |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`sdf_collision<class_LightOccluder2D_property_sdf_collision>`             | ``true`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_LightOccluder2D_property_occluder:

.. rst-class:: classref-property

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **occluder** :ref:`🔗<class_LightOccluder2D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder_polygon**\ (\ value\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ )
- :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder_polygon**\ (\ )

用于计算阴影的 :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightOccluder2D_property_occluder_light_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **occluder_light_mask** = ``1`` :ref:`🔗<class_LightOccluder2D_property_occluder_light_mask>`

.. rst-class:: classref-property-setget

- |void| **set_occluder_light_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_occluder_light_mask**\ (\ )

LightOccluder2D 的遮挡器光照掩码。LightOccluder2D 将仅从具有相同光照掩码的 Light2D 投射阴影。

.. rst-class:: classref-item-separator

----

.. _class_LightOccluder2D_property_sdf_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sdf_collision** = ``true`` :ref:`🔗<class_LightOccluder2D_property_sdf_collision>`

.. rst-class:: classref-property-setget

- |void| **set_as_sdf_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_sdf_collision**\ (\ )

如果启用，该遮挡器将成为实时生成的带符号距离场的一部分，可被用于自定义着色器中。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
