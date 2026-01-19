:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerSynchronizer:

MultiplayerSynchronizer
=======================

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

将属性从多人游戏权威同步到远程对等体。

.. rst-class:: classref-introduction-group

描述
----

默认情况下，\ **MultiplayerSynchronizer** 会将配置的属性同步到所有对等体。

可以使用 :ref:`set_visibility_for()<class_MultiplayerSynchronizer_method_set_visibility_for>` 直接处理可见性，也可以通过 :ref:`add_visibility_filter()<class_MultiplayerSynchronizer_method_add_visibility_filter>` 和 :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>` 在需要时进行处理。

\ :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` 会根据同步器的可见性来处理节点，只要 :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` 的节点是出生出来的。

内部而言，\ **MultiplayerSynchronizer** 使用 :ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>` 来通知同步开始，将位于 :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` 的 :ref:`Node<class_Node>` 作为 ``object`` 传入、将自己作为 ``configuration`` 传入。使用 :ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>` 通知同步结束的方法相同。

\ **注意：**\ 不支持对 :ref:`Resource<class_Resource>` 等 :ref:`Object<class_Object>` 类型属性进行同步。对等体的唯一属性也无法进行同步，例如 :ref:`Object<class_Object>` 的实例 ID（见 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ ）或 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                      | :ref:`delta_interval<class_MultiplayerSynchronizer_property_delta_interval>`                 | ``0.0``            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`public_visibility<class_MultiplayerSynchronizer_property_public_visibility>`           | ``true``           |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`                    | :ref:`replication_config<class_MultiplayerSynchronizer_property_replication_config>`         |                    |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                      | :ref:`replication_interval<class_MultiplayerSynchronizer_property_replication_interval>`     | ``0.0``            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                | :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>`                           | ``NodePath("..")`` |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` | :ref:`visibility_update_mode<class_MultiplayerSynchronizer_property_visibility_update_mode>` | ``0``              |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_visibility_filter<class_MultiplayerSynchronizer_method_add_visibility_filter>`\ (\ filter\: :ref:`Callable<class_Callable>`\ )                  |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_visibility_for<class_MultiplayerSynchronizer_method_get_visibility_for>`\ (\ peer\: :ref:`int<class_int>`\ ) |const|                            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`remove_visibility_filter<class_MultiplayerSynchronizer_method_remove_visibility_filter>`\ (\ filter\: :ref:`Callable<class_Callable>`\ )            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_visibility_for<class_MultiplayerSynchronizer_method_set_visibility_for>`\ (\ peer\: :ref:`int<class_int>`, visible\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`update_visibility<class_MultiplayerSynchronizer_method_update_visibility>`\ (\ for_peer\: :ref:`int<class_int>` = 0\ )                              |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_MultiplayerSynchronizer_signal_delta_synchronized:

.. rst-class:: classref-signal

**delta_synchronized**\ (\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_delta_synchronized>`

属性发生更新后，该同步器收到新的增量同步状态时发出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_signal_synchronized:

.. rst-class:: classref-signal

**synchronized**\ (\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_synchronized>`

属性发生更新后，该同步器收到新的同步状态时发出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ for_peer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_visibility_changed>`

当 ``for_peer`` 的可见性发生更新时发出。见 :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_MultiplayerSynchronizer_VisibilityUpdateMode:

.. rst-class:: classref-enumeration

enum **VisibilityUpdateMode**: :ref:`🔗<enum_MultiplayerSynchronizer_VisibilityUpdateMode>`

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_IDLE** = ``0``

可见性过滤器的更新发生在处理帧中（见 :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`\ ）。

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_PHYSICS** = ``1``

可见性过滤器的更新发生在物理帧中（见 :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`\ ）。

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_NONE** = ``2``

可见性过滤器不会自动更新，必须通过调用 :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>` 手动更新。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MultiplayerSynchronizer_property_delta_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **delta_interval** = ``0.0`` :ref:`🔗<class_MultiplayerSynchronizer_property_delta_interval>`

.. rst-class:: classref-property-setget

- |void| **set_delta_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_delta_interval**\ (\ )

两次增量同步之间的时间间隔。复制设为 :ref:`SceneReplicationConfig.REPLICATION_MODE_ON_CHANGE<class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE>` 时使用。如果设置为 ``0.0``\ （默认值）时，每个网络处理帧都会发生增量同步。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_public_visibility:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **public_visibility** = ``true`` :ref:`🔗<class_MultiplayerSynchronizer_property_public_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_public**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visibility_public**\ (\ )

默认情况下，同步是否应该对所有对等体可见。有关配置细粒度可见性选项的方法，请参阅 :ref:`set_visibility_for()<class_MultiplayerSynchronizer_method_set_visibility_for>` 和 :ref:`add_visibility_filter()<class_MultiplayerSynchronizer_method_add_visibility_filter>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_replication_config:

.. rst-class:: classref-property

:ref:`SceneReplicationConfig<class_SceneReplicationConfig>` **replication_config** :ref:`🔗<class_MultiplayerSynchronizer_property_replication_config>`

.. rst-class:: classref-property-setget

- |void| **set_replication_config**\ (\ value\: :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`\ )
- :ref:`SceneReplicationConfig<class_SceneReplicationConfig>` **get_replication_config**\ (\ )

包含要同步的属性的资源。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_replication_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **replication_interval** = ``0.0`` :ref:`🔗<class_MultiplayerSynchronizer_property_replication_interval>`

.. rst-class:: classref-property-setget

- |void| **set_replication_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_replication_interval**\ (\ )

两次同步之间的时间间隔。复制设置为 :ref:`SceneReplicationConfig.REPLICATION_MODE_ALWAYS<class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS>` 时使用。如果设置为 ``0.0``\ （默认值）时，每个网络处理帧都会发生同步。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("..")`` :ref:`🔗<class_MultiplayerSynchronizer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

复制属性相对的节点路径。

如果 :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` 是由 :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` 生成的，则该节点也将根据此同步器可见性选项生成和消失。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_visibility_update_mode:

.. rst-class:: classref-property

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **visibility_update_mode** = ``0`` :ref:`🔗<class_MultiplayerSynchronizer_property_visibility_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_update_mode**\ (\ value\: :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>`\ )
- :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **get_visibility_update_mode**\ (\ )

指定何时更新可见性过滤器。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MultiplayerSynchronizer_method_add_visibility_filter:

.. rst-class:: classref-method

|void| **add_visibility_filter**\ (\ filter\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_add_visibility_filter>`

为该同步器添加对等体可见性过滤器。

\ ``filter`` 应该接受对等体 ID :ref:`int<class_int>`\ ，返回 :ref:`bool<class_bool>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_get_visibility_for:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_visibility_for**\ (\ peer\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiplayerSynchronizer_method_get_visibility_for>`

查询对等体 ``peer`` 的当前可见性。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_remove_visibility_filter:

.. rst-class:: classref-method

|void| **remove_visibility_filter**\ (\ filter\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_remove_visibility_filter>`

从该同步器中移除某个对等体的可见性过滤器。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_set_visibility_for:

.. rst-class:: classref-method

|void| **set_visibility_for**\ (\ peer\: :ref:`int<class_int>`, visible\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_set_visibility_for>`

将 ``peer`` 的可见性设置为 ``visible``\ 。如果 ``peer`` 为 ``0``\ ，则会改为更新 :ref:`public_visibility<class_MultiplayerSynchronizer_property_public_visibility>` 的值。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_update_visibility:

.. rst-class:: classref-method

|void| **update_visibility**\ (\ for_peer\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_update_visibility>`

根据可见性过滤器更新 ``for_peer`` 的可见性。如果 ``for_peer`` 为 ``0``\ （默认值），则更新所有对等体的可见性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
