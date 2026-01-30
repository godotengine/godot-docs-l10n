:github_url: hide

.. _class_EditorDebuggerPlugin:

EditorDebuggerPlugin
====================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

實作除錯器外掛程式的基底類別。

.. rst-class:: classref-introduction-group

說明
----

**EditorDebuggerPlugin** provides functions related to the editor side of the debugger.

To interact with the debugger, an instance of this class must be added to the editor via :ref:`EditorPlugin.add_debugger_plugin()<class_EditorPlugin_method_add_debugger_plugin>`.

Once added, the :ref:`_setup_session()<class_EditorDebuggerPlugin_private_method__setup_session>` callback will be called for every :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` available to the plugin, and when new ones are created (the sessions may be inactive during this stage).

You can retrieve the available :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`\ s via :ref:`get_sessions()<class_EditorDebuggerPlugin_method_get_sessions>` or get a specific one via :ref:`get_session()<class_EditorDebuggerPlugin_method_get_session>`.


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorPlugin

    class ExampleEditorDebugger extends EditorDebuggerPlugin:

        func _has_capture(capture):
            # Return true if you wish to handle messages with the prefix "my_plugin:".
            return capture == "my_plugin"

        func _capture(message, data, session_id):
            if message == "my_plugin:ping":
                get_session(session_id).send_message("my_plugin:echo", data)
                return true
            return false

        func _setup_session(session_id):
            # Add a new tab in the debugger session UI containing a label.
            var label = Label.new()
            label.name = "Example plugin" # Will be used as the tab title.
            label.text = "Example plugin"
            var session = get_session(session_id)
            # Listens to the session started and stopped signals.
            session.started.connect(func (): print("Session started"))
            session.stopped.connect(func (): print("Session stopped"))
            session.add_session_tab(label)

    var debugger = ExampleEditorDebugger.new()

    func _enter_tree():
        add_debugger_plugin(debugger)

    func _exit_tree():
        remove_debugger_plugin(debugger)



To connect on the running game side, use the :ref:`EngineDebugger<class_EngineDebugger>` singleton:


.. tabs::

 .. code-tab:: gdscript

    extends Node

    func _ready():
        EngineDebugger.register_message_capture("my_plugin", _capture)
        EngineDebugger.send_message("my_plugin:ping", ["test"])

    func _capture(message, data):
        # Note that the "my_plugin:" prefix is not used here.
        if message == "echo":
            prints("Echo received:", data)
            return true
        return false



\ **Note:** While the game is running, :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>` and similar functions *called in the editor* do not print anything, the Output Log prints only game messages.

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

方法說明
--------

.. _class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree:

.. rst-class:: classref-method

|void| **_breakpoint_set_in_tree**\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree>`

Override this method to be notified when a breakpoint is set in the editor.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree:

.. rst-class:: classref-method

|void| **_breakpoints_cleared_in_tree**\ (\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree>`

Override this method to be notified when all breakpoints are cleared in the editor.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_capture**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`, session_id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__capture>`

Override this method to process incoming messages. The ``session_id`` is the ID of the :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` that received the ``message``. Use :ref:`get_session()<class_EditorDebuggerPlugin_method_get_session>` to retrieve the session. This method should return ``true`` if the message is recognized.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__goto_script_line:

.. rst-class:: classref-method

|void| **_goto_script_line**\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__goto_script_line>`

Override this method to be notified when a breakpoint line has been clicked in the debugger breakpoint panel.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__has_capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_capture**\ (\ capture\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorDebuggerPlugin_private_method__has_capture>`

Override this method to enable receiving messages from the debugger. If ``capture`` is "my_message" then messages starting with "my_message:" will be passed to the :ref:`_capture()<class_EditorDebuggerPlugin_private_method__capture>` method.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__setup_session:

.. rst-class:: classref-method

|void| **_setup_session**\ (\ session_id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__setup_session>`

Override this method to be notified whenever a new :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` is created. Note that the session may be inactive during this stage.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_session:

.. rst-class:: classref-method

:ref:`EditorDebuggerSession<class_EditorDebuggerSession>` **get_session**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_session>`

返回具有給定 ``id`` 的 :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_sessions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_sessions**\ (\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_sessions>`

返回該除錯器外掛程式目前可用的 :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` 陣列。

\ **注意：**\ 陣列中的會話可能處於非活動狀態，請通過 :ref:`EditorDebuggerSession.is_active()<class_EditorDebuggerSession_method_is_active>` 檢查它們的狀態。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
