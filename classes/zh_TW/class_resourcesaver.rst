:github_url: hide

.. _class_ResourceSaver:

ResourceSaver
=============

**繼承：** :ref:`Object<class_Object>`

用於將 :ref:`Resource<class_Resource>` 保存到檔案系統的單例。

.. rst-class:: classref-introduction-group

說明
----

用於將資源型別保存到檔案系統的單例。

它會使用在引擎中註冊的（內建或外掛程式）\ :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` 將資來源資料保存為文本檔案（如 ``.tres`` 或 ``.tscn``\ ）或二進位檔案（如 ``.res`` 或 ``.scn``\ ）。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_resource_format_saver<class_ResourceSaver_method_add_resource_format_saver>`\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, at_front\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_recognized_extensions<class_ResourceSaver_method_get_recognized_extensions>`\ (\ type\: :ref:`Resource<class_Resource>`\ )                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_resource_id_for_path<class_ResourceSaver_method_get_resource_id_for_path>`\ (\ path\: :ref:`String<class_String>`, generate\: :ref:`bool<class_bool>` = false\ )                                          |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_resource_format_saver<class_ResourceSaver_method_remove_resource_format_saver>`\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ )                                            |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save<class_ResourceSaver_method_save>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>` = "", flags\: |bitfield|\[:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\] = 0\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`set_uid<class_ResourceSaver_method_set_uid>`\ (\ resource\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ )                                                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_ResourceSaver_SaverFlags:

.. rst-class:: classref-enumeration

flags **SaverFlags**: :ref:`🔗<enum_ResourceSaver_SaverFlags>`

.. _class_ResourceSaver_constant_FLAG_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_NONE** = ``0``

沒有資源保存選項。

.. _class_ResourceSaver_constant_FLAG_RELATIVE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_RELATIVE_PATHS** = ``1``

用相對於使用該資源的場景的路徑來保存該資源。

.. _class_ResourceSaver_constant_FLAG_BUNDLE_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_BUNDLE_RESOURCES** = ``2``

捆綁外部資源。

.. _class_ResourceSaver_constant_FLAG_CHANGE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_CHANGE_PATH** = ``4``

更改已保存資源的 :ref:`Resource.resource_path<class_Resource_property_resource_path>` 以配對其新位置。

.. _class_ResourceSaver_constant_FLAG_OMIT_EDITOR_PROPERTIES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_OMIT_EDITOR_PROPERTIES** = ``8``

不要保存編輯器特定的中繼資料（由其 ``__editor`` 前綴標識）。

.. _class_ResourceSaver_constant_FLAG_SAVE_BIG_ENDIAN:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_SAVE_BIG_ENDIAN** = ``16``

保存為大端序（見 :ref:`FileAccess.big_endian<class_FileAccess_property_big_endian>`\ ）。

.. _class_ResourceSaver_constant_FLAG_COMPRESS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_COMPRESS** = ``32``

在保存時使用 :ref:`FileAccess.COMPRESSION_ZSTD<class_FileAccess_constant_COMPRESSION_ZSTD>` 壓縮資源。僅適用於二進位資源型別。

.. _class_ResourceSaver_constant_FLAG_REPLACE_SUBRESOURCE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_REPLACE_SUBRESOURCE_PATHS** = ``64``

接管保存的子資源的路徑（見 :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ResourceSaver_method_add_resource_format_saver:

.. rst-class:: classref-method

|void| **add_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_add_resource_format_saver>`

註冊一個新的 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ 。 ResourceSaver 將使用 ResourceFormatSaver，如 :ref:`save()<class_ResourceSaver_method_save>` 中所述。

對於用 GDScript 編寫的 ResourceFormatSaver，此方法將隱式執行（詳情見 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions**\ (\ type\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourceSaver_method_get_recognized_extensions>`

返回可用於保存給定型別的資源的擴充列表。

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_resource_id_for_path:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_id_for_path**\ (\ path\: :ref:`String<class_String>`, generate\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_get_resource_id_for_path>`

Returns the resource ID for the given path. If ``generate`` is ``true``, a new resource ID will be generated if one for the path is not found. If ``generate`` is ``false`` and the path is not found, :ref:`ResourceUID.INVALID_ID<class_ResourceUID_constant_INVALID_ID>` is returned.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_remove_resource_format_saver:

.. rst-class:: classref-method

|void| **remove_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ ) :ref:`🔗<class_ResourceSaver_method_remove_resource_format_saver>`

取消註冊給定的 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>` = "", flags\: |bitfield|\[:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\] = 0\ ) :ref:`🔗<class_ResourceSaver_method_save>`

Saves a resource to disk to the given path, using a :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` that recognizes the resource object. If ``path`` is empty, **ResourceSaver** will try to use :ref:`Resource.resource_path<class_Resource_property_resource_path>`.

The ``flags`` bitmask can be specified to customize the save behavior.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success.

\ **Note:** When the project is running, any generated UID associated with the resource will not be saved as the required code is only executed in editor mode.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_uid**\ (\ resource\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ResourceSaver_method_set_uid>`

Sets the UID of the given ``resource`` path to ``uid``. You can generate a new UID using :ref:`ResourceUID.create_id()<class_ResourceUID_method_create_id>`.

Since resources will normally get a UID automatically, this method is only useful in very specific cases.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
