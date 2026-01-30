:github_url: hide

.. _class_TorusMesh:

TorusMesh
=========

**继承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

表示圆环 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的类。

.. rst-class:: classref-introduction-group

描述
----

表示圆环 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的类。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`inner_radius<class_TorusMesh_property_inner_radius>`   | ``0.5`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`outer_radius<class_TorusMesh_property_outer_radius>`   | ``1.0`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`ring_segments<class_TorusMesh_property_ring_segments>` | ``32``  |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`rings<class_TorusMesh_property_rings>`                 | ``64``  |
   +---------------------------+--------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TorusMesh_property_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_radius** = ``0.5`` :ref:`🔗<class_TorusMesh_property_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_radius**\ (\ )

圆环的内半径。

.. rst-class:: classref-item-separator

----

.. _class_TorusMesh_property_outer_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_radius** = ``1.0`` :ref:`🔗<class_TorusMesh_property_outer_radius>`

.. rst-class:: classref-property-setget

- |void| **set_outer_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_radius**\ (\ )

圆环的外半径。

.. rst-class:: classref-item-separator

----

.. _class_TorusMesh_property_ring_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **ring_segments** = ``32`` :ref:`🔗<class_TorusMesh_property_ring_segments>`

.. rst-class:: classref-property-setget

- |void| **set_ring_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ring_segments**\ (\ )

构造每个圆环的边缘的数量。

.. rst-class:: classref-item-separator

----

.. _class_TorusMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``64`` :ref:`🔗<class_TorusMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

构成圆环的切片数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
