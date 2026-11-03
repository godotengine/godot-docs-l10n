:github_url: hide

.. _class_EditorScript:

EditorScript
============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

可用於為編輯器新增擴充功能的基礎腳本。

.. rst-class:: classref-introduction-group

說明
----

擴充該類並實作其 :ref:`_run()<class_EditorScript_private_method__run>` 方法的腳本可以在編輯器執行時通過腳本編輯器的\ **檔案 > 執行**\ 選單選項（或按 :kbd:`Ctrl + Shift + X`\ ）執行。這對於向 Godot 新增自訂的編輯內功能很有用。對於更複雜的新增，請考慮改用 :ref:`EditorPlugin<class_EditorPlugin>`\ 。

如果擴充該類的腳本存在全域類別名稱，則會包含在編輯器的命令面板中。

\ **注意：**\ 擴充腳本需要啟用 ``tool`` 工具模式。

\ **範例：**\ 執行下面的腳本會輸出“Godot 編輯器向你問好！”：


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorScript

    func _run():
        print("Hello from the Godot Editor!")

 .. code-tab:: csharp

    using Godot;

    [Tool]
    public partial class HelloEditor : EditorScript
    {
        public override void _Run()
        {
            GD.Print("Godot 編輯器向你問好！");
        }
    }



\ **注意：**\ EditorScript 是 :ref:`RefCounted<class_RefCounted>`\ ，這意味著它不再被參照時會被銷毀。如果沒有對腳本的參照，這可能會在非同步操作期間導致錯誤。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`_run<class_EditorScript_private_method__run>`\ (\ ) |virtual| |required|                      |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`add_root_node<class_EditorScript_method_add_root_node>`\ (\ node\: :ref:`Node<class_Node>`\ ) |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`EditorInterface<class_EditorInterface>` | :ref:`get_editor_interface<class_EditorScript_method_get_editor_interface>`\ (\ ) |const|           |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                       | :ref:`get_scene<class_EditorScript_method_get_scene>`\ (\ ) |const|                                 |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorScript_private_method__run:

.. rst-class:: classref-method

|void| **_run**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorScript_private_method__run>`

當使用\ **檔 > 運作**\ 時，此方法由編輯器執行。

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_add_root_node:

.. rst-class:: classref-method

|void| **add_root_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorScript_method_add_root_node>`

**已棄用：** Use :ref:`EditorInterface.add_root_node()<class_EditorInterface_method_add_root_node>` instead.

使 ``node`` 成為目前打開的場景的根。僅當場景為空時才有效。如果 ``node`` 是場景實例，則會建立一個繼承場景。

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_editor_interface:

.. rst-class:: classref-method

:ref:`EditorInterface<class_EditorInterface>` **get_editor_interface**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_editor_interface>`

**已棄用：** :ref:`EditorInterface<class_EditorInterface>` is a global singleton and can be accessed directly by its name.

回傳 :ref:`EditorInterface<class_EditorInterface>` 單例實例。

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_scene>`

**已棄用：** Use :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>` instead.

回傳正在編輯的（目前）場景的根 :ref:`Node<class_Node>`\ 。相當於 :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
