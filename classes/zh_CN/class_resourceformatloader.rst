:github_url: hide

.. _class_ResourceFormatLoader:

ResourceFormatLoader
====================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

从文件中加载特定资源类型。

.. rst-class:: classref-introduction-group

描述
----

Godot 在编辑器或导出的游戏中使用 ResourceFormatLoaders 来加载资源。它们通过 :ref:`ResourceLoader<class_ResourceLoader>` 单例自动查询，或在加载具有内部依赖项的资源时自动查询。每种文件类型可以作为不同的资源类型加载，因此在引擎中注册多个 ResourceFormatLoaders。

扩展此类可让你定义自己的加载器。请确保遵守文档中记录的返回类型和值。你应该使用 ``class_name`` 给它一个全局类名以进行注册。像内置的 ResourceFormatLoaders 一样，当加载其处理的类型的资源时，它将自动被调用。你还可以实现 :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ 。

\ **注意：**\ 如果你需要的资源类型存在，但 Godot 无法加载其格式，则也可以扩展 :ref:`EditorImportPlugin<class_EditorImportPlugin>`\ 。选择哪种方法取决于该格式是否适用于最终导出的游戏。例如，最好首先将 ``.png`` 纹理作为 ``.ctex``\ （\ :ref:`CompressedTexture2D<class_CompressedTexture2D>`\ ）导入，以便在图形卡上能更高效的加载它们。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_exists<class_ResourceFormatLoader_private_method__exists>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_classes_used<class_ResourceFormatLoader_private_method__get_classes_used>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_dependencies<class_ResourceFormatLoader_private_method__get_dependencies>`\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatLoader_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_script_class<class_ResourceFormatLoader_private_method__get_resource_script_class>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_type<class_ResourceFormatLoader_private_method__get_resource_type>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_resource_uid<class_ResourceFormatLoader_private_method__get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handles_type<class_ResourceFormatLoader_private_method__handles_type>`\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_load<class_ResourceFormatLoader_private_method__load>`\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatLoader_private_method__recognize_path>`\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_rename_dependencies<class_ResourceFormatLoader_private_method__rename_dependencies>`\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const|                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_ResourceFormatLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceFormatLoader_CacheMode>`

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

主资源（请求加载的资源）及所有子资源都既不会从缓存中检索也不会存储到缓存中。依赖项（外部资源）使用 :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>` 加载。

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

主资源（请求加载的资源）、子资源、依赖项（外部资源）如果在缓存中存在，则将从缓存中检索，不进行加载。如果未缓存则将进行加载，然后存储到缓存中。相同的规则将沿着依赖关系树（外部资源）递归传播。

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

与 :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>` 类似，但会检查主资源（请求加载的资源）及每个子资源的缓存。如果在缓存中存在，只要加载的类型和缓存的类型匹配，就会使用存储的数据刷新已经存在的实例。否则会重新作为全新的对象创建。

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

与 :ref:`CACHE_MODE_IGNORE<class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE>` 类似，但沿依赖关系树（外部资源）递归传播。

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

与 :ref:`CACHE_MODE_REPLACE<class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE>` 类似，但沿依赖关系树（外部资源）递归传播。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ResourceFormatLoader_private_method__exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_exists**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__exists>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_classes_used:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_classes_used**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_classes_used>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_dependencies**\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_dependencies>`

应当返回路径为 ``path`` 的资源的依赖项。每个依赖项都是由一至三部分构成的字符串，使用 ``::`` 分隔，省略末尾为空的部分：

- 如果资源有 UID 则第一部分包含的应当是 UID。否则包含的应当是文件的路径。

- 如果 ``add_types`` 为 ``true``\ ，则第二部分包含的应当是依赖项的类名。否则应当为空。

- 如果资源有 UID 则第三部分包含的应当是回退路径。否则应当为空。

::

    func _get_dependencies(path, add_types):
        return [
            "uid://fqgvuwrkuixh::Script::res://script.gd",
            "uid://fqgvuwrkuixh::::res://script.gd",
            "res://script.gd::Script",
            "res://script.gd",
        ]

\ **注意：**\ :ref:`ClassDB<class_ClassDB>` 并不知道由脚本定义的自定义资源类型，因此类名可以使用 ``"Resource"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_recognized_extensions>`

获取该加载器能够读取的文件的扩展名列表。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_script_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_script_class**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_script_class>`

返回与给定的 ``path`` 下的 :ref:`Resource<class_Resource>` 关联的脚本类名称。如果资源没有脚本或脚本不是一个命名的类，则应返回 ``""``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_type>`

获取与给定路径相关的资源的类名。如果加载器不能处理它，它应该返回 ``""``\ 。

\ **注意：**\ :ref:`ClassDB<class_ClassDB>` 不知道脚本定义的自定义资源类型，因此你可能只为它们返回 ``"Resource"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_uid>`

应返回与给定路径关联的资源的唯一 ID。如果未覆盖该方法，则会在资源文件旁生成一个 ``.uid`` 文件，该文件中包含唯一 ID。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__handles_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_type**\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__handles_type>`

说明这个加载器可以加载哪个资源类。

\ **注意：**\ :ref:`ClassDB<class_ClassDB>` 不知道脚本定义的自定义资源类型，因此你可以只为它们处理 ``"Resource"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__load:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_load**\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__load>`

当引擎发现该加载程序兼容时加载资源。如果加载的资源是导入的结果，\ ``original_path`` 将以源文件为目标。成功时返回一个 :ref:`Resource<class_Resource>` 对象，失败时返回一个 :ref:`Error<enum_@GlobalScope_Error>` 常量。

\ ``cache_mode`` 属性定义加载资源时是否以及如何使用或更新缓存。有关详细信息，请参阅 :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__recognize_path>`

判断该加载器是否应对于给定类型从其资源路径加载资源。

如果未实现，则默认行为是检查路径的扩展名是否在\ :ref:`_get_recognized_extensions()<class_ResourceFormatLoader_private_method__get_recognized_extensions>`\ 提供的范围内，以及类型是否在\ :ref:`_get_resource_type()<class_ResourceFormatLoader_private_method__get_resource_type>`\ 提供的范围内。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__rename_dependencies:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rename_dependencies**\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__rename_dependencies>`

如果被实现，将重命名给定资源中的依赖项并保存它。\ ``renames`` 是一个字典 ``{ String => String }``\ ，将旧依赖路径映射到新路径。

成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，失败时返回 :ref:`Error<enum_@GlobalScope_Error>` 常量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
