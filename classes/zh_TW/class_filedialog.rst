:github_url: hide

.. _class_FileDialog:

FileDialog
==========

**繼承：** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`EditorFileDialog<class_EditorFileDialog>`

用於選擇檔案系統中的檔或目錄的對話框。

.. rst-class:: classref-introduction-group

說明
----

**FileDialog** is a preset dialog used to choose files and directories in the filesystem. It supports filter masks. **FileDialog** automatically sets its window title according to the :ref:`file_mode<class_FileDialog_property_file_mode>`, if :ref:`Window.title<class_Window_property_title>` is empty.

\ **Note:** **FileDialog** is invisible by default. To make it visible, call one of the ``popup_*`` methods from :ref:`Window<class_Window>` on the node, such as :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Access<enum_FileDialog_Access>`             | :ref:`access<class_FileDialog_property_access>`                                           | ``0``                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`current_dir<class_FileDialog_property_current_dir>`                                 |                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`current_file<class_FileDialog_property_current_file>`                               |                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`current_path<class_FileDialog_property_current_path>`                               |                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`deleting_enabled<class_FileDialog_property_deleting_enabled>`                       | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | dialog_hide_on_ok                                                                         | ``false`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_dialog_hide_on_ok>`) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`DisplayMode<enum_FileDialog_DisplayMode>`   | :ref:`display_mode<class_FileDialog_property_display_mode>`                               | ``0``                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`drive_selector_enabled<class_FileDialog_property_drive_selector_enabled>`           | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`favorites_enabled<class_FileDialog_property_favorites_enabled>`                     | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_filter_toggle_enabled<class_FileDialog_property_file_filter_toggle_enabled>`   | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`FileMode<enum_FileDialog_FileMode>`         | :ref:`file_mode<class_FileDialog_property_file_mode>`                                     | ``4``                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_sort_options_enabled<class_FileDialog_property_file_sort_options_enabled>`     | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`filename_filter<class_FileDialog_property_filename_filter>`                         | ``""``                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`filters<class_FileDialog_property_filters>`                                         | ``PackedStringArray()``                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`filters_enabled<class_FileDialog_property_filters_enabled>`                         | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`folder_creation_enabled<class_FileDialog_property_folder_creation_enabled>`         | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`hidden_files_toggle_enabled<class_FileDialog_property_hidden_files_toggle_enabled>` | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`layout_toggle_enabled<class_FileDialog_property_layout_toggle_enabled>`             | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`mode_overrides_title<class_FileDialog_property_mode_overrides_title>`               | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`navigation_buttons_enabled<class_FileDialog_property_navigation_buttons_enabled>`   | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`option_count<class_FileDialog_property_option_count>`                               | ``0``                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`option_{index}/default<class_FileDialog_property_option_{index}/default>`           | ``0``                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`option_{index}/name<class_FileDialog_property_option_{index}/name>`                 | ``""``                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`option_{index}/values<class_FileDialog_property_option_{index}/values>`             | ``PackedStringArray()``                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`overwrite_warning_enabled<class_FileDialog_property_overwrite_warning_enabled>`     | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`recent_list_enabled<class_FileDialog_property_recent_list_enabled>`                 | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`root_subfolder<class_FileDialog_property_root_subfolder>`                           | ``""``                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`show_hidden_files<class_FileDialog_property_show_hidden_files>`                     | ``false``                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                   | size                                                                                      | ``Vector2i(640, 360)`` (overrides :ref:`Window<class_Window_property_size>`)             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`use_native_dialog<class_FileDialog_property_use_native_dialog>`                     | ``false``                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_filter<class_FileDialog_method_add_filter>`\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = "", mime_type\: :ref:`String<class_String>` = ""\ )          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_option<class_FileDialog_method_add_option>`\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filename_filter<class_FileDialog_method_clear_filename_filter>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filters<class_FileDialog_method_clear_filters>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`deselect_all<class_FileDialog_method_deselect_all>`\ (\ )                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_favorite_list<class_FileDialog_method_get_favorite_list>`\ (\ ) |static|                                                                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>`                   | :ref:`get_line_edit<class_FileDialog_method_get_line_edit>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_default<class_FileDialog_method_get_option_default>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_option_name<class_FileDialog_method_get_option_name>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_option_values<class_FileDialog_method_get_option_values>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_recent_list<class_FileDialog_method_get_recent_list>`\ (\ ) |static|                                                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`get_selected_options<class_FileDialog_method_get_selected_options>`\ (\ ) |const|                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VBoxContainer<class_VBoxContainer>`         | :ref:`get_vbox<class_FileDialog_method_get_vbox>`\ (\ )                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`invalidate<class_FileDialog_method_invalidate>`\ (\ )                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_customization_flag_enabled<class_FileDialog_method_is_customization_flag_enabled>`\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`popup_file_dialog<class_FileDialog_method_popup_file_dialog>`\ (\ )                                                                                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_customization_flag_enabled<class_FileDialog_method_set_customization_flag_enabled>`\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_favorite_list<class_FileDialog_method_set_favorite_list>`\ (\ favorites\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |static|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_get_icon_callback<class_FileDialog_method_set_get_icon_callback>`\ (\ callback\: :ref:`Callable<class_Callable>`\ ) |static|                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_get_thumbnail_callback<class_FileDialog_method_set_get_thumbnail_callback>`\ (\ callback\: :ref:`Callable<class_Callable>`\ ) |static|                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_default<class_FileDialog_method_set_option_default>`\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ )                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_name<class_FileDialog_method_set_option_name>`\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_values<class_FileDialog_method_set_option_values>`\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ )                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_recent_list<class_FileDialog_method_set_recent_list>`\ (\ recents\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |static|                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`         | :ref:`file_disabled_color<class_FileDialog_theme_color_file_disabled_color>`            | ``Color(1, 1, 1, 0.25)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`         | :ref:`file_icon_color<class_FileDialog_theme_color_file_icon_color>`                    | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`         | :ref:`folder_icon_color<class_FileDialog_theme_color_folder_icon_color>`                | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`             | :ref:`thumbnail_size<class_FileDialog_theme_constant_thumbnail_size>`                   | ``64``                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`back_folder<class_FileDialog_theme_icon_back_folder>`                             |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`create_folder<class_FileDialog_theme_icon_create_folder>`                         |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`favorite<class_FileDialog_theme_icon_favorite>`                                   |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`favorite_down<class_FileDialog_theme_icon_favorite_down>`                         |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`favorite_up<class_FileDialog_theme_icon_favorite_up>`                             |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`file<class_FileDialog_theme_icon_file>`                                           |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`file_thumbnail<class_FileDialog_theme_icon_file_thumbnail>`                       |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folder<class_FileDialog_theme_icon_folder>`                                       |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folder_thumbnail<class_FileDialog_theme_icon_folder_thumbnail>`                   |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`forward_folder<class_FileDialog_theme_icon_forward_folder>`                       |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`list_mode<class_FileDialog_theme_icon_list_mode>`                                 |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_copy_path<class_FileDialog_theme_icon_menu_copy_path>`                       |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_delete<class_FileDialog_theme_icon_menu_delete>`                             |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_new_folder<class_FileDialog_theme_icon_menu_new_folder>`                     |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_open_bundle<class_FileDialog_theme_icon_menu_open_bundle>`                   |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_refresh<class_FileDialog_theme_icon_menu_refresh>`                           |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_show_in_file_manager<class_FileDialog_theme_icon_menu_show_in_file_manager>` |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`parent_folder<class_FileDialog_theme_icon_parent_folder>`                         |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`reload<class_FileDialog_theme_icon_reload>`                                       |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sort<class_FileDialog_theme_icon_sort>`                                           |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`thumbnail_mode<class_FileDialog_theme_icon_thumbnail_mode>`                       |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`toggle_filename_filter<class_FileDialog_theme_icon_toggle_filename_filter>`       |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`toggle_hidden<class_FileDialog_theme_icon_toggle_hidden>`                         |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_FileDialog_signal_dir_selected:

.. rst-class:: classref-signal

**dir_selected**\ (\ dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_dir_selected>`

當使用者選擇一個目錄時觸發的。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_file_selected:

.. rst-class:: classref-signal

**file_selected**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_file_selected>`

當使用者通過雙擊檔或按\ **確定**\ 按鈕選擇一個檔時觸發。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_filename_filter_changed:

.. rst-class:: classref-signal

**filename_filter_changed**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_filename_filter_changed>`

當檔名篩選器發生更改時發出。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_files_selected:

.. rst-class:: classref-signal

**files_selected**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileDialog_signal_files_selected>`

當使用者選擇多個檔時觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_FileDialog_FileMode:

.. rst-class:: classref-enumeration

enum **FileMode**: :ref:`🔗<enum_FileDialog_FileMode>`

.. _class_FileDialog_constant_FILE_MODE_OPEN_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_FILE** = ``0``

該對話框只允許選擇一個檔。

.. _class_FileDialog_constant_FILE_MODE_OPEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_FILES** = ``1``

該對話框允許選擇多個檔。

.. _class_FileDialog_constant_FILE_MODE_OPEN_DIR:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_DIR** = ``2``

該對話框只允許選擇一個目錄，不允許選擇任何檔。

.. _class_FileDialog_constant_FILE_MODE_OPEN_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_ANY** = ``3``

該對話框允許選擇一個檔或目錄。

.. _class_FileDialog_constant_FILE_MODE_SAVE_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_SAVE_FILE** = ``4``

當檔案存在時，對話框會發出警告。

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_Access:

.. rst-class:: classref-enumeration

enum **Access**: :ref:`🔗<enum_FileDialog_Access>`

.. _class_FileDialog_constant_ACCESS_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_RESOURCES** = ``0``

該對話框只允許存取 :ref:`Resource<class_Resource>` 路徑下的檔（\ ``res://``\ ）。

.. _class_FileDialog_constant_ACCESS_USERDATA:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_USERDATA** = ``1``

該對話框只允許存取使用者資料路徑（\ ``user://``\ ）下的檔案。

.. _class_FileDialog_constant_ACCESS_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_FILESYSTEM** = ``2``

該對話框允許存取檔案系統上的檔。

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_DisplayMode:

.. rst-class:: classref-enumeration

enum **DisplayMode**: :ref:`🔗<enum_FileDialog_DisplayMode>`

.. _class_FileDialog_constant_DISPLAY_THUMBNAILS:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **DISPLAY_THUMBNAILS** = ``0``

該對話框以縮略圖網格的形式顯示檔案。請使用 :ref:`thumbnail_size<class_FileDialog_theme_constant_thumbnail_size>` 調整縮略圖的大小。

.. _class_FileDialog_constant_DISPLAY_LIST:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **DISPLAY_LIST** = ``1``

該對話框以檔名清單的形式顯示檔案。

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_Customization:

.. rst-class:: classref-enumeration

enum **Customization**: :ref:`🔗<enum_FileDialog_Customization>`

.. _class_FileDialog_constant_CUSTOMIZATION_HIDDEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_HIDDEN_FILES** = ``0``

If enabled, shows the toggle hidden files button.

Equivalent to :ref:`hidden_files_toggle_enabled<class_FileDialog_property_hidden_files_toggle_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_CREATE_FOLDER:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_CREATE_FOLDER** = ``1``

如果啟用，則會顯示新建目錄按鈕（使用 :ref:`FILE_MODE_OPEN_DIR<class_FileDialog_constant_FILE_MODE_OPEN_DIR>`\ 、\ :ref:`FILE_MODE_OPEN_ANY<class_FileDialog_constant_FILE_MODE_OPEN_ANY>`\ 、\ :ref:`FILE_MODE_SAVE_FILE<class_FileDialog_constant_FILE_MODE_SAVE_FILE>` 時有效）。

等價於 :ref:`folder_creation_enabled<class_FileDialog_property_folder_creation_enabled>`\ 。

.. _class_FileDialog_constant_CUSTOMIZATION_FILE_FILTER:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FILE_FILTER** = ``2``

如果啟用，則會顯示檔案篩選開關按鈕。

等價於 :ref:`file_filter_toggle_enabled<class_FileDialog_property_file_filter_toggle_enabled>`\ 。

.. _class_FileDialog_constant_CUSTOMIZATION_FILE_SORT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FILE_SORT** = ``3``

如果啟用，則會顯示檔案排序選項按鈕。

等價於 :ref:`file_sort_options_enabled<class_FileDialog_property_file_sort_options_enabled>`\ 。

.. _class_FileDialog_constant_CUSTOMIZATION_FAVORITES:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FAVORITES** = ``4``

如果啟用，則會顯示收藏開關按鈕和對話框左側的收藏清單。

等價於 :ref:`favorites_enabled<class_FileDialog_property_favorites_enabled>`\ 。

.. _class_FileDialog_constant_CUSTOMIZATION_RECENT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_RECENT** = ``5``

如果啟用，則會顯示對話框左側的最近目錄清單。

等價於 :ref:`recent_list_enabled<class_FileDialog_property_recent_list_enabled>`\ 。

.. _class_FileDialog_constant_CUSTOMIZATION_LAYOUT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_LAYOUT** = ``6``

如果啟用，則會顯示版面配置切換按鈕（清單、縮略圖）。

等價於 :ref:`layout_toggle_enabled<class_FileDialog_property_layout_toggle_enabled>`\ 。

.. _class_FileDialog_constant_CUSTOMIZATION_OVERWRITE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_OVERWRITE_WARNING** = ``7``

如果啟用，則 **FileDialog** 在儲存模式下覆蓋檔案之前會向使用者發出警告。

等價於 :ref:`overwrite_warning_enabled<class_FileDialog_property_overwrite_warning_enabled>`\ 。

.. _class_FileDialog_constant_CUSTOMIZATION_DELETE:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_DELETE** = ``8``

如果啟用，則情境選單將顯示“刪除”選項，允許將檔案和資料夾移動到回收站。

等價於 :ref:`deleting_enabled<class_FileDialog_property_deleting_enabled>`\ 。

.. _class_FileDialog_constant_CUSTOMIZATION_NAVIGATION_BUTTONS:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_NAVIGATION_BUTTONS** = ``9``

If enabled, shows the go back/forward buttons on the toolbar.

Equivalent to :ref:`navigation_buttons_enabled<class_FileDialog_property_navigation_buttons_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_DRIVE_SELECTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_DRIVE_SELECTOR** = ``10``

If enabled, shows the drive select dropdown next to the current path.

Equivalent to :ref:`drive_selector_enabled<class_FileDialog_property_drive_selector_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FILTERS:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FILTERS** = ``11``

If enabled, shows the file extension filter dropdown next to the file name.

Equivalent to :ref:`filters_enabled<class_FileDialog_property_filters_enabled>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_FileDialog_property_access:

.. rst-class:: classref-property

:ref:`Access<enum_FileDialog_Access>` **access** = ``0`` :ref:`🔗<class_FileDialog_property_access>`

.. rst-class:: classref-property-setget

- |void| **set_access**\ (\ value\: :ref:`Access<enum_FileDialog_Access>`\ )
- :ref:`Access<enum_FileDialog_Access>` **get_access**\ (\ )

檔案系統存取範圍。

\ **警告：**\ 在 Web 建置中，FileDialog 無法存取主機檔案系統。在沙盒 Linux 和 macOS 環境中，會自動使用 :ref:`use_native_dialog<class_FileDialog_property_use_native_dialog>` 來允許對主機檔案系統進行有限的存取。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_dir:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_dir** :ref:`🔗<class_FileDialog_property_current_dir>`

.. rst-class:: classref-property-setget

- |void| **set_current_dir**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_dir**\ (\ )

檔案對話框的目前工作目錄。

\ **注意：**\ 對於原生檔案對話框，該屬性僅被視為提示，並且可能不會被特定作業系統實作所遵守。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_file** :ref:`🔗<class_FileDialog_property_current_file>`

.. rst-class:: classref-property-setget

- |void| **set_current_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_file**\ (\ )

檔案對話框的目前選定的檔案。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_path** :ref:`🔗<class_FileDialog_property_current_path>`

.. rst-class:: classref-property-setget

- |void| **set_current_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_path**\ (\ )

目前選擇的檔對話框的檔路徑。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_deleting_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deleting_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_deleting_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

如果為 ``true``\ ，則情境選單將顯示“刪除”選項，允許將檔案和資料夾移動到回收站。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_display_mode:

.. rst-class:: classref-property

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **display_mode** = ``0`` :ref:`🔗<class_FileDialog_property_display_mode>`

.. rst-class:: classref-property-setget

- |void| **set_display_mode**\ (\ value\: :ref:`DisplayMode<enum_FileDialog_DisplayMode>`\ )
- :ref:`DisplayMode<enum_FileDialog_DisplayMode>` **get_display_mode**\ (\ )

對話框檔案清單的顯示模式。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_drive_selector_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drive_selector_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_drive_selector_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

If ``true``, shows the drive select dropdown next to the current path.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_favorites_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **favorites_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_favorites_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

如果為 ``true``\ ，則會顯示收藏開關按鈕和對話框左側的收藏清單。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_filter_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **file_filter_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_file_filter_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

如果為 ``true``\ ，則會顯示檔案篩選開關按鈕。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_mode:

.. rst-class:: classref-property

:ref:`FileMode<enum_FileDialog_FileMode>` **file_mode** = ``4`` :ref:`🔗<class_FileDialog_property_file_mode>`

.. rst-class:: classref-property-setget

- |void| **set_file_mode**\ (\ value\: :ref:`FileMode<enum_FileDialog_FileMode>`\ )
- :ref:`FileMode<enum_FileDialog_FileMode>` **get_file_mode**\ (\ )

對話框的打開或儲存模式，會影響選擇行為。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_sort_options_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **file_sort_options_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_file_sort_options_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

如果為 ``true``\ ，則會顯示檔案排序選項按鈕。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_filename_filter:

.. rst-class:: classref-property

:ref:`String<class_String>` **filename_filter** = ``""`` :ref:`🔗<class_FileDialog_property_filename_filter>`

.. rst-class:: classref-property-setget

- |void| **set_filename_filter**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_filename_filter**\ (\ )

檔名篩選器（不區分大小寫）。設定為非空字串時，只會顯示包含該子字串的檔案。使用者可以通過檔案對話框頂部的篩選按鈕編輯 :ref:`filename_filter<class_FileDialog_property_filename_filter>`\ 。

另見 :ref:`filters<class_FileDialog_property_filters>`\ ，應使用該屬性限制可以選擇的檔案型別，而 :ref:`filename_filter<class_FileDialog_property_filename_filter>` 則是由使用者設定的。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_filters:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **filters** = ``PackedStringArray()`` :ref:`🔗<class_FileDialog_property_filters>`

.. rst-class:: classref-property-setget

- |void| **set_filters**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_filters**\ (\ )

可用的檔案型別篩選器。陣列中篩選器字串的格式應類似於：\ ``*.png,*.jpg,*.jpeg;影像檔案;image/png,image/jpeg``\ 。篩選器的描述文字是可選的，可以省略。應始終設定檔案副檔名和 MIME 型別。

\ **注意：**\ 嵌入式檔案對話框和 Windows 檔案對話框僅支援檔案副檔名，而 Android、Linux 和 macOS 檔案對話框還支援 MIME 型別。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_filters_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filters_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_filters_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

If ``true``, shows the file extension filter dropdown next to the file name.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_folder_creation_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **folder_creation_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_folder_creation_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

如果為 ``true``\ ，則會顯示用於新建資料夾的按鈕（適用於 :ref:`FILE_MODE_OPEN_DIR<class_FileDialog_constant_FILE_MODE_OPEN_DIR>`\ 、\ :ref:`FILE_MODE_OPEN_ANY<class_FileDialog_constant_FILE_MODE_OPEN_ANY>`\ 、\ :ref:`FILE_MODE_SAVE_FILE<class_FileDialog_constant_FILE_MODE_SAVE_FILE>`\ ），並且情境選單中會包含“新建資料夾...”選項。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_hidden_files_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hidden_files_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_hidden_files_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

如果為 ``true``\ ，則會顯示隱藏檔案開關按鈕。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_layout_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **layout_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_layout_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

如果為 ``true``\ ，則會顯示版面配置切換按鈕（清單、縮略圖）。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_mode_overrides_title:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mode_overrides_title** = ``true`` :ref:`🔗<class_FileDialog_property_mode_overrides_title>`

.. rst-class:: classref-property-setget

- |void| **set_mode_overrides_title**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mode_overriding_title**\ (\ )

**已棄用：** The title is automatically overridden when :ref:`Window.title<class_Window_property_title>` is empty.

Has no effect and always equals to ``true``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_navigation_buttons_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **navigation_buttons_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_navigation_buttons_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

If ``true``, shows the go back/forward buttons on the toolbar.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_option_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **option_count** = ``0`` :ref:`🔗<class_FileDialog_property_option_count>`

.. rst-class:: classref-property-setget

- |void| **set_option_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_option_count**\ (\ )

對話框中附加的 :ref:`OptionButton<class_OptionButton>` 和 :ref:`CheckBox<class_CheckBox>` 的數量。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_option_{index}/default:

.. rst-class:: classref-property

:ref:`int<class_int>` **option_{index}/default** = ``0`` :ref:`🔗<class_FileDialog_property_option_{index}/default>`

``index`` 處選項的預設值。

\ **注意：** ``index`` 的取值範圍為 ``0 .. option_count - 1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_option_{index}/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **option_{index}/name** = ``""`` :ref:`🔗<class_FileDialog_property_option_{index}/name>`

``index`` 處選項的名稱。

\ **注意：** ``index`` 的取值範圍為 ``0 .. option_count - 1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_option_{index}/values:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **option_{index}/values** = ``PackedStringArray()`` :ref:`🔗<class_FileDialog_property_option_{index}/values>`

``index`` 處選項的值清單。

\ **注意：** ``index`` 的取值範圍為 ``0 .. option_count - 1``\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_overwrite_warning_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **overwrite_warning_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_overwrite_warning_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

如果為 ``true``\ ，則在儲存模式下，\ **FileDialog** 會在覆蓋檔案之前向使用者發出警告。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_recent_list_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recent_list_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_recent_list_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

如果為 ``true``\ ，則會在對話框左側顯示最近目錄清單。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_root_subfolder:

.. rst-class:: classref-property

:ref:`String<class_String>` **root_subfolder** = ``""`` :ref:`🔗<class_FileDialog_property_root_subfolder>`

.. rst-class:: classref-property-setget

- |void| **set_root_subfolder**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_root_subfolder**\ (\ )

如果非空，則給定的子資料夾將是該 **FileDialog** 的“根”，即使用者將無法轉到其父目錄。

\ **注意：**\ 原生檔案對話框將忽略該屬性。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_show_hidden_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_hidden_files** = ``false`` :ref:`🔗<class_FileDialog_property_show_hidden_files>`

.. rst-class:: classref-property-setget

- |void| **set_show_hidden_files**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_hidden_files**\ (\ )

如果為 ``true``\ ，則對話框將顯示隱藏檔案。

\ **注意：**\ Android 和 Linux 上的原生檔案對話框會忽略該屬性。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_use_native_dialog:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_native_dialog** = ``false`` :ref:`🔗<class_FileDialog_property_use_native_dialog>`

.. rst-class:: classref-property-setget

- |void| **set_use_native_dialog**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_native_dialog**\ (\ )

If ``true``, and if supported by the current :ref:`DisplayServer<class_DisplayServer>`, OS native dialog will be used instead of custom one.

\ **Note:** Native dialogs can emit the following signals: :ref:`dir_selected<class_FileDialog_signal_dir_selected>`, :ref:`file_selected<class_FileDialog_signal_file_selected>`, :ref:`files_selected<class_FileDialog_signal_files_selected>`, and :ref:`AcceptDialog.canceled<class_AcceptDialog_signal_canceled>`.

\ **Note:** On Android, it is only supported when using :ref:`ACCESS_FILESYSTEM<class_FileDialog_constant_ACCESS_FILESYSTEM>`. For access mode :ref:`ACCESS_RESOURCES<class_FileDialog_constant_ACCESS_RESOURCES>` and :ref:`ACCESS_USERDATA<class_FileDialog_constant_ACCESS_USERDATA>`, the system will fall back to custom FileDialog.

\ **Note:** On Linux and macOS, sandboxed apps always use native dialogs to access the host file system.

\ **Note:** On macOS, sandboxed apps will save security-scoped bookmarks to retain access to the opened folders across multiple sessions. Use :ref:`OS.get_granted_permissions()<class_OS_method_get_granted_permissions>` to get a list of saved bookmarks.

\ **Note:** Native dialogs are isolated from the base process, file dialog properties can't be modified once the dialog is shown.

\ **Note:** This property is ignored in :ref:`EditorFileDialog<class_EditorFileDialog>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_FileDialog_method_add_filter:

.. rst-class:: classref-method

|void| **add_filter**\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = "", mime_type\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_FileDialog_method_add_filter>`

將一個逗號分隔的檔案副檔名 ``filter`` 和以逗號分隔的 MIME 型別 ``mime_type`` 的選項新增到 **FileDialog**\ ，並可選擇新增描述 ``description``\ ，用於限制可以選擇的檔案型別。

\ ``filter`` 的格式應為 ``"檔名.副檔名"``\ ，其中檔名和副檔名可以是 ``*``\ ，以匹配任意字串。不允許使用以 ``.`` 開頭的篩選器（即空檔名）。

例如，如果 ``filter`` 為 ``"*.png, *.jpg"``\ ，\ ``mime_type`` 為 ``image/png, image/jpeg``\ ，\ ``description`` 為 ``"影像"``\ ，則生成的篩選器文字為“影像 (\*.png, \*.jpg)”。

\ **注意：**\ 嵌入的檔案對話框和 Windows 檔案對話框僅支援檔案副檔名，而 Android、Linux 和 macOS 的檔案對話框還支援 MIME 型別。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_add_option:

.. rst-class:: classref-method

|void| **add_option**\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FileDialog_method_add_option>`

向檔案對話框新增額外的 :ref:`OptionButton<class_OptionButton>`\ 。如果 ``values`` 為空，則新增的是 :ref:`CheckBox<class_CheckBox>`\ 。

\ ``default_value_index`` 應該是 ``values`` 的索引號。如果 ``values`` 為空，則應該是 ``1``\ （選中）或 ``0``\ （未選中）。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_clear_filename_filter:

.. rst-class:: classref-method

|void| **clear_filename_filter**\ (\ ) :ref:`🔗<class_FileDialog_method_clear_filename_filter>`

清空檔名篩選器。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_clear_filters:

.. rst-class:: classref-method

|void| **clear_filters**\ (\ ) :ref:`🔗<class_FileDialog_method_clear_filters>`

清除對話框中所有新增的篩檢程式。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_deselect_all:

.. rst-class:: classref-method

|void| **deselect_all**\ (\ ) :ref:`🔗<class_FileDialog_method_deselect_all>`

清除對話框中所有目前選定的專案。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_favorite_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_favorite_list**\ (\ ) |static| :ref:`🔗<class_FileDialog_method_get_favorite_list>`

回傳所有 **FileDialog** 節點共享的收藏目錄清單。有利於在專案會話之間儲存收藏清單。該方法只能從主執行緒中呼叫。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_FileDialog_method_get_line_edit>`

返回所選檔案的 LineEdit。

\ **警告：**\ 這是一個必需的內部節點，刪除和釋放它可能會導致當機。如果你希望隱藏它或其任何子項，請使用它們的 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_default:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_default**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_default>`

回傳索引為 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 或 :ref:`CheckBox<class_CheckBox>` 的預設值索引。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_option_name**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_name>`

回傳索引為 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 或 :ref:`CheckBox<class_CheckBox>` 的名稱。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_values:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_option_values**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_values>`

回傳索引為 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 值的陣列。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_recent_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recent_list**\ (\ ) |static| :ref:`🔗<class_FileDialog_method_get_recent_list>`

回傳所有 **FileDialog** 節點共享的最近存取目錄清單。有利於在專案會話之間儲存最近存取的目錄清單。該方法只能從主執行緒中呼叫。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_selected_options:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_selected_options**\ (\ ) |const| :ref:`🔗<class_FileDialog_method_get_selected_options>`

回傳一個 :ref:`Dictionary<class_Dictionary>`\ ，其中包含附加 :ref:`OptionButton<class_OptionButton>` 和/或 :ref:`CheckBox<class_CheckBox>` 的選定值。\ :ref:`Dictionary<class_Dictionary>` 的鍵是名稱，而值是選定的值索引。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_vbox:

.. rst-class:: classref-method

:ref:`VBoxContainer<class_VBoxContainer>` **get_vbox**\ (\ ) :ref:`🔗<class_FileDialog_method_get_vbox>`

回傳對話框的垂直框容器，可以向其中新增自訂控制項。

\ **警告：**\ 這是一個必需的內部節點，移除和釋放它可能會導致崩潰。如果希望隱藏它或其任何子節點，請使用它們的 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 屬性。

\ **注意：**\ 原生檔案對話框會忽略對該節點的更改，請使用 :ref:`add_option()<class_FileDialog_method_add_option>` 向對話框新增自訂元素。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_invalidate:

.. rst-class:: classref-method

|void| **invalidate**\ (\ ) :ref:`🔗<class_FileDialog_method_invalidate>`

使該對話框的內容清單失效並更新。

\ **注意：**\ 該方法對原生檔案對話框不執行任何操作。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_is_customization_flag_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const| :ref:`🔗<class_FileDialog_method_is_customization_flag_enabled>`

如果指定的 ``flag`` 已啟用，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_popup_file_dialog:

.. rst-class:: classref-method

|void| **popup_file_dialog**\ (\ ) :ref:`🔗<class_FileDialog_method_popup_file_dialog>`

使用檔案對話框的預設大小和位置顯示該 **FileDialog**\ ，如果有目前檔案則選擇該檔名。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_customization_flag_enabled:

.. rst-class:: classref-method

|void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_FileDialog_method_set_customization_flag_enabled>`

設定指定的自訂標誌 ``flag``\ ，允許自訂該 **FileDialog** 的特性。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_favorite_list:

.. rst-class:: classref-method

|void| **set_favorite_list**\ (\ favorites\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |static| :ref:`🔗<class_FileDialog_method_set_favorite_list>`

設定所有 **FileDialog** 節點共享的收藏目錄清單。有利於恢復使用 :ref:`get_favorite_list()<class_FileDialog_method_get_favorite_list>` 儲存的收藏清單。該方法只能從主執行緒中呼叫。

\ **注意：**\ **FileDialog** 在可見性發生變化時會更新其內部的收藏清單 :ref:`ItemList<class_ItemList>`\ 。如果你希望你的更改生效，請務必提前呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_get_icon_callback:

.. rst-class:: classref-method

|void| **set_get_icon_callback**\ (\ callback\: :ref:`Callable<class_Callable>`\ ) |static| :ref:`🔗<class_FileDialog_method_set_get_icon_callback>`

設定 **FileDialog** 節點在使用 :ref:`DISPLAY_LIST<class_FileDialog_constant_DISPLAY_LIST>` 模式時取得檔案圖示所用的回呼函式。該回呼函式應接受一個 :ref:`String<class_String>` 型別的參數（檔案路徑），並回傳一個 :ref:`Texture2D<class_Texture2D>` 物件。如果回傳的紋理無效，則會改用 :ref:`file<class_FileDialog_theme_icon_file>` 圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_get_thumbnail_callback:

.. rst-class:: classref-method

|void| **set_get_thumbnail_callback**\ (\ callback\: :ref:`Callable<class_Callable>`\ ) |static| :ref:`🔗<class_FileDialog_method_set_get_thumbnail_callback>`

設定 **FileDialog** 節點在使用 :ref:`DISPLAY_THUMBNAILS<class_FileDialog_constant_DISPLAY_THUMBNAILS>` 模式時取得檔案圖示所用的回呼函式。該回呼函式應接受一個 :ref:`String<class_String>` 型別的參數（檔案路徑），並回傳一個 :ref:`Texture2D<class_Texture2D>` 物件。如果回傳的紋理無效，則會改用 :ref:`file_thumbnail<class_FileDialog_theme_icon_file_thumbnail>` 圖示。

縮略圖通常比較複雜，載入可能需要一些時間。為了避免應用程式卡頓，可以使用 :ref:`ImageTexture<class_ImageTexture>` 來非同步建立縮略圖。

::

    func _ready():
        FileDialog.set_get_thumbnail_callback(thumbnail_method)

    func thumbnail_method(path):
        var image_texture = ImageTexture.new()
        make_thumbnail_async(path, image_texture)
        return image_texture

    func make_thumbnail_async(path, image_texture):
        var thumbnail_texture = await generate_thumbnail(path) # 某種用於生成縮略圖的方法。
        image_texture.set_image(thumbnail_texture.get_image())

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_default:

.. rst-class:: classref-method

|void| **set_option_default**\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FileDialog_method_set_option_default>`

設定索引為 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 或 :ref:`CheckBox<class_CheckBox>` 的預設值索引。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_name:

.. rst-class:: classref-method

|void| **set_option_name**\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_method_set_option_name>`

設定索引為 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 或 :ref:`CheckBox<class_CheckBox>` 的名稱。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_values:

.. rst-class:: classref-method

|void| **set_option_values**\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileDialog_method_set_option_values>`

設定索引為 ``option`` 的 :ref:`OptionButton<class_OptionButton>` 的選項值。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_recent_list:

.. rst-class:: classref-method

|void| **set_recent_list**\ (\ recents\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |static| :ref:`🔗<class_FileDialog_method_set_recent_list>`

設定由所有 **FileDialog** 節點共享的最近存取目錄清單。有利於恢復使用 :ref:`set_recent_list()<class_FileDialog_method_set_recent_list>` 儲存的最近存取清單。該方法只能從主執行緒中呼叫。

\ **注意：**\ **FileDialog** 在其可見性改變時會更新其內部的最近目錄 :ref:`ItemList<class_ItemList>`\ 。如果你希望你的更改生效，請務必盡早呼叫該方法。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_FileDialog_theme_color_file_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **file_disabled_color** = ``Color(1, 1, 1, 0.25)`` :ref:`🔗<class_FileDialog_theme_color_file_disabled_color>`

停用檔的色調（當 **FileDialog** 在打開資料夾模式下使用時）。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_color_file_icon_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **file_icon_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FileDialog_theme_color_file_icon_color>`

套用於檔圖示的顏色調變。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_color_folder_icon_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **folder_icon_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FileDialog_theme_color_folder_icon_color>`

套用於資料夾圖示的顏色調變。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_constant_thumbnail_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **thumbnail_size** = ``64`` :ref:`🔗<class_FileDialog_theme_constant_thumbnail_size>`

啟用 :ref:`DISPLAY_THUMBNAILS<class_FileDialog_constant_DISPLAY_THUMBNAILS>` 時的縮略圖圖示大小。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_back_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **back_folder** :ref:`🔗<class_FileDialog_theme_icon_back_folder>`

向後箭頭的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_create_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **create_folder** :ref:`🔗<class_FileDialog_theme_icon_create_folder>`

用於建立資料夾按鈕的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite** :ref:`🔗<class_FileDialog_theme_icon_favorite>`

收藏資料夾按鈕得自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite_down** :ref:`🔗<class_FileDialog_theme_icon_favorite_down>`

將收藏項向下移動的按鈕的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite_up** :ref:`🔗<class_FileDialog_theme_icon_favorite_up>`

將收藏項向上移動的按鈕的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_file:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **file** :ref:`🔗<class_FileDialog_theme_icon_file>`

檔的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_file_thumbnail:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **file_thumbnail** :ref:`🔗<class_FileDialog_theme_icon_file_thumbnail>`

縮略圖模式下，檔案的圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folder** :ref:`🔗<class_FileDialog_theme_icon_folder>`

資料夾的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_folder_thumbnail:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folder_thumbnail** :ref:`🔗<class_FileDialog_theme_icon_folder_thumbnail>`

縮略圖模式下，資料夾的圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_forward_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **forward_folder** :ref:`🔗<class_FileDialog_theme_icon_forward_folder>`

向前箭頭的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_list_mode:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **list_mode** :ref:`🔗<class_FileDialog_theme_icon_list_mode>`

用來啟用清單模式的按鈕的圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_menu_copy_path:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_copy_path** :ref:`🔗<class_FileDialog_theme_icon_menu_copy_path>`

"複製路徑"情境選單選項的圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_menu_delete:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_delete** :ref:`🔗<class_FileDialog_theme_icon_menu_delete>`

"刪除"情境選單選項的圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_menu_new_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_new_folder** :ref:`🔗<class_FileDialog_theme_icon_menu_new_folder>`

“新建資料夾...”情境選單選項的圖示。通常它應與 :ref:`create_folder<class_FileDialog_theme_icon_create_folder>` 保持一致；如果你希望情境選單不顯示圖示，請將其留空。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_menu_open_bundle:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_open_bundle** :ref:`🔗<class_FileDialog_theme_icon_menu_open_bundle>`

“顯示包內容”情境選單選項的圖示。該選項僅針對 macOS 套件顯示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_menu_refresh:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_refresh** :ref:`🔗<class_FileDialog_theme_icon_menu_refresh>`

“刷新”情境選單選項的圖示。通常它應與 :ref:`reload<class_FileDialog_theme_icon_reload>` 保持一致；如果你希望情境選單不顯示圖示，請將其留空。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_menu_show_in_file_manager:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_show_in_file_manager** :ref:`🔗<class_FileDialog_theme_icon_menu_show_in_file_manager>`

“在檔案管理器中顯示”情境選單選項的圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_parent_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **parent_folder** :ref:`🔗<class_FileDialog_theme_icon_parent_folder>`

父資料夾箭頭的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_reload:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **reload** :ref:`🔗<class_FileDialog_theme_icon_reload>`

重新載入按鈕的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_sort:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sort** :ref:`🔗<class_FileDialog_theme_icon_sort>`

排序選項按鈕的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_thumbnail_mode:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **thumbnail_mode** :ref:`🔗<class_FileDialog_theme_icon_thumbnail_mode>`

用來啟用縮略圖模式的按鈕的圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_toggle_filename_filter:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **toggle_filename_filter** :ref:`🔗<class_FileDialog_theme_icon_toggle_filename_filter>`

切換隱藏檔名篩選器的自訂圖示。

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_toggle_hidden:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **toggle_hidden** :ref:`🔗<class_FileDialog_theme_icon_toggle_hidden>`

切換隱藏按鈕的自訂圖示。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
