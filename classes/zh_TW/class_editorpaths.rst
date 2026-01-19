:github_url: hide

.. _class_EditorPaths:

EditorPaths
===========

**繼承：** :ref:`Object<class_Object>`

編輯器專用單例，返回特定於作業系統的各種資料檔案夾和檔的路徑。

.. rst-class:: classref-introduction-group

說明
----

這個僅供編輯器使用的單例，可返回特定於作業系統的，到各種資料檔案夾和檔的路徑。它可以在編輯器外掛程式中使用，以確保檔被保存在各個作業系統的正確位置。

\ **注意：**\ 這個單例在匯出的專案中是不可存取的。嘗試在匯出的專案中存取它會產生腳本錯誤，因為該單例沒有被宣告。為防止匯出專案中出現腳本錯誤，請使用 :ref:`Engine.has_singleton()<class_Engine_method_has_singleton>` 檢查單例是否可用後再使用該單例。

\ **注意：**\ 在 Linux/BSD 平臺上，Godot 遵守 `XDG 基本目錄規範 <https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html>`__\ 。可以按照規範覆蓋環境變數，來更改編輯器和專案資料路徑。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`Godot 專案中的檔路徑 <../tutorials/io/data_paths>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_cache_dir<class_EditorPaths_method_get_cache_dir>`\ (\ ) |const|                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_config_dir<class_EditorPaths_method_get_config_dir>`\ (\ ) |const|                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_data_dir<class_EditorPaths_method_get_data_dir>`\ (\ ) |const|                         |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_project_settings_dir<class_EditorPaths_method_get_project_settings_dir>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_self_contained_file<class_EditorPaths_method_get_self_contained_file>`\ (\ ) |const|   |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_self_contained<class_EditorPaths_method_is_self_contained>`\ (\ ) |const|               |
   +-----------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorPaths_method_get_cache_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_cache_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_cache_dir>`

Returns the absolute path to the user's cache folder. This folder should be used for temporary data that can be removed safely whenever the editor is closed (such as generated resource thumbnails).

\ **Default paths per platform:**\ 

.. code:: text

    - Windows: %LOCALAPPDATA%\Godot\
    - macOS: ~/Library/Caches/Godot/
    - Linux: ~/.cache/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_config_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_config_dir>`

Returns the absolute path to the user's configuration folder. This folder should be used for *persistent* user configuration files.

\ **Default paths per platform:**\ 

.. code:: text

    - Windows: %APPDATA%\Godot\                    (same as `get_data_dir()`)
    - macOS: ~/Library/Application Support/Godot/  (same as `get_data_dir()`)
    - Linux: ~/.config/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_data_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_data_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_data_dir>`

Returns the absolute path to the user's data folder. This folder should be used for *persistent* user data files such as installed export templates.

\ **Default paths per platform:**\ 

.. code:: text

    - Windows: %APPDATA%\Godot\                    (same as `get_config_dir()`)
    - macOS: ~/Library/Application Support/Godot/  (same as `get_config_dir()`)
    - Linux: ~/.local/share/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_project_settings_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_project_settings_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_project_settings_dir>`

Returns the relative path to the editor settings for this project. This is usually ``"res://.godot/editor"``. Projects all have a unique subdirectory inside the settings path where project-specific editor settings are saved.

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_self_contained_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_self_contained_file**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_self_contained_file>`

返回自包含檔的絕對路徑，該檔會使目前 Godot 編輯器實例被視為是自包含的。如果目前 Godot 編輯器實例不是自包含的，則返回一個空字串。另見 :ref:`is_self_contained()<class_EditorPaths_method_is_self_contained>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_is_self_contained:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_self_contained**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_is_self_contained>`

如果編輯器被標記為是自包含的，則返回 ``true``\ ，否則返回 ``false``\ 。啟用自包含模式後，使用者配置、資料和快取檔案將保被存在編輯器二進位檔案旁邊的 ``editor_data/`` 資料夾中。這使得便攜使用更容易，並確保 Godot 編輯器最大限度地減少將檔寫入到它自己的資料夾之外的情況。自包含模式不適用於匯出的專案。

當編輯器未運作時，可以通過在與編輯器二進位檔案或 macOS .app 組合包相同的檔案夾中建立名為 ``._sc_`` 或 ``_sc_`` 的檔來啟用自包含模式。另見 :ref:`get_self_contained_file()<class_EditorPaths_method_get_self_contained_file>`\ 。

\ **注意：**\ 在 macOS 上，應當在使用自包含模式前手動移除隔離旗標，見\ `《在 macOS 上運作》 <https://docs.godotengine.org/en/stable/tutorials/export/running_on_macos.html>`__\ 。

\ **注意：**\ 在 macOS 上，將 ``_sc_`` 或任何其他檔案放入 .app 組合包中會破壞其數位簽章，使其不再便攜，請考慮改為放在與 .app 組合包相同的資料夾中。

\ **注意：**\ Godot 的 Steam 版本預設使用自包含模式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
