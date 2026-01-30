:github_url: hide

.. _class_EditorCommandPalette:

EditorCommandPalette
====================

**繼承：** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Godot 編輯器的命令面板。

.. rst-class:: classref-introduction-group

說明
----

該物件包含所有可用命令及其快捷方式文字。這些命令可以通過 **Editor > 命令面板** 選單存取。

命令鍵名使用斜杠分隔符號來區分部分，例如：\ ``"example/command1"``\ ，那麼 ``example`` 將是部分名稱。


.. tabs::

 .. code-tab:: gdscript

    var command_palette = get_editor_interface().get_command_palette()
    # external_command 是將在命令執行時呼叫的函式。
    var command_callable = Callable(self, "external_command").bind(arguments)
    command_palette.add_command("command", "test/command",command_callable)

 .. code-tab:: csharp

    EditorCommandPalette commandPalette = GetEditorInterface().GetCommandPalette();
    // ExternalCommand 是將在命令執行時呼叫的函式。
    Callable commandCallable = new Callable(this, MethodName.ExternalCommand);
    commandPalette.AddCommand("command", "test/command", commandCallable)



\ **注意：**\ 不應直接產生實體此類。相反，使用 :ref:`EditorInterface.get_command_palette()<class_EditorInterface_method_get_command_palette>` 存取單例。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | dialog_hide_on_ok | ``false`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_dialog_hide_on_ok>`) |
   +-------------------------+-------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_command<class_EditorCommandPalette_method_add_command>`\ (\ command_name\: :ref:`String<class_String>`, key_name\: :ref:`String<class_String>`, binded_callable\: :ref:`Callable<class_Callable>`, shortcut_text\: :ref:`String<class_String>` = "None"\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_command<class_EditorCommandPalette_method_remove_command>`\ (\ key_name\: :ref:`String<class_String>`\ )                                                                                                                                                |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorCommandPalette_method_add_command:

.. rst-class:: classref-method

|void| **add_command**\ (\ command_name\: :ref:`String<class_String>`, key_name\: :ref:`String<class_String>`, binded_callable\: :ref:`Callable<class_Callable>`, shortcut_text\: :ref:`String<class_String>` = "None"\ ) :ref:`🔗<class_EditorCommandPalette_method_add_command>`

向 EditorCommandPalette 新增自訂命令。

- ``command_name``\ ：\ :ref:`String<class_String>`\ （\ **Command** 的名稱。這會顯示給使用者。）

- ``key_name``\ ：\ :ref:`String<class_String>`\ （特定 **Command** 的金鑰名稱。這用於唯一標識 **Command**\ 。）

- ``binded_callable``\ ：\ :ref:`Callable<class_Callable>`\ （\ **Command** 的 Callable。這將在選擇 **Command** 時執行。）

- ``shortcut_text``\ ：\ :ref:`String<class_String>`\ （\ **Command** 的快捷鍵文字，如果可用。）

.. rst-class:: classref-item-separator

----

.. _class_EditorCommandPalette_method_remove_command:

.. rst-class:: classref-method

|void| **remove_command**\ (\ key_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorCommandPalette_method_remove_command>`

從 EditorCommandPalette 中刪除自訂命令。

- ``key_name``: :ref:`String<class_String>` (特定 **Command** 的鍵名)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
