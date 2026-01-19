:github_url: hide

.. _class_OccluderPolygon2D:

OccluderPolygon2D
=================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为 LightOccluder2D 定义一个 2D 多边形。

.. rst-class:: classref-introduction-group

描述
----

编辑工具，帮助你绘制一个 2D 多边形用作资源 :ref:`LightOccluder2D<class_LightOccluder2D>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`closed<class_OccluderPolygon2D_property_closed>`       | ``true``                 |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`CullMode<enum_OccluderPolygon2D_CullMode>`    | :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>` | ``0``                    |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_OccluderPolygon2D_property_polygon>`     | ``PackedVector2Array()`` |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_OccluderPolygon2D_CullMode:

.. rst-class:: classref-enumeration

enum **CullMode**: :ref:`🔗<enum_OccluderPolygon2D_CullMode>`

.. _class_OccluderPolygon2D_constant_CULL_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_DISABLED** = ``0``

禁用剔除。见 :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`\ 。

.. _class_OccluderPolygon2D_constant_CULL_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_CLOCKWISE** = ``1``

按顺时针方向进行剔除。见 :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`\ 。

.. _class_OccluderPolygon2D_constant_CULL_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_COUNTER_CLOCKWISE** = ``2``

按逆时针方向进行剔除。见 :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OccluderPolygon2D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``true`` :ref:`🔗<class_OccluderPolygon2D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

如果为 ``true``\ ，封闭该多边形。一个封闭的polygon2d封闭来自任何方向的光。一个开放的OccluderPolygon2D只在其轮廓方向上遮挡光。

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_cull_mode:

.. rst-class:: classref-property

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **cull_mode** = ``0`` :ref:`🔗<class_OccluderPolygon2D_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`CullMode<enum_OccluderPolygon2D_CullMode>`\ )
- :ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **get_cull_mode**\ (\ )

要使用的剔除模式。

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_OccluderPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

具有多边形顶点位置索引的 :ref:`Vector2<class_Vector2>` 数组。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
