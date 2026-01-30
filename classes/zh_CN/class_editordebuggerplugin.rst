:github_url: hide

.. _class_EditorDebuggerPlugin:

EditorDebuggerPlugin
====================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

实现调试器插件的基类。

.. rst-class:: classref-introduction-group

描述
----

编辑器调试器插件 **EditorDebuggerPlugin** 提供了与调试器的编辑器端相关的函数。

要与调试器交互，必须将这个类的实例通过 :ref:`EditorPlugin.add_debugger_plugin()<class_EditorPlugin_method_add_debugger_plugin>` 添加至编辑器。

添加完成后，会针对该插件可用的每一个编辑器调试器会话 :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` 回调一次 :ref:`_setup_session()<class_EditorDebuggerPlugin_private_method__setup_session>`\ ，后续有新的会话也会进行回调（这些会话在此阶段可能尚未激活）。

你可以通过 :ref:`get_sessions()<class_EditorDebuggerPlugin_method_get_sessions>` 获取所有可用的 :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`\ ，也可以通过 :ref:`get_session()<class_EditorDebuggerPlugin_method_get_session>` 获取特定的会话。


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorPlugin

    class ExampleEditorDebugger extends EditorDebuggerPlugin:

        func _has_capture(capture):
            # 如果想要处理带有“my_plugin:”前缀的消息则返回 true。
            return capture == "my_plugin"

        func _capture(message, data, session_id):
            if message == "my_plugin:ping":
                get_session(session_id).send_message("my_plugin:echo", data)
                return true
            return false

        func _setup_session(session_id):
            # 在调试器会话 UI 中添加新的选项卡，其中包含一个标签。
            var label = Label.new()
            label.name = "Example plugin" # 会显示为选项卡标题
            label.text = "示例插件"
            var session = get_session(session_id)
            # 监听会话开始和停止信号。
            session.started.connect(func (): print("会话已开始"))
            session.stopped.connect(func (): print("会话已停止"))
            session.add_session_tab(label)

    var debugger = ExampleEditorDebugger.new()

    func _enter_tree():
        add_debugger_plugin(debugger)

    func _exit_tree():
        remove_debugger_plugin(debugger)



要在运行的游戏中连接，请使用 :ref:`EngineDebugger<class_EngineDebugger>` 单例：


.. tabs::

 .. code-tab:: gdscript

    extends Node

    func _ready():
        EngineDebugger.register_message_capture("my_plugin", _capture)
        EngineDebugger.send_message("my_plugin:ping", ["test"])

    func _capture(message, data):
        # 请注意这里不使用“my_plugin:”前缀。
        if message == "echo":
            prints("收到回响：", data)
            return true
        return false



\ **注意：**\ 游戏运行时，在\ *编辑器中调用* :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>` 等函数不会输出任何内容，“输出日志”中只会输出游戏中的消息。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_breakpoint_set_in_tree<class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree>`\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |virtual| |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_breakpoints_cleared_in_tree<class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree>`\ (\ ) |virtual|                                                                                              |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`_capture<class_EditorDebuggerPlugin_private_method__capture>`\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`, session_id\: :ref:`int<class_int>`\ ) |virtual|                         |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_goto_script_line<class_EditorDebuggerPlugin_private_method__goto_script_line>`\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`\ ) |virtual|                                                |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`_has_capture<class_EditorDebuggerPlugin_private_method__has_capture>`\ (\ capture\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                               |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_setup_session<class_EditorDebuggerPlugin_private_method__setup_session>`\ (\ session_id\: :ref:`int<class_int>`\ ) |virtual|                                                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` | :ref:`get_session<class_EditorDebuggerPlugin_method_get_session>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`get_sessions<class_EditorDebuggerPlugin_method_get_sessions>`\ (\ )                                                                                                                                                |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree:

.. rst-class:: classref-method

|void| **_breakpoint_set_in_tree**\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree>`

覆盖此方法以便在编辑器中设置断点时收到通知。

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree:

.. rst-class:: classref-method

|void| **_breakpoints_cleared_in_tree**\ (\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree>`

覆盖此方法以便当编辑器中所有断点被清除时收到通知。

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_capture**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`, session_id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__capture>`

覆盖此方法以处理传入的消息。\ ``session_id`` 是接收到消息的 :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` 的 ID，可以通过 :ref:`get_session()<class_EditorDebuggerPlugin_method_get_session>` 获取会话。能够识别消息时，该方法应返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__goto_script_line:

.. rst-class:: classref-method

|void| **_goto_script_line**\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__goto_script_line>`

覆盖此方法，当在调试器断点面板中单击断点行时收到通知。

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__has_capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_capture**\ (\ capture\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorDebuggerPlugin_private_method__has_capture>`

覆盖此方法以启用从调试器接收消息。如果 ``capture`` 为“my_message”，则会将所有以“my_message:”开头的消息传递给 :ref:`_capture()<class_EditorDebuggerPlugin_private_method__capture>` 方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__setup_session:

.. rst-class:: classref-method

|void| **_setup_session**\ (\ session_id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__setup_session>`

覆盖此方法，以在每次新建 :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` 时收到通知。请注意，在此阶段会话可能处于非活动状态。

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_session:

.. rst-class:: classref-method

:ref:`EditorDebuggerSession<class_EditorDebuggerSession>` **get_session**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_session>`

返回具有给定 ``id`` 的 :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_sessions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_sessions**\ (\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_sessions>`

返回该调试器插件当前可用的 :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` 数组。

\ **注意：**\ 数组中的会话可能处于非活动状态，请通过 :ref:`EditorDebuggerSession.is_active()<class_EditorDebuggerSession_method_is_active>` 检查它们的状态。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
