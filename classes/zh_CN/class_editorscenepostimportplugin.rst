:github_url: hide

.. _class_EditorScenePostImportPlugin:

EditorScenePostImportPlugin
===========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于控制和修改导入场景的过程的插件。

.. rst-class:: classref-introduction-group

描述
----

这种插件类型的存在是为了修改导入场景的处理，允许在处理的每个阶段更改内容以及添加导入器选项。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_get_import_options<class_EditorScenePostImportPlugin_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                 |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_get_internal_import_options<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`\ (\ category\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                                                                                                                                                 |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_internal_option_update_view_required<class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required>`\ (\ category\: :ref:`int<class_int>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                         |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_internal_option_visibility<class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility>`\ (\ category\: :ref:`int<class_int>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                    |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_option_visibility<class_EditorScenePostImportPlugin_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                    |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_internal_process<class_EditorScenePostImportPlugin_private_method__internal_process>`\ (\ category\: :ref:`int<class_int>`, base_node\: :ref:`Node<class_Node>`, node\: :ref:`Node<class_Node>`, resource\: :ref:`Resource<class_Resource>`\ ) |virtual|                                                                                                                                                      |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_post_process<class_EditorScenePostImportPlugin_private_method__post_process>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                                                                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_pre_process<class_EditorScenePostImportPlugin_private_method__pre_process>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_import_option<class_EditorScenePostImportPlugin_method_add_import_option>`\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_import_option_advanced<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_option_value<class_EditorScenePostImportPlugin_method_get_option_value>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                         |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_EditorScenePostImportPlugin_InternalImportCategory:

.. rst-class:: classref-enumeration

enum **InternalImportCategory**: :ref:`🔗<enum_EditorScenePostImportPlugin_InternalImportCategory>`

.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_NODE** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MESH** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MATERIAL:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MATERIAL** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_ANIMATION** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE** = ``5``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE** = ``6``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MAX** = ``7``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorScenePostImportPlugin_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_import_options>`

覆盖以添加常规导入选项。这些将出现在编辑器的主导入停靠面板中。通过 :ref:`add_import_option()<class_EditorScenePostImportPlugin_method_add_import_option>` 和 :ref:`add_import_option_advanced()<class_EditorScenePostImportPlugin_method_add_import_option_advanced>` 添加选项。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_import_options:

.. rst-class:: classref-method

|void| **_get_internal_import_options**\ (\ category\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`

覆盖以添加内部导入选项。这些将出现在 3D 场景导入对话框中。通过 :ref:`add_import_option()<class_EditorScenePostImportPlugin_method_add_import_option>` 和 :ref:`add_import_option_advanced()<class_EditorScenePostImportPlugin_method_add_import_option_advanced>` 添加选项。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_internal_option_update_view_required**\ (\ category\: :ref:`int<class_int>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required>`

返回在选项已更改时是否需要更新导入对话框的 3D 视图，若更新则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_internal_option_visibility**\ (\ category\: :ref:`int<class_int>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility>`

显示给定的选项应返回 ``true``\ ，隐藏给定的选项应返回 ``false``\ ，忽略应返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_option_visibility>`

显示给定的选项应返回 ``true``\ ，隐藏给定的选项应返回 ``false``\ ，忽略应返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__internal_process:

.. rst-class:: classref-method

|void| **_internal_process**\ (\ category\: :ref:`int<class_int>`, base_node\: :ref:`Node<class_Node>`, node\: :ref:`Node<class_Node>`, resource\: :ref:`Resource<class_Resource>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__internal_process>`

处理给定类别的特定节点或资源。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__post_process:

.. rst-class:: classref-method

|void| **_post_process**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__post_process>`

对场景进行后期处理。该方法会在最终场景配置完成后调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__pre_process:

.. rst-class:: classref-method

|void| **_pre_process**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__pre_process>`

对场景进行预处理。场景格式加载器加载场景后会立即调用该函数，此时尚未进行任何更改。

预处理可用于调整 ``"nodes"``\ 、\ ``"meshes"``\ 、\ ``"animations"``\ 、\ ``"materials"`` 等内部导入选项，这些字段位于 ``get_option_value("_subresources")`` 中。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorScenePostImportPlugin_method_add_import_option>`

添加特定的导入选项（仅限名称和默认值）。该函数只能从 :ref:`_get_import_options()<class_EditorScenePostImportPlugin_private_method__get_import_options>` 和 :ref:`_get_internal_import_options()<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>` 被调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`

添加特定的导入选项。该函数只能从 :ref:`_get_import_options()<class_EditorScenePostImportPlugin_private_method__get_import_options>` 和 :ref:`_get_internal_import_options()<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>` 被调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_get_option_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_option_value**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorScenePostImportPlugin_method_get_option_value>`

查询选项的值。该函数只能从查询可见性的函数或处理函数中被调用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
