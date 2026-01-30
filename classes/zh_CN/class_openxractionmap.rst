:github_url: hide

.. _class_OpenXRActionMap:

OpenXRActionMap
===============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于 OpenXR 模块的 :ref:`OpenXRActionSet<class_OpenXRActionSet>` 和 :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` 资源的合集。

.. rst-class:: classref-introduction-group

描述
----

OpenXR 使用类似于 Godots 输入映射系统的动作系统，将各种类型的 XR 控制器上的输入和输出绑定到命名的动作。OpenXR 规范了比 Godot 支持的更多关于这些输入和输出的细节。

另一个重要的区别是 OpenXR 不提供对这些绑定的控制。我们注册的绑定是建议，取决于 XR 运行时是否为用户提供更改这些绑定的能力。如果有新硬件可用，这允许 XR 运行时填补空白。

因此，动作映射需要在启动时加载，之后无法更改。该资源是整个动作映射的容器。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`action_sets<class_OpenXRActionMap_property_action_sets>`                   | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`interaction_profiles<class_OpenXRActionMap_property_interaction_profiles>` | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_action_set<class_OpenXRActionMap_method_add_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                                    |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_interaction_profile<class_OpenXRActionMap_method_add_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ )       |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`create_default_action_sets<class_OpenXRActionMap_method_create_default_action_sets>`\ (\ )                                                                                        |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`find_action_set<class_OpenXRActionMap_method_find_action_set>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                  |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`find_interaction_profile<class_OpenXRActionMap_method_find_interaction_profile>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`get_action_set<class_OpenXRActionMap_method_get_action_set>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_action_set_count<class_OpenXRActionMap_method_get_action_set_count>`\ (\ ) |const|                                                                                            |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`get_interaction_profile<class_OpenXRActionMap_method_get_interaction_profile>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_interaction_profile_count<class_OpenXRActionMap_method_get_interaction_profile_count>`\ (\ ) |const|                                                                          |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_action_set<class_OpenXRActionMap_method_remove_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                              |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_interaction_profile<class_OpenXRActionMap_method_remove_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRActionMap_property_action_sets:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **action_sets** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_action_sets>`

.. rst-class:: classref-property-setget

- |void| **set_action_sets**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_action_sets**\ (\ )

:ref:`OpenXRActionSet<class_OpenXRActionSet>` 的合集，是该动作映射的一部分。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_property_interaction_profiles:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **interaction_profiles** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_interaction_profiles>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profiles**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_interaction_profiles**\ (\ )

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` 的合集，是该动作映射的一部分。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRActionMap_method_add_action_set:

.. rst-class:: classref-method

|void| **add_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_action_set>`

添加动作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_add_interaction_profile:

.. rst-class:: classref-method

|void| **add_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_interaction_profile>`

添加交互配置。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_create_default_action_sets:

.. rst-class:: classref-method

|void| **create_default_action_sets**\ (\ ) :ref:`🔗<class_OpenXRActionMap_method_create_default_action_sets>`

使用默认动作设置该动作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **find_action_set**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_action_set>`

按名称检索动作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **find_interaction_profile**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_interaction_profile>`

按名称（路径）查找交互配置。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **get_action_set**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set>`

获取位于该索引的动作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_action_set_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set_count>`

获取动作映射中动作集的数量。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **get_interaction_profile**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile>`

获取位于该索引的交互配置。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interaction_profile_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile_count>`

获取动作映射中交互配置的数量。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_action_set:

.. rst-class:: classref-method

|void| **remove_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_action_set>`

移除动作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_interaction_profile:

.. rst-class:: classref-method

|void| **remove_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_interaction_profile>`

移除交互配置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
