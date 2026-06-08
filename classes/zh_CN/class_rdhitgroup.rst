:github_url: hide

.. _class_RDHitGroup:

RDHitGroup
==========

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

命中组（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

定义一个用于 :ref:`RenderingDevice.raytracing_pipeline_create()<class_RenderingDevice_method_raytracing_pipeline_create>` 的 命中组（Hit Group）。

当光线与几何体相交时，命中组会组合执行相应的着色器。它可能包含一个 最近命中（closest-hit） 着色器、任意命中（any-hit） 着色器和 相交（intersection） 着色器。

在使用 :ref:`RenderingDevice.hit_sbt_range_update()<class_RenderingDevice_method_hit_sbt_range_update>` 填充命中着色器绑定表（Hit Shader Binding Tables）时，通过索引引用命中组。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`any_hit_shader<class_RDHitGroup_property_any_hit_shader>`           |
   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`closest_hit_shader<class_RDHitGroup_property_closest_hit_shader>`   |
   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`intersection_shader<class_RDHitGroup_property_intersection_shader>` |
   +-------------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDHitGroup_property_any_hit_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **any_hit_shader** :ref:`🔗<class_RDHitGroup_property_any_hit_shader>`

.. rst-class:: classref-property-setget

- |void| **set_any_hit_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_any_hit_shader**\ (\ )

该命中组的“任意命中”（Any-hit）着色器。针对每一个潜在的相交点执行。可以为 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDHitGroup_property_closest_hit_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **closest_hit_shader** :ref:`🔗<class_RDHitGroup_property_closest_hit_shader>`

.. rst-class:: classref-property-setget

- |void| **set_closest_hit_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_closest_hit_shader**\ (\ )

该命中组的“最近命中”（Closest-hit）着色器。仅针对距离光线起点最近的那个交点执行。可以为 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDHitGroup_property_intersection_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **intersection_shader** :ref:`🔗<class_RDHitGroup_property_intersection_shader>`

.. rst-class:: classref-property-setget

- |void| **set_intersection_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_intersection_shader**\ (\ )

该命中组的“相交”（Intersection）着色器。针对非三角形几何体为必需项。若用于三角形几何体，则必须设为 ``null``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
