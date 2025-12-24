:github_url: hide

.. _class_EditorFileDialog:

EditorFileDialog
================

**继承：** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

编辑器使用的 :ref:`FileDialog<class_FileDialog>` 的修改版。

.. rst-class:: classref-introduction-group

描述
----

**EditorFileDialog** 是增强版的 :ref:`FileDialog<class_FileDialog>`\ ，只有编辑器插件能够使用。增加的功能包括收藏列表、最近文件列表、除列表形式外能够以缩略图网格形式查看文件等。

与 :ref:`FileDialog<class_FileDialog>` 不同，\ **EditorFileDialog** 没有使用原生对话框的属性。不过可以通过 :ref:`EditorSettings.interface/editor/use_native_file_dialogs<class_EditorSettings_property_interface/editor/use_native_file_dialogs>` 编辑器属性全局打开原生对话框。在沙盒中运行时会自动启用（例如在 macOS 上）。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Access<enum_EditorFileDialog_Access>`           | :ref:`access<class_EditorFileDialog_property_access>`                                       | ``0``                                                                                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`current_dir<class_EditorFileDialog_property_current_dir>`                             |                                                                                          |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`current_file<class_EditorFileDialog_property_current_file>`                           |                                                                                          |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`current_path<class_EditorFileDialog_property_current_path>`                           |                                                                                          |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | dialog_hide_on_ok                                                                           | ``false`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_dialog_hide_on_ok>`) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`disable_overwrite_warning<class_EditorFileDialog_property_disable_overwrite_warning>` | ``false``                                                                                |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` | :ref:`display_mode<class_EditorFileDialog_property_display_mode>`                           | ``0``                                                                                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`FileMode<enum_EditorFileDialog_FileMode>`       | :ref:`file_mode<class_EditorFileDialog_property_file_mode>`                                 | ``4``                                                                                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`filters<class_EditorFileDialog_property_filters>`                                     | ``PackedStringArray()``                                                                  |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`option_count<class_EditorFileDialog_property_option_count>`                           | ``0``                                                                                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`show_hidden_files<class_EditorFileDialog_property_show_hidden_files>`                 | ``false``                                                                                |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | title                                                                                       | ``"Save a File"`` (overrides :ref:`Window<class_Window_property_title>`)                 |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_filter<class_EditorFileDialog_method_add_filter>`\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = ""\ )                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_option<class_EditorFileDialog_method_add_option>`\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_side_menu<class_EditorFileDialog_method_add_side_menu>`\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ )                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filename_filter<class_EditorFileDialog_method_clear_filename_filter>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filters<class_EditorFileDialog_method_clear_filters>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_filename_filter<class_EditorFileDialog_method_get_filename_filter>`\ (\ ) |const|                                                                                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>`                   | :ref:`get_line_edit<class_EditorFileDialog_method_get_line_edit>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_default<class_EditorFileDialog_method_get_option_default>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_option_name<class_EditorFileDialog_method_get_option_name>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_option_values<class_EditorFileDialog_method_get_option_values>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`get_selected_options<class_EditorFileDialog_method_get_selected_options>`\ (\ ) |const|                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VBoxContainer<class_VBoxContainer>`         | :ref:`get_vbox<class_EditorFileDialog_method_get_vbox>`\ (\ )                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`invalidate<class_EditorFileDialog_method_invalidate>`\ (\ )                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`popup_file_dialog<class_EditorFileDialog_method_popup_file_dialog>`\ (\ )                                                                                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_filename_filter<class_EditorFileDialog_method_set_filename_filter>`\ (\ filter\: :ref:`String<class_String>`\ )                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_default<class_EditorFileDialog_method_set_option_default>`\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ )                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_name<class_EditorFileDialog_method_set_option_name>`\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_values<class_EditorFileDialog_method_set_option_values>`\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ )                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_EditorFileDialog_signal_dir_selected:

.. rst-class:: classref-signal

**dir_selected**\ (\ dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_signal_dir_selected>`

选择目录时触发。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_signal_file_selected:

.. rst-class:: classref-signal

**file_selected**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_signal_file_selected>`

选择文件时触发。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_signal_filename_filter_changed:

.. rst-class:: classref-signal

**filename_filter_changed**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_signal_filename_filter_changed>`

当文件名筛选器发生更改时发出。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_signal_files_selected:

.. rst-class:: classref-signal

**files_selected**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileDialog_signal_files_selected>`

选择多个文件时触发。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_EditorFileDialog_FileMode:

.. rst-class:: classref-enumeration

enum **FileMode**: :ref:`🔗<enum_EditorFileDialog_FileMode>`

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_FILE** = ``0``

**EditorFileDialog** 仅可以选择一个文件，选择同意窗口将会打开这个文件。

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_FILES** = ``1``

**EditorFileDialog** 可以选择多个文件，选择同意窗口将会打开所有选择的文件。

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_DIR:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_DIR** = ``2``

**EditorFileDialog** 可以选择一个目录，选择同意窗口将会打开这个目录。

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_ANY** = ``3``

**EditorFileDialog** 可以选择一个文件或者目录，选择同意窗口将会打开这个文件或目录。

.. _class_EditorFileDialog_constant_FILE_MODE_SAVE_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_SAVE_FILE** = ``4``

**EditorFileDialog** 可以选择一个文件，选择同意窗口将会保存这个文件。

.. rst-class:: classref-item-separator

----

.. _enum_EditorFileDialog_Access:

.. rst-class:: classref-enumeration

enum **Access**: :ref:`🔗<enum_EditorFileDialog_Access>`

.. _class_EditorFileDialog_constant_ACCESS_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_EditorFileDialog_Access>` **ACCESS_RESOURCES** = ``0``

**EditorFileDialog** 只能查看 ``res://`` 目录里的内容。

.. _class_EditorFileDialog_constant_ACCESS_USERDATA:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_EditorFileDialog_Access>` **ACCESS_USERDATA** = ``1``

**EditorFileDialog** 只能查看\ ``user://`` 目录里的内容。

.. _class_EditorFileDialog_constant_ACCESS_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_EditorFileDialog_Access>` **ACCESS_FILESYSTEM** = ``2``

**EditorFileDialog** 可以查看整个本地文件系统。

.. rst-class:: classref-item-separator

----

.. _enum_EditorFileDialog_DisplayMode:

.. rst-class:: classref-enumeration

enum **DisplayMode**: :ref:`🔗<enum_EditorFileDialog_DisplayMode>`

.. _class_EditorFileDialog_constant_DISPLAY_THUMBNAILS:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **DISPLAY_THUMBNAILS** = ``0``

**EditorFileDialog** 以图标的形式显示资源。

.. _class_EditorFileDialog_constant_DISPLAY_LIST:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **DISPLAY_LIST** = ``1``

**EditorFileDialog** 以文件名列表的形式显示资源。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_EditorFileDialog_property_access:

.. rst-class:: classref-property

:ref:`Access<enum_EditorFileDialog_Access>` **access** = ``0`` :ref:`🔗<class_EditorFileDialog_property_access>`

.. rst-class:: classref-property-setget

- |void| **set_access**\ (\ value\: :ref:`Access<enum_EditorFileDialog_Access>`\ )
- :ref:`Access<enum_EditorFileDialog_Access>` **get_access**\ (\ )

用户可以选择文件的位置，包括 ``res://``\ 、\ ``user://`` 和本地文件系统。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_current_dir:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_dir** :ref:`🔗<class_EditorFileDialog_property_current_dir>`

.. rst-class:: classref-property-setget

- |void| **set_current_dir**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_dir**\ (\ )

当前占用的目录。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_current_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_file** :ref:`🔗<class_EditorFileDialog_property_current_file>`

.. rst-class:: classref-property-setget

- |void| **set_current_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_file**\ (\ )

当前选择的文件。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_current_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_path** :ref:`🔗<class_EditorFileDialog_property_current_path>`

.. rst-class:: classref-property-setget

- |void| **set_current_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_path**\ (\ )

地址栏中的文件系统路径。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_disable_overwrite_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_overwrite_warning** = ``false`` :ref:`🔗<class_EditorFileDialog_property_disable_overwrite_warning>`

.. rst-class:: classref-property-setget

- |void| **set_disable_overwrite_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overwrite_warning_disabled**\ (\ )

如果为 ``true``\ ，\ **EditorFileDialog** 将不会在覆盖文件之前警告用户。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_display_mode:

.. rst-class:: classref-property

:ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **display_mode** = ``0`` :ref:`🔗<class_EditorFileDialog_property_display_mode>`

.. rst-class:: classref-property-setget

- |void| **set_display_mode**\ (\ value\: :ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>`\ )
- :ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **get_display_mode**\ (\ )

**EditorFileDialog** 向用户显示资源的视图格式。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_file_mode:

.. rst-class:: classref-property

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **file_mode** = ``4`` :ref:`🔗<class_EditorFileDialog_property_file_mode>`

.. rst-class:: classref-property-setget

- |void| **set_file_mode**\ (\ value\: :ref:`FileMode<enum_EditorFileDialog_FileMode>`\ )
- :ref:`FileMode<enum_EditorFileDialog_FileMode>` **get_file_mode**\ (\ )

对话框的打开或保存模式，会影响选择行为。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_filters:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **filters** = ``PackedStringArray()`` :ref:`🔗<class_EditorFileDialog_property_filters>`

.. rst-class:: classref-property-setget

- |void| **set_filters**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_filters**\ (\ )

可用的文件类型过滤器。例如，这样就只会显示 ``.png`` 和 ``.gd`` 文件：\ ``set_filters(PackedStringArray(["*.png ; PNG Images","*.gd ; GDScript Files"]))``\ 。也可以在单个过滤器中指定多种文件类型。选中 ``"*.png, *.jpg, *.jpeg ; 支持的图片"`` 时，将同时显示 PNG 和 JPEG 文件。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_option_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **option_count** = ``0`` :ref:`🔗<class_EditorFileDialog_property_option_count>`

.. rst-class:: classref-property-setget

- |void| **set_option_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_option_count**\ (\ )

对话框中附加的 :ref:`OptionButton<class_OptionButton>` 和 :ref:`CheckBox<class_CheckBox>` 的数量。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_show_hidden_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_hidden_files** = ``false`` :ref:`🔗<class_EditorFileDialog_property_show_hidden_files>`

.. rst-class:: classref-property-setget

- |void| **set_show_hidden_files**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_hidden_files**\ (\ )

如果为 ``true``\ ，隐藏的文件和目录将在 **EditorFileDialog** 中可见。该属性与 :ref:`EditorSettings.filesystem/file_dialog/show_hidden_files<class_EditorSettings_property_filesystem/file_dialog/show_hidden_files>` 同步。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorFileDialog_method_add_filter:

.. rst-class:: classref-method

|void| **add_filter**\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_filter>`

将一个逗号分隔的文件名 ``filter`` 且带有可选 ``description`` 的选项添加到的 **EditorFileDialog**\ ，这限制了可以选择的文件。

\ ``filter`` 的格式应为 ``"文件名.扩展名"``\ ，其中文件名和扩展名可以是 ``*``\ ，以匹配任意字符串。不允许使用以 ``.`` 开头的过滤器（即空文件名）。

例如，\ ``"*.tscn, *.scn"`` 的 ``filter`` 和 ``"场景"`` 的 ``description`` 会产生过滤文本“场景 (\* .tscn, \*.scn)”。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_add_option:

.. rst-class:: classref-method

|void| **add_option**\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileDialog_method_add_option>`

向文件对话框添加额外的 :ref:`OptionButton<class_OptionButton>`\ 。如果 ``values`` 为空，则添加的是 :ref:`CheckBox<class_CheckBox>`\ 。

\ ``default_value_index`` 应该是 ``values`` 的索引号。如果 ``values`` 为空，则应该是 ``1``\ （选中）或 ``0``\ （未选中）。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_add_side_menu:

.. rst-class:: classref-method

|void| **add_side_menu**\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_side_menu>`

将给定的 ``menu`` 添加到文件对话框的侧边，在顶部显示标题文本 ``title``\ 。仅支持一个侧边菜单。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_clear_filename_filter:

.. rst-class:: classref-method

|void| **clear_filename_filter**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_clear_filename_filter>`

清空文件名筛选器。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_clear_filters:

.. rst-class:: classref-method

|void| **clear_filters**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_clear_filters>`

移除“所有文件 (\*.\*)”筛选器之外的所有筛选器。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_filename_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filename_filter**\ (\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_filename_filter>`

返回文件名筛选器的值。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_get_line_edit>`

返回所选文件的 LineEdit。

\ **警告：**\ 这是一个必需的内部节点，删除和释放它可能会导致崩溃。如果你希望隐藏它或其任何子项，请使用它们的 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 属性。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_option_default:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_default**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_option_default>`

返回索引为 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 或 :ref:`CheckBox<class_CheckBox>` 的默认值索引。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_option_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_option_name**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_option_name>`

返回索引为 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 或 :ref:`CheckBox<class_CheckBox>` 的名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_option_values:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_option_values**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_option_values>`

返回索引为 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 值的数组。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_selected_options:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_selected_options**\ (\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_selected_options>`

返回一个 :ref:`Dictionary<class_Dictionary>`\ ，其中包含附加 :ref:`OptionButton<class_OptionButton>` 和/或 :ref:`CheckBox<class_CheckBox>` 的选定值。\ :ref:`Dictionary<class_Dictionary>` 的键是名称，而值是选定的值索引。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_vbox:

.. rst-class:: classref-method

:ref:`VBoxContainer<class_VBoxContainer>` **get_vbox**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_get_vbox>`

返回用于显示文件系统的 :ref:`VBoxContainer<class_VBoxContainer>`\ 。

\ **警告：**\ 这是一个必需的内部节点，移除和释放它可能会导致崩溃。如果你想隐藏它或它的任何子节点，请使用 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 属性。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_invalidate:

.. rst-class:: classref-method

|void| **invalidate**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_invalidate>`

通知 **EditorFileDialog** 它的数据视图不再准确。在下次视图更新时更新视图内容。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_popup_file_dialog:

.. rst-class:: classref-method

|void| **popup_file_dialog**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_popup_file_dialog>`

以编辑器中文件对话框的默认大小和位置显示该 **EditorFileDialog**\ ，如果有当前文件则选择该文件名。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_filename_filter:

.. rst-class:: classref-method

|void| **set_filename_filter**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_filename_filter>`

设置文件名筛选器的值。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_option_default:

.. rst-class:: classref-method

|void| **set_option_default**\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_option_default>`

设置索引为 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 或 :ref:`CheckBox<class_CheckBox>` 的默认值索引。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_option_name:

.. rst-class:: classref-method

|void| **set_option_name**\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_option_name>`

设置索引为 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 或 :ref:`CheckBox<class_CheckBox>` 的名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_option_values:

.. rst-class:: classref-method

|void| **set_option_values**\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_option_values>`

设置索引为 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 的选项值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
