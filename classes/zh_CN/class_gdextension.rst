:github_url: hide

.. _class_GDExtension:

GDExtension
===========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

GDExtension 的原生库。

.. rst-class:: classref-introduction-group

描述
----

**GDExtension** 资源类型代表一个\ `共享库 <https://en.wikipedia.org/wiki/Shared_library>`__\ ，它可以扩展引擎的功能。\ :ref:`GDExtensionManager<class_GDExtensionManager>` 单例负责加载、重新加载和卸载 **GDExtension** 资源。

\ **注意：**\ GDExtension 本身不是脚本语言，与 :ref:`GDScript<class_GDScript>` 资源没有关系。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`GDExtension 概述 <../engine_details/engine_api/gdextension/what_is_gdextension>`

- :doc:`C++ 的 GDExtension 示例 <../tutorials/scripting/cpp/gdextension_cpp_example>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` | :ref:`get_minimum_library_initialization_level<class_GDExtension_method_get_minimum_library_initialization_level>`\ (\ ) |const| |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_library_open<class_GDExtension_method_is_library_open>`\ (\ ) |const|                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GDExtension_InitializationLevel:

.. rst-class:: classref-enumeration

enum **InitializationLevel**: :ref:`🔗<enum_GDExtension_InitializationLevel>`

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_CORE:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_CORE** = ``0``

该库与引擎的核心功能同时初始化。

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_SERVERS:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_SERVERS** = ``1``

该库与引擎的服务器（例如 :ref:`RenderingServer<class_RenderingServer>` 或 :ref:`PhysicsServer3D<class_PhysicsServer3D>`\ ）同时初始化。

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_SCENE** = ``2``

该库与引擎的场景相关类同时初始化。

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_EDITOR** = ``3``

该库与引擎的编辑器类同时初始化。仅在编辑器中加载 GDExtension 时发生。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GDExtension_method_get_minimum_library_initialization_level:

.. rst-class:: classref-method

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **get_minimum_library_initialization_level**\ (\ ) |const| :ref:`🔗<class_GDExtension_method_get_minimum_library_initialization_level>`

返回正确初始化该扩展所需的最低级别（请参阅 :ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` 枚举）。

.. rst-class:: classref-item-separator

----

.. _class_GDExtension_method_is_library_open:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_library_open**\ (\ ) |const| :ref:`🔗<class_GDExtension_method_is_library_open>`

如果该扩展的库已被打开，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
