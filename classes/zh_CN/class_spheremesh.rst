:github_url: hide

.. _class_SphereMesh:

SphereMesh
==========

**继承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

表示球形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的类。

.. rst-class:: classref-introduction-group

描述
----

表示球形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的类。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`height<class_SphereMesh_property_height>`                   | ``1.0``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`is_hemisphere<class_SphereMesh_property_is_hemisphere>`     | ``false`` |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_SphereMesh_property_radial_segments>` | ``64``    |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SphereMesh_property_radius>`                   | ``0.5``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`rings<class_SphereMesh_property_rings>`                     | ``32``    |
   +---------------------------+-------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SphereMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_SphereMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

球体的全高。

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_is_hemisphere:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_hemisphere** = ``false`` :ref:`🔗<class_SphereMesh_property_is_hemisphere>`

.. rst-class:: classref-property-setget

- |void| **set_is_hemisphere**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_hemisphere**\ (\ )

如果为 ``true``\ ，则创建一个半球而不是一个完整的球体。

\ **注意：**\ 要得到一个规则的半球，球体的高度和半径必须相等。

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_SphereMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

球体上的径向段数。

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_SphereMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

球体半径.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``32`` :ref:`🔗<class_SphereMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

沿着球体高度的段数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
