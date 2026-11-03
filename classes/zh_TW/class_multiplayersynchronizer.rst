:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerSynchronizer:

MultiplayerSynchronizer
=======================

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

將屬性從多人遊戲權威同步到遠端對等體。

.. rst-class:: classref-introduction-group

說明
----

預設情況下，\ **MultiplayerSynchronizer** 會將配置的屬性同步到所有對等體。

可以使用 :ref:`set_visibility_for()<class_MultiplayerSynchronizer_method_set_visibility_for>` 直接處理可見性，也可以通過 :ref:`add_visibility_filter()<class_MultiplayerSynchronizer_method_add_visibility_filter>` 和 :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>` 在需要時進行處理。

\ :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` 會根據同步器的可見性來處理節點，只要 :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` 的節點是出生出來的。

內部而言，\ **MultiplayerSynchronizer** 使用 :ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>` 來通知同步開始，將位於 :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` 的 :ref:`Node<class_Node>` 作為 ``object`` 傳入、將自己作為 ``configuration`` 傳入。使用 :ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>` 通知同步結束的方法相同。

\ **注意：**\ 不支援對 :ref:`Resource<class_Resource>` 等 :ref:`Object<class_Object>` 型別屬性進行同步。對等體的唯一屬性也無法進行同步，例如 :ref:`Object<class_Object>` 的實例 ID（見 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ ）或 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_MultiplayerSynchronizer_signal_delta_synchronized:

.. rst-class:: classref-signal

**delta_synchronized**\ (\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_delta_synchronized>`

屬性發生更新後，該同步器收到新的差異量同步狀態時發出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_signal_synchronized:

.. rst-class:: classref-signal

**synchronized**\ (\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_synchronized>`

屬性發生更新後，該同步器收到新的同步狀態時發出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ for_peer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_visibility_changed>`

當 ``for_peer`` 的可見性發生更新時發出。見 :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_MultiplayerSynchronizer_VisibilityUpdateMode:

.. rst-class:: classref-enumeration

enum **VisibilityUpdateMode**: :ref:`🔗<enum_MultiplayerSynchronizer_VisibilityUpdateMode>`

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_IDLE** = ``0``

可見性篩檢程式的更新發生在處理影格中（見 :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`\ ）。

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_PHYSICS** = ``1``

可見性篩檢程式的更新發生在物理影格中（見 :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`\ ）。

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_NONE** = ``2``

可見性篩檢程式不會自動更新，必須通過呼叫 :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>` 手動更新。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_MultiplayerSynchronizer_property_delta_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **delta_interval** = ``0.0`` :ref:`🔗<class_MultiplayerSynchronizer_property_delta_interval>`

.. rst-class:: classref-property-setget

- |void| **set_delta_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_delta_interval**\ (\ )

兩次增量同步之間的時間間隔。複製設為 :ref:`SceneReplicationConfig.REPLICATION_MODE_ON_CHANGE<class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE>` 時使用。如果設定為 ``0.0``\ （預設值）時，每個網路處理影格都會發生增量同步。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_public_visibility:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **public_visibility** = ``true`` :ref:`🔗<class_MultiplayerSynchronizer_property_public_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_public**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visibility_public**\ (\ )

預設情況下，同步是否應該對所有對等體可見。有關配置細細微性可見性選項的方法，請參閱 :ref:`set_visibility_for()<class_MultiplayerSynchronizer_method_set_visibility_for>` 和 :ref:`add_visibility_filter()<class_MultiplayerSynchronizer_method_add_visibility_filter>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_replication_config:

.. rst-class:: classref-property

:ref:`SceneReplicationConfig<class_SceneReplicationConfig>` **replication_config** :ref:`🔗<class_MultiplayerSynchronizer_property_replication_config>`

.. rst-class:: classref-property-setget

- |void| **set_replication_config**\ (\ value\: :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`\ )
- :ref:`SceneReplicationConfig<class_SceneReplicationConfig>` **get_replication_config**\ (\ )

包含要同步的屬性的資源。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_replication_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **replication_interval** = ``0.0`` :ref:`🔗<class_MultiplayerSynchronizer_property_replication_interval>`

.. rst-class:: classref-property-setget

- |void| **set_replication_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_replication_interval**\ (\ )

兩次同步之間的時間間隔。複製設定為 :ref:`SceneReplicationConfig.REPLICATION_MODE_ALWAYS<class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS>` 時使用。如果設定為 ``0.0``\ （預設值）時，每個網路處理影格都會發生同步。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("..")`` :ref:`🔗<class_MultiplayerSynchronizer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

複製屬性相對的節點路徑。

如果 :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` 是由 :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` 生成的，則該節點也將根據此同步器可見性選項生成和消失。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_visibility_update_mode:

.. rst-class:: classref-property

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **visibility_update_mode** = ``0`` :ref:`🔗<class_MultiplayerSynchronizer_property_visibility_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_update_mode**\ (\ value\: :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>`\ )
- :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **get_visibility_update_mode**\ (\ )

指定何時更新可見性過濾器。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_MultiplayerSynchronizer_method_add_visibility_filter:

.. rst-class:: classref-method

|void| **add_visibility_filter**\ (\ filter\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_add_visibility_filter>`

為該同步器新增對等體可見性篩檢程式。

\ ``filter`` 應該接受對等體 ID :ref:`int<class_int>`\ ，返回 :ref:`bool<class_bool>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_get_visibility_for:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_visibility_for**\ (\ peer\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiplayerSynchronizer_method_get_visibility_for>`

查詢對等體 ``peer`` 的目前可見性。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_remove_visibility_filter:

.. rst-class:: classref-method

|void| **remove_visibility_filter**\ (\ filter\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_remove_visibility_filter>`

從該同步器中移除某個對等體的可見性篩檢程式。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_set_visibility_for:

.. rst-class:: classref-method

|void| **set_visibility_for**\ (\ peer\: :ref:`int<class_int>`, visible\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_set_visibility_for>`

將 ``peer`` 的可見性設定為 ``visible``\ 。如果 ``peer`` 為 ``0``\ ，則會改為更新 :ref:`public_visibility<class_MultiplayerSynchronizer_property_public_visibility>` 的值。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_update_visibility:

.. rst-class:: classref-method

|void| **update_visibility**\ (\ for_peer\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_update_visibility>`

根據可見性篩檢程式更新 ``for_peer`` 的可見性。如果 ``for_peer`` 為 ``0``\ （預設值），則更新所有對等體的可見性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
