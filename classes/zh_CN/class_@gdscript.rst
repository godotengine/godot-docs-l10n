:github_url: hide

.. _class_@GDScript:

@GDScript
=========

内置 GDScript 常量、函数、注解。

.. rst-class:: classref-introduction-group

描述
----

所有使用 GDScript 编写的脚本中都能够访问的实用函数和注解的列表。

所有脚本语言都能够访问的全局函数和常量的列表见 :ref:`@GlobalScope<class_@GlobalScope>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`GDScript 的导出 <../tutorials/scripting/gdscript/gdscript_exports>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`Color8<class_@GDScript_method_Color8>`\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`assert<class_@GDScript_method_assert>`\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ )                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`char<class_@GDScript_method_char>`\ (\ code\: :ref:`int<class_int>`\ )                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`convert<class_@GDScript_method_convert>`\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ )                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`dict_to_inst<class_@GDScript_method_dict_to_inst>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ )                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_stack<class_@GDScript_method_get_stack>`\ (\ )                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`inst_to_dict<class_@GDScript_method_inst_to_dict>`\ (\ instance\: :ref:`Object<class_Object>`\ )                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_instance_of<class_@GDScript_method_is_instance_of>`\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ )                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`len<class_@GDScript_method_len>`\ (\ var\: :ref:`Variant<class_Variant>`\ )                                                                                        |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`     | :ref:`load<class_@GDScript_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`ord<class_@GDScript_method_ord>`\ (\ char\: :ref:`String<class_String>`\ )                                                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`     | :ref:`preload<class_@GDScript_method_preload>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`print_debug<class_@GDScript_method_print_debug>`\ (\ ...\ ) |vararg|                                                                                               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`print_stack<class_@GDScript_method_print_stack>`\ (\ )                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`range<class_@GDScript_method_range>`\ (\ ...\ ) |vararg|                                                                                                           |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`type_exists<class_@GDScript_method_type_exists>`\ (\ type\: :ref:`StringName<class_StringName>`\ )                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_@GDScript_constant_PI:

.. rst-class:: classref-constant

**PI** = ``3.14159265358979`` :ref:`🔗<class_@GDScript_constant_PI>`

常量，表示圆的周长是直径的多少倍。相当于 ``TAU / 2``\ ，即 180 度旋转。

.. _class_@GDScript_constant_TAU:

.. rst-class:: classref-constant

**TAU** = ``6.28318530717959`` :ref:`🔗<class_@GDScript_constant_TAU>`

圆常量，单位圆的周长，单位为弧度。相当于 ``PI * 2``\ ，即 360 度旋转。

.. _class_@GDScript_constant_INF:

.. rst-class:: classref-constant

**INF** = ``inf`` :ref:`🔗<class_@GDScript_constant_INF>`

正浮点无穷大。这是除数为 ``0.0`` 时浮点除法的结果。对于负无穷大，使用 ``-INF``\ 。如果分子为正，除以 ``-0.0`` 将导致负无穷大，因此除以 ``0.0`` 与除以 ``-0.0`` 不同（尽管 ``0.0 == -0.0`` 返回 ``true``\ ）。

\ **警告：**\ 数值无穷大只是浮点数的一个概念，对于整数来说没有对应的概念。将整数除以 ``0`` 不会产生 :ref:`INF<class_@GDScript_constant_INF>`\ ，而是会产生一个运行时错误。

.. _class_@GDScript_constant_NAN:

.. rst-class:: classref-constant

**NAN** = ``nan`` :ref:`🔗<class_@GDScript_constant_NAN>`

“Not a Number”（非数）是一个无效的浮点数值。部分无效运算会返回这个值，例如将浮点数 ``0.0`` 除以 ``0.0``\ 。

\ :ref:`NAN<class_@GDScript_constant_NAN>` 有许多特殊的性质，包括 ``!=`` 始终返回 ``true``\ ，而其他比较运算符都始终返回 ``false``\ 。即便是和自己比较也是如此（\ ``NAN == NAN`` 返回 ``false``\ ，而 ``NAN != NAN`` 返回 ``true``\ ）。因此，你必须使用 :ref:`@GlobalScope.is_nan()<class_@GlobalScope_method_is_nan>` 来判断数值是否等于 :ref:`NAN<class_@GDScript_constant_NAN>`\ 。

\ **警告：**\ “非数”只是浮点数的概念，整数中没有对应的概念。将整数 ``0`` 除以 ``0`` 不会得到 :ref:`NAN<class_@GDScript_constant_NAN>`\ ，而是会产生运行时错误。

.. rst-class:: classref-section-separator

----

注解
----

.. _class_@GDScript_annotation_@abstract:

.. rst-class:: classref-annotation

**@abstract**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@abstract>`

将类或方法标记为抽象。

抽象类是一种无法直接实例化的类，主要功能是被其他类继承。尝试实例化抽象类会报错。

抽象方法是一种没有实现的方法，因此函数头之后应当为换行或分号。抽象方法定义的是派生类所必须遵守的契约，覆盖方法时签名必须兼容。派生类必须为所有抽象方法都提供实现，否则就必须将它标记为抽象类。如果类中至少存在一个抽象方法（可以是自己定义的，也可以是继承但没实现的），那么也必须标记为抽象类。

反之则不然：抽象类可以不包含抽象方法。

::

    @abstract class Shape:
        @abstract func draw()

    class Circle extends Shape:
        func draw():
            print("画个圆形。")

    class Square extends Shape:
        func draw():
            print("画个方形。")

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export:

.. rst-class:: classref-annotation

**@export**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export>`

将后续的属性标记为导出属性（可以在检查器面板中编辑并保存至磁盘）。要控制导出属性的类型，请使用类型提示标记。

::

    extends Node

    enum Direction {LEFT, RIGHT, UP, DOWN}

    # 内置类型。
    @export var string = ""
    @export var int_number = 5
    @export var float_number: float = 5

    # 枚举。
    @export var type: Variant.Type
    @export var format: Image.Format
    @export var direction: Direction

    # 资源。
    @export var image: Image
    @export var custom_resource: CustomResource

    # 节点。
    @export var node: Node
    @export var custom_node: CustomNode

    # 类型数组。
    @export var int_array: Array[int]
    @export var direction_array: Array[Direction]
    @export var image_array: Array[Image]
    @export var node_array: Array[Node]

\ **注意：**\ 自定义资源和自定义节点应该使用 ``class_name`` 注册为全局类，因为属性检查器目前仅支持全局类。否则，将导出不太具体的类型。

\ **注意：**\ 节点的导出只有派生自 :ref:`Node<class_Node>` 的类才支持，并且还有一些其他限制。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_category:

.. rst-class:: classref-annotation

**@export_category**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_category>`

为后续导出属性定义一个新类别，方便在检查器面板中组织属性。

另见 :ref:`@GlobalScope.PROPERTY_USAGE_CATEGORY<class_@GlobalScope_constant_PROPERTY_USAGE_CATEGORY>`\ 。

::

    @export_category("Statistics")
    @export var hp = 30
    @export var speed = 1.25

\ **注意：**\ 检查器面板中的列表通常会按类别将来自不同类（如 Node、Node2D、Sprite 等）的属性分隔开来。为了让属性组织更明确，推荐改用 :ref:`@export_group<class_@GDScript_annotation_@export_group>` 和 :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_color_no_alpha:

.. rst-class:: classref-annotation

**@export_color_no_alpha**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_color_no_alpha>`

导出 :ref:`Color<class_Color>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`Color<class_Color>`\ \] 或 :ref:`PackedColorArray<class_PackedColorArray>` 属性，不允许编辑透明度（\ :ref:`Color.a<class_Color_property_a>`\ ）。

另见 :ref:`@GlobalScope.PROPERTY_HINT_COLOR_NO_ALPHA<class_@GlobalScope_constant_PROPERTY_HINT_COLOR_NO_ALPHA>`\ 。

::

    @export_color_no_alpha var dye_color: Color
    @export_color_no_alpha var dye_colors: Array[Color]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_custom:

.. rst-class:: classref-annotation

**@export_custom**\ (\ hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\] = 6\ ) :ref:`🔗<class_@GDScript_annotation_@export_custom>`

允许为导出的属性设置自定义提示、提示字符串、和使用标志。请注意，GDScript 中没有进行任何验证，它只是将参数传递给编辑器。

::

    @export_custom(PROPERTY_HINT_NONE, "suffix:m") var suffix: Vector3

\ **注意：**\ 无论 ``usage`` 值如何，总会添加 :ref:`@GlobalScope.PROPERTY_USAGE_SCRIPT_VARIABLE<class_@GlobalScope_constant_PROPERTY_USAGE_SCRIPT_VARIABLE>` 标志，就像和任何显式声明的脚本变量一样。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_dir:

.. rst-class:: classref-annotation

**@export_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_dir>`

导出 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] 或 :ref:`PackedStringArray<class_PackedStringArray>` 属性，用作指向目录的路径。该路径会被限制在项目文件夹及其子文件夹中，要允许在整个文件系统中选取，见 :ref:`@export_global_dir<class_@GDScript_annotation_@export_global_dir>`\ 。

另见 :ref:`@GlobalScope.PROPERTY_HINT_DIR<class_@GlobalScope_constant_PROPERTY_HINT_DIR>`\ 。

::

    @export_dir var sprite_folder_path: String
    @export_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_enum:

.. rst-class:: classref-annotation

**@export_enum**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_enum>`

导出 :ref:`int<class_int>`\ 、\ :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \]、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \]、\ :ref:`PackedByteArray<class_PackedByteArray>`\ 、\ :ref:`PackedInt32Array<class_PackedInt32Array>`\ 、\ :ref:`PackedInt64Array<class_PackedInt64Array>` 或 :ref:`PackedStringArray<class_PackedStringArray>` 属性，用作枚举选项列表（或选项的数组）。如果属性为 :ref:`int<class_int>`\ ，则存储的是值的索引，与值的顺序相同。你可以使用冒号来显式添加枚举项的取值。如果属性为 :ref:`String<class_String>`\ ，则存储的是值。

另见 :ref:`@GlobalScope.PROPERTY_HINT_ENUM<class_@GlobalScope_constant_PROPERTY_HINT_ENUM>`\ 。

::

    @export_enum("Warrior", "Magician", "Thief") var character_class: int
    @export_enum("Slow:30", "Average:60", "Very Fast:200") var character_speed: int
    @export_enum("Rebecca", "Mary", "Leah") var character_name: String

    @export_enum("Sword", "Spear", "Mace") var character_items: Array[int]
    @export_enum("double_jump", "climb", "dash") var character_skills: Array[String]

如果需要设置初始值，则必须显式指定：

::

    @export_enum("Rebecca", "Mary", "Leah") var character_name: String = "Rebecca"

如果需要使用具名 GDScript 枚举，请改用 :ref:`@export<class_@GDScript_annotation_@export>`\ ：

::

    enum CharacterName {REBECCA, MARY, LEAH}
    @export var character_name: CharacterName

    enum CharacterItem {SWORD, SPEAR, MACE}
    @export var character_items: Array[CharacterItem]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_exp_easing:

.. rst-class:: classref-annotation

**@export_exp_easing**\ (\ hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_exp_easing>`

使用缓动编辑器小部件导出浮点属性。可以提供额外的提示来调整小部件的行为。通过使用\ ``"attenuation"`` 提示来翻转曲线，使编辑衰减属性更加直观；通过使用\ ``"positive_only"`` 提示来将取值范围限制为仅大于等于零。

另见 :ref:`@GlobalScope.PROPERTY_HINT_EXP_EASING<class_@GlobalScope_constant_PROPERTY_HINT_EXP_EASING>`\ 。

::

    @export_exp_easing var transition_speed
    @export_exp_easing("attenuation") var fading_attenuation
    @export_exp_easing("positive_only") var effect_power
    @export_exp_easing var speeds: Array[float]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file:

.. rst-class:: classref-annotation

**@export_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file>`

导出 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] 或 :ref:`PackedStringArray<class_PackedStringArray>` 属性，用作指向文件的路径。该路径会被限制在项目文件夹及其子文件夹中。要允许在整个文件系统中选取，见 :ref:`@export_global_file<class_@GDScript_annotation_@export_global_file>`\ 。

如果提供了 ``filter``\ ，则只有匹配的文件可供选取。

另见 :ref:`@GlobalScope.PROPERTY_HINT_FILE<class_@GlobalScope_constant_PROPERTY_HINT_FILE>`\ 。

::

    @export_file var sound_effect_path: String
    @export_file("*.txt") var notes_path: String
    @export_file var level_paths: Array[String]

\ **注意：**\ 如果文件的 UID 可用，则会以 UID 形式进行存储和引用。这样可以保证即便文件发生移动，引用也仍然有效。可以使用 :ref:`ResourceUID<class_ResourceUID>` 中的方法将 UID 转换为路径。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file_path:

.. rst-class:: classref-annotation

**@export_file_path**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file_path>`

与 :ref:`@export_file<class_@GDScript_annotation_@export_file>` 相同，但是文件以原始路径的形式存储。这意味着移动文件后可能失效。导出 :ref:`Resource<class_Resource>` 路径时，请考虑改用 :ref:`@export_file<class_@GDScript_annotation_@export_file>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags:

.. rst-class:: classref-annotation

**@export_flags**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_flags>`

将整数属性导出为位标志字段，能够在单个属性中保存多个“勾选项”（即 ``true`` 值），可以很方便地在检查器面板中进行选择。

另见 :ref:`@GlobalScope.PROPERTY_HINT_FLAGS<class_@GlobalScope_constant_PROPERTY_HINT_FLAGS>`\ 。

::

    @export_flags("Fire", "Water", "Earth", "Wind") var spell_elements = 0

可以通过冒号来显式添加取值：

::

    @export_flags("Self:4", "Allies:8", "Foes:16") var spell_targets = 0

还可以对标志进行组合：

::

    @export_flags("Self:4", "Allies:8", "Self and Allies:12", "Foes:16")
    var spell_targets = 0

\ **注意：**\ 标志值的最小值为 ``1``\ ，最大值为 ``2 ** 32 - 1``\ 。

\ **注意：**\ 与 :ref:`@export_enum<class_@GDScript_annotation_@export_enum>` 不同，位标志不会考虑其前一个位标志的显式值。下面的例子中，A 为 16、B 为 2、C 为 4。

::

    @export_flags("A:16", "B", "C") var x

还可以对 :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \]、\ :ref:`PackedByteArray<class_PackedByteArray>`\ 、\ :ref:`PackedInt32Array<class_PackedInt32Array>` 和 :ref:`PackedInt64Array<class_PackedInt64Array>` 使用该注解。

::

    @export_flags("Fire", "Water", "Earth", "Wind") var phase_elements: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_navigation:

.. rst-class:: classref-annotation

**@export_flags_2d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_navigation>`

将整数属性导出为 2D 导航层的位标志字段。检查器面板中对应的部件会使用在 :ref:`ProjectSettings.layer_names/2d_navigation/layer_1<class_ProjectSettings_property_layer_names/2d_navigation/layer_1>` 中定义的层名称。

另见 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_NAVIGATION>`\ 。

::

    @export_flags_2d_navigation var navigation_layers: int
    @export_flags_2d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_physics:

.. rst-class:: classref-annotation

**@export_flags_2d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_physics>`

将整数属性导出为 2D 物理层的位标志字段。检查器面板中对应的部件会使用在 :ref:`ProjectSettings.layer_names/2d_physics/layer_1<class_ProjectSettings_property_layer_names/2d_physics/layer_1>` 中定义的层名称。

另见 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_PHYSICS>`\ 。

::

    @export_flags_2d_physics var physics_layers: int
    @export_flags_2d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_render:

.. rst-class:: classref-annotation

**@export_flags_2d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_render>`

将整数属性导出为 2D 渲染层的位标志字段。检查器面板中对应的部件会使用在 :ref:`ProjectSettings.layer_names/2d_render/layer_1<class_ProjectSettings_property_layer_names/2d_render/layer_1>` 中定义的层名称。

另见 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_RENDER>`\ 。

::

    @export_flags_2d_render var render_layers: int
    @export_flags_2d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_navigation:

.. rst-class:: classref-annotation

**@export_flags_3d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_navigation>`

将整数属性导出为 3D 导航层的位标志字段。检查器面板中对应的部件会使用在 :ref:`ProjectSettings.layer_names/3d_navigation/layer_1<class_ProjectSettings_property_layer_names/3d_navigation/layer_1>` 中定义的层名称。

另见 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_NAVIGATION>`\ 。

::

    @export_flags_3d_navigation var navigation_layers: int
    @export_flags_3d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_physics:

.. rst-class:: classref-annotation

**@export_flags_3d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_physics>`

将整数属性导出为 3D 物理层的位标志字段。检查器面板中对应的部件会使用在 :ref:`ProjectSettings.layer_names/3d_physics/layer_1<class_ProjectSettings_property_layer_names/3d_physics/layer_1>` 中定义的层名称。

另见 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_PHYSICS>`\ 。

::

    @export_flags_3d_physics var physics_layers: int
    @export_flags_3d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_render:

.. rst-class:: classref-annotation

**@export_flags_3d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_render>`

将整数属性导出为 3D 渲染层的位标志字段。检查器面板中对应的部件会使用在 :ref:`ProjectSettings.layer_names/3d_render/layer_1<class_ProjectSettings_property_layer_names/3d_render/layer_1>` 中定义的层名称。

另见 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_RENDER>`\ 。

::

    @export_flags_3d_render var render_layers: int
    @export_flags_3d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_avoidance:

.. rst-class:: classref-annotation

**@export_flags_avoidance**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_avoidance>`

将整数属性导出为导航避障层的位标志字段。检查器面板中对应的部件会使用在 :ref:`ProjectSettings.layer_names/avoidance/layer_1<class_ProjectSettings_property_layer_names/avoidance/layer_1>` 中定义的层名称。

另见 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_AVOIDANCE<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_AVOIDANCE>`\ 。

::

    @export_flags_avoidance var avoidance_layers: int
    @export_flags_avoidance var avoidance_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_dir:

.. rst-class:: classref-annotation

**@export_global_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_global_dir>`

导出 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] 或 :ref:`PackedStringArray<class_PackedStringArray>` 属性，用作指向目录的绝对路径，该路径可以从整个文件系统中选取。要限制为项目文件夹及其子文件夹，见 :ref:`@export_dir<class_@GDScript_annotation_@export_dir>`\ 。

另见 :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_DIR<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_DIR>`\ 。

::

    @export_global_dir var sprite_folder_path: String
    @export_global_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_file:

.. rst-class:: classref-annotation

**@export_global_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_global_file>`

导出 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] 或 :ref:`PackedStringArray<class_PackedStringArray>` 属性，用作指向文件的绝对路径，该路径可以从整个文件系统中选取。要限制为项目文件夹及其子文件夹，见 :ref:`@export_file<class_@GDScript_annotation_@export_file>`\ 。

如果提供了 ``filter``\ ，则只有匹配的文件可供选取。

另见 :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_FILE<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_FILE>`\ 。

::

    @export_global_file var sound_effect_path: String
    @export_global_file("*.txt") var notes_path: String
    @export_global_file var multiple_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_group:

.. rst-class:: classref-annotation

**@export_group**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_group>`

为以下导出的属性定义一个新分组，分组有助于在检查器面板中组织属性。添加新分组时可以选择性地提供 ``prefix`` 前缀，此时分组将仅考虑具有此前缀的属性。分组将在第一个没有该前缀的属性处结束，前缀也将从检查器面板中的属性名称当中移除。

如果未提供 ``prefix``\ ，则该注解后续的每个属性都将添加到该分组中，在定义下一个分组或类别时，该分组结束。你还可以通过将此注解与空字符串的参数一起使用来强制结束分组：\ ``@export_group("", "")``\ 。

分组不能嵌套使用，请使用 :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>` 在分组内添加子分组。

另见 :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>`\ 。

::

    @export_group("Racer Properties")
    @export var nickname = "Nick"
    @export var age = 26

    @export_group("Car Properties", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

    @export_group("", "")
    @export var ungrouped_number = 3

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_multiline:

.. rst-class:: classref-annotation

**@export_multiline**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_multiline>`

代替普通的 :ref:`LineEdit<class_LineEdit>` 组件，并使用较大的 :ref:`TextEdit<class_TextEdit>` 组件来导出 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \]、\ :ref:`PackedStringArray<class_PackedStringArray>`\ 、\ :ref:`Dictionary<class_Dictionary>` 或 :ref:`Array<class_Array>`\ \[:ref:`Dictionary<class_Dictionary>`\ \] 属性，这样就能够支持编辑多行内容，便于在编辑属性中存储大量文本。

另见 :ref:`@GlobalScope.PROPERTY_HINT_MULTILINE_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_MULTILINE_TEXT>`\ 。

::

    @export_multiline var character_biography
    @export_multiline var npc_dialogs: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_node_path:

.. rst-class:: classref-annotation

**@export_node_path**\ (\ type\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_node_path>`

导出 :ref:`NodePath<class_NodePath>` 或 :ref:`Array<class_Array>`\ \[:ref:`NodePath<class_NodePath>`\ \] 属性，能够指定要过滤的节点类型。

另见 :ref:`@GlobalScope.PROPERTY_HINT_NODE_PATH_VALID_TYPES<class_@GlobalScope_constant_PROPERTY_HINT_NODE_PATH_VALID_TYPES>`\ 。

::

    @export_node_path("Button", "TouchScreenButton") var some_button
    @export_node_path("Button", "TouchScreenButton") var many_buttons: Array[NodePath]

\ **注意：**\ 类型必须是原生类型或（通过使用 ``[class_name]`` 关键字）全局注册的继承自 :ref:`Node<class_Node>` 的脚本。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_placeholder:

.. rst-class:: classref-annotation

**@export_placeholder**\ (\ placeholder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_placeholder>`

导出 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] 或 :ref:`PackedStringArray<class_PackedStringArray>` 属性，当值不存在时会在编辑器小部件中显示占位文本。

另见 :ref:`@GlobalScope.PROPERTY_HINT_PLACEHOLDER_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_PLACEHOLDER_TEXT>`\ 。

::

    @export_placeholder("Name in lowercase") var character_id: String
    @export_placeholder("Name in lowercase") var friend_ids: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_range:

.. rst-class:: classref-annotation

**@export_range**\ (\ min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, step\: :ref:`float<class_float>` = 1.0, extra_hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_range>`

导出 :ref:`int<class_int>`\ 、\ :ref:`float<class_float>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \]、\ :ref:`Array<class_Array>`\ \[:ref:`float<class_float>`\ \]、\ :ref:`PackedByteArray<class_PackedByteArray>`\ 、\ :ref:`PackedInt32Array<class_PackedInt32Array>`\ 、\ :ref:`PackedInt64Array<class_PackedInt64Array>`\ 、\ :ref:`PackedFloat32Array<class_PackedFloat32Array>` 或 :ref:`PackedFloat64Array<class_PackedFloat64Array>` 属性，能够指定取值范围。范围必须由最小值提示 ``min`` 和最大值提示 ``max`` 定义，还有一个可选的步长提示 ``step`` 和各种额外的提示。对于整数属性，\ ``step`` 的默认值是 ``1`` 。对于浮点数，这个值取决于你的 :ref:`EditorSettings.interface/inspector/default_float_step<class_EditorSettings_property_interface/inspector/default_float_step>` 所设置的值。

如果提供了 ``"or_greater"`` 和 ``"or_less"`` 提示，则编辑器部件将不会在其范围边界处对数值进行限制。\ ``"exp"`` 提示将使范围内的编辑值以指数形式变化。\ ``"hide_slider"`` 提示可将编辑器部件中的滑块隐藏。

提示还允许指示编辑的值的单位。通过使用 ``"radians_as_degrees"`` 提示，你可以指定实际值以弧度为单位，在检查器中以角度为单位显示的值（其范围值也使用角度）。\ ``"degrees"`` 提示允许添加一个角度符号作为单位后缀。最后，还可以使用 ``"suffix:单位"`` 这种提示来提供一个自定义后缀，其中“单位”可以是任意字符串。

另见 :ref:`@GlobalScope.PROPERTY_HINT_RANGE<class_@GlobalScope_constant_PROPERTY_HINT_RANGE>`\ 。

::

    @export_range(0, 20) var number
    @export_range(-10, 20) var number
    @export_range(-10, 20, 0.2) var number: float
    @export_range(0, 20) var numbers: Array[float]

    @export_range(0, 100, 1, "or_greater") var power_percent
    @export_range(0, 100, 1, "or_greater", "or_less") var health_delta

    @export_range(-180, 180, 0.001, "radians_as_degrees") var angle_radians
    @export_range(0, 360, 1, "degrees") var angle_degrees
    @export_range(-8, 8, 2, "suffix:px") var target_offset

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_storage:

.. rst-class:: classref-annotation

**@export_storage**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_storage>`

使用 :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` 标志导出属性，让该属性不会在编辑器中显示，但是会将其序列化并存储到场景或资源文件中。常用于 :ref:`@tool<class_@GDScript_annotation_@tool>` 脚本当中。调用 :ref:`Resource.duplicate()<class_Resource_method_duplicate>` 和 :ref:`Node.duplicate()<class_Node_method_duplicate>` 时也会复制该属性的值，而其他非导出变量则不会。

::

    var a # 不保存进文件，不在编辑器中显示。
    @export_storage var b # 保存进文件，不在编辑器中显示。
    @export var c: int # 保存进文件，在编辑器中显示。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_subgroup:

.. rst-class:: classref-annotation

**@export_subgroup**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_subgroup>`

为接下来的导出属性定义一个新的子分组，有助于在检查器面板中组织属性。子分组的运作方式与分组类似，不过需要依赖于一个父级分组。见 :ref:`@export_group<class_@GDScript_annotation_@export_group>`\ 。

另见 :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>`\ 。

::

    @export_group("Racer Properties")
    @export var nickname = "Nick"
    @export var age = 26

    @export_subgroup("Car Properties", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

\ **注意：**\ 子分组不能嵌套，但是你可以使用斜杠分隔符（\ ``/``\ ）达到所需效果：

::

    @export_group("Car Properties")
    @export_subgroup("Wheels", "wheel_")
    @export_subgroup("Wheels/Front", "front_wheel_")
    @export var front_wheel_strength = 10
    @export var front_wheel_mobility = 5
    @export_subgroup("Wheels/Rear", "rear_wheel_")
    @export var rear_wheel_strength = 8
    @export var rear_wheel_mobility = 3
    @export_subgroup("Wheels", "wheel_")
    @export var wheel_material: PhysicsMaterial

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_tool_button:

.. rst-class:: classref-annotation

**@export_tool_button**\ (\ text\: :ref:`String<class_String>`, icon\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_tool_button>`

导出 :ref:`Callable<class_Callable>` 属性，显示为标签为 ``text`` 的可点击按钮。按下按钮会调用该可调用体。

如果指定了 ``icon``\ ，则按钮的图标会通过 :ref:`Control.get_theme_icon()<class_Control_method_get_theme_icon>` 从 ``"EditorIcons"`` 主题类型中获取。如果省略 ``icon``\ ，则会使用默认的 ``"Callable"`` 图标。

请考虑使用 :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`\ ，从而安全地撤销动作。

另见 :ref:`@GlobalScope.PROPERTY_HINT_TOOL_BUTTON<class_@GlobalScope_constant_PROPERTY_HINT_TOOL_BUTTON>`\ 。

::

    @tool
    extends Sprite2D

    @export_tool_button("你好") var hello_action = hello
    @export_tool_button("随机颜色！", "ColorRect")
    var randomize_color_action = randomize_color

    func hello():
        print("你好世界！")

    func randomize_color():
        var undo_redo = EditorInterface.get_editor_undo_redo()
        undo_redo.create_action("随机设置 Sprite2D 的颜色")
        undo_redo.add_do_property(self, &"self_modulate", Color(randf(), randf(), randf()))
        undo_redo.add_undo_property(self, &"self_modulate", self_modulate)
        undo_redo.commit_action()

\ **注意：**\ 该属性导出时不带 :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` 标识，因为 :ref:`Callable<class_Callable>` 无法正确序列化存储在文件中。

\ **注意：**\ 导出后的项目中，\ :ref:`EditorInterface<class_EditorInterface>` 和 :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>` 均不存在，可能导致部分脚本损坏。为了防止这种情况，你可以使用 :ref:`Engine.get_singleton()<class_Engine_method_get_singleton>` 并省略变量声明中的静态类型：

::

    var undo_redo = Engine.get_singleton(&"EditorInterface").get_editor_undo_redo()

\ **注意：**\ 请避免在 :ref:`RefCounted<class_RefCounted>` 的派生类（例如资源类）的成员变量中存储 Lambda 可调用体，否则可能导致内存泄漏。只能使用方法可调用体，也可搭配 :ref:`Callable.bind()<class_Callable_method_bind>` 和 :ref:`Callable.unbind()<class_Callable_method_unbind>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@icon:

.. rst-class:: classref-annotation

**@icon**\ (\ icon_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@icon>`

为当前脚本添加自定义图标。\ ``icon_path`` 所指向的图标会在“场景”面板中该类的所有节点上显示，也会显示在各种编辑器对话框当中。

::

    @icon("res://path/to/class/icon.svg")

\ **注意：**\ 只有脚本可以带有自定义图标，不支持内部类。

\ **注意：**\ 由于注解描述的是它们的对象，因此 :ref:`@icon<class_@GDScript_annotation_@icon>` 注解必须放在类定义语句和继承语句之前。

\ **注意：**\ 与其他大多数注解不同，\ :ref:`@icon<class_@GDScript_annotation_@icon>` 注解的参数必须是字符串字面量（不支持常量表达式）。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@onready:

.. rst-class:: classref-annotation

**@onready**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@onready>`

标记后续属性会在 :ref:`Node<class_Node>` 就绪时赋值。节点初始化（\ :ref:`Object._init()<class_Object_private_method__init>`\ ）时不会立即对这些属性赋值，而是会在即将调用 :ref:`Node._ready()<class_Node_private_method__ready>` 之前进行计算与储存。

::

    @onready var character_name = $Label

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@rpc:

.. rst-class:: classref-annotation

**@rpc**\ (\ mode\: :ref:`String<class_String>` = "authority", sync\: :ref:`String<class_String>` = "call_remote", transfer_mode\: :ref:`String<class_String>` = "unreliable", transfer_channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_@GDScript_annotation_@rpc>`

将后续方法标记为远程过程调用。见\ :doc:`《高阶多人游戏》 <../tutorials/networking/high_level_multiplayer>`\ 。

如果将 ``mode`` 提示设为 ``"any_peer"``\ ，则会允许所有对等体调用该 RPC 函数。若只允许该对等体的控制方调用，则应该让 ``mode`` 提示保持为 ``"authority"``\ 。使用 :ref:`Node.rpc_config()<class_Node_method_rpc_config>` 将函数配置为 RPC 时，这些模式分别对应的是 RPC 模式 :ref:`MultiplayerAPI.RPC_MODE_ANY_PEER<class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER>` 和 :ref:`MultiplayerAPI.RPC_MODE_AUTHORITY<class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY>` 。如果非控制方的对等体尝试调用仅限控制方调用的函数，则不会执行该函数，且如果本地能够检测到错误（本地与远程对等体的 RPC 配置一致），则发送方对等体会显示错误消息，否则该对等体会检测到该错误并将其输出。

如果将 ``sync`` 提示设为 ``"call_remote"``\ ，则该函数只会在远程对等体上执行，不会在本地执行。要让这个函数在本地也能够执行，请将 ``sync`` 设置为 ``"call_local"``\ ，使用 :ref:`Node.rpc_config()<class_Node_method_rpc_config>` 将函数配置为 RPC 时，等价于将 ``call_local`` 设置为 ``true``\ 。

\ ``transfer_mode`` 提示能够接受的值为 ``"unreliable"``\ 、\ ``"unreliable_ordered"``\ 、\ ``"reliable"``\ ，会设置底层 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的传输模式。见 :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`\ 。

\ ``transfer_channel`` 定义的是底层 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的通道。见 :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`\ 。

\ ``mode``\ 、\ ``sync`` 和 ``transfer_mode`` 的顺序是无关的，但是相同参数的取值不能出现多次。\ ``transfer_channel`` 必须始终为第四个参数（同时前三个参数也必须指定）。

::

    @rpc
    func fn(): pass

    @rpc("any_peer", "unreliable_ordered")
    func fn_update_pos(): pass

    @rpc("authority", "call_remote", "unreliable", 0) # 等价于 @rpc
    func fn_default(): pass

\ **注意：**\ 使用 :ref:`@rpc<class_@GDScript_annotation_@rpc>` 注解的方法无法接收在 :ref:`Object._init()<class_Object_private_method__init>` 中定义了必要参数的对象。更多详情，请参阅 :ref:`Object._init()<class_Object_private_method__init>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@static_unload:

.. rst-class:: classref-annotation

**@static_unload**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@static_unload>`

使具有静态变量的脚本在所有引用丢失后不持久化。如果再次加载脚本，静态变量将恢复为默认值。

\ **注意：**\ 因为注解需要描述对象，所以 :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` 注解必须放在类定义和继承之前。

\ **警告：**\ 目前由于一个 bug，即使使用了\ :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` 注解，脚本也永远不会释放。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@tool:

.. rst-class:: classref-annotation

**@tool**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@tool>`

将当前脚本标记为工具脚本，允许该脚本由编辑器所加载与执行。见\ :doc:`《在编辑器中运行代码》 <../tutorials/plugins/running_code_in_the_editor>`\ 。

::

    @tool
    extends Node

\ **注意：**\ 因为注解描述对象的关系，必须把 :ref:`@tool<class_@GDScript_annotation_@tool>` 注解放在类定义和继承之前。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore:

.. rst-class:: classref-annotation

**@warning_ignore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore>`

将后续语句标记为忽略指定的 ``warning`` 警告。见\ :doc:`《GDScript 警告系统》 <../tutorials/scripting/gdscript/warning_system>`\ 。

::

    func test():
        print("你好")
        return
        @warning_ignore("unreachable_code")
        print("无法到达")

另见 :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` 和 :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_restore:

.. rst-class:: classref-annotation

**@warning_ignore_restore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_restore>`

停止忽略列在 :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` 注解后面的警告，对特定警告的忽略将重置为项目设置中的默认配置。该注解可省略，如此则会持续忽略指定警告类型直至文件末尾。

\ **注意：**\ 与大多数其他注解不同，注解 :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` 的参数必须是字符串字面量（不支持常量表达式）。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_start:

.. rst-class:: classref-annotation

**@warning_ignore_start**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_start>`

开始忽略列出的警告类型，直至文件末尾或带有给定警告类型的 :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` 注解处为止。

::

    func test():
        var a = 1 # Warning (if enabled in the Project Settings).
        @warning_ignore_start("unused_variable")
        var b = 2 # No warning.
        var c = 3 # No warning.
        @warning_ignore_restore("unused_variable")
        var d = 4 # Warning (if enabled in the Project Settings).

\ **注意：**\ 要抑制单个警告，请改用 :ref:`@warning_ignore<class_@GDScript_annotation_@warning_ignore>` 注解。

\ **注意：**\ 与大多数其他注解不同，注解 :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` 的参数必须是字符串字面量（不支持常量表达式）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_@GDScript_method_Color8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **Color8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) :ref:`🔗<class_@GDScript_method_Color8>`

**已弃用：** Use :ref:`Color.from_rgba8()<class_Color_method_from_rgba8>` instead.

返回一个由整数红通道（\ ``r8``\ ）、整数绿通道（\ ``g8``\ ）、整数蓝通道（\ ``b8``\ ）和可选的整数 Alpha 通道（\ ``a8``\ ）构造的 :ref:`Color<class_Color>`\ ，每个通道的最终值都会除以 ``255.0``\ 。如果你需要精确匹配 :ref:`Image<class_Image>` 中的颜色值，\ :ref:`Color8()<class_@GDScript_method_Color8>` 比标准的 :ref:`Color<class_Color>` 构造函数更有用。

::

    var red = Color8(255, 0, 0)             # 与 Color(1, 0, 0) 相同
    var dark_blue = Color8(0, 0, 51)        # 与 Color(0, 0, 0.2) 相同。
    var my_color = Color8(306, 255, 0, 102) # 与 Color(1.2, 1, 0, 0.4) 相同。

\ **注意：**\ 由于 :ref:`Color8()<class_@GDScript_method_Color8>` 比标准 :ref:`Color<class_Color>` 构造函数精度更低，故使用 :ref:`Color8()<class_@GDScript_method_Color8>` 创建的颜色通常与使用标准 :ref:`Color<class_Color>` 构造函数创建的相同颜色不相等。请使用 :ref:`Color.is_equal_approx()<class_Color_method_is_equal_approx>` 进行比较，避免浮点数精度误差。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_assert:

.. rst-class:: classref-method

|void| **assert**\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_method_assert>`

断言条件 ``condition`` 为 ``true``\ 。如果条件 ``condition`` 为 ``false`` ，则会生成错误。如果是从编辑器运行的断言，正在运行的项目还会被暂停，需要手动恢复。该函数可以作为 :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` 的加强版使用，用于向项目开发者和插件用户报错。

如果给出了可选的 ``message`` 参数，该信息会和通用的“Assertion failed”消息一起显示。你可以使用它来提供关于断言失败原因等详细信息。

\ **警告：**\ 出于对性能的考虑，\ :ref:`assert()<class_@GDScript_method_assert>` 中的代码只会在调试版本或者从编辑器运行项目时执行。请勿在 :ref:`assert()<class_@GDScript_method_assert>` 调用中加入具有副作用的代码。否则，项目在以发布模式导出后将会出现行为不一致的现象。

::

    # 比如说我们希望 speed 始终在 0 和 20 之间。
    speed = -10
    assert(speed < 20) # True，程序会继续执行
    assert(speed >= 0) # False，程序会停止
    assert(speed >= 0 and speed < 20) # 你还可以在单次检查中合并两个条件语句
    assert(speed < 20, "限速为 20") # 显示消息。

\ **注意：**\ :ref:`assert()<class_@GDScript_method_assert>` 是关键字而非函数，无法作为 :ref:`Callable<class_Callable>` 访问，也无法在表达式中使用。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_char:

.. rst-class:: classref-method

:ref:`String<class_String>` **char**\ (\ code\: :ref:`int<class_int>`\ ) :ref:`🔗<class_@GDScript_method_char>`

返回给定 Unicode 码位 ``code`` 的单个字符（作为长度为 1 的 :ref:`String<class_String>`\ ）。

::

    print(char(65))           # 打印 "A"
    print(char(129302)) # 打印 "🤖" （机器人脸的emoji）

这是 :ref:`ord()<class_@GDScript_method_ord>` 的逆运算。参见 :ref:`String.chr()<class_String_method_chr>` 和 :ref:`String.unicode_at()<class_String_method_unicode_at>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_convert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **convert**\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ) :ref:`🔗<class_@GDScript_method_convert>`

**已弃用：** Use :ref:`@GlobalScope.type_convert()<class_@GlobalScope_method_type_convert>` instead.

在可能的情况下将 ``what`` 转换为 ``type`` 类型的值， ``type`` 使用 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 值。

::

    var a = [4, 2.5, 1.2]
    print(a is Array) # 输出 true

    var b = convert(a, TYPE_PACKED_BYTE_ARRAY)
    print(b)          # 输出 [4, 2, 1]
    print(b is Array) # 输出 false

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_dict_to_inst:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **dict_to_inst**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_@GDScript_method_dict_to_inst>`

**已弃用：** Consider using :ref:`JSON.to_native()<class_JSON_method_to_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

将一个 ``dictionary`` （用 :ref:`inst_to_dict()<class_@GDScript_method_inst_to_dict>` 创建的）转换回为一个 Object 实例。在反序列化时可能会很有用。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_get_stack:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_get_stack>`

返回一个表示当前调用堆栈的字典数组，另见 :ref:`print_stack()<class_@GDScript_method_print_stack>`\ 。

::

    func _ready():
        foo()

    func foo():
        bar()

    func bar():
        print(get_stack())

从 ``_ready()`` 开始，\ ``bar()`` 将打印：

.. code:: text

    [{function:bar, line:12, source:res://script.gd}, {function:foo, line:9, source:res://script.gd}, {function:_ready, line:6, source:res://script.gd}]

参见 :ref:`print_debug()<class_@GDScript_method_print_debug>`\ ，\ :ref:`print_stack()<class_@GDScript_method_print_stack>` 和 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`\ 。

\ **注意：** 默认情况下，调用堆栈跟踪仅在编辑器构建和调试构建中可用。若要为发布构建启用该功能，您需要启用 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_inst_to_dict:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **inst_to_dict**\ (\ instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_@GDScript_method_inst_to_dict>`

**已弃用：** Consider using :ref:`JSON.from_native()<class_JSON_method_from_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

将传入的实例 ``instance`` 转换为 :ref:`Dictionary<class_Dictionary>` 并返回。适用于序列化。

::

    var foo = "bar"
    func _ready():
        var d = inst_to_dict(self)
        print(d.keys())
        print(d.values())

输出打印：

.. code:: text

    [@subpath, @path, foo]
    [, res://test.gd, bar]

\ **注意：**\ 只有附加了存储在单独文件中的 :ref:`GDScript<class_GDScript>` 的对象才能够被这个函数序列化。不支持未附加脚本的对象、使用其他语言脚本的对象、使用内置脚本的对象。

\ **注意：**\ 这个函数不会进行递归操作，嵌套的对象不会以字典形式表示。另外，按引用传递的属性（\ :ref:`Object<class_Object>`\ 、\ :ref:`Dictionary<class_Dictionary>`\ 、\ :ref:`Array<class_Array>`\ 、紧缩数组等）会按引用进行复制，不会制作副本。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_is_instance_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_instance_of**\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_is_instance_of>`

如果 ``value`` 为 ``type`` 类型的实例，则返回 ``true``\ 。\ ``type`` 的值必须为下列值之一：

- :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 枚举常量，如 :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>`\ 。

- :ref:`ClassDB<class_ClassDB>` 中存在的派生自 :ref:`Object<class_Object>` 的类，如 :ref:`Node<class_Node>`\ 。

- :ref:`Script<class_Script>`\ （可以用任何类，包括内部类）。

\ ``type`` 可以不是常量，这一点与 ``is`` 的右操作数不同，\ ``is`` 运算符支持的功能更多（例如类型化数组）。如果你不需要动态地检查类型，请使用该运算符，不要使用此方法。

\ **示例：**\ 

::

    print(is_instance_of(a, TYPE_INT))
    print(is_instance_of(a, Node))
    print(is_instance_of(a, MyClass))
    print(is_instance_of(a, MyClass.InnerClass))

\ **注意：**\ 如果 ``value`` 和/或 ``type`` 为已释放的对象（见 :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`\ ），或者 ``type`` 不为以上选项中的任何一项，则此方法会报运行时错误。

另见 :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>`\ 、\ :ref:`type_exists()<class_@GDScript_method_type_exists>`\ 、\ :ref:`Array.is_same_typed()<class_Array_method_is_same_typed>`\ （以及其他 :ref:`Array<class_Array>` 方法）。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **len**\ (\ var\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_len>`

返回给定 Variant ``var`` 的长度，该长度可以是 :ref:`String<class_String>` 或 :ref:`StringName<class_StringName>` 的字符数，也可以是任意数组类型的元素数或 :ref:`Dictionary<class_Dictionary>` 的大小等。对于所有其他 Variant 类型，都会生成运行时错误并停止执行。

::

    var a = [1, 2, 3, 4]
    len(a) # 返回 4

    var b = "Hello!"
    len(b) # 返回 6

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_load>`

返回一个位于文件系统绝对路径 ``path`` 下的 :ref:`Resource<class_Resource>`\ 。该资源除非已在其他地方引用（例如在另一个脚本或场景中），否则将在函数调用时从磁盘加载，可能会导致轻微的延迟，尤其是在加载大型场景时。为避免在多次加载某些内容时出现不必要的延迟，可以将资源存储在变量中，也可使用预加载 :ref:`preload()<class_@GDScript_method_preload>` 方法加载，该方法相当于使用 :ref:`ResourceLoader.CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>` 模式调用 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`\ 。

\ **注意：**\ 资源路径可以通过右键单击文件系统停靠面板中的资源并选择“复制路径”，或将文件从文件系统停靠面板拖到脚本中获得。

::

    # 加载位于项目根目录的一个名为“main”的场景，并将其缓存在一个变量中。
    var main = load("res://main.tscn") # main 将包含一个 PackedScene 资源。

\ **重要：**\ 相对路径相对的\ *不是*\ 调用该方法的脚本，而是会使用 ``"res://"`` 前缀。加载时使用相对路径可能与预期行为不符。

这个方法是 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` 的简化版，原方法可以用于更高级的场景。

\ **注意：**\ 必须先将文件导入引擎才能使用此函数加载它们。如果你想在运行时加载 :ref:`Image<class_Image>`\ ，你可以使用 :ref:`Image.load()<class_Image_method_load>`\ 。如果要导入音频文件，可以使用 :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>` 中描述的代码片段。

\ **注意：**\ 如果 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 为 ``true``\ ，则 :ref:`load()<class_@GDScript_method_load>` 无法在导出后的项目中读取已转换的文件。如果你需要在运行时加载存在于 PCK 中的文件，请将 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 设置为 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_ord:

.. rst-class:: classref-method

:ref:`int<class_int>` **ord**\ (\ char\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_ord>`

返回一个整数，表示给定字符 ``char`` 的 Unicode 码位，该字符应为长度为 1 的字符串。

::

    print(ord(“A”)) # 输出 65
    print(ord(“🤖”)) # 输出 129302

这是 :ref:`char()<class_@GDScript_method_char>` 的逆运算。参见 :ref:`String.chr()<class_String_method_chr>` 和 :ref:`String.unicode_at()<class_String_method_unicode_at>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_preload:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **preload**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_preload>`

返回一个位于文件系统绝对路径 ``path`` 的 :ref:`Resource<class_Resource>`\ 。运行时，该资源将在解析脚本时加载，实际上可以将这个函数视作对该资源的引用。请注意：此函数要求 ``path`` 为 :ref:`String<class_String>` 常量。如果要动态/可变的路径加载资源，请使用 :ref:`load()<class_@GDScript_method_load>`\ 。

\ **注意：**\ 资源路径可以通过右键单击资产面板中的资源并选择“复制路径”，或通过将文件从文件系统停靠面板拖到脚本中来获得。

::

    # 创建场景的实例。
    var diamond = preload("res://diamond.tscn").instantiate()

\ **注意：**\ :ref:`preload()<class_@GDScript_method_preload>` 是关键字而非函数，无法作为 :ref:`Callable<class_Callable>` 访问。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_debug:

.. rst-class:: classref-method

|void| **print_debug**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_print_debug>`

与 :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>` 类似，但在打开调试器运行时还会包含当前栈帧。

控制台中的输出应该是类似这样的：

.. code:: text

    Test print
    At: res://test.gd:15:_process()

参见 :ref:`print_stack()<class_@GDScript_method_print_stack>`\ ，\ :ref:`get_stack()<class_@GDScript_method_get_stack>` 和 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`\ 。

\ **注意：** 默认情况下，调用堆栈仅在编辑器构建和调试构建中可用。若要使其在发布构建中也可用，您需要启用 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_stack:

.. rst-class:: classref-method

|void| **print_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_print_stack>`

在当前代码位置打印堆栈跟踪。

控制台输出可能类似于以下内容：

.. code:: text

    Frame 0 - res://test.gd:16 in function '_process'

参见 :ref:`print_debug()<class_@GDScript_method_print_debug>`\ ，\ :ref:`get_stack()<class_@GDScript_method_get_stack>` 和 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`\ 。

\ **注意：** 默认情况下，堆栈跟踪仅在编辑器构建和调试构建中可用。若要使其在发布构建中也可用，需启用 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_range:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **range**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_range>`

返回具有给定范围的数组。\ :ref:`range()<class_@GDScript_method_range>` 可以通过三种方式调用：

\ ``range(n: int)``\ ：从 0 开始，每次加 1，在到达 ``n`` *之前*\ 停止。\ **不包含**\ 参数 ``n``\ 。

\ ``range(b: int, n: int)``\ ：从 ``b`` 开始，每次加 1，在到达 ``n`` *之前*\ 停止。\ **包含**\ 参数 ``b``\ ，\ **不包含**\ 参数 ``n``\ 。

\ ``range(b: int, n: int, s: int)``\ ：从 ``b`` 开始，以 ``s`` 为步长递增/递减，在到达 ``n`` *之前*\ 停止。\ **包含**\ 参数 ``b``\ ，\ **不包含**\ 参数 ``n``\ 。参数 ``s`` **可以**\ 为负数，但不能为 ``0``\ 。如果 ``s`` 为 ``0``\ ，则会输出一条错误消息。

\ :ref:`range()<class_@GDScript_method_range>` 会先将所有参数转换为 :ref:`int<class_int>` 再进行处理。

\ **注意：**\ 如果没有满足条件的值，则返回空数组（例如 ``range(2, 5, -1)`` 和 ``range(5, 5, 1)``\ ）。

\ **示例：**\ 

::

    print(range(4))        # 输出 [0, 1, 2, 3]
    print(range(2, 5))     # 输出 [2, 3, 4]
    print(range(0, 6, 2))  # 输出 [0, 2, 4]
    print(range(4, 1, -1)) # 输出 [4, 3, 2]

要反向遍历 :ref:`Array<class_Array>`\ ，请使用：

::

    var array = [3, 6, 9]
    for i in range(array.size() - 1, -1, -1):
        print(array[i])

输出：

.. code:: text

    9
    6
    3

要遍历 :ref:`float<class_float>`\ ，请在循环中进行转换。

::

    for i in range (3, 0, -1):
        print(i / 10.0)

输出：

.. code:: text

    0.3
    0.2
    0.1

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_type_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **type_exists**\ (\ type\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_@GDScript_method_type_exists>`

如果 :ref:`ClassDB<class_ClassDB>` 中存在给定的 :ref:`Object<class_Object>` 派生类，则返回 ``true``\ 。请注意，\ :ref:`Variant<class_Variant>` 数据类型未在 :ref:`ClassDB<class_ClassDB>` 中注册。

::

    type_exists("Sprite2D") # 返回 true
    type_exists("NonExistentClass") # 返回 false

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
