:github_url: hide

.. _class_VisualShaderNodeResizableBase:

VisualShaderNodeResizableBase
=============================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisualShaderNodeCurveTexture<class_VisualShaderNodeCurveTexture>`, :ref:`VisualShaderNodeCurveXYZTexture<class_VisualShaderNodeCurveXYZTexture>`, :ref:`VisualShaderNodeFrame<class_VisualShaderNodeFrame>`, :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>`

可视化着色器图中，可调整大小的节点的基类。

.. rst-class:: classref-introduction-group

描述
----

可调整大小的节点上有一个控制柄，用户能够根据需要调整其大小。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_VisualShaderNodeResizableBase_property_size>` | ``Vector2(0, 0)`` |
   +-------------------------------+----------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeResizableBase_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_VisualShaderNodeResizableBase_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

可视化着色器图中，该节点的大小。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
