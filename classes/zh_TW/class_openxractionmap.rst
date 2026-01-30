:github_url: hide

.. _class_OpenXRActionMap:

OpenXRActionMap
===============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於 OpenXR 模組的 :ref:`OpenXRActionSet<class_OpenXRActionSet>` 和 :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` 資源的合集。

.. rst-class:: classref-introduction-group

說明
----

OpenXR 使用類似於 Godots 輸入對應系統的動作系統，將各種型別的 XR 控制器上的輸入和輸出綁定到命名的動作。OpenXR 規範了比 Godot 支援的更多關於這些輸入和輸出的細節。

另一個重要的區別是 OpenXR 不提供對這些綁定的控制。我們註冊的綁定是建議，取決於 XR 運作時是否為使用者提供更改這些綁定的能力。如果有新硬體可用，這允許 XR 運行時填補空白。

因此，動作對應需要在啟動時載入，之後無法更改。該資源是整個動作對應的容器。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`action_sets<class_OpenXRActionMap_property_action_sets>`                   | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`interaction_profiles<class_OpenXRActionMap_property_interaction_profiles>` | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_action_set<class_OpenXRActionMap_method_add_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                                    |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_interaction_profile<class_OpenXRActionMap_method_add_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ )       |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`create_default_action_sets<class_OpenXRActionMap_method_create_default_action_sets>`\ (\ )                                                                                        |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`find_action_set<class_OpenXRActionMap_method_find_action_set>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                  |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`find_interaction_profile<class_OpenXRActionMap_method_find_interaction_profile>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`get_action_set<class_OpenXRActionMap_method_get_action_set>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_action_set_count<class_OpenXRActionMap_method_get_action_set_count>`\ (\ ) |const|                                                                                            |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`get_interaction_profile<class_OpenXRActionMap_method_get_interaction_profile>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_interaction_profile_count<class_OpenXRActionMap_method_get_interaction_profile_count>`\ (\ ) |const|                                                                          |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_action_set<class_OpenXRActionMap_method_remove_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                              |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_interaction_profile<class_OpenXRActionMap_method_remove_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRActionMap_property_action_sets:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **action_sets** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_action_sets>`

.. rst-class:: classref-property-setget

- |void| **set_action_sets**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_action_sets**\ (\ )

:ref:`OpenXRActionSet<class_OpenXRActionSet>` 的合集，是該動作對應的一部分。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_property_interaction_profiles:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **interaction_profiles** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_interaction_profiles>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profiles**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_interaction_profiles**\ (\ )

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` 的合集，是該動作對應的一部分。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRActionMap_method_add_action_set:

.. rst-class:: classref-method

|void| **add_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_action_set>`

新增動作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_add_interaction_profile:

.. rst-class:: classref-method

|void| **add_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_interaction_profile>`

新增互動配置。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_create_default_action_sets:

.. rst-class:: classref-method

|void| **create_default_action_sets**\ (\ ) :ref:`🔗<class_OpenXRActionMap_method_create_default_action_sets>`

使用預設動作設定該動作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **find_action_set**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_action_set>`

按名稱檢索動作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **find_interaction_profile**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_interaction_profile>`

按名稱（路徑）搜尋互動配置。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **get_action_set**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set>`

獲取位於該索引的動作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_action_set_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set_count>`

獲取動作對應中動作集的數量。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **get_interaction_profile**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile>`

獲取位於該索引的互動配置。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interaction_profile_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile_count>`

獲取動作對應中互動配置的數量。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_action_set:

.. rst-class:: classref-method

|void| **remove_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_action_set>`

移除動作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_interaction_profile:

.. rst-class:: classref-method

|void| **remove_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_interaction_profile>`

移除互動配置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
