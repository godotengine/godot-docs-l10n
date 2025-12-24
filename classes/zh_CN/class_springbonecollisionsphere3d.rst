:github_url: hide

.. _class_SpringBoneCollisionSphere3D:

SpringBoneCollisionSphere3D
===========================

**继承：** :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

与 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 交互的球形碰撞。

.. rst-class:: classref-introduction-group

描述
----

与 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 交互的球形碰撞。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`inside<class_SpringBoneCollisionSphere3D_property_inside>` | ``false`` |
   +---------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SpringBoneCollisionSphere3D_property_radius>` | ``0.1``   |
   +---------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SpringBoneCollisionSphere3D_property_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **inside** = ``false`` :ref:`🔗<class_SpringBoneCollisionSphere3D_property_inside>`

.. rst-class:: classref-property-setget

- |void| **set_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_inside**\ (\ )

如果为 ``true``\ ，则碰撞会让关节困在碰撞中。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionSphere3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.1`` :ref:`🔗<class_SpringBoneCollisionSphere3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

球体的半径。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
