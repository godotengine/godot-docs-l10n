:github_url: hide

.. _class_OpenXRActionSet:

OpenXRActionSet
===============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`OpenXRAction<class_OpenXRAction>` 资源的合集，构成动作集。

.. rst-class:: classref-introduction-group

描述
----

OpenXR 中的动作集定义了一组可以统一激活的动作。这允许游戏在需要不同输入或需要重新解释输入的不同状态之间轻松切换。例如，我们可以有一个在菜单打开时处于活动状态的动作集，一个在玩家自由走动时处于活动状态的动作集，以及一个在玩家控制车辆时处于活动状态的动作集。

动作集可以包含具有相同名称的相同动作，如果这些动作集同时处于活动状态，则具有最高优先级的动作集定义了哪个绑定是活动的。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`actions<class_OpenXRActionSet_property_actions>`               | ``[]`` |
   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`localized_name<class_OpenXRActionSet_property_localized_name>` | ``""`` |
   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`       | :ref:`priority<class_OpenXRActionSet_property_priority>`             | ``0``  |
   +-----------------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`add_action<class_OpenXRActionSet_method_add_action>`\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ )       |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_action_count<class_OpenXRActionSet_method_get_action_count>`\ (\ ) |const|                                     |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`remove_action<class_OpenXRActionSet_method_remove_action>`\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRActionSet_property_actions:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **actions** = ``[]`` :ref:`🔗<class_OpenXRActionSet_property_actions>`

.. rst-class:: classref-property-setget

- |void| **set_actions**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_actions**\ (\ )

该动作集中动作的合集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_property_localized_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **localized_name** = ``""`` :ref:`🔗<class_OpenXRActionSet_property_localized_name>`

.. rst-class:: classref-property-setget

- |void| **set_localized_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_localized_name**\ (\ )

该动作集的本地化名称。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_OpenXRActionSet_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

该动作集的优先级。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRActionSet_method_add_action:

.. rst-class:: classref-method

|void| **add_action**\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) :ref:`🔗<class_OpenXRActionSet_method_add_action>`

向该动作集中添加某个动作。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_method_get_action_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_action_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionSet_method_get_action_count>`

获取该动作集中动作的数量。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_method_remove_action:

.. rst-class:: classref-method

|void| **remove_action**\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) :ref:`🔗<class_OpenXRActionSet_method_remove_action>`

从该动作集中移除某个动作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
