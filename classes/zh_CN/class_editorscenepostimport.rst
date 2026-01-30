:github_url: hide

.. _class_EditorScenePostImport:

EditorScenePostImport
=====================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入后对场景进行后处理。

.. rst-class:: classref-introduction-group

描述
----

通过将\ **自定义脚本**\ 导入属性设置为从此类继承的 ``tool`` 脚本，可以在导入后立即自动修改导入的场景。

\ :ref:`_post_import()<class_EditorScenePostImport_private_method__post_import>` 回调接收导入场景的根节点，并返回场景的修改版本。


.. tabs::

 .. code-tab:: gdscript

    @tool # 需要它才能在编辑器中运行。
    extends EditorScenePostImport

    # 该示例更改所有节点名称。
    # 在导入场景并获取根节点后立即调用。
    func _post_import(scene):
        # 将所有节点名称更改为 “modified_[oldnodename]”
        iterate(scene)
        return scene # 记得返回导入的场景

    func iterate(node):
        if node != null:
            node.name = "modified_" + node.name
            for child in node.get_children():
                iterate(child)

 .. code-tab:: csharp

    using Godot;

    // 该示例更改所有节点名称。
    // 在导入场景并获取根节点后立即调用。
    [Tool]
    public partial class NodeRenamer : EditorScenePostImport
    {
        public override GodotObject _PostImport(Node scene)
        {
            // 将所有节点名称更改为 “modified_[oldnodename]”
            Iterate(scene);
            return scene; // 记得返回导入的场景
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

教程
----

- `导入 3D 场景：配置：使用导入脚本进行自动化 <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__

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

方法说明
--------

.. _class_EditorScenePostImport_private_method__post_import:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_post_import**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImport_private_method__post_import>`

在场景被导入后触发。本方法必须返回场景的修改版本。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImport_method_get_source_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_source_file**\ (\ ) |const| :ref:`🔗<class_EditorScenePostImport_method_get_source_file>`

返回导入的源文件路径（如\ ``res://scene.dae``\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
