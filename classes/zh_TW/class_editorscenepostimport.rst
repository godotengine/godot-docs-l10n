:github_url: hide

.. _class_EditorScenePostImport:

EditorScenePostImport
=====================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入後對場景進行後處理。

.. rst-class:: classref-introduction-group

說明
----

Imported scenes can be automatically modified right after import by setting their **Custom Script** Import property to a ``tool`` script that inherits from this class.

The :ref:`_post_import()<class_EditorScenePostImport_private_method__post_import>` callback receives the imported scene's root node and returns the modified version of the scene:


.. tabs::

 .. code-tab:: gdscript

    @tool # Needed so it runs in editor.
    extends EditorScenePostImport

    # This sample changes all node names.
    # Called right after the scene is imported and gets the root node.
    func _post_import(scene):
        # Change all node names to "modified_[oldnodename]"
        iterate(scene)
        return scene # Remember to return the imported scene

    func iterate(node):
        if node != null:
            node.name = "modified_" + node.name
            for child in node.get_children():
                iterate(child)

 .. code-tab:: csharp

    using Godot;

    // This sample changes all node names.
    // Called right after the scene is imported and gets the root node.
    [Tool]
    public partial class NodeRenamer : EditorScenePostImport
    {
        public override GodotObject _PostImport(Node scene)
        {
            // Change all node names to "modified_[oldnodename]"
            Iterate(scene);
            return scene; // Remember to return the imported scene
        }

        public void Iterate(Node node)
        {
            if (node != null)
            {
                node.Name = $"modified_{node.Name}";
                foreach (Node child in node.GetChildren())
                {
                    Iterate(child);
                }
            }
        }
    }



.. rst-class:: classref-introduction-group

教學
----

- `Importing 3D scenes: Configuration: Using import scripts for automation <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`_post_import<class_EditorScenePostImport_private_method__post_import>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_source_file<class_EditorScenePostImport_method_get_source_file>`\ (\ ) |const|                                      |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorScenePostImport_private_method__post_import:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_post_import**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImport_private_method__post_import>`

在場景被匯入後觸發。本方法必須返回場景的修改版本。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImport_method_get_source_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_source_file**\ (\ ) |const| :ref:`🔗<class_EditorScenePostImport_method_get_source_file>`

返回匯入的原始檔案路徑（如\ ``res://scene.dae``\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
