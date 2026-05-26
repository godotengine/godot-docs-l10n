:github_url: hide

.. _class_EditorFileDialog:

EditorFileDialog
================

**继承：** :ref:`FileDialog<class_FileDialog>` **<** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

编辑器使用的 :ref:`FileDialog<class_FileDialog>` 的修改版。

.. rst-class:: classref-introduction-group

描述
----

**EditorFileDialog** 是经过调整可以在编辑器内使用的 :ref:`FileDialog<class_FileDialog>`\ 。它将自动处理收藏列表和最近使用目录列表，并将一些属性和相应的编辑器设置同步。

\ **EditorFileDialog** 会忽略 :ref:`FileDialog.use_native_dialog<class_FileDialog_property_use_native_dialog>` 并自动根据编辑器设置 :ref:`EditorSettings.interface/editor/use_native_file_dialogs<class_EditorSettings_property_interface/editor/use_native_file_dialogs>` 选择是否显示原生的对话窗口。

\ **注意：**\ **EditorFileDialog** 默认情况下是隐藏的。若要显示，调用节点上来自 :ref:`Window<class_Window>` 的 ``popup_*`` 方法中的其中一个，比如 :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`disable_overwrite_warning<class_EditorFileDialog_property_disable_overwrite_warning>` | ``false`` |
   +-------------------------+---------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_side_menu<class_EditorFileDialog_method_add_side_menu>`\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_EditorFileDialog_property_disable_overwrite_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_overwrite_warning** = ``false`` :ref:`🔗<class_EditorFileDialog_property_disable_overwrite_warning>`

.. rst-class:: classref-property-setget

- |void| **set_disable_overwrite_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overwrite_warning_disabled**\ (\ )

**已弃用：** Use :ref:`FileDialog.overwrite_warning_enabled<class_FileDialog_property_overwrite_warning_enabled>` instead.

如果为 ``true``\ ，\ **EditorFileDialog** 将不会在覆盖文件之前警告用户。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorFileDialog_method_add_side_menu:

.. rst-class:: classref-method

|void| **add_side_menu**\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_side_menu>`

**已弃用：** This feature is no longer supported.

该方法仅为保持兼容性而保留，不执行任何操作。作为替代方案，你可以在显示文件对话框后显示另一个对话框。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
