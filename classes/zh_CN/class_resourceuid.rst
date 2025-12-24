:github_url: hide

.. _class_ResourceUID:

ResourceUID
===========

**继承：** :ref:`Object<class_Object>`

管理项目中所有资源的唯一标识符的单例。

.. rst-class:: classref-introduction-group

描述
----

资源 UID（Unique IDentifier，唯一标识符）可以使引擎保持资源之间引用关系的完整性，即使文件发生重命名或移动。可以使用 ``uid://`` 访问。

\ **ResourceUID** 能够跟踪项目中所有已注册的资源 UID，生成新的 UID，也能够将标识符在字符串表示和整数表示之间进行转换。

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

常量
----

.. _class_ResourceUID_constant_INVALID_ID:

.. rst-class:: classref-constant

**INVALID_ID** = ``-1`` :ref:`🔗<class_ResourceUID_constant_INVALID_ID>`

用于无效 UID 的值，例如无法加载的资源。

对应的文本表示为 ``uid://<invalid>``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ResourceUID_method_add_id:

.. rst-class:: classref-method

|void| **add_id**\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_add_id>`

添加一个新的 UID 值，将其映射到给定的资源路径。

如果 UID 已经存在，则会返回错误，因此请务必先使用 :ref:`has_id()<class_ResourceUID_method_has_id>` 进行检查，或者改用 :ref:`set_id()<class_ResourceUID_method_set_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_create_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_id**\ (\ ) :ref:`🔗<class_ResourceUID_method_create_id>`

生成随机的资源 UID，该 UID 在当前加载的 UID 列表中保证唯一。

要注册这个 UID，你必须调用 :ref:`add_id()<class_ResourceUID_method_add_id>` 或 :ref:`set_id()<class_ResourceUID_method_set_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_create_id_for_path:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_create_id_for_path>`

与 :ref:`create_id()<class_ResourceUID_method_create_id>` 类型，但是 UID 会使用 ``path`` 路径和项目名称设置随机数种子。在当前项目中为该路径生成的 UID 始终相同。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_ensure_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **ensure_path**\ (\ path_or_uid\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_ensure_path>`

返回路径，必要时会对 ``path_or_uid`` 进行转换。如果提供的是无效 UID 则会打印错误。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_get_id_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_path**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_get_id_path>`

返回给定 UID 值引用的路径。

如果 UID 不存在则失败并报错，因此请务必使用 :ref:`has_id()<class_ResourceUID_method_has_id>` 事先检查。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_has_id:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_id**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_has_id>`

返回给定的 UID 值是否为缓存所知。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_id_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **id_to_text**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_id_to_text>`

将给定的 UID 转换为 ``uid://`` 字符串值。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_path_to_uid:

.. rst-class:: classref-method

:ref:`String<class_String>` **path_to_uid**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_path_to_uid>`

将 ``path`` 中提供的资源路径转换为 UID。如果没有与之关联的 UID 则会原样返回该路径。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_remove_id:

.. rst-class:: classref-method

|void| **remove_id**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ResourceUID_method_remove_id>`

从缓存中删除一个已加载的 UID 值。

如果 UID 不存在则失败并报错，因此请务必提前使用 :ref:`has_id()<class_ResourceUID_method_has_id>` 检查。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_set_id:

.. rst-class:: classref-method

|void| **set_id**\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_set_id>`

更新现有 UID 的资源路径。

如果 UID 不存在，则失败并出现错误，因此请务必提前使用 :ref:`has_id()<class_ResourceUID_method_has_id>` 检查，或者改用 :ref:`add_id()<class_ResourceUID_method_add_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_text_to_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **text_to_id**\ (\ text_id\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ResourceUID_method_text_to_id>`

从给定的 ``uid://`` 字符串中提取 UID 值。

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_uid_to_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **uid_to_path**\ (\ uid\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_uid_to_path>`

将 ``uid`` 转换为路径。如果该 UID 无效则打印错误。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
