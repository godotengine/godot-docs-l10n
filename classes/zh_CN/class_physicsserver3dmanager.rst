:github_url: hide

.. _class_PhysicsServer3DManager:

PhysicsServer3DManager
======================

**继承：** :ref:`Object<class_Object>`

用于管理 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 实现的单例。

.. rst-class:: classref-introduction-group

描述
----

**PhysicsServer3DManager** 是用于注册 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 实现、设置默认实现的 API。

\ **注意：**\ 无法在运行时切换物理服务器。这个类只在启动时在服务器初始化级别使用，可能由 Godot 本身使用，也可能由 GDExtension 使用。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_server<class_PhysicsServer3DManager_method_register_server>`\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_default_server<class_PhysicsServer3DManager_method_set_default_server>`\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ )            |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsServer3DManager_method_register_server:

.. rst-class:: classref-method

|void| **register_server**\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_PhysicsServer3DManager_method_register_server>`

注册 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 实现，传入名称 ``name`` 和返回 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 对象的 :ref:`Callable<class_Callable>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DManager_method_set_default_server:

.. rst-class:: classref-method

|void| **set_default_server**\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PhysicsServer3DManager_method_set_default_server>`

如果优先级 ``priority`` 比当前默认实现的优先级高，则将由名称 ``name`` 标识的 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 实现设置为默认实现。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
