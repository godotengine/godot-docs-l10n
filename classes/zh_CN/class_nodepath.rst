:github_url: hide

.. _class_NodePath:

NodePath
========

预先解析的场景树路径。

.. rst-class:: classref-introduction-group

描述
----

**NodePath** 即“节点路径”，是一种内置的 :ref:`Variant<class_Variant>` 类型，代表节点层次结构中指向某个节点或属性的路径。可以用来将路径高效地传递给许多内置方法（例如 :ref:`Node.get_node()<class_Node_method_get_node>`\ 、\ :ref:`Object.set_indexed()<class_Object_method_set_indexed>`\ 、\ :ref:`Tween.tween_property()<class_Tween_method_tween_property>` 等），实现与被指向的节点或属性的解耦。

节点的路径可以用 :ref:`String<class_String>` 来表示，其中包含了由斜杠（\ ``/``\ ）分隔的节点名称以及由英文冒号（\ ``:``\ ）分隔的属性名称（也叫“子名称”）。与文件系统路径类似，\ ``".."`` 和 ``"."`` 都是特殊的节点名称，分别指向父节点和当前节点。

以下示例都是相对于当前节点的路径：

::

    ^"A"     # 指向直接子节点 A。
    ^"A/B"   # 指向 A 的子节点 B。
    ^"."     # 指向当前节点。
    ^".."    # 指向父节点。
    ^"../C"  # 指向同级节点 C。
    ^"../.." # 指向祖父节点。

以斜杠开头的路径是绝对路径，路径从 :ref:`SceneTree<class_SceneTree>` 开始：

::

    ^"/root"            # 指向 SceneTree 的根 Window。
    ^"/root/Title"      # 可能指向主场景的根节点，名叫“Title”。
    ^"/root/Global"     # 可能指向名叫“Global”的自动加载节点或场景。

虽然名字里说的是“节点”，但是节点路径也可以指向属性：

::

    ^":position"           # 指向该对象的位置。
    ^":position:x"         # 指向该对象在 X 轴的位置。
    ^"Camera3D:rotation:y" # 指向 Camera3D 子节点及其 Y 轴旋转。
    ^"/root:size:x"        # 指向根 Window 及其宽度。

在某些情况下，指向对象属性时可以省略前导 ``:``\ 。例如，\ :ref:`Object.set_indexed()<class_Object_method_set_indexed>` 和 :ref:`Tween.tween_property()<class_Tween_method_tween_property>` 就是这种情况，因为这些方法在后台调用 :ref:`get_as_property_path()<class_NodePath_method_get_as_property_path>`\ 。但是，通常建议保留 ``:`` 前缀。

节点路径无法检查自身的有效性，可能指向不存在的节点或属性。具体含义完全由使用场合决定。

通常无需关心 **NodePath** 类型，字符串会在必要时自动转换为这个类型。但在某些情况下也会需要定义节点路径。例如利用导出的 **NodePath** 属性可以很方便地在当前编辑的场景中选择节点。场景树编辑器中节点发生移动、重命名、删除时，节点路径也会自动更新。另见 :ref:`@GDScript.@export_node_path<class_@GDScript_annotation_@export_node_path>`\ 。

另见 :ref:`StringName<class_StringName>`\ ，这是一种针对字符串优化的相似的类型。

\ **注意：**\ 在布尔环境中，\ **NodePath** 为空时取值为 ``false``\ （\ ``NodePath("")``\ ）。否则 **NodePath** 始终为 ``true``\ 。

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `2D 角色扮演游戏（RPG）演示 <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ )                                         |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`String<class_String>`\ )     |
   +---------------------------------+----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`get_as_property_path<class_NodePath_method_get_as_property_path>`\ (\ ) |const|                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_names<class_NodePath_method_get_concatenated_names>`\ (\ ) |const|                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_subnames<class_NodePath_method_get_concatenated_subnames>`\ (\ ) |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_NodePath_method_get_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_name_count<class_NodePath_method_get_name_count>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_subname<class_NodePath_method_get_subname>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_subname_count<class_NodePath_method_get_subname_count>`\ (\ ) |const|                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_NodePath_method_hash>`\ (\ ) |const|                                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_absolute<class_NodePath_method_is_absolute>`\ (\ ) |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_NodePath_method_is_empty>`\ (\ ) |const|                                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`slice<class_NodePath_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_NodePath_operator_neq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_NodePath_operator_eq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_NodePath_constructor_NodePath:

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ ) :ref:`🔗<class_NodePath_constructor_NodePath>`

构造空的 **NodePath**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`NodePath<class_NodePath>`\ )

构造一个 **NodePath** 作为给定 **NodePath** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`String<class_String>`\ )

从 :ref:`String<class_String>` 构造 **NodePath**\ 。如果以斜杠为前缀，则创建的路径是绝对路径（请参阅 :ref:`is_absolute()<class_NodePath_method_is_absolute>`\ ）。

在到目标节点的路径后可以选择包含“子名称”，它可以指向属性，也可以被嵌套。

下面的字符串是有效的节点路径：

::

    # 指向 Sprite2D 节点。
    "Level/RigidBody2D/Sprite2D"

    # 指向 Sprite2D 节点及其“纹理（texture）”资源。
    # get_node() 将检索 Sprite2D，而 get_node_and_resource()
    # 将同时检索该 Sprite2D 节点和其“纹理（texture）”资源。
    "Level/RigidBody2D/Sprite2D:texture"

    # 指向 Sprite2D 节点及其“位置（position）”属性。
    "Level/RigidBody2D/Sprite2D:position"

    # 指向 Sprite2D 节点及其“位置（position）”属性的 “x” 分量。
    "Level/RigidBody2D/Sprite2D:position:x"

    # 指向 RigidBody2D 节点作为从 SceneTree 开始的绝对路径。
    "/root/Level/RigidBody2D"

\ **注意：**\ 在 GDScript 中，也可以通过在常量字符串前面加上 ``^`` 前缀，来将常量字符串转换为节点路径。\ ``^"path/to/node"`` 相当于 ``NodePath("path/to/node")``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_NodePath_method_get_as_property_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_as_property_path**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_as_property_path>`

返回该节点路径带有冒号字符（\ ``:``\ ）前缀的副本，将其转换为没有节点名称的纯属性路径（相对于当前节点）。


.. tabs::

 .. code-tab:: gdscript

    # node_path 指向名为 “position” 的子节点的 “x” 属性。
    var node_path = ^"position:x"

    # property_path 指向该节点在 “x” 轴上的 “position”。
    var property_path = node_path.get_as_property_path()
    print(property_path) # 输出“:position:x”

 .. code-tab:: csharp

    // node_path 指向名为 “position” 的子节点的 “x” 属性。
    var nodePath = new NodePath("position:x");

    // property_path 指向该节点在 “x” 轴上的 “position”。
    NodePath propertyPath = nodePath.GetAsPropertyPath();
    GD.Print(propertyPath); // 输出“:position:x”



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_names**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_names>`

将与斜杠字符（\ ``/``\ ）连接的所有节点名称作为单个 :ref:`StringName<class_StringName>` 返回。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_subnames:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_subnames**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_subnames>`

将与英文冒号字符（\ ``:``\ ）连接的所有属性子名称作为单个 :ref:`StringName<class_StringName>` 返回。


.. tabs::

 .. code-tab:: gdscript

    var node_path = ^"Sprite2D:texture:resource_name"
    print(node_path.get_concatenated_subnames()) # 输出“texture:resource_name”

 .. code-tab:: csharp

    var nodePath = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(nodePath.GetConcatenatedSubnames()); // 输出“texture:resource_name”



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_name>`

返回由从 0 开始的 ``idx`` 指示的节点名称。如果 ``idx`` 超出范围，则会生成错误。另见 :ref:`get_subname_count()<class_NodePath_method_get_subname_count>` 和 :ref:`get_name_count()<class_NodePath_method_get_name_count>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var sprite_path = NodePath("../RigidBody2D/Sprite2D")
    print(sprite_path.get_name(0)) # 输出“..”
    print(sprite_path.get_name(1)) # 输出“RigidBody2D”
    print(sprite_path.get_name(2)) # 输出“Sprite”

 .. code-tab:: csharp

    var spritePath = new NodePath("../RigidBody2D/Sprite2D");
    GD.Print(spritePath.GetName(0)); // 输出“..”
    GD.Print(spritePath.GetName(1)); // 输出“PathFollow2D”
    GD.Print(spritePath.GetName(2)); // 输出“Sprite”



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_name_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_name_count>`

返回路径中节点名称的数量。不包括属性子名称。

例如，\ ``"../RigidBody2D/Sprite2D:texture"`` 包含 3 个节点名称。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_subname**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_subname>`

返回由从 0 开始的 ``idx`` 指示的属性名称。如果 ``idx`` 超出范围，则会生成错误。另见 :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var path_to_name = NodePath("Sprite2D:texture:resource_name")
    print(path_to_name.get_subname(0)) # 输出“texture”
    print(path_to_name.get_subname(1)) # 输出“resource_name”

 .. code-tab:: csharp

    var pathToName = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(pathToName.GetSubname(0)); // 输出“texture”
    GD.Print(pathToName.GetSubname(1)); // 输出“resource_name”



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subname_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_subname_count>`

返回路径中属性名称（“子名称”）的数量。节点路径中的每个子名称都列在冒号字符（\ ``:``\ ）之后。

例如，\ ``"Level/RigidBody2D/Sprite2D:texture:resource_name"`` 包含 2 个子名称。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_NodePath_method_hash>`

返回代表该节点路径内容的 32 位哈希值。

\ **注意：**\ 由于哈希冲突，具有相等哈希值的节点路径\ *无法*\ 保证相同。不同哈希值的节点路径保证是不同的。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_absolute**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_absolute>`

如果节点路径是绝对路径，则返回 ``true``\ 。与相对路径不同，绝对路径由前导斜杠字符（\ ``/``\ ）表示，并且始终从 :ref:`SceneTree<class_SceneTree>` 开始。它可用于从根节点可靠地访问节点（例如，如果存在名为 “Global” 的自动加载，则 ``"/root/Global"``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_empty>`

如果节点路径是从空的 :ref:`String<class_String>`\ （\ ``""``\ ）构造的，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_slice:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_NodePath_method_slice>`

返回该 **NodePath** 的切片，是从 ``begin``\ （含）到 ``end``\ （不含）的全新 **NodePath**\ 。

\ ``begin`` 和 ``end`` 的绝对值将被限制为 :ref:`get_name_count()<class_NodePath_method_get_name_count>` 和 :ref:`get_subname_count()<class_NodePath_method_get_subname_count>` 的总和，因此 ``end`` 的默认值默认会使其切片到 **NodePath** 的末尾（即 ``path.slice(1)`` 是 ``path.slice(1, path.get_name_count() + path.get_subname_count())`` 的简写）。

如果 ``begin`` 或 ``end`` 为负，则表示相对于 **NodePath** 的末尾（即 ``path.slice(0, -2)`` 是 ``path.slice(0, path.get_name_count() + path.get_subname_count() - 2)`` 的简写）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_NodePath_operator_neq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_neq_NodePath>`

如果两个节点路径不相等，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_operator_eq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_eq_NodePath>`

如果两个节点路径相等，即它们由相同的节点名称和子名称按相同的顺序组成，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
