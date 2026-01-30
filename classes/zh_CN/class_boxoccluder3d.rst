:github_url: hide

.. _class_BoxOccluder3D:

BoxOccluder3D
=============

**继承：** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

与 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 中的遮挡剔除一起使用的长方体形状。

.. rst-class:: classref-introduction-group

描述
----

**BoxOccluder3D** 存储一个长方体形状，可供引擎的遮挡剔除系统使用。

有关设置遮挡剔除的说明，请参阅 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的文档。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`遮挡剔除 <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_BoxOccluder3D_property_size>` | ``Vector3(1, 1, 1)`` |
   +-------------------------------+------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_BoxOccluder3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_BoxOccluder3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

以 3D 单位表示的盒子大小。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
