:github_url: hide

.. _class_InputMap:

InputMap
========

**继承：** :ref:`Object<class_Object>`

管理所有 :ref:`InputEventAction<class_InputEventAction>` 的单例。

.. rst-class:: classref-introduction-group

描述
----

管理所有的 :ref:`InputEventAction<class_InputEventAction>`\ ，可以通过项目设置菜单\ **项目 > 项目设置 > 输入映射**\ 或在代码中用 :ref:`add_action()<class_InputMap_method_add_action>` 和 :ref:`action_add_event()<class_InputMap_method_action_add_event>` 创建/修改。请参阅 :ref:`Node._input()<class_Node_private_method__input>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `使用 InputEvent：InputMap <../tutorials/inputs/inputevent.html#inputmap>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_add_event<class_InputMap_method_action_add_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_event<class_InputMap_method_action_erase_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_events<class_InputMap_method_action_erase_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`action_get_deadzone<class_InputMap_method_action_get_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] | :ref:`action_get_events<class_InputMap_method_action_get_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`action_has_event<class_InputMap_method_action_has_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_set_deadzone<class_InputMap_method_action_set_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_action<class_InputMap_method_add_action>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ )                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`erase_action<class_InputMap_method_erase_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`event_is_action<class_InputMap_method_event_is_action>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_action_description<class_InputMap_method_get_action_description>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_actions<class_InputMap_method_get_actions>`\ (\ )                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_action<class_InputMap_method_has_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`load_from_project_settings<class_InputMap_method_load_from_project_settings>`\ (\ )                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_InputMap_method_action_add_event:

.. rst-class:: classref-method

|void| **action_add_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_add_event>`

给某个动作添加一个 :ref:`InputEvent<class_InputEvent>`\ 。这个 :ref:`InputEvent<class_InputEvent>` 将触发这个动作。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_event:

.. rst-class:: classref-method

|void| **action_erase_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_erase_event>`

从某个动作中删除一个 :ref:`InputEvent<class_InputEvent>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_events:

.. rst-class:: classref-method

|void| **action_erase_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_erase_events>`

从某个动作中删除所有事件。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_deadzone:

.. rst-class:: classref-method

:ref:`float<class_float>` **action_get_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_deadzone>`

返回该操作的死区值。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_events:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] **action_get_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_events>`

返回与给定动作关联的 :ref:`InputEvent<class_InputEvent>` 的数组。

\ **注意：**\ 在编辑器中使用时（例如在工具脚本或 :ref:`EditorPlugin<class_EditorPlugin>` 中使用），这个方法返回的是编辑器动作对应的事件。如果你想要在编辑器中访问你的项目的输入绑定，请读取 :ref:`ProjectSettings<class_ProjectSettings>` 的 ``input/*`` 设置。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_has_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **action_has_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_has_event>`

如果该动作有给定的 :ref:`InputEvent<class_InputEvent>` 与之相关，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_set_deadzone:

.. rst-class:: classref-method

|void| **action_set_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ ) :ref:`🔗<class_InputMap_method_action_set_deadzone>`

为该动作设置死区值。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_add_action:

.. rst-class:: classref-method

|void| **add_action**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ ) :ref:`🔗<class_InputMap_method_add_action>`

在 **InputMap** 上添加空的动作，死区可使用 ``deadzone`` 配置。

然后可以用 :ref:`action_add_event()<class_InputMap_method_action_add_event>` 给这个动作添加 :ref:`InputEvent<class_InputEvent>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_erase_action:

.. rst-class:: classref-method

|void| **erase_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_erase_action>`

从 **InputMap** 中删除一个动作。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_event_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **event_is_action**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputMap_method_event_is_action>`

如果给定的事件是现有动作的一部分，返回 ``true``\ 。如果给定的 :ref:`InputEvent<class_InputEvent>` 没有被按下，这个方法会忽略键盘（为了正确地检测释放）。如果你不想要这种行为，请参阅 :ref:`action_has_event()<class_InputMap_method_action_has_event>`\ 。

如果 ``exact_match`` 是 ``false``\ ，它会忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的额外输入修饰键，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_action_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_action_description**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_get_action_description>`

返回给定动作的人类可读描述。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_actions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_actions**\ (\ ) :ref:`🔗<class_InputMap_method_get_actions>`

返回 **InputMap** 中所有动作的数组。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_has_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_has_action>`

如果 **InputMap** 有一个给定名称的注册动作，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_load_from_project_settings:

.. rst-class:: classref-method

|void| **load_from_project_settings**\ (\ ) :ref:`🔗<class_InputMap_method_load_from_project_settings>`

清除 **InputMap** 中的所有 :ref:`InputEventAction<class_InputEventAction>`\ ，并从 :ref:`ProjectSettings<class_ProjectSettings>` 项目设置中重新加载它。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
