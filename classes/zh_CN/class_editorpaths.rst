:github_url: hide

.. _class_EditorPaths:

EditorPaths
===========

**继承：** :ref:`Object<class_Object>`

编辑器专用单例，返回特定于操作系统的各种数据文件夹和文件的路径。

.. rst-class:: classref-introduction-group

描述
----

这个仅供编辑器使用的单例，可返回特定于操作系统的，到各种数据文件夹和文件的路径。它可以在编辑器插件中使用，以确保文件被保存在各个操作系统的正确位置。

\ **注意：**\ 这个单例在导出的项目中是不可访问的。尝试在导出的项目中访问它会产生脚本错误，因为该单例没有被声明。为防止导出项目中出现脚本错误，请使用 :ref:`Engine.has_singleton()<class_Engine_method_has_singleton>` 检查单例是否可用后再使用该单例。

\ **注意：**\ 在 Linux/BSD 平台上，Godot 遵守 `XDG 基本目录规范 <https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html>`__\ 。可以按照规范覆盖环境变量，来更改编辑器和项目数据路径。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`Godot 项目中的文件路径 <../tutorials/io/data_paths>`

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

方法说明
--------

.. _class_EditorPaths_method_get_cache_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_cache_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_cache_dir>`

返回用户缓存文件夹的绝对路径。该文件夹应该用于临时数据，关闭编辑器时应该能够安全地移除这些数据（例如生成的资源预览图）。

\ **各平台的默认路径：**\ 

.. code:: text

    - Windows: %LOCALAPPDATA%\Godot\
    - macOS: ~/Library/Caches/Godot/
    - Linux: ~/.cache/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_config_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_config_dir>`

返回用户配置文件夹的绝对路径。该文件夹应该用于\ *持久化*\ 的用户配置文件。

\ **各平台的默认路径：**\ 

.. code:: text

    - Windows: %APPDATA%\Godot\                    （同 `get_data_dir()`）
    - macOS: ~/Library/Application Support/Godot/  （同 `get_data_dir()`）
    - Linux: ~/.config/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_data_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_data_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_data_dir>`

返回用户数据文件夹的绝对路径。该文件夹应该用于\ *持久化*\ 的用户数据文件，例如已安装的导出模板。

\ **各平台的默认路径：**\ 

.. code:: text

    - Windows：%APPDATA%\Godot\                    （同 `get_config_dir()` ）
    - macOS：~/Library/Application Support/Godot/  （同 `get_config_dir()` ）
    - Linux：~/.local/share/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_project_settings_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_project_settings_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_project_settings_dir>`

返回针对项目的编辑器设置路径。各个项目在设置路径中都有一个独立的子目录，用于保存针对项目的编辑器设置。

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_self_contained_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_self_contained_file**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_self_contained_file>`

返回自包含文件的绝对路径，该文件会使当前 Godot 编辑器实例被视为是自包含的。如果当前 Godot 编辑器实例不是自包含的，则返回一个空字符串。另见 :ref:`is_self_contained()<class_EditorPaths_method_is_self_contained>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_is_self_contained:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_self_contained**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_is_self_contained>`

如果编辑器被标记为是自包含的，则返回 ``true``\ ，否则返回 ``false``\ 。启用自包含模式后，用户配置、数据和缓存文件将保被存在编辑器二进制文件旁边的 ``editor_data/`` 文件夹中。这使得便携使用更容易，并确保 Godot 编辑器最大限度地减少将文件写入到它自己的文件夹之外的情况。自包含模式不适用于导出的项目。

当编辑器未运行时，可以通过在与编辑器二进制文件或 macOS .app 捆绑包相同的文件夹中创建名为 ``._sc_`` 或 ``_sc_`` 的文件来启用自包含模式。另见 :ref:`get_self_contained_file()<class_EditorPaths_method_get_self_contained_file>`\ 。

\ **注意：**\ 在 macOS 上，应当在使用自包含模式前手动移除隔离标志，见\ `《在 macOS 上运行》 <https://docs.godotengine.org/en/stable/tutorials/export/running_on_macos.html>`__\ 。

\ **注意：**\ 在 macOS 上，将 ``_sc_`` 或任何其他文件放入 .app 捆绑包中会破坏其数字签名，使其不再便携，请考虑改为放在与 .app 捆绑包相同的文件夹中。

\ **注意：**\ Godot 的 Steam 版本默认使用自包含模式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
