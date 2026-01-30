:github_url: hide

.. _class_ResourceSaver:

ResourceSaver
=============

**继承：** :ref:`Object<class_Object>`

用于将 :ref:`Resource<class_Resource>` 保存到文件系统的单例。

.. rst-class:: classref-introduction-group

描述
----

用于将资源类型保存到文件系统的单例。

它会使用在引擎中注册的（内置或插件）\ :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` 将资源数据保存为文本文件（如 ``.tres`` 或 ``.tscn``\ ）或二进制文件（如 ``.res`` 或 ``.scn``\ ）。

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

枚举
----

.. _enum_ResourceSaver_SaverFlags:

.. rst-class:: classref-enumeration

flags **SaverFlags**: :ref:`🔗<enum_ResourceSaver_SaverFlags>`

.. _class_ResourceSaver_constant_FLAG_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_NONE** = ``0``

没有资源保存选项。

.. _class_ResourceSaver_constant_FLAG_RELATIVE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_RELATIVE_PATHS** = ``1``

用相对于使用该资源的场景的路径来保存该资源。

.. _class_ResourceSaver_constant_FLAG_BUNDLE_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_BUNDLE_RESOURCES** = ``2``

捆绑外部资源。

.. _class_ResourceSaver_constant_FLAG_CHANGE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_CHANGE_PATH** = ``4``

更改已保存资源的 :ref:`Resource.resource_path<class_Resource_property_resource_path>` 以匹配其新位置。

.. _class_ResourceSaver_constant_FLAG_OMIT_EDITOR_PROPERTIES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_OMIT_EDITOR_PROPERTIES** = ``8``

不要保存编辑器特定的元数据（由其 ``__editor`` 前缀标识）。

.. _class_ResourceSaver_constant_FLAG_SAVE_BIG_ENDIAN:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_SAVE_BIG_ENDIAN** = ``16``

保存为大端序（见 :ref:`FileAccess.big_endian<class_FileAccess_property_big_endian>`\ ）。

.. _class_ResourceSaver_constant_FLAG_COMPRESS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_COMPRESS** = ``32``

在保存时使用 :ref:`FileAccess.COMPRESSION_ZSTD<class_FileAccess_constant_COMPRESSION_ZSTD>` 压缩资源。仅适用于二进制资源类型。

.. _class_ResourceSaver_constant_FLAG_REPLACE_SUBRESOURCE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_REPLACE_SUBRESOURCE_PATHS** = ``64``

接管保存的子资源的路径（见 :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ResourceSaver_method_add_resource_format_saver:

.. rst-class:: classref-method

|void| **add_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_add_resource_format_saver>`

注册一个新的 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ 。 ResourceSaver 将使用 ResourceFormatSaver，如 :ref:`save()<class_ResourceSaver_method_save>` 中所述。

对于用 GDScript 编写的 ResourceFormatSaver，此方法将隐式执行（详见 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions**\ (\ type\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourceSaver_method_get_recognized_extensions>`

返回可用于保存给定类型的资源的扩展列表。

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_resource_id_for_path:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_id_for_path**\ (\ path\: :ref:`String<class_String>`, generate\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_get_resource_id_for_path>`

返回路径对应的资源 ID。如果 ``generate`` 为 ``true``\ ，则路径没有对应资源 ID 时会生成一个新的。如果 ``generate`` 为 ``false`` 且路径未找到，则会返回 :ref:`ResourceUID.INVALID_ID<class_ResourceUID_constant_INVALID_ID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_remove_resource_format_saver:

.. rst-class:: classref-method

|void| **remove_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ ) :ref:`🔗<class_ResourceSaver_method_remove_resource_format_saver>`

取消注册给定的 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>` = "", flags\: |bitfield|\[:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\] = 0\ ) :ref:`🔗<class_ResourceSaver_method_save>`

使用识别资源对象的 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` 将资源保存到给定路径。如果 ``path`` 为空，则 **ResourceSaver** 将尝试使用 :ref:`Resource.resource_path<class_Resource_property_resource_path>`\ 。

可以指定 ``flags`` 位掩码自定义保存行为。

成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。

\ **注意：**\ 项目正运行时，任何生成的与资源关联的 UID 都不会被保存，因为所需的代码仅在编辑器模式下执行。

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_uid**\ (\ resource\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ResourceSaver_method_set_uid>`

将 ``resource`` 资源的路径 UID 设置为 ``uid``\ 。你可以使用 :ref:`ResourceUID.create_id()<class_ResourceUID_method_create_id>` 来生成新的 UID。

由于资源一般会自动获取 UID，该方法仅适用于非常特别的场合。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
