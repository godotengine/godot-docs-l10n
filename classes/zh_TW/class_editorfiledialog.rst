:github_url: hide

.. _class_EditorFileDialog:

EditorFileDialog
================

**繼承：** :ref:`FileDialog<class_FileDialog>` **<** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

編輯器使用的 :ref:`FileDialog<class_FileDialog>` 的修改版。

.. rst-class:: classref-introduction-group

說明
----

**EditorFileDialog** is a :ref:`FileDialog<class_FileDialog>` tweaked to work in the editor. It automatically handles favorite and recent directory lists, and synchronizes some properties with their corresponding editor settings.

\ **EditorFileDialog** will automatically show a native dialog based on the :ref:`EditorSettings.interface/editor/use_native_file_dialogs<class_EditorSettings_property_interface/editor/use_native_file_dialogs>` editor setting and ignores :ref:`FileDialog.use_native_dialog<class_FileDialog_property_use_native_dialog>`.

\ **Note:** **EditorFileDialog** is invisible by default. To make it visible, call one of the ``popup_*`` methods from :ref:`Window<class_Window>` on the node, such as :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_EditorFileDialog_property_disable_overwrite_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_overwrite_warning** = ``false`` :ref:`🔗<class_EditorFileDialog_property_disable_overwrite_warning>`

.. rst-class:: classref-property-setget

- |void| **set_disable_overwrite_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overwrite_warning_disabled**\ (\ )

**已棄用：** Use :ref:`FileDialog.overwrite_warning_enabled<class_FileDialog_property_overwrite_warning_enabled>` instead.

如果為 ``true``\ ，\ **EditorFileDialog** 將不會在覆蓋檔之前警告使用者。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorFileDialog_method_add_side_menu:

.. rst-class:: classref-method

|void| **add_side_menu**\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_side_menu>`

**已棄用：** This feature is no longer supported.

This method is kept for compatibility and does nothing. As an alternative, you can display another dialog after showing the file dialog.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
