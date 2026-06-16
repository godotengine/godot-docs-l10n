:github_url: hide

.. _class_EditorResourcePicker:

EditorResourcePicker
====================

**继承：** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`EditorScriptPicker<class_EditorScriptPicker>`

Godot 编辑器用于选择 :ref:`Resource<class_Resource>` 类型属性的控件。

.. rst-class:: classref-introduction-group

描述
----

此 :ref:`Control<class_Control>` 节点用于编辑器的属性检查器以允许编辑 :ref:`Resource<class_Resource>` 类型属性。它提供了创建、加载、保存和转换资源的选项。可以与 :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` 检查器插件一起使用以重新创建相同的行为。

\ **注意：**\ 这个 :ref:`Control<class_Control>` 不包括资源的任何编辑器，因为编辑是由属性检查器本身或子检查器控制的。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`     | :ref:`base_type<class_EditorResourcePicker_property_base_type>`             | ``""``    |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`editable<class_EditorResourcePicker_property_editable>`               | ``true``  |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Resource<class_Resource>` | :ref:`edited_resource<class_EditorResourcePicker_property_edited_resource>` |           |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`toggle_mode<class_EditorResourcePicker_property_toggle_mode>`         | ``false`` |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handle_menu_selected<class_EditorResourcePicker_private_method__handle_menu_selected>`\ (\ id\: :ref:`int<class_int>`\ ) |virtual|          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_set_create_options<class_EditorResourcePicker_private_method__set_create_options>`\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_allowed_types<class_EditorResourcePicker_method_get_allowed_types>`\ (\ ) |const|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_toggle_pressed<class_EditorResourcePicker_method_set_toggle_pressed>`\ (\ pressed\: :ref:`bool<class_bool>`\ )                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_EditorResourcePicker_signal_resource_changed:

.. rst-class:: classref-signal

**resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_changed>`

当正在编辑的资源改变值时发出。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, inspect\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_selected>`

当资源值被设置，并且用户点击它编辑时触发。当 ``inspect`` 为 ``true`` 时，该信号是由上下文菜单“编辑”或“检查”选项引起的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_EditorResourcePicker_property_base_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_type** = ``""`` :ref:`🔗<class_EditorResourcePicker_property_base_type>`

.. rst-class:: classref-property-setget

- |void| **set_base_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_type**\ (\ )

允许资源类型的基本类型。可以是几个选项的逗号分离列表。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_EditorResourcePicker_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

如果为 ``true``\ ，则可以选择和编辑该值。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_edited_resource:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **edited_resource** :ref:`🔗<class_EditorResourcePicker_property_edited_resource>`

.. rst-class:: classref-property-setget

- |void| **set_edited_resource**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_edited_resource**\ (\ )

已编辑的资源值。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_toggle_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **toggle_mode** = ``false`` :ref:`🔗<class_EditorResourcePicker_property_toggle_mode>`

.. rst-class:: classref-property-setget

- |void| **set_toggle_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_toggle_mode**\ (\ )

如果为 ``true``\ ，带有资源预览的主按钮在切换模式下工作。使用 :ref:`set_toggle_pressed()<class_EditorResourcePicker_method_set_toggle_pressed>` 来手动设置状态。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorResourcePicker_private_method__handle_menu_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handle_menu_selected**\ (\ id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__handle_menu_selected>`

该虚方法可以被实现，以处理默认未处理的上下文菜单项目。请参阅 :ref:`_set_create_options()<class_EditorResourcePicker_private_method__set_create_options>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_private_method__set_create_options:

.. rst-class:: classref-method

|void| **_set_create_options**\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__set_create_options>`

该虚方法会在更新 :ref:`editable<class_EditorResourcePicker_property_editable>` **EditorResourcePicker** 的上下文菜单时调用。实现该方法可使用你自己的选项覆盖“新建”项部分。\ ``menu_node`` 是对 :ref:`PopupMenu<class_PopupMenu>` 节点的引用。

\ **注意：**\ 实现 :ref:`_handle_menu_selected()<class_EditorResourcePicker_private_method__handle_menu_selected>` 来处理这些自定义项。

\ **注意：**\ 相关的内置选项（“加载”、“复制”、“粘贴”等）之后会使用从 ``0`` 开始的硬编码 ID，自动添加到 ``menu_node`` 中。自定义选项需要使用不冲突的 ID 才能被正确处理。使用 ``id = 100 + custom_option_index`` 是安全的（“新建”部分中的默认项就是使用这种方式）。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_get_allowed_types:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_allowed_types**\ (\ ) |const| :ref:`🔗<class_EditorResourcePicker_method_get_allowed_types>`

返回一个与 :ref:`base_type<class_EditorResourcePicker_property_base_type>` 对应的所有允许的类型和子类型的列表。如果 :ref:`base_type<class_EditorResourcePicker_property_base_type>` 是空，将返回一个空的列表。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_set_toggle_pressed:

.. rst-class:: classref-method

|void| **set_toggle_pressed**\ (\ pressed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_method_set_toggle_pressed>`

设置主按钮的切换模式状态。只有当 :ref:`toggle_mode<class_EditorResourcePicker_property_toggle_mode>` 被设置为 ``true`` 时才起作用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
