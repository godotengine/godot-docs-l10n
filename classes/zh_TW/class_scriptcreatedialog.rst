:github_url: hide

.. _class_ScriptCreateDialog:

ScriptCreateDialog
==================

**繼承：** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Godot 編輯器用於建立新 :ref:`Script<class_Script>` 檔的彈出對話框。

.. rst-class:: classref-introduction-group

說明
----

**ScriptCreateDialog** 會根據給定的範本為給定的指令碼語言建立指令檔。標準用法是在呼叫任何 :ref:`Window.popup()<class_Window_method_popup>` 方法之前，先配置其欄位。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var dialog = ScriptCreateDialog.new();
        dialog.config("Node", "res://new_node.gd") # 對於引擎內建型別。
        dialog.config("\"res://base_node.gd\"", "res://derived_node.gd") # 對於腳本型別。
        dialog.popup_centered()

 .. code-tab:: csharp

    public override void _Ready()
    {
        var dialog = new ScriptCreateDialog();
        dialog.Config("Node", "res://NewNode.cs"); // 對於引擎內建型別。
        dialog.Config("\"res://BaseNode.cs\"", "res://DerivedNode.cs"); // 對於腳本型別。
        dialog.PopupCentered();
    }



.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_ScriptCreateDialog_signal_script_created:

.. rst-class:: classref-signal

**script_created**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptCreateDialog_signal_script_created>`

當使用者點選確定按鈕時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ScriptCreateDialog_method_config:

.. rst-class:: classref-method

|void| **config**\ (\ inherits\: :ref:`String<class_String>`, path\: :ref:`String<class_String>`, built_in_enabled\: :ref:`bool<class_bool>` = true, load_enabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ScriptCreateDialog_method_config>`

預填必填欄位以配置 ScriptCreateDialog 以供使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
