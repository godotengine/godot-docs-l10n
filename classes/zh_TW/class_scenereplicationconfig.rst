:github_url: hide

.. _class_SceneReplicationConfig:

SceneReplicationConfig
======================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

配置，能夠讓 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` 對屬性進行同步。

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

列舉
----

.. _enum_SceneReplicationConfig_ReplicationMode:

.. rst-class:: classref-enumeration

enum **ReplicationMode**: :ref:`🔗<enum_SceneReplicationConfig_ReplicationMode>`

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_NEVER** = ``0``

不保持給定屬性同步。

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ALWAYS** = ``1``

透過使用不可靠的傳輸模式不斷發送更新來複製程序上的給定屬性。

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ON_CHANGE** = ``2``

當其值變更時，透過使用可靠傳輸模式發送更新來複製程序上的給定屬性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SceneReplicationConfig_method_add_property:

.. rst-class:: classref-method

|void| **add_property**\ (\ path\: :ref:`NodePath<class_NodePath>`, index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SceneReplicationConfig_method_add_property>`

將屬性新增至同步屬性列表，該屬性由 ``path`` 指定，還可以傳入索引 ``index``\ 。

\ **注意：**\ 屬性同步的限制詳見 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_get_properties:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_properties**\ (\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_get_properties>`

返回同步屬性的 :ref:`NodePath<class_NodePath>` 列表。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_has_property:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_has_property>`

Returns ``true`` if the given ``path`` is configured for synchronization.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **property_get_index**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_property_get_index>`

搜尋給定 ``path`` 的索引。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_replication_mode:

.. rst-class:: classref-method

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **property_get_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_replication_mode>`

Returns the replication mode for the property identified by the given ``path``.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_spawn:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_spawn>`

Returns ``true`` if the property identified by the given ``path`` is configured to be synchronized on spawn.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_sync:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_sync>`

**已棄用：** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

Returns ``true`` if the property identified by the given ``path`` is configured to be synchronized on process.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_watch:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_watch>`

**已棄用：** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

Returns ``true`` if the property identified by the given ``path`` is configured to be reliably synchronized when changes are detected on process.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_replication_mode:

.. rst-class:: classref-method

|void| **property_set_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`, mode\: :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_replication_mode>`

Sets the synchronization mode for the property identified by the given ``path``.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_spawn:

.. rst-class:: classref-method

|void| **property_set_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_spawn>`

設定屬性是否配置為在出生時同步，該屬性由 ``path`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_sync:

.. rst-class:: classref-method

|void| **property_set_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_sync>`

**已棄用：** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ALWAYS<class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS>` instead.

Sets whether the property identified by the given ``path`` is configured to be synchronized on process.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_watch:

.. rst-class:: classref-method

|void| **property_set_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_watch>`

**已棄用：** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ON_CHANGE<class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE>` instead.

Sets whether the property identified by the given ``path`` is configured to be reliably synchronized when changes are detected on process.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_remove_property:

.. rst-class:: classref-method

|void| **remove_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_remove_property>`

從配置中移除屬性，該屬性由 ``path`` 指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
