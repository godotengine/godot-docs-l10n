:github_url: hide

.. _class_VisualShaderNodeReroute:

VisualShaderNodeReroute
=======================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

允许在可视化着色器图内重新路由连接的节点。

.. rst-class:: classref-introduction-group

描述
----

自动调整其端口类型以适应传入连接的类型并确保有效连接。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>` | :ref:`get_port_type<class_VisualShaderNodeReroute_method_get_port_type>`\ (\ ) |const| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VisualShaderNodeReroute_method_get_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **get_port_type**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeReroute_method_get_port_type>`

返回重新路由节点的端口类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
