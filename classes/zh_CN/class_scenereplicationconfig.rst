:github_url: hide

.. _class_SceneReplicationConfig:

SceneReplicationConfig
======================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

配置，能够让 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` 对属性进行同步。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`add_property<class_SceneReplicationConfig_method_add_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`, index\: :ref:`int<class_int>` = -1\ )                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]        | :ref:`get_properties<class_SceneReplicationConfig_method_get_properties>`\ (\ ) |const|                                                                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`has_property<class_SceneReplicationConfig_method_has_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`property_get_index<class_SceneReplicationConfig_method_property_get_index>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` | :ref:`property_get_replication_mode<class_SceneReplicationConfig_method_property_get_replication_mode>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_spawn<class_SceneReplicationConfig_method_property_get_spawn>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_sync<class_SceneReplicationConfig_method_property_get_sync>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_watch<class_SceneReplicationConfig_method_property_get_watch>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_replication_mode<class_SceneReplicationConfig_method_property_set_replication_mode>`\ (\ path\: :ref:`NodePath<class_NodePath>`, mode\: :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>`\ ) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_spawn<class_SceneReplicationConfig_method_property_set_spawn>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_sync<class_SceneReplicationConfig_method_property_set_sync>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                  |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_watch<class_SceneReplicationConfig_method_property_set_watch>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`remove_property<class_SceneReplicationConfig_method_remove_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_SceneReplicationConfig_ReplicationMode:

.. rst-class:: classref-enumeration

enum **ReplicationMode**: :ref:`🔗<enum_SceneReplicationConfig_ReplicationMode>`

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_NEVER** = ``0``

不要让给定的属性保持同步。

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ALWAYS** = ``1``

处理时复制给定的属性，会使用不可靠的传输模式持续发送更新。

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ON_CHANGE** = ``2``

处理时复制给定的属性，会使用可靠的传输模式在值发生变化时发送更新。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SceneReplicationConfig_method_add_property:

.. rst-class:: classref-method

|void| **add_property**\ (\ path\: :ref:`NodePath<class_NodePath>`, index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SceneReplicationConfig_method_add_property>`

将属性添加至同步属性列表，该属性由 ``path`` 指定，还可以传入索引 ``index``\ 。

\ **注意：**\ 属性同步的限制详见 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_get_properties:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_properties**\ (\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_get_properties>`

返回同步属性的 :ref:`NodePath<class_NodePath>` 列表。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_has_property:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_has_property>`

如果已将给定的 ``path`` 配置为同步，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **property_get_index**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_property_get_index>`

查找给定 ``path`` 的索引。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_replication_mode:

.. rst-class:: classref-method

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **property_get_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_replication_mode>`

返回给定 ``path`` 标识的属性的复制模式。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_spawn:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_spawn>`

返回已将 ``path`` 对应的属性配置为在出生时同步，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_sync:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_sync>`

**已弃用：** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

如果给定 ``path`` 标识的属性被配置为在处理时同步，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_watch:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_watch>`

**已弃用：** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

如果给定 ``path`` 标识的属性被配置为在处理期间检测到更改时可靠地同步，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_replication_mode:

.. rst-class:: classref-method

|void| **property_set_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`, mode\: :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_replication_mode>`

为路径为 ``path`` 的属性设置同步模式。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_spawn:

.. rst-class:: classref-method

|void| **property_set_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_spawn>`

设置是否将路径为 ``path`` 的属性配置为在出生时同步。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_sync:

.. rst-class:: classref-method

|void| **property_set_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_sync>`

**已弃用：** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ALWAYS<class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS>` instead.

设置给定 ``path`` 标识的属性是否被配置为在处理时同步。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_watch:

.. rst-class:: classref-method

|void| **property_set_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_watch>`

**已弃用：** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ON_CHANGE<class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE>` instead.

设置给定 ``path`` 标识的属性是否被配置为在处理期间检测到更改时可靠地同步。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_remove_property:

.. rst-class:: classref-method

|void| **remove_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_remove_property>`

从配置中移除属性，该属性由 ``path`` 指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
