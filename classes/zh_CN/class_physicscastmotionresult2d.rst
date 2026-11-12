:github_url: hide

.. _class_PhysicsCastMotionResult2D:

PhysicsCastMotionResult2D
=========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the result of a shape motion cast query.

.. rst-class:: classref-introduction-group

描述
----

This class contains the safe and unsafe fractions computed by :ref:`PhysicsDirectSpaceState2D.cast_motion_into()<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`safe_fraction<class_PhysicsCastMotionResult2D_property_safe_fraction>`     | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`unsafe_fraction<class_PhysicsCastMotionResult2D_property_unsafe_fraction>` | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicsCastMotionResult2D_property_safe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_safe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_safe_fraction**\ (\ )

The maximum fraction of the motion that can be made without a collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsCastMotionResult2D_property_unsafe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **unsafe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_unsafe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_unsafe_fraction**\ (\ )

The minimum fraction of the distance that must be moved for a collision.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
