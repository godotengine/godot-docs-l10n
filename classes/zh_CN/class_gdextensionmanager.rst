:github_url: hide

.. _class_GDExtensionManager:

GDExtensionManager
==================

**继承：** :ref:`Object<class_Object>`

提供对 GDExtension 功能的访问。

.. rst-class:: classref-introduction-group

描述
----

GDExtensionManager 能够加载、初始化、跟踪项目中所有可用的 :ref:`GDExtension<class_GDExtension>` 库。

\ **注意：**\ 不清楚有什么用就不必担心 GDExtension。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`GDExtension 概述 <../tutorials/scripting/gdextension/what_is_gdextension>`

- :doc:`C++ 的 GDExtension 示例 <../tutorials/scripting/cpp/gdextension_cpp_example>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GDExtension<class_GDExtension>`                 | :ref:`get_extension<class_GDExtensionManager_method_get_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                         |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_loaded_extensions<class_GDExtensionManager_method_get_loaded_extensions>`\ (\ ) |const|                                                                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_extension_loaded<class_GDExtensionManager_method_is_extension_loaded>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`load_extension<class_GDExtensionManager_method_load_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                       |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`load_extension_from_function<class_GDExtensionManager_method_load_extension_from_function>`\ (\ path\: :ref:`String<class_String>`, init_func\: ``const GDExtensionInitializationFunction*``\ ) |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`reload_extension<class_GDExtensionManager_method_reload_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                   |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`unload_extension<class_GDExtensionManager_method_unload_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                   |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_GDExtensionManager_signal_extension_loaded:

.. rst-class:: classref-signal

**extension_loaded**\ (\ extension\: :ref:`GDExtension<class_GDExtension>`\ ) :ref:`🔗<class_GDExtensionManager_signal_extension_loaded>`

编辑器完成加载新扩展时发出。

\ **注意：**\ 该信号仅会在编辑器构建中发出。

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_signal_extension_unloading:

.. rst-class:: classref-signal

**extension_unloading**\ (\ extension\: :ref:`GDExtension<class_GDExtension>`\ ) :ref:`🔗<class_GDExtensionManager_signal_extension_unloading>`

编辑器完成卸载某个扩展时发出。

\ **注意：**\ 该信号仅会在编辑器构建中发出。

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_signal_extensions_reloaded:

.. rst-class:: classref-signal

**extensions_reloaded**\ (\ ) :ref:`🔗<class_GDExtensionManager_signal_extensions_reloaded>`

在编辑器已完成重新加载一个或多个扩展后发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GDExtensionManager_LoadStatus:

.. rst-class:: classref-enumeration

enum **LoadStatus**: :ref:`🔗<enum_GDExtensionManager_LoadStatus>`

.. _class_GDExtensionManager_constant_LOAD_STATUS_OK:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_OK** = ``0``

扩展已被成功加载。

.. _class_GDExtensionManager_constant_LOAD_STATUS_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_FAILED** = ``1``

扩展加载失败，可能是因为它不存在或缺少依赖项。

.. _class_GDExtensionManager_constant_LOAD_STATUS_ALREADY_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_ALREADY_LOADED** = ``2``

扩展已被加载。

.. _class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_NOT_LOADED** = ``3``

扩展尚未被加载。

.. _class_GDExtensionManager_constant_LOAD_STATUS_NEEDS_RESTART:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_NEEDS_RESTART** = ``4``

该扩展需要应用程序重新启动才能完全加载。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GDExtensionManager_method_get_extension:

.. rst-class:: classref-method

:ref:`GDExtension<class_GDExtension>` **get_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_get_extension>`

返回给定文件 ``path`` 处的 :ref:`GDExtension<class_GDExtension>`\ ，如果尚未加载或不存在，则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_get_loaded_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_loaded_extensions**\ (\ ) |const| :ref:`🔗<class_GDExtensionManager_method_get_loaded_extensions>`

返回所有当前加载的扩展的文件路径。

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_is_extension_loaded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_extension_loaded**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_GDExtensionManager_method_is_extension_loaded>`

如果给定文件 ``path`` 处的扩展已成功加载，则返回 ``true``\ 。另见 :ref:`get_loaded_extensions()<class_GDExtensionManager_method_get_loaded_extensions>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_load_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **load_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_load_extension>`

使用绝对文件路径加载扩展。\ ``path`` 需要指向有效的 :ref:`GDExtension<class_GDExtension>`\ 。成功时返回 :ref:`LOAD_STATUS_OK<class_GDExtensionManager_constant_LOAD_STATUS_OK>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_load_extension_from_function:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **load_extension_from_function**\ (\ path\: :ref:`String<class_String>`, init_func\: ``const GDExtensionInitializationFunction*``\ ) :ref:`🔗<class_GDExtensionManager_method_load_extension_from_function>`

Loads the extension already in address space via the given path and initialization function. The ``path`` needs to be unique and start with ``"libgodot://"``. Returns :ref:`LOAD_STATUS_OK<class_GDExtensionManager_constant_LOAD_STATUS_OK>` if successful.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_reload_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **reload_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_reload_extension>`

重新加载给定文件路径处的扩展。\ ``path`` 需要指向有效的 :ref:`GDExtension<class_GDExtension>`\ ，否则该方法可能返回 :ref:`LOAD_STATUS_NOT_LOADED<class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED>` 或 :ref:`LOAD_STATUS_FAILED<class_GDExtensionManager_constant_LOAD_STATUS_FAILED>`\ 。

\ **注意：**\ 你只能在编辑器中重新加载扩展。在发布构建中，该方法总是失败并返回 :ref:`LOAD_STATUS_FAILED<class_GDExtensionManager_constant_LOAD_STATUS_FAILED>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_unload_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **unload_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_unload_extension>`

按文件路径卸载扩展。\ ``path`` 需要指向已经加载的 :ref:`GDExtension<class_GDExtension>`\ ，否则该方法返回 :ref:`LOAD_STATUS_NOT_LOADED<class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
