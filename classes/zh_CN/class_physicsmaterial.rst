:github_url: hide

.. _class_PhysicsMaterial:

PhysicsMaterial
===============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放与表面的物理相关的属性，也就是粗糙度和反弹度。

.. rst-class:: classref-introduction-group

描述
----

存放与表面的物理相关的属性，也就是粗糙度和反弹度。这个类用于将这些属性应用至物理体。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`absorbent<class_PhysicsMaterial_property_absorbent>` | ``false`` |
   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bounce<class_PhysicsMaterial_property_bounce>`       | ``0.0``   |
   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`friction<class_PhysicsMaterial_property_friction>`   | ``1.0``   |
   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`rough<class_PhysicsMaterial_property_rough>`         | ``false`` |
   +---------------------------+------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicsMaterial_property_absorbent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **absorbent** = ``false`` :ref:`🔗<class_PhysicsMaterial_property_absorbent>`

.. rst-class:: classref-property-setget

- |void| **set_absorbent**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_absorbent**\ (\ )

如果为 ``true``\ ，则从碰撞对象的弹跳性中减去弹性，而不是添加它。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsMaterial_property_bounce:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce** = ``0.0`` :ref:`🔗<class_PhysicsMaterial_property_bounce>`

.. rst-class:: classref-property-setget

- |void| **set_bounce**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce**\ (\ )

身体的反弹力。值范围从 ``0`` （无反弹）到 ``1``\ （完全反弹）。

\ **注意：**\ 即使将 :ref:`bounce<class_PhysicsMaterial_property_bounce>` 设置为 ``1.0``\ ，由于线性和角度阻尼，一些能量也会随着时间的推移而损失。要让物理体随时间推移保留其所有能量，请将 :ref:`bounce<class_PhysicsMaterial_property_bounce>` 设置为 ``1.0``\ 、将该物体的线性阻尼模式设置为 **Replace**\ （如果可用）、将它的线性阻尼设置为 ``0.0``\ 、它的角度阻尼模式设置为 **Replace**\ （如果可用）、并将它的角度阻尼设置为 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsMaterial_property_friction:

.. rst-class:: classref-property

:ref:`float<class_float>` **friction** = ``1.0`` :ref:`🔗<class_PhysicsMaterial_property_friction>`

.. rst-class:: classref-property-setget

- |void| **set_friction**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction**\ (\ )

物体的摩擦。取值范围从 ``0``\ （无摩擦）到 ``1``\ （最大摩擦）。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsMaterial_property_rough:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rough** = ``false`` :ref:`🔗<class_PhysicsMaterial_property_rough>`

.. rst-class:: classref-property-setget

- |void| **set_rough**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rough**\ (\ )

如果为 ``true``\ ，当两个物体碰撞时，物理引擎将使用标记为“粗糙”的物体的摩擦。如果 ``false``\ ，物理引擎将使用所有碰撞物体的最低摩擦力来代替。如果两个碰撞的对象都为 ``true``\ ，物理引擎将使用最高的摩擦力。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
