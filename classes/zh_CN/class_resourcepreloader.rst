:github_url: hide

.. _class_ResourcePreloader:

ResourcePreloader
=================

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于预加载场景子资源的节点。

.. rst-class:: classref-introduction-group

描述
----

这个节点可以预加载场景中的子资源，这样场景加载完成时，所有的资源就都处于就绪可用状态，可以从预加载器获取。选中该节点后，可以使用 ResourcePreloader 选项卡来添加资源。

GDScript 提供了简化的 :ref:`@GDScript.preload()<class_@GDScript_method_preload>` 内置方法，可以在大多数场景使用，\ **ResourcePreloader** 则可用于更高阶的场合。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_resource<class_ResourcePreloader_method_add_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ )          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                   | :ref:`get_resource<class_ResourcePreloader_method_get_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_resource_list<class_ResourcePreloader_method_get_resource_list>`\ (\ ) |const|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_resource<class_ResourcePreloader_method_has_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_resource<class_ResourcePreloader_method_remove_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`rename_resource<class_ResourcePreloader_method_rename_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ResourcePreloader_method_add_resource:

.. rst-class:: classref-method

|void| **add_resource**\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourcePreloader_method_add_resource>`

将资源以给定的名称 ``name`` 添加至预加载器。如果已存在名为 ``name`` 的资源，则新资源会被重命名为 "``name`` N"，这里的 N 是从 2 开始递增的数字。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource>`

返回与 ``name`` 关联的资源。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_resource_list**\ (\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource_list>`

返回预加载器内的资源列表。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_has_resource:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_has_resource>`

如果预加载器包含一个与 ``name`` 关联的资源，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_remove_resource:

.. rst-class:: classref-method

|void| **remove_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_remove_resource>`

从预加载器中删除与 ``name`` 关联的资源。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_rename_resource:

.. rst-class:: classref-method

|void| **rename_resource**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_rename_resource>`

将预加载器中的资源从 ``name`` 重命名为 ``newname``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
