:github_url: hide

.. _class_ScriptCreateDialog:

ScriptCreateDialog
==================

**继承：** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Godot 编辑器用于创建新 :ref:`Script<class_Script>` 文件的弹出对话框。

.. rst-class:: classref-introduction-group

描述
----

**ScriptCreateDialog** 会根据给定的模板为给定的脚本语言创建脚本文件。标准用法是在调用任何 :ref:`Window.popup()<class_Window_method_popup>` 方法之前，先配置其字段。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var dialog = ScriptCreateDialog.new();
        dialog.config("Node", "res://new_node.gd") # 对于引擎内置类型。
        dialog.config("\"res://base_node.gd\"", "res://derived_node.gd") # 对于脚本类型。
        dialog.popup_centered()

 .. code-tab:: csharp

    public override void _Ready()
    {
        var dialog = new ScriptCreateDialog();
        dialog.Config("Node", "res://NewNode.cs"); // 对于引擎内置类型。
        dialog.Config("\"res://BaseNode.cs\"", "res://DerivedNode.cs"); // 对于脚本类型。
        dialog.PopupCentered();
    }



.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | dialog_hide_on_ok | ``false`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_dialog_hide_on_ok>`) |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | ok_button_text    | ``"Create"`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_ok_button_text>`) |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | title             | ``"Attach Node Script"`` (overrides :ref:`Window<class_Window_property_title>`)          |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`config<class_ScriptCreateDialog_method_config>`\ (\ inherits\: :ref:`String<class_String>`, path\: :ref:`String<class_String>`, built_in_enabled\: :ref:`bool<class_bool>` = true, load_enabled\: :ref:`bool<class_bool>` = true\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_ScriptCreateDialog_signal_script_created:

.. rst-class:: classref-signal

**script_created**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptCreateDialog_signal_script_created>`

当用户点击确定按钮时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ScriptCreateDialog_method_config:

.. rst-class:: classref-method

|void| **config**\ (\ inherits\: :ref:`String<class_String>`, path\: :ref:`String<class_String>`, built_in_enabled\: :ref:`bool<class_bool>` = true, load_enabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ScriptCreateDialog_method_config>`

预填必填字段以配置 ScriptCreateDialog 以供使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
