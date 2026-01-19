:github_url: hide

.. _class_VisibleOnScreenEnabler3D:

VisibleOnScreenEnabler3D
========================

**继承：** :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D 空间的盒形区块，当在屏幕上可见时，启用目标节点。

.. rst-class:: classref-introduction-group

描述
----

**VisibleOnScreenEnabler3D** 包含 3D 空间的盒形区块和目标节点。当该区域的任何部分在屏幕上可见时，目标节点将自动启用（通过其 :ref:`Node.process_mode<class_Node_property_process_mode>` 属性），否则将自动禁用。例如，这可以被用于仅在玩家接近敌人时激活敌人。

如果你只想在该区块在屏幕上可见时收到通知，请参阅 :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>`\ 。

\ **注意：**\ **VisibleOnScreenEnabler3D** 使用近似启发式，不考虑墙壁和其他遮挡，除非使用遮挡剔除。除非将 :ref:`Node3D.visible<class_Node3D_property_visible>` 设置为 ``true``\ ，否则它也不会起作用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` | :ref:`enable_mode<class_VisibleOnScreenEnabler3D_property_enable_mode>`           | ``0``              |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`enable_node_path<class_VisibleOnScreenEnabler3D_property_enable_node_path>` | ``NodePath("..")`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisibleOnScreenEnabler3D_EnableMode:

.. rst-class:: classref-enumeration

enum **EnableMode**: :ref:`🔗<enum_VisibleOnScreenEnabler3D_EnableMode>`

.. _class_VisibleOnScreenEnabler3D_constant_ENABLE_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **ENABLE_MODE_INHERIT** = ``0``

对应 :ref:`Node.PROCESS_MODE_INHERIT<class_Node_constant_PROCESS_MODE_INHERIT>`\ 。

.. _class_VisibleOnScreenEnabler3D_constant_ENABLE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **ENABLE_MODE_ALWAYS** = ``1``

对应 :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`\ 。

.. _class_VisibleOnScreenEnabler3D_constant_ENABLE_MODE_WHEN_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **ENABLE_MODE_WHEN_PAUSED** = ``2``

对应 :ref:`Node.PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisibleOnScreenEnabler3D_property_enable_mode:

.. rst-class:: classref-property

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **enable_mode** = ``0`` :ref:`🔗<class_VisibleOnScreenEnabler3D_property_enable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_enable_mode**\ (\ value\: :ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>`\ )
- :ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **get_enable_mode**\ (\ )

确定如何启用目标节点。对应于 :ref:`ProcessMode<enum_Node_ProcessMode>`\ 。当该节点被禁用时，它始终使用 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenEnabler3D_property_enable_node_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **enable_node_path** = ``NodePath("..")`` :ref:`🔗<class_VisibleOnScreenEnabler3D_property_enable_node_path>`

.. rst-class:: classref-property-setget

- |void| **set_enable_node_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_enable_node_path**\ (\ )

目标节点的路径，相对于 **VisibleOnScreenEnabler3D**\ 。目标节点会被缓存；只有在设置这个属性时（\ **VisibleOnScreenEnabler3D** 位于场景树中），以及 **VisibleOnScreenEnabler3D** 进入场景树时会进行赋值。如果路径为空，则不会影响任何节点。如果路径无效，则还会生成错误。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
