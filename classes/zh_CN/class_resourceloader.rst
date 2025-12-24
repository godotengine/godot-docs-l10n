:github_url: hide

.. _class_ResourceLoader:

ResourceLoader
==============

**继承：** :ref:`Object<class_Object>`

用于加载资源文件的单例。

.. rst-class:: classref-introduction-group

描述
----

用于从文件系统加载资源文件的单例。

会使用引擎中（内置或插件）注册的许多 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 类将文件加载到内存中并将其转换为引擎可以使用的格式。

\ **注意：**\ 你需要先将文件导入引擎，才能使用 :ref:`load()<class_ResourceLoader_method_load>` 进行加载。如果你想在运行时加载 :ref:`Image<class_Image>`\ ，可以使用 :ref:`Image.load()<class_Image_method_load>`\ 。如果你想导入音频文件，可以使用 :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>` 中描述的代码段。

\ **注意：**\ 纯文本文件等非资源文件无法使用 **ResourceLoader** 读取。请改用 :ref:`FileAccess<class_FileAccess>` 来处理这些文件，注意默认情况下不会导出非资源文件（导出说明见 :ref:`FileAccess<class_FileAccess>` 类描述）。

.. rst-class:: classref-introduction-group

教程
----

- `操作系统测试演示 <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_resource_format_loader<class_ResourceLoader_method_add_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ )                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`exists<class_ResourceLoader_method_exists>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ )                                                                                                                                                    |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`get_cached_ref<class_ResourceLoader_method_get_cached_ref>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                  |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_dependencies<class_ResourceLoader_method_get_dependencies>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_recognized_extensions_for_type<class_ResourceLoader_method_get_recognized_extensions_for_type>`\ (\ type\: :ref:`String<class_String>`\ )                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_resource_uid<class_ResourceLoader_method_get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`has_cached<class_ResourceLoader_method_has_cached>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`list_directory<class_ResourceLoader_method_list_directory>`\ (\ directory_path\: :ref:`String<class_String>`\ )                                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load<class_ResourceLoader_method_load>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ )                                                                                      |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load_threaded_get<class_ResourceLoader_method_load_threaded_get>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` | :ref:`load_threaded_get_status<class_ResourceLoader_method_load_threaded_get_status>`\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ )                                                                                                                   |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`load_threaded_request<class_ResourceLoader_method_load_threaded_request>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`remove_resource_format_loader<class_ResourceLoader_method_remove_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ )                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_abort_on_missing_resources<class_ResourceLoader_method_set_abort_on_missing_resources>`\ (\ abort\: :ref:`bool<class_bool>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_ResourceLoader_ThreadLoadStatus:

.. rst-class:: classref-enumeration

enum **ThreadLoadStatus**: :ref:`🔗<enum_ResourceLoader_ThreadLoadStatus>`

.. _class_ResourceLoader_constant_THREAD_LOAD_INVALID_RESOURCE:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_INVALID_RESOURCE** = ``0``

该资源无效，或尚未使用 :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` 加载。

.. _class_ResourceLoader_constant_THREAD_LOAD_IN_PROGRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_IN_PROGRESS** = ``1``

该资源仍在加载中。

.. _class_ResourceLoader_constant_THREAD_LOAD_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_FAILED** = ``2``

加载过程中发生了错误，导致失败。

.. _class_ResourceLoader_constant_THREAD_LOAD_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_LOADED** = ``3``

资源成功加载，可以通过 :ref:`load_threaded_get()<class_ResourceLoader_method_load_threaded_get>` 访问。

.. rst-class:: classref-item-separator

----

.. _enum_ResourceLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceLoader_CacheMode>`

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

主资源（请求加载的资源）及所有子资源都既不会从缓存中检索也不会存储到缓存中。依赖项（外部资源）使用 :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>` 加载。

.. _class_ResourceLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

主资源（请求加载的资源）、子资源、依赖项（外部资源）如果在缓存中存在，则将从缓存中检索，不进行加载。如果未缓存则将进行加载，然后存储到缓存中。相同的规则将沿着依赖关系树（外部资源）递归传播。

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

与 :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>` 类似，但会检查主资源（请求加载的资源）及每个子资源的缓存。如果在缓存中存在，只要加载的类型和缓存的类型匹配，就会使用存储的数据刷新已经存在的实例。否则会重新作为全新的对象创建。

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

与 :ref:`CACHE_MODE_IGNORE<class_ResourceLoader_constant_CACHE_MODE_IGNORE>` 类似，但沿依赖关系树（外部资源）递归传播。

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

与 :ref:`CACHE_MODE_REPLACE<class_ResourceLoader_constant_CACHE_MODE_REPLACE>` 类似，但沿依赖关系树（外部资源）递归传播。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ResourceLoader_method_add_resource_format_loader:

.. rst-class:: classref-method

|void| **add_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceLoader_method_add_resource_format_loader>`

注册一个新的 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ 。ResourceLoader 将会按照 :ref:`load()<class_ResourceLoader_method_load>` 中的描述使用 ResourceFormatLoader。

对于用 GDScript 编写的 ResourceFormatLoader，此方法将隐式执行（详见 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **exists**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_ResourceLoader_method_exists>`

返回给定路径 ``path`` 是否存在已识别的资源。

可选的 ``type_hint`` 可用于进一步指定 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 应处理的 :ref:`Resource<class_Resource>` 类型。任何继承自 :ref:`Resource<class_Resource>` 的内容都可以用作类型提示，例如 :ref:`Image<class_Image>`\ 。

\ **注意：**\ 如果使用了 :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`\ ，则这个方法会为接管的路径返回 ``true``\ ，即便对应的资源尚未保存（即仅存在于资源缓存中）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_cached_ref:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_cached_ref**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_cached_ref>`

返回路径 ``path`` 对应的资源引用缓存。

\ **注意：**\ 如果资源尚未缓存，则会返回无效 :ref:`Resource<class_Resource>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_dependencies>`

返回路径为 ``path`` 的资源的依赖项。

每个依赖项都是一个字符串，可以用 ``::`` 分割为若干部分。分割后只会有一个部分或三个部分，其中第二个部分始终为空。如果只有一个部分，则包含的是文件路径。如果有三个部分，则第一个部分包含的是 UID、第三个部分包含的是回退路径。

::

    for dependency in ResourceLoader.get_dependencies(path):
        if dependency.contains("::"):
            print(dependency.get_slice("::", 0)) # 输出 UID。
            print(dependency.get_slice("::", 2)) # 输出回退路径。
        else:
            print(dependency) # 输出路径。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_recognized_extensions_for_type:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions_for_type**\ (\ type\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_recognized_extensions_for_type>`

返回资源类型的已识别扩展名列表。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_resource_uid>`

返回与一个给定资源路径关联的 ID，如果不存在此类 ID，则返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_has_cached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cached**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_has_cached>`

返回给定 ``path`` 的缓存资源是否可用。

一旦引擎加载了资源，它将被缓存在内存中以加快访问速度，未来调用 :ref:`load()<class_ResourceLoader_method_load>` 方法将使用缓存版本。可以通过在具有相同路径的新资源上使用 :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>` 来覆盖缓存资源。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_list_directory:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_directory**\ (\ directory_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_list_directory>`

列出目录，返回其中包含的所有资源和子目录。资源文件使用原始文件名，与导出前编辑器中看到的一致。目录末尾有 ``"/"``\ 。

::

    # 输出 ["extra_data/", "model.gltf", "model.tscn", "model_slime.png"]
    print(ResourceLoader.list_directory("res://assets/enemies/slime"))

\ **注意：**\ 该方法返回的文件和目录的顺序并不固定，不同操作系统返回的顺序可能不同。

\ **注意：**\ 正常遍历文件系统请使用 :ref:`DirAccess<class_DirAccess>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load>`

在给定的 ``path`` 中加载资源，并将结果缓存以供进一步访问。

按顺序查询注册的 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ，以找到可以处理文件扩展名的第一个 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ，然后尝试加载。如果加载失败，则还会尝试其余的 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ 。

可选的 ``type_hint`` 可用于进一步指定 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 应处理的 :ref:`Resource<class_Resource>` 类型。任何继承自 :ref:`Resource<class_Resource>` 的东西都可以用作类型提示，例如 :ref:`Image<class_Image>`\ 。

\ ``cache_mode`` 属性定义在加载资源时是否以及如何使用或更新缓存。

如果没有 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 可以处理该文件则返回空资源，如果指定路径的文件未找到则会输出错误。

GDScript 具有一个简化的 :ref:`@GDScript.load()<class_@GDScript_method_load>` 内置方法，可在大多数情况下使用，而 **ResourceLoader** 供更高级的情况使用。

\ **注意：**\ 如果 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 为 ``true``\ ，则 :ref:`@GDScript.load()<class_@GDScript_method_load>` 无法在导出后的项目中读取已转换的文件。如果你需要在运行时加载存在于 PCK 中的文件，请将 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 设置为 ``false``\ 。

\ **注意：**\ 加载相对路径前会加上 ``"res://"`` 前缀，请确保使用绝对路径，以免造成预料之外的结果。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load_threaded_get**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get>`

返回由 :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` 加载的资源。

如果在加载线程完成之前调用此方法（即 :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` 不是 :ref:`THREAD_LOAD_LOADED<class_ResourceLoader_constant_THREAD_LOAD_LOADED>`\ ），则调用线程将被阻塞，直到资源加载完成。不过，建议使用 :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` 来了解加载何时已经实际完成。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get_status:

.. rst-class:: classref-method

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **load_threaded_get_status**\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get_status>`

返回使用 :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` 在 ``path`` 处启动的线程加载操作的状态。

还可以通过 ``progress`` 传递数组变量，会返回一个包含线程加载完成比例的单元素的数组（在 ``0.0`` 和 ``1.0`` 之间）。

\ **注意：**\ 该方法的推荐使用方式是在不同的帧期间调用（例如在 :ref:`Node._process()<class_Node_private_method__process>` 中，而不是循环中）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_threaded_request**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_request>`

使用线程加载资源。如果 ``use_sub_threads`` 为 ``true``\ ，将使用多个线程来加载资源，这会使加载更快，但可能会影响主线程（从而导致游戏降速）。

\ ``cache_mode`` 属性定义在加载资源时是否以及如何使用或更新缓存。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_remove_resource_format_loader:

.. rst-class:: classref-method

|void| **remove_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ) :ref:`🔗<class_ResourceLoader_method_remove_resource_format_loader>`

取消注册给定的 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_set_abort_on_missing_resources:

.. rst-class:: classref-method

|void| **set_abort_on_missing_resources**\ (\ abort\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ResourceLoader_method_set_abort_on_missing_resources>`

更改缺少子资源时的行为。默认行为是中止加载。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
