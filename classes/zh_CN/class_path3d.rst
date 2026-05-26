:github_url: hide

.. _class_Path3D:

Path3D
======

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

包含 :ref:`PathFollow3D<class_PathFollow3D>` 节点要跟随的的一条 :ref:`Curve3D<class_Curve3D>` 路径。

.. rst-class:: classref-introduction-group

描述
----

可以让 :ref:`PathFollow3D<class_PathFollow3D>` 子节点沿着 :ref:`Curve3D<class_Curve3D>` 移动。有关用法的更多信息见 :ref:`PathFollow3D<class_PathFollow3D>`\ 。

注意，该路径被认为是相对于移动的节点（\ :ref:`PathFollow3D<class_PathFollow3D>` 的子节点）。因此，该曲线通常应以零向量 ``(0, 0, 0)`` 开始。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Curve3D<class_Curve3D>` | :ref:`curve<class_Path3D_property_curve>`                           |                       |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Path3D_signal_curve_changed:

.. rst-class:: classref-signal

**curve_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_curve_changed>`

当 :ref:`curve<class_Path3D_property_curve>` 改变时触发。

.. rst-class:: classref-item-separator

----

.. _class_Path3D_signal_debug_color_changed:

.. rst-class:: classref-signal

**debug_color_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_debug_color_changed>`

当 :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>` 改变时触发。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Path3D_property_curve:

.. rst-class:: classref-property

:ref:`Curve3D<class_Curve3D>` **curve** :ref:`🔗<class_Path3D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve3D<class_Curve3D>`\ )
- :ref:`Curve3D<class_Curve3D>` **get_curve**\ (\ )

描述路径的 :ref:`Curve3D<class_Curve3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Path3D_property_debug_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Path3D_property_debug_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_custom_color**\ (\ )

编辑器中用于绘制路径的自定义颜色。如果设置为 :ref:`Color.BLACK<class_Color_constant_BLACK>`\ （默认值），则使用 :ref:`ProjectSettings.debug/shapes/paths/geometry_color<class_ProjectSettings_property_debug/shapes/paths/geometry_color>` 中设置的颜色。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
