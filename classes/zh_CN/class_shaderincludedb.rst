:github_url: hide

.. _class_ShaderIncludeDB:

ShaderIncludeDB
===============

**继承：** :ref:`Object<class_Object>`

内置着色器头文件的内部数据库。

.. rst-class:: classref-introduction-group

描述
----

该对象包含 Godot 内部着色器中的着色器片段。需要访问内部 Uniform 缓冲区和/或内部函数时，例如在组合合成器效果或计算着色器时，可以使用这些片段。仅加载当前渲染设备的片段。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_built_in_include_file<class_ShaderIncludeDB_method_get_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_built_in_include_file<class_ShaderIncludeDB_method_has_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`list_built_in_include_files<class_ShaderIncludeDB_method_list_built_in_include_files>`\ (\ ) |static|                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ShaderIncludeDB_method_get_built_in_include_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_get_built_in_include_file>`

返回内置着色器片段的代码。在着色器代码中也可以通过 ``#include "文件名"`` 访问。

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_has_built_in_include_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_has_built_in_include_file>`

如果存在该名称对应的头文件，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_list_built_in_include_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_built_in_include_files**\ (\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_list_built_in_include_files>`

返回目前已注册的内置头文件列表。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
