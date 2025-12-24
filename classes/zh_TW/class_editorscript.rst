:github_url: hide

.. _class_EditorScript:

EditorScript
============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

可用於為編輯器新增擴充功能的基礎腳本。

.. rst-class:: classref-introduction-group

說明
----

Scripts extending this class and implementing its :ref:`_run()<class_EditorScript_private_method__run>` method can be executed from the Script Editor's **File > Run** menu option (or by pressing :kbd:`Ctrl + Shift + X`) while the editor is running. This is useful for adding custom in-editor functionality to Godot. For more complex additions, consider using :ref:`EditorPlugin<class_EditorPlugin>`\ s instead.

If a script extending this class also has a global class name, it will be included in the editor's command palette.

\ **Note:** Extending scripts need to have ``tool`` mode enabled.

\ **Example:** Running the following script prints "Hello from the Godot Editor!":


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
            GD.Print("Hello from the Godot Editor!");
        }
    }



\ **Note:** EditorScript is :ref:`RefCounted<class_RefCounted>`, meaning it is destroyed when nothing references it. This can cause errors during asynchronous operations if there are no references to the script.

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

Makes ``node`` root of the currently opened scene. Only works if the scene is empty. If the ``node`` is a scene instance, an inheriting scene will be created.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_editor_interface:

.. rst-class:: classref-method

:ref:`EditorInterface<class_EditorInterface>` **get_editor_interface**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_editor_interface>`

**已棄用：** :ref:`EditorInterface<class_EditorInterface>` is a global singleton and can be accessed directly by its name.

Returns the :ref:`EditorInterface<class_EditorInterface>` singleton instance.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_scene>`

Returns the edited (current) scene's root :ref:`Node<class_Node>`. Equivalent of :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
