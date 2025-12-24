:github_url: hide

.. _class_SeparationRayShape2D:

SeparationRayShape2D
====================

**继承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 2D 射线形状，会尝试将自己与其他碰撞体分开。

.. rst-class:: classref-introduction-group

描述
----

2D 射线形状，旨在用于物理。通常用来为 :ref:`CollisionShape2D<class_CollisionShape2D>` 提供形状。\ **SeparationRayShape2D** 与某个对象发生碰撞时，会尝试将其端点移动至碰撞点，来将自己与该对象分离。例如，角色旁边的 **SeparationRayShape2D** 可以让角色在接触楼梯时立即向上移动。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`length<class_SeparationRayShape2D_property_length>`                 | ``20.0``  |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`slide_on_slope<class_SeparationRayShape2D_property_slide_on_slope>` | ``false`` |
   +---------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SeparationRayShape2D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``20.0`` :ref:`🔗<class_SeparationRayShape2D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

射线的长度。

.. rst-class:: classref-item-separator

----

.. _class_SeparationRayShape2D_property_slide_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_slope** = ``false`` :ref:`🔗<class_SeparationRayShape2D_property_slide_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_slope**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_slide_on_slope**\ (\ )

如果为 ``false``\ （默认值），则形状始终分离，并返回一条沿其自身方向的法线。

如果为 ``true``\ ，则该形状可以返回正确的法线，并在任何方向上分离，允许在斜坡上滑动。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
