:github_url: hide

.. _class_EditorFileDialog:

EditorFileDialog
================

**繼承：** :ref:`FileDialog<class_FileDialog>` **<** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

編輯器使用的 :ref:`FileDialog<class_FileDialog>` 的修改版。

.. rst-class:: classref-introduction-group

說明
----

**EditorFileDialog** 是一個專門針對編輯器工作流進行了微調最佳化的 :ref:`FileDialog<class_FileDialog>`\ （檔案對話框）。它會自動處理‘收藏夾’和‘最近存取’的目錄清單，並且會將部分屬性與對應的編輯器設定保持同步。

\ **EditorFileDialog** 會根據編輯器設定中的 :ref:`EditorSettings.interface/editor/appearance/use_native_file_dialogs<class_EditorSettings_property_interface/editor/appearance/use_native_file_dialogs>` 自動決定是否顯示系統原生的對話框，並且會直接忽略 :ref:`FileDialog.use_native_dialog<class_FileDialog_property_use_native_dialog>` 的設定。

\ **注意：** **EditorFileDialog** 預設是隱藏的。如果想要讓它顯示出來，你需要在該節點上呼叫 :ref:`Window<class_Window>` 類中的某個 ``popup_*`` 方法，比如 :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`\ 。

\ **注意：** 在 Linux 和 macOS 系統上，處於沙盒模式（sandboxed）的應用程式總是會使用系統原生對話框來存取宿主機的檔案系統。

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

該方法僅為保持相容性而保留，不執行任何操作。作為替代方案，你可以在顯示檔案對話框後顯示另一個對話框。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
