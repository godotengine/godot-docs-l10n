:github_url: hide

.. _class_QuadOccluder3D:

QuadOccluder3D
==============

**继承：** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 遮挡剔除的扁平平面形状。

.. rst-class:: classref-introduction-group

描述
----

**QuadOccluder3D** 存储的是一个扁平的平面形状，可以用于引擎的遮挡剔除系统。如果你需要自定义正方形的形状，请参阅 :ref:`PolygonOccluder3D<class_PolygonOccluder3D>`\ 。

设置遮挡剔除的说明见 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的文档。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`遮挡剔除 <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_QuadOccluder3D_property_size>` | ``Vector2(1, 1)`` |
   +-------------------------------+-------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_QuadOccluder3D_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(1, 1)`` :ref:`🔗<class_QuadOccluder3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

该四边形的大小，使用 3D 单位。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
