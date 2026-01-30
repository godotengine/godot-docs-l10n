:github_url: hide

.. _class_EditorFileSystemImportFormatSupportQuery:

EditorFileSystemImportFormatSupportQuery
========================================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于查询和配置导入格式支持。

.. rst-class:: classref-introduction-group

描述
----

该类用于查询和配置某种导入格式。它与资产格式导入插件配合使用。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_file_extensions<class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions>`\ (\ ) |virtual| |required| |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_active<class_EditorFileSystemImportFormatSupportQuery_private_method__is_active>`\ (\ ) |virtual| |required| |const|                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_query<class_EditorFileSystemImportFormatSupportQuery_private_method__query>`\ (\ ) |virtual| |required| |const|                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_file_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions>`

返回支持的文件扩展名。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_active**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__is_active>`

返回此导入器是否处于活动状态。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__query:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_query**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__query>`

查询支持。如果不能继续导入，则返回 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
