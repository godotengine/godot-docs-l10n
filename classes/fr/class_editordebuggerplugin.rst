:github_url: hide

.. _class_EditorDebuggerPlugin:

EditorDebuggerPlugin
====================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une classe de base pour implémenter des plugins de débogueur.

.. rst-class:: classref-introduction-group

Description
-----------

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

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree:

.. rst-class:: classref-method

|void| **_breakpoint_set_in_tree**\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree>`

Surcharger cette méthode pour être notifié quand un point d'arrêt est défini dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree:

.. rst-class:: classref-method

|void| **_breakpoints_cleared_in_tree**\ (\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree>`

Surcharger cette méthode pour être notifié lorsque tous les points d'arrêt sont supprimés dans l'éditeur.

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

Surcharger cette méthode pour être notifié quand un point d'arrêt a été cliqué dans le panneau de point d'arrêt du débogueur.

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

Surcharger cette méthode pour être notifié chaque fois qu'un nouveau :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` est créé. Notez que la session peut être inactive à ce stade.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_session:

.. rst-class:: classref-method

:ref:`EditorDebuggerSession<class_EditorDebuggerSession>` **get_session**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_session>`

Renvoie l':ref:`EditorDebuggerSession<class_EditorDebuggerSession>` avec l'``id`` donné.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_sessions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_sessions**\ (\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_sessions>`

Returns an array of :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` currently available to this debugger plugin.

\ **Note:** Sessions in the array may be inactive, check their state via :ref:`EditorDebuggerSession.is_active()<class_EditorDebuggerSession_method_is_active>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
