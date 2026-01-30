:github_url: hide

.. _class_Path2D:

Path2D
======

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

包含一个 :ref:`Curve2D<class_Curve2D>` 路径，供 :ref:`PathFollow2D<class_PathFollow2D>` 节点遵循。

.. rst-class:: classref-introduction-group

描述
----

可以让 :ref:`PathFollow2D<class_PathFollow2D>` 子节点沿着 :ref:`Curve2D<class_Curve2D>` 移动。有关用法的更多信息，请参阅 :ref:`PathFollow2D<class_PathFollow2D>`\ 。

\ **注意：**\ 该路径被认为是相对于移动的节点（\ :ref:`PathFollow2D<class_PathFollow2D>` 的子节点）。因此，曲线通常以零向量（\ ``(0,0)``\ ）开始。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------+
   | :ref:`Curve2D<class_Curve2D>` | :ref:`curve<class_Path2D_property_curve>` |
   +-------------------------------+-------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Path2D_property_curve:

.. rst-class:: classref-property

:ref:`Curve2D<class_Curve2D>` **curve** :ref:`🔗<class_Path2D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve2D<class_Curve2D>`\ )
- :ref:`Curve2D<class_Curve2D>` **get_curve**\ (\ )

描述路径的 :ref:`Curve2D<class_Curve2D>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
