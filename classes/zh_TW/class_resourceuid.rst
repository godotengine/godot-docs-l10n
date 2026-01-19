:github_url: hide

.. _class_ResourceUID:

ResourceUID
===========

**繼承：** :ref:`Object<class_Object>`

管理專案中所有資源的唯一識別碼的單例。

.. rst-class:: classref-introduction-group

說明
----

Resource UIDs (Unique IDentifiers) allow the engine to keep references between resources intact, even if files are renamed or moved. They can be accessed with ``uid://``.

\ **ResourceUID** keeps track of all registered resource UIDs in a project, generates new UIDs, and converts between their string and integer representations.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_id<class_ResourceUID_method_add_id>`\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`create_id<class_ResourceUID_method_create_id>`\ (\ )                                                           |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`create_id_for_path<class_ResourceUID_method_create_id_for_path>`\ (\ path\: :ref:`String<class_String>`\ )     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ensure_path<class_ResourceUID_method_ensure_path>`\ (\ path_or_uid\: :ref:`String<class_String>`\ ) |static|   |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_id_path<class_ResourceUID_method_get_id_path>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                   |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_id<class_ResourceUID_method_has_id>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                             |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`id_to_text<class_ResourceUID_method_id_to_text>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`path_to_uid<class_ResourceUID_method_path_to_uid>`\ (\ path\: :ref:`String<class_String>`\ ) |static|          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_id<class_ResourceUID_method_remove_id>`\ (\ id\: :ref:`int<class_int>`\ )                               |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_id<class_ResourceUID_method_set_id>`\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`text_to_id<class_ResourceUID_method_text_to_id>`\ (\ text_id\: :ref:`String<class_String>`\ ) |const|          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`uid_to_path<class_ResourceUID_method_uid_to_path>`\ (\ uid\: :ref:`String<class_String>`\ ) |static|           |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_ResourceUID_constant_INVALID_ID:

.. rst-class:: classref-constant

**INVALID_ID** = ``-1`` :ref:`🔗<class_ResourceUID_constant_INVALID_ID>`

用於無效 UID 的值，例如無法載入的資源。

對應的文字表示為 ``uid://<invalid>``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ResourceUID_method_add_id:

.. rst-class:: classref-method

|void| **add_id**\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_add_id>`

新增一個新的 UID 值，將其對應到給定的資源路徑。

如果 UID 已經存在，則會返回錯誤，因此請務必先使用 :ref:`has_id()<class_ResourceUID_method_has_id>` 進行檢查，或者改用 :ref:`set_id()<class_ResourceUID_method_set_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_create_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_id**\ (\ ) :ref:`🔗<class_ResourceUID_method_create_id>`

生成隨機的資源 UID，該 UID 在目前載入的 UID 列表中保證唯一。

要註冊這個 UID，你必須呼叫 :ref:`add_id()<class_ResourceUID_method_add_id>` 或 :ref:`set_id()<class_ResourceUID_method_set_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_create_id_for_path:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_create_id_for_path>`

Like :ref:`create_id()<class_ResourceUID_method_create_id>`, but the UID is seeded with the provided ``path`` and project name. UIDs generated for that path will be always the same within the current project.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_ensure_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **ensure_path**\ (\ path_or_uid\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_ensure_path>`

Returns a path, converting ``path_or_uid`` if necessary. Fails and returns an empty string if an invalid UID is provided.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_get_id_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_path**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_get_id_path>`

返回給定 UID 值引用的路徑。

如果 UID 不存在則失敗並報告有錯，因此請務必使用 :ref:`has_id()<class_ResourceUID_method_has_id>` 事先檢查。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_has_id:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_id**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_has_id>`

返回給定的 UID 值是否為快取所知。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_id_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **id_to_text**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_id_to_text>`

將給定的 UID 轉換為 ``uid://`` 字串值。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_path_to_uid:

.. rst-class:: classref-method

:ref:`String<class_String>` **path_to_uid**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_path_to_uid>`

Converts the provided resource ``path`` to a UID. Returns the unchanged path if it has no associated UID.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_remove_id:

.. rst-class:: classref-method

|void| **remove_id**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ResourceUID_method_remove_id>`

從快取中刪除一個已載入的 UID 值。

如果 UID 不存在則失敗並報告有錯，因此請務必提前使用 :ref:`has_id()<class_ResourceUID_method_has_id>` 檢查。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_set_id:

.. rst-class:: classref-method

|void| **set_id**\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_set_id>`

更新現有 UID 的資源路徑。

如果 UID 不存在，則失敗並出現錯誤，因此請務必提前使用 :ref:`has_id()<class_ResourceUID_method_has_id>` 檢查，或者改用 :ref:`add_id()<class_ResourceUID_method_add_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_text_to_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **text_to_id**\ (\ text_id\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ResourceUID_method_text_to_id>`

從給定的 ``uid://`` 字串中提取 UID 值。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_uid_to_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **uid_to_path**\ (\ uid\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_uid_to_path>`

Converts the provided ``uid`` to a path. Prints an error if the UID is invalid.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
