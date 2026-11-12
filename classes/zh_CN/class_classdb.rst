:github_url: hide

.. _class_ClassDB:

ClassDB
=======

**继承：** :ref:`Object<class_Object>`

类信息的存储库。

.. rst-class:: classref-introduction-group

描述
----

提供对引擎中所有可用类的元数据的访问。

\ **注意：**\ 脚本使用 ``class_name`` 定义的类并不属于 **ClassDB**\ ，因此不会返回方法列表、属性列表等反射数据。不过 :ref:`GDExtension<class_GDExtension>` 定义的类\ *属于* **ClassDB**\ ，因此会返回反射数据。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_instantiate<class_ClassDB_method_can_instantiate>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_call_static<class_ClassDB_method_class_call_static>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_exists<class_ClassDB_method_class_exists>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`APIType<enum_ClassDB_APIType>`                             | :ref:`class_get_api_type<class_ClassDB_method_class_get_api_type>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_enum_constants<class_ClassDB_method_class_get_enum_constants>`\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_enum_list<class_ClassDB_method_class_get_enum_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`class_get_integer_constant<class_ClassDB_method_class_get_integer_constant>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_integer_constant_enum<class_ClassDB_method_class_get_integer_constant_enum>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_integer_constant_list<class_ClassDB_method_class_get_integer_constant_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`class_get_method_argument_count<class_ClassDB_method_class_get_method_argument_count>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_method_list<class_ClassDB_method_class_get_method_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_get_property<class_ClassDB_method_class_get_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                  |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_get_property_default_value<class_ClassDB_method_class_get_property_default_value>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_property_getter<class_ClassDB_method_class_get_property_getter>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ )                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_property_list<class_ClassDB_method_class_get_property_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_property_setter<class_ClassDB_method_class_get_property_setter>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ )                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`class_get_signal<class_ClassDB_method_class_get_signal>`\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_signal_list<class_ClassDB_method_class_get_signal_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_enum<class_ClassDB_method_class_has_enum>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_integer_constant<class_ClassDB_method_class_has_integer_constant>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_method<class_ClassDB_method_class_has_method>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_signal<class_ClassDB_method_class_has_signal>`\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`class_set_property<class_ClassDB_method_class_set_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |const|                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_class_list<class_ClassDB_method_get_class_list>`\ (\ ) |const|                                                                                                                                                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_inheriters_from_class<class_ClassDB_method_get_inheriters_from_class>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_parent_class<class_ClassDB_method_get_parent_class>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`instantiate<class_ClassDB_method_instantiate>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_enabled<class_ClassDB_method_is_class_enabled>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_enum_bitfield<class_ClassDB_method_is_class_enum_bitfield>`\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_exposed<class_ClassDB_method_is_class_exposed>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_parent_class<class_ClassDB_method_is_parent_class>`\ (\ class\: :ref:`StringName<class_StringName>`, inherits\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_ClassDB_APIType:

.. rst-class:: classref-enumeration

enum **APIType**: :ref:`🔗<enum_ClassDB_APIType>`

.. _class_ClassDB_constant_API_CORE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_CORE** = ``0``

原生核心类型。

.. _class_ClassDB_constant_API_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR** = ``1``

原生编辑器类型。

.. _class_ClassDB_constant_API_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EXTENSION** = ``2``

GDExtension 类型。

.. _class_ClassDB_constant_API_EDITOR_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR_EXTENSION** = ``3``

GDExtension 编辑器类型。

.. _class_ClassDB_constant_API_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_NONE** = ``4``

未知类型。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ClassDB_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_can_instantiate>`

如果可以从指定的 ``class`` 实例化对象，则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_call_static:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_call_static**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_ClassDB_method_class_call_static>`

调用类的静态方法。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_exists**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_exists>`

返回 ``class`` 类是否可用。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_api_type:

.. rst-class:: classref-method

:ref:`APIType<enum_ClassDB_APIType>` **class_get_api_type**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_api_type>`

返回 ``class`` 类的 API 类型。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_constants:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_constants**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_constants>`

返回一个数组，其中包含 ``class`` 或其祖先的 ``enum`` 中的所有键。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_list>`

返回一个数组，其中包含 ``class`` 或其祖先的所有枚举。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant>`

返回 ``class`` 或其父级的整数常量值 ``name``\ 。如果找不到该常量，则总是返回0。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_enum:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_integer_constant_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_enum>`

返回 ``class`` 或其祖先的整数常量 ``name`` 所属的枚举。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_integer_constant_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_list>`

返回包含 ``class`` 或其父级全部整数常量的名称数组。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_method_argument_count**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_argument_count>`

如果 ``no_inheritance`` 为 ``false``\ ，则返回 ``class`` 或其祖先的方法 ``method`` 的参数数量。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_method_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_list>`

如果 ``no_inheritance`` 为 ``false``\ ，则返回包含 ``class`` 或其祖先的所有方法的数组。数组的每个元素都是一个 :ref:`Dictionary<class_Dictionary>`\ ，包含以下键：\ ``args``\ 、\ ``default_args``\ 、\ ``flags``\ 、\ ``id``\ 、\ ``name``\ 、\ ``return: (class_name, hint, hint_string, name, type, usage)``\ 。

\ **注意：**\ 在导出的发布版本中，调试信息不可用，因此返回的字典将仅包含方法名称。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property>`

返回 ``object`` 或其父级 ``property`` 的属性值。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property_default_value**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_default_value>`

返回 ``class`` 或其祖先类的 ``property`` 的默认值。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_getter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_getter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_getter>`

返回 ``class`` 类中 ``property`` 属性的 getter 方法名。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_property_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_list>`

如果 ``no_inheritance`` 为 ``false``\ ，则返回包含 ``class`` 或其祖先的所有属性的数组。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_setter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_setter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_setter>`

返回 ``class`` 类中 ``property`` 属性的 setter 方法名。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **class_get_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal>`

返回 ``class`` 或其祖先的 ``signal`` 数据。返回值是具有以下键的 :ref:`Dictionary<class_Dictionary>`\ ：\ ``args``\ 、\ ``default_args``\ 、\ ``flags``\ 、\ ``id``\ 、\ ``name``\ 、\ ``return: (class_name, hint, hint_string, name, type, usage)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_signal_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal_list>`

如果 ``no_inheritance`` 为 ``false``\ ，则返回包含 ``class`` 或其祖先的所有信号的数组。数组的每个元素都是一个如 :ref:`class_get_signal()<class_ClassDB_method_class_get_signal>` 中所述的 :ref:`Dictionary<class_Dictionary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_enum:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_enum>`

返回类 ``class`` 或其祖类是否有名为 ``name`` 的枚举。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_integer_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_integer_constant>`

返回类 ``class`` 或其祖类是否有名为 ``name`` 的整数常量。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_method**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_method>`

返回类 ``class`` 是否有名为 ``method`` 的方法（如果 ``no_inheritance`` 为 ``false`` 则还会检查其祖类）。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_signal>`

返回类 ``class`` 或其祖类是否有名为 ``signal`` 的信号。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_set_property:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **class_set_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_set_property>`

将对象 ``object`` 的 ``property`` 属性值设置为 ``value``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_class_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_class_list**\ (\ ) |const| :ref:`🔗<class_ClassDB_method_get_class_list>`

返回引擎中所有可用类的名称。

\ **注意：**\ 列表中不包含脚本使用 ``class_name`` 定义的类。请使用 :ref:`ProjectSettings.get_global_class_list()<class_ProjectSettings_method_get_global_class_list>` 获取脚本定义的类的列表。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_inheriters_from_class:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_inheriters_from_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_inheriters_from_class>`

返回引擎中所有直接或间接继承自 ``class`` 的类的名称。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_parent_class:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_parent_class>`

返回 ``class`` 的父类。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_instantiate:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_instantiate>`

创建 ``class`` 的实例。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enabled**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enabled>`

返回这个 ``class`` 是否已启用。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enum_bitfield:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enum_bitfield**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enum_bitfield>`

返回类 ``class`` 是否有名为 ``enum`` 的位域枚举（如果 ``no_inheritance`` 为 ``false`` 则还会检查其祖类）。

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_exposed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_exposed**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_exposed>`

Returns whether this ``class`` is exposed or not.

Godot uses internal and platform specific classes at run time. **ClassDB** is able to work with those and lists them like any other class. This method can be used to filter them out if your use-case requires it.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_parent_class:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`, inherits\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_parent_class>`

返回 ``inherits`` 是否为 ``class`` 的祖先。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
