:github_url: hide

.. _class_OpenXRInteractionProfileMetadata:

OpenXRInteractionProfileMetadata
================================

**继承：** :ref:`Object<class_Object>`

在 OpenXR 中注册受支持设备的元类。

.. rst-class:: classref-introduction-group

描述
----

该类允许 OpenXR 核心和扩展注册与受支持的交互设备（例如控制器、跟踪器、触觉设备等）相关的元数据。它主要由动作映射编辑器使用，并在适用时通过移除依赖于扩展的条目来清理任何动作映射。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_interaction_profile<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_name\: :ref:`String<class_String>`\ )                                                                                                                                        |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_io_path<class_OpenXRInteractionProfileMetadata_method_register_io_path>`\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_name\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_profile_rename<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                              |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_top_level_path<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_name\: :ref:`String<class_String>`\ )                                                                                                                                                  |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRInteractionProfileMetadata_method_register_interaction_profile:

.. rst-class:: classref-method

|void| **register_interaction_profile**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`

使用 OpenXR 名称注册交互配置文件（例如 ``/interaction_profiles/khr/simple_controller`` 是 OpenXR 简单控制器配置文件的配置文件）。

\ ``display_name`` 是向用户显示的描述。\ ``openxr_path`` 是正被注册的交互配置文件路径。\ ``openxr_extension_name`` 可以选择将该配置文件限制为对给定扩展启用/可用。如果该扩展不可用，则动作映射中使用的配置文件和所有相关条目都会被过滤掉。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_io_path:

.. rst-class:: classref-method

|void| **register_io_path**\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_name\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_io_path>`

为给定的 ``interaction_profile`` 注册输入/输出路径。该配置文件之前应已使用 :ref:`register_interaction_profile()<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>` 注册。\ ``display_name`` 是向用户显示的描述。\ ``toplevel_path`` 指定该输入/输出可以被绑定到的绑定路径（例如 ``/user/hand/left`` 或 ``/user/hand/right``\ ）。\ ``openxr_path`` 是正被注册的动作输入/输出（例如 ``/user/hand/left/input/aim/pose``\ ）。\ ``openxr_extension_name`` 将该输入/输出限制为启用的/可用的扩展，这不需要在配置文件上重复该扩展，但与重叠扩展相关（例如引入 ``…/input/palm_ext/pose`` 输入路径的 ``XR_EXT_palm_pose``\ ）。\ ``action_type`` 定义 OpenXR 提供的输入或输出的类型。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_profile_rename:

.. rst-class:: classref-method

|void| **register_profile_rename**\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`

允许将旧的交互配置文件路径重命名为新路径，以保持与旧动作映射的向后兼容性。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_top_level_path:

.. rst-class:: classref-method

|void| **register_top_level_path**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`

注册配置文件可以被绑定到的顶级路径。例如 ``/user/hand/left`` 指的是玩家左手的绑定点。扩展可以注册额外的顶级路径，例如触觉背心扩展可以注册 ``/user/body/vest``\ 。

\ ``display_name`` 是向用户显示的名称。\ ``openxr_path`` 是正被注册的顶级路径。\ ``openxr_extension_name`` 是可选的，可确保仅在指定的扩展可用/启用时才使用顶级路径。

当顶级路径最终被 OpenXR 绑定时，\ :ref:`XRPositionalTracker<class_XRPositionalTracker>` 被实例化以管理该设备的状态。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
