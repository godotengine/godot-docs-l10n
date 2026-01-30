:github_url: hide

.. _class_@GDScript:

@GDScript
=========

內建 GDScript 常數、函式、注解。

.. rst-class:: classref-introduction-group

說明
----

GDScript 中可在任何腳本存取的實用函式與註解清單。

若需查詢可在任意腳本語言中存取的全域函式及常數，請參見 :ref:`@GlobalScope<class_@GlobalScope>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`GDScript 匯出 <../tutorials/scripting/gdscript/gdscript_exports>`

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

常數
----

.. _class_@GDScript_constant_PI:

.. rst-class:: classref-constant

**PI** = ``3.14159265358979`` :ref:`🔗<class_@GDScript_constant_PI>`

常數，表示圓的周長是直徑的多少倍。相當於 ``TAU / 2``\ ，或以弧度表示的180度。

.. _class_@GDScript_constant_TAU:

.. rst-class:: classref-constant

**TAU** = ``6.28318530717959`` :ref:`🔗<class_@GDScript_constant_TAU>`

圓常數，單位圓的周長，單位為弧度。相當於 ``PI * 2``\ ，即 360 度的弧度值。

.. _class_@GDScript_constant_INF:

.. rst-class:: classref-constant

**INF** = ``inf`` :ref:`🔗<class_@GDScript_constant_INF>`

正浮點無窮大。這是除數為 ``0.0`` 時浮點除法的結果。對於負無窮大，使用 ``-INF``\ 。如果分子為正，除以 ``-0.0`` 將導致負無窮大，因此除以 ``0.0`` 與除以 ``-0.0`` 不同（儘管 ``0.0 == -0.0`` 返回 ``true``\ ）。

\ **警告：**\ 數值無窮大只是浮點數的一個概念，對於整數來說沒有對應的概念。將整數除以 ``0`` 不會產生 :ref:`INF<class_@GDScript_constant_INF>`\ ，而是會產生一個執行階段錯誤。

.. _class_@GDScript_constant_NAN:

.. rst-class:: classref-constant

**NAN** = ``nan`` :ref:`🔗<class_@GDScript_constant_NAN>`

「Not a Number」（非數），一種無效的浮點值；如將浮點數 ``0.0`` 除以 ``0.0`` 等非法運算會返回此值。

\ :ref:`NAN<class_@GDScript_constant_NAN>` 具有特殊行為，例如使用 ``!=`` 永遠回傳 ``true``\ ，其他比較運算子則永遠回傳 ``false``\ 。即便與自身比較亦如此（\ ``NAN == NAN`` 為 ``false``\ ，而 ``NAN != NAN`` 為 ``true``\ ）。因此必須透過 :ref:`@GlobalScope.is_nan()<class_@GlobalScope_method_is_nan>` 來檢查某值是否為 :ref:`NAN<class_@GDScript_constant_NAN>`\ 。

\ **警告：**\ 「非數」僅存在於浮點數概念，整數沒有對應值。將整數 ``0`` 除以 ``0`` 不會得到 :ref:`NAN<class_@GDScript_constant_NAN>`\ ，而是直接觸發執行階段錯誤。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

註解
----

.. _class_@GDScript_annotation_@abstract:

.. rst-class:: classref-annotation

**@abstract**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@abstract>`

Marks a class or a method as abstract.

An abstract class is a class that cannot be instantiated directly. Instead, it is meant to be inherited by other classes. Attempting to instantiate an abstract class will result in an error.

An abstract method is a method that has no implementation. Therefore, a newline or a semicolon is expected after the function header. This defines a contract that inheriting classes must conform to, because the method signature must be compatible when overriding.

Inheriting classes must either provide implementations for all abstract methods, or the inheriting class must be marked as abstract. If a class has at least one abstract method (either its own or an unimplemented inherited one), then it must also be marked as abstract. However, the reverse is not true: an abstract class is allowed to have no abstract methods.

::

    @abstract class Shape:
        @abstract func draw()

    class Circle extends Shape:
        func draw():
            print("Drawing a circle.")

    class Square extends Shape:
        func draw():
            print("Drawing a square.")

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export:

.. rst-class:: classref-annotation

**@export**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export>`

將以下屬性標記為導出（可在檢查器中編輯並保存到磁碟）。要控制導出屬性的類型，請使用類型提示符號。

::

    extends Node

    enum Direction {LEFT, RIGHT, UP, DOWN}

    # Built-in types.
    @export var string = ""
    @export var int_number = 5
    @export var float_number: float = 5

    # Enums.
    @export var type: Variant.Type
    @export var format: Image.Format
    @export var direction: Direction

    # Resources.
    @export var image: Image
    @export var custom_resource: CustomResource

    # Nodes.
    @export var node: Node
    @export var custom_node: CustomNode

    # Typed arrays.
    @export var int_array: Array[int]
    @export var direction_array: Array[Direction]
    @export var image_array: Array[Image]
    @export var node_array: Array[Node]

\ **注意：** 自定義資源和節點應使用\ ``class_name``\ 註冊為全局類，因為檢查器目前只支持全局類。否則，將會導出一個不太具體的類型。

\ **注意：** 節點導出僅在繼承自\ :ref:`Node<class_Node>`\ 的類中支持，並且有一些其他限制。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_category:

.. rst-class:: classref-annotation

**@export_category**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_category>`

定義用於以下匯出屬性的新分類。這有助於在「屬性檢視器」面板中整理屬性。

另請參閱 :ref:`@GlobalScope.PROPERTY_USAGE_CATEGORY<class_@GlobalScope_constant_PROPERTY_USAGE_CATEGORY>`\ 。

::

    @export_category("Statistics")
    @export var hp = 30
    @export var speed = 1.25

\ **注意：**\ 「屬性檢視器」面板清單中的分類通常會區分來自不同類別 (Node、Node2D、Sprite 等) 的屬性。為了更好的清晰度，建議改用 :ref:`@export_group<class_@GDScript_annotation_@export_group>` 和 :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_color_no_alpha:

.. rst-class:: classref-annotation

**@export_color_no_alpha**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_color_no_alpha>`

匯出 :ref:`Color<class_Color>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`Color<class_Color>`\ \] 或 :ref:`PackedColorArray<class_PackedColorArray>` 屬性，且不允許編輯其透明度 (:ref:`Color.a<class_Color_property_a>`)。

另請參閱 :ref:`@GlobalScope.PROPERTY_HINT_COLOR_NO_ALPHA<class_@GlobalScope_constant_PROPERTY_HINT_COLOR_NO_ALPHA>`\ 。

::

    @export_color_no_alpha var dye_color: Color
    @export_color_no_alpha var dye_colors: Array[Color]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_custom:

.. rst-class:: classref-annotation

**@export_custom**\ (\ hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\] = 6\ ) :ref:`🔗<class_@GDScript_annotation_@export_custom>`

允許你為導出的屬性設置自定義提示、提示字符串和使用標誌。注意，在GDScript中不會進行驗證，它只是將參數傳遞給編輯器。

::

    @export_custom(PROPERTY_HINT_NONE, "suffix:m") var suffix: Vector3

\ **注意：**\ 無論 ``usage`` 的值如何， :ref:`@GlobalScope.PROPERTY_USAGE_SCRIPT_VARIABLE<class_@GlobalScope_constant_PROPERTY_USAGE_SCRIPT_VARIABLE>` 標誌總是會被添加，就像任何顯式聲明的腳本變量一樣。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_dir:

.. rst-class:: classref-annotation

**@export_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_dir>`

將 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] 或 :ref:`PackedStringArray<class_PackedStringArray>` 屬性匯出為目錄路徑。路徑僅限於專案資料夾及其子資料夾。如需從整個檔案系統選擇，請參見 :ref:`@export_global_dir<class_@GDScript_annotation_@export_global_dir>`\ 。

另請參見 :ref:`@GlobalScope.PROPERTY_HINT_DIR<class_@GlobalScope_constant_PROPERTY_HINT_DIR>`\ 。

::

    @export_dir var sprite_folder_path: String
    @export_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_enum:

.. rst-class:: classref-annotation

**@export_enum**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_enum>`

將 :ref:`int<class_int>`\ 、\ :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \]、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \]、\ :ref:`PackedByteArray<class_PackedByteArray>`\ 、\ :ref:`PackedInt32Array<class_PackedInt32Array>`\ 、\ :ref:`PackedInt64Array<class_PackedInt64Array>` 或 :ref:`PackedStringArray<class_PackedStringArray>` 屬性匯出為列舉選項列表（或選項陣列）。若屬性為 :ref:`int<class_int>`\ ，則儲存值的索引，順序與提供值一致。你可用冒號指定明確值。若屬性為 :ref:`String<class_String>`\ ，則直接儲存字串。

另請參見 :ref:`@GlobalScope.PROPERTY_HINT_ENUM<class_@GlobalScope_constant_PROPERTY_HINT_ENUM>`\ 。

::

    @export_enum("Warrior", "Magician", "Thief") var character_class: int
    @export_enum("Slow:30", "Average:60", "Very Fast:200") var character_speed: int
    @export_enum("Rebecca", "Mary", "Leah") var character_name: String

    @export_enum("Sword", "Spear", "Mace") var character_items: Array[int]
    @export_enum("double_jump", "climb", "dash") var character_skills: Array[String]

若要設定初始值，必須明確指定：

::

    @export_enum("Rebecca", "Mary", "Leah") var character_name: String = "Rebecca"

若需使用具名 GDScript 列舉，請改用 :ref:`@export<class_@GDScript_annotation_@export>`\ ：

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

以緩動編輯器小工具匯出浮點屬性。你可提供額外提示調整小工具行為。\ ``"attenuation"`` 會翻轉曲線，使調整衰減屬性更直觀。\ ``"positive_only"`` 則限制值必須大於或等於零。

另請參考 :ref:`@GlobalScope.PROPERTY_HINT_EXP_EASING<class_@GlobalScope_constant_PROPERTY_HINT_EXP_EASING>`\ 。

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

Export a :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], or :ref:`PackedStringArray<class_PackedStringArray>` property as a path to a file. The path will be limited to the project folder and its subfolders. See :ref:`@export_global_file<class_@GDScript_annotation_@export_global_file>` to allow picking from the entire filesystem.

If ``filter`` is provided, only matching files will be available for picking.

See also :ref:`@GlobalScope.PROPERTY_HINT_FILE<class_@GlobalScope_constant_PROPERTY_HINT_FILE>`.

::

    @export_file var sound_effect_path: String
    @export_file("*.txt") var notes_path: String
    @export_file var level_paths: Array[String]

\ **Note:** The file will be stored and referenced as UID, if available. This ensures that the reference is valid even when the file is moved. You can use :ref:`ResourceUID<class_ResourceUID>` methods to convert it to path.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file_path:

.. rst-class:: classref-annotation

**@export_file_path**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file_path>`

Same as :ref:`@export_file<class_@GDScript_annotation_@export_file>`, except the file will be stored as a raw path. This means that it may become invalid when the file is moved. If you are exporting a :ref:`Resource<class_Resource>` path, consider using :ref:`@export_file<class_@GDScript_annotation_@export_file>` instead.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags:

.. rst-class:: classref-annotation

**@export_flags**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_flags>`

將整數屬性匯出為位元旗標欄位。這讓您可以用一個屬性儲存多個「已勾選」或 ``true`` 的值，並能方便地從屬性檢視器面板中選取。

另請參閱 :ref:`@GlobalScope.PROPERTY_HINT_FLAGS<class_@GlobalScope_constant_PROPERTY_HINT_FLAGS>`\ 。

::

    @export_flags("Fire", "Water", "Earth", "Wind") var spell_elements = 0

您可以使用冒號來新增明確值：

::

    @export_flags("Self:4", "Allies:8", "Foes:16") var spell_targets = 0

您也可以組合多個旗標：

::

    @export_flags("Self:4", "Allies:8", "Self and Allies:12", "Foes:16")
    var spell_targets = 0

\ **注意：** 旗標值必須至少為 ``1``\ ，且至多為 ``2 ** 32 - 1``\ 。

\ **注意：** 與 :ref:`@export_enum<class_@GDScript_annotation_@export_enum>` 不同，它不會將前一個明確值考慮在內。在以下範例中，A 是 16，B 是 2，C 是 4。

::

    @export_flags("A:16", "B", "C") var x

您也可以在 :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \]、\ :ref:`PackedByteArray<class_PackedByteArray>`\ 、\ :ref:`PackedInt32Array<class_PackedInt32Array>` 和 :ref:`PackedInt64Array<class_PackedInt64Array>` 型別的變數上使用此標記。

::

    @export_flags("Fire", "Water", "Earth", "Wind") var phase_elements: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_navigation:

.. rst-class:: classref-annotation

**@export_flags_2d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_navigation>`

將整數屬性匯出為用於 2D 導航圖層的位元旗標欄位。屬性檢視器面板中的小工具會使用定義在 :ref:`ProjectSettings.layer_names/2d_navigation/layer_1<class_ProjectSettings_property_layer_names/2d_navigation/layer_1>` 的圖層名稱。

另請參閱 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_NAVIGATION>`\ 。

::

    @export_flags_2d_navigation var navigation_layers: int
    @export_flags_2d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_physics:

.. rst-class:: classref-annotation

**@export_flags_2d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_physics>`

將整數屬性匯出為用於 2D 物理圖層的位元旗標欄位。屬性檢視器面板中的小工具會使用定義在 :ref:`ProjectSettings.layer_names/2d_physics/layer_1<class_ProjectSettings_property_layer_names/2d_physics/layer_1>` 的圖層名稱。

另請參閱 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_PHYSICS>`\ 。

::

    @export_flags_2d_physics var physics_layers: int
    @export_flags_2d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_render:

.. rst-class:: classref-annotation

**@export_flags_2d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_render>`

將整數屬性匯出為用於 2D 渲染圖層的位元旗標欄位。屬性檢視器面板中的小工具會使用定義在 :ref:`ProjectSettings.layer_names/2d_render/layer_1<class_ProjectSettings_property_layer_names/2d_render/layer_1>` 的圖層名稱。

另請參閱 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_RENDER>`\ 。

::

    @export_flags_2d_render var render_layers: int
    @export_flags_2d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_navigation:

.. rst-class:: classref-annotation

**@export_flags_3d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_navigation>`

將整數屬性匯出為用於 3D 導航圖層的位元旗標欄位。屬性檢視器面板中的小工具會使用定義在 :ref:`ProjectSettings.layer_names/3d_navigation/layer_1<class_ProjectSettings_property_layer_names/3d_navigation/layer_1>` 的圖層名稱。

另請參閱 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_NAVIGATION>`\ 。

::

    @export_flags_3d_navigation var navigation_layers: int
    @export_flags_3d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_physics:

.. rst-class:: classref-annotation

**@export_flags_3d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_physics>`

將整數屬性匯出為用於 3D 物理圖層的位元旗標欄位。屬性檢視器面板中的小工具會使用定義在 :ref:`ProjectSettings.layer_names/3d_physics/layer_1<class_ProjectSettings_property_layer_names/3d_physics/layer_1>` 的圖層名稱。

另請參閱 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_PHYSICS>`\ 。

::

    @export_flags_3d_physics var physics_layers: int
    @export_flags_3d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_render:

.. rst-class:: classref-annotation

**@export_flags_3d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_render>`

將整數屬性匯出為用於 3D 渲染圖層的位元旗標欄位。屬性檢視器面板中的小工具會使用定義在 :ref:`ProjectSettings.layer_names/3d_render/layer_1<class_ProjectSettings_property_layer_names/3d_render/layer_1>` 的圖層名稱。

另請參閱 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_RENDER>`\ 。

::

    @export_flags_3d_render var render_layers: int
    @export_flags_3d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_avoidance:

.. rst-class:: classref-annotation

**@export_flags_avoidance**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_avoidance>`

將整數屬性匯出為用於導航避開圖層的位元旗標欄位。屬性檢視器面板中的小工具會使用定義在 :ref:`ProjectSettings.layer_names/avoidance/layer_1<class_ProjectSettings_property_layer_names/avoidance/layer_1>` 的圖層名稱。

另請參閱 :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_AVOIDANCE<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_AVOIDANCE>`\ 。

::

    @export_flags_avoidance var avoidance_layers: int
    @export_flags_avoidance var avoidance_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_dir:

.. rst-class:: classref-annotation

**@export_global_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_global_dir>`

將 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] 或 :ref:`PackedStringArray<class_PackedStringArray>` 屬性匯出為目錄的絕對路徑。此路徑可從整個檔案系統選擇。若要限制於專案資料夾及其子資料夾，請見 :ref:`@export_dir<class_@GDScript_annotation_@export_dir>`\ 。

另請參見 :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_DIR<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_DIR>`\ 。

::

    @export_global_dir var sprite_folder_path: String
    @export_global_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_file:

.. rst-class:: classref-annotation

**@export_global_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_global_file>`

將 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] 或 :ref:`PackedStringArray<class_PackedStringArray>` 屬性匯出為檔案的絕對路徑。此路徑可從整個檔案系統選擇。若要限制於專案資料夾及其子資料夾，請見 :ref:`@export_file<class_@GDScript_annotation_@export_file>`\ 。

若有指定 ``filter``\ ，僅可選擇相符檔案。

另請參見 :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_FILE<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_FILE>`\ 。

::

    @export_global_file var sound_effect_path: String
    @export_global_file("*.txt") var notes_path: String
    @export_global_file var multiple_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_group:

.. rst-class:: classref-annotation

**@export_group**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_group>`

為後續匯出的屬性定義新群組。這有助於在屬性檢視器面板中組織屬性。群組可以加上選用的 ``prefix``\ ，這會讓群組只考慮具有此前綴的屬性。分組會在第一個不具有前綴的屬性處中斷。此前綴也會從屬性檢視器面板中的屬性名稱中移除。

如果未提供 ``prefix``\ ，則每個後續屬性都會被加入群組。群組會在定義下一個群組或類別時結束。您也可以透過使用參數為空字串的此標記 ``@export_group("", "")`` 來強制結束群組。

群組無法巢狀，請使用 :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>` 在群組內新增子群組。

另請參閱 :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>`\ 。

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

**@export_multiline**\ (\ hint\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_multiline>`

Export a :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedStringArray<class_PackedStringArray>`, :ref:`Dictionary<class_Dictionary>` or :ref:`Array<class_Array>`\ \[:ref:`Dictionary<class_Dictionary>`\ \] property with a large :ref:`TextEdit<class_TextEdit>` widget instead of a :ref:`LineEdit<class_LineEdit>`. This adds support for multiline content and makes it easier to edit large amount of text stored in the property.

See also :ref:`@GlobalScope.PROPERTY_HINT_MULTILINE_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_MULTILINE_TEXT>`.

::

    @export_multiline var character_biography
    @export_multiline var npc_dialogs: Array[String]
    @export_multiline("monospace", "no_wrap") var favorite_ascii_art: String

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_node_path:

.. rst-class:: classref-annotation

**@export_node_path**\ (\ type\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_node_path>`

將 :ref:`NodePath<class_NodePath>` 或 :ref:`Array<class_Array>`\ \[:ref:`NodePath<class_NodePath>`\ \] 屬性匯出，並可指定允許的節點型別。

另請參見 :ref:`@GlobalScope.PROPERTY_HINT_NODE_PATH_VALID_TYPES<class_@GlobalScope_constant_PROPERTY_HINT_NODE_PATH_VALID_TYPES>`\ 。

::

    @export_node_path("Button", "TouchScreenButton") var some_button
    @export_node_path("Button", "TouchScreenButton") var many_buttons: Array[NodePath]

\ **注意：**\ 型別必須為原生類別，或使用 ``class_name`` 關鍵字全域註冊且繼承自 :ref:`Node<class_Node>` 的腳本。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_placeholder:

.. rst-class:: classref-annotation

**@export_placeholder**\ (\ placeholder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_placeholder>`

將 :ref:`String<class_String>`\ 、\ :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] 或 :ref:`PackedStringArray<class_PackedStringArray>` 屬性匯出，當無值時編輯器小工具會顯示預設提示文字。

另請參見 :ref:`@GlobalScope.PROPERTY_HINT_PLACEHOLDER_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_PLACEHOLDER_TEXT>`\ 。

::

    @export_placeholder("Name in lowercase") var character_id: String
    @export_placeholder("Name in lowercase") var friend_ids: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_range:

.. rst-class:: classref-annotation

**@export_range**\ (\ min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, step\: :ref:`float<class_float>` = 1.0, extra_hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_range>`

Export an :ref:`int<class_int>`, :ref:`float<class_float>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>`\ \[:ref:`float<class_float>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>`, :ref:`PackedFloat32Array<class_PackedFloat32Array>`, or :ref:`PackedFloat64Array<class_PackedFloat64Array>` property as a range value. The range must be defined by ``min`` and ``max``, as well as an optional ``step`` and a variety of extra hints. The ``step`` defaults to ``1`` for integer properties. For floating-point numbers this value depends on your :ref:`EditorSettings.interface/inspector/default_float_step<class_EditorSettings_property_interface/inspector/default_float_step>` setting.

If hints ``"or_greater"`` and ``"or_less"`` are provided, the editor widget will not cap the value at range boundaries. The ``"exp"`` hint will make the edited values on range to change exponentially. The ``"prefer_slider"`` hint will make integer values use the slider instead of arrows for editing, while ``"hide_control"`` will hide the element controlling the value of the editor widget.

Hints also allow to indicate the units for the edited value. Using ``"radians_as_degrees"`` you can specify that the actual value is in radians, but should be displayed in degrees in the Inspector dock (the range values are also in degrees). ``"degrees"`` allows to add a degree sign as a unit suffix (the value is unchanged). Finally, a custom suffix can be provided using ``"suffix:unit"``, where "unit" can be any string.

See also :ref:`@GlobalScope.PROPERTY_HINT_RANGE<class_@GlobalScope_constant_PROPERTY_HINT_RANGE>`.

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

導出一個帶有 :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` 標誌的屬性。該屬性不會在編輯器中顯示，但它會被序列化並存儲在場景或資源文件中。這對於帶有 :ref:`@tool<class_@GDScript_annotation_@tool>` 的腳本特別有用。此外，當調用 :ref:`Resource.duplicate()<class_Resource_method_duplicate>` 或 :ref:`Node.duplicate()<class_Node_method_duplicate>` 方法時，該屬性的值會被複製，這與非導出變量不同。

::

    var a # 不存儲在文件中，不在編輯器中顯示。
    @export_storage var b # Stored in the file, not displayed in the editor.
    @export var c: int # Stored in the file, displayed in the editor.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_subgroup:

.. rst-class:: classref-annotation

**@export_subgroup**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_subgroup>`

為後續的匯出屬性定義新的子群組。這有助於在屬性檢視器面板中組織屬性。子群組的運作方式與群組完全相同，只是它們需要有一個父群組才能存在。請參閱 :ref:`@export_group<class_@GDScript_annotation_@export_group>`\ 。

另請參閱 :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>`\ 。

::

    @export_group("Racer Properties")
    @export var nickname = "Nick"
    @export var age = 26

    @export_subgroup("Car Properties", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

\ **注意：** 子群組無法巢狀，但您可以使用斜線分隔符號 (``/``) 來達成所需的效果：

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

將 :ref:`Callable<class_Callable>` 屬性匯出為一個可點擊按鈕，標籤為 ``text``\ 。按下按鈕時，會呼叫該 callable。

若指定 ``icon``\ ，將會透過 :ref:`Control.get_theme_icon()<class_Control_method_get_theme_icon>` 從 ``"EditorIcons"`` 主題類型取得按鈕圖示。若未指定則預設使用 ``"Callable"`` 圖示。

建議使用 :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`\ ，以便安全地復原動作。

另請參見 :ref:`@GlobalScope.PROPERTY_HINT_TOOL_BUTTON<class_@GlobalScope_constant_PROPERTY_HINT_TOOL_BUTTON>`\ 。

::

    @tool
    extends Sprite2D

    @export_tool_button("Hello") var hello_action = hello
    @export_tool_button("Randomize the color!", "ColorRect")
    var randomize_color_action = randomize_color

    func hello():
        print("Hello world!")

    func randomize_color():
        var undo_redo = EditorInterface.get_editor_undo_redo()
        undo_redo.create_action("Randomized Sprite2D Color")
        undo_redo.add_do_property(self, &"self_modulate", Color(randf(), randf(), randf()))
        undo_redo.add_undo_property(self, &"self_modulate", self_modulate)
        undo_redo.commit_action()

\ **注意：**\ 該屬性匯出時不帶 :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` 標誌，因 :ref:`Callable<class_Callable>` 無法正確序列化及儲存至檔案。

\ **注意：**\ 匯出專案時，\ :ref:`EditorInterface<class_EditorInterface>` 與 :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>` 並不存在，可能導致部分腳本出錯。為避免此情況，請使用 :ref:`Engine.get_singleton()<class_Engine_method_get_singleton>` 並省略變數宣告的靜態型別：

::

    var undo_redo = Engine.get_singleton(&"EditorInterface").get_editor_undo_redo()

\ **注意：**\ 避免在繼承自 :ref:`RefCounted<class_RefCounted>` 的類別成員變數中儲存 lambda callable（如資源），否則可能導致記憶體洩漏。請僅使用方法 callable，並可選用 :ref:`Callable.bind()<class_Callable_method_bind>` 或 :ref:`Callable.unbind()<class_Callable_method_unbind>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@icon:

.. rst-class:: classref-annotation

**@icon**\ (\ icon_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@icon>`

為目前腳本新增自訂圖示。\ ``icon_path`` 指定的圖示會顯示於場景面板中該類別的每個節點，以及各種編輯器對話框。

::

    @icon("res://path/to/class/icon.svg")

\ **注意：** 只有腳本本身可設自訂圖示，不支援內部類別。

\ **注意：** 注解必須放在類別定義與繼承之前。

\ **注意：** 不同於多數注解，\ :ref:`@icon<class_@GDScript_annotation_@icon>` 參數必須為字串常值（不支援常數運算式）。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@onready:

.. rst-class:: classref-annotation

**@onready**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@onready>`

將下列屬性標記為在 :ref:`Node<class_Node>` 進入就緒狀態時才賦值。這些屬性不會在節點初始化（\ :ref:`Object._init()<class_Object_private_method__init>`\ ）時立即設定，而是會在呼叫 :ref:`Node._ready()<class_Node_private_method__ready>` 前計算並儲存。

::

    @onready var character_name = $Label

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@rpc:

.. rst-class:: classref-annotation

**@rpc**\ (\ mode\: :ref:`String<class_String>` = "authority", sync\: :ref:`String<class_String>` = "call_remote", transfer_mode\: :ref:`String<class_String>` = "reliable", transfer_channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_@GDScript_annotation_@rpc>`

Mark the following method for remote procedure calls. See :doc:`High-level multiplayer <../tutorials/networking/high_level_multiplayer>`.

If ``mode`` is set as ``"any_peer"``, allows any peer to call this RPC function. Otherwise, only the authority peer is allowed to call it and ``mode`` should be kept as ``"authority"``. When configuring functions as RPCs with :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, each of these modes respectively corresponds to the :ref:`MultiplayerAPI.RPC_MODE_AUTHORITY<class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY>` and :ref:`MultiplayerAPI.RPC_MODE_ANY_PEER<class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER>` RPC modes. See :ref:`RPCMode<enum_MultiplayerAPI_RPCMode>`. If a peer that is not the authority tries to call a function that is only allowed for the authority, the function will not be executed. If the error can be detected locally (when the RPC configuration is consistent between the local and the remote peer), an error message will be displayed on the sender peer. Otherwise, the remote peer will detect the error and print an error there.

If ``sync`` is set as ``"call_remote"``, the function will only be executed on the remote peer, but not locally. To run this function locally too, set ``sync`` to ``"call_local"``. When configuring functions as RPCs with :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, this is equivalent to setting ``call_local`` to ``true``.

The ``transfer_mode`` accepted values are ``"unreliable"``, ``"unreliable_ordered"``, or ``"reliable"``. It sets the transfer mode of the underlying :ref:`MultiplayerPeer<class_MultiplayerPeer>`. See :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`.

The ``transfer_channel`` defines the channel of the underlying :ref:`MultiplayerPeer<class_MultiplayerPeer>`. See :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`.

The order of ``mode``, ``sync`` and ``transfer_mode`` does not matter, but values related to the same argument must not be used more than once. ``transfer_channel`` always has to be the 4th argument (you must specify 3 preceding arguments).

::

    @rpc
    func fn(): pass

    @rpc("any_peer", "unreliable_ordered")
    func fn_update_pos(): pass

    @rpc("authority", "call_remote", "reliable", 0) # Equivalent to @rpc
    func fn_default(): pass

\ **Note:** Methods annotated with :ref:`@rpc<class_@GDScript_annotation_@rpc>` cannot receive objects which define required parameters in :ref:`Object._init()<class_Object_private_method__init>`. See :ref:`Object._init()<class_Object_private_method__init>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@static_unload:

.. rst-class:: classref-annotation

**@static_unload**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@static_unload>`

創建一個帶有靜態變量的腳本，使得這些變量在失去所有引用後不會持久保存。如果腳本再次被加載，靜態變量將恢復到它們的默認值。

\ **注意：**\ 由於註解描述的是它們的主體，\ :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` 註解必須放置在類定義和繼承聲明之前。

\ **警告：**\ 目前，由於一個 bug 的存在，即使使用了 :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` 註解，腳本也永遠不會被釋放。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@tool:

.. rst-class:: classref-annotation

**@tool**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@tool>`

將目前腳本標記為工具腳本，使其可由編輯器載入與執行。請參見 :doc:`在編輯器中執行程式碼 <../tutorials/plugins/running_code_in_the_editor>`\ 。

::

    @tool
    extends Node

\ **注意：** 注解必須放在類別定義與繼承之前。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore:

.. rst-class:: classref-annotation

**@warning_ignore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore>`

將下列語句標記為忽略指定的 ``warning``\ 。詳見 :doc:`GDScript 警告系統 <../tutorials/scripting/gdscript/warning_system>`\ 。

::

    func test():
        print("hello")
        return
        @warning_ignore("unreachable_code")
        print("unreachable")

另請參考 :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` 及 :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_restore:

.. rst-class:: classref-annotation

**@warning_ignore_restore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_restore>`

在使用 :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` 後，停止忽略所列的警告類型。忽略的警告類型會重設回專案設定。若省略此註解，將會持續忽略至檔案結尾。

\ **注意：**\ 與大多數其他註解不同，\ :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` 的參數必須為字串常值（不支援常數運算式）。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_start:

.. rst-class:: classref-annotation

**@warning_ignore_start**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_start>`

開始忽略所列的警告類型，直到檔案結尾或遇到 :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` 且指定該警告類型為止。

::

    func test():
        var a = 1 # 警告（若於專案設定啟用）。
        @warning_ignore_start("unused_variable")
        var b = 2 # 無警告。
        var c = 3 # 無警告。
        @warning_ignore_restore("unused_variable")
        var d = 4 # 警告（若於專案設定啟用）。

\ **注意：**\ 如僅欲抑制單一警告，請改用 :ref:`@warning_ignore<class_@GDScript_annotation_@warning_ignore>`\ 。

\ **注意：**\ 與多數其他註解不同，\ :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` 的參數必須為字串常值（不支援常數運算式）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_@GDScript_method_Color8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **Color8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) :ref:`🔗<class_@GDScript_method_Color8>`

**已棄用：** Use :ref:`Color.from_rgba8()<class_Color_method_from_rgba8>` instead.

返回一個由整數紅通道（\ ``r8``\ ）、綠通道（\ ``g8``\ ）、藍通道（\ ``b8``\ ）和可選的 Alpha 通道（\ ``a8``\ ）建構的 :ref:`Color<class_Color>`\ ，每個通道的最終值都會除以 ``255.0``\ 。如果你需要精確配對 :ref:`Image<class_Image>` 中的顏色值，\ :ref:`Color8()<class_@GDScript_method_Color8>` 比標準的 :ref:`Color<class_Color>` 建構子更有用。

::

    var red = Color8(255, 0, 0)             # 與 Color(1, 0, 0) 相同
    var dark_blue = Color8(0, 0, 51)        # 與 Color(0, 0, 0.2) 相同。
    var my_color = Color8(306, 255, 0, 102) # 與 Color(1.2, 1, 0, 0.4) 相同。

\ **注意：**\ 因為 :ref:`Color8()<class_@GDScript_method_Color8>` 比標準 :ref:`Color<class_Color>` 建構子精度更低，所以使用 :ref:`Color8()<class_@GDScript_method_Color8>` 建立的顏色通常與使用標準 :ref:`Color<class_Color>` 建構子建立的相同顏色不相等。請使用 :ref:`Color.is_equal_approx()<class_Color_method_is_equal_approx>` 進行比較，避免浮點數精度誤差。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_assert:

.. rst-class:: classref-method

|void| **assert**\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_method_assert>`

斷言 ``condition`` 為 ``true``\ 。如果 ``condition`` 為 ``false`` ，會產生一個錯誤。從編輯器執行時，運行中的專案也會暫停，直到你繼續執行。這可以作為比 :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` 更強的錯誤回報方式，用於專案開發者或外掛使用者。

你可選擇性傳入 ``message`` ，在通用的「Assertion failed」訊息之外顯示更多資訊，說明為什麼斷言失敗。

\ **警告：** 出於效能考量，\ :ref:`assert()<class_@GDScript_method_assert>` 包含的程式碼只會在除錯版本或從編輯器執行專案時執行。不要在 :ref:`assert()<class_@GDScript_method_assert>` 呼叫中加入有副作用的程式碼，否則專案於發行模式匯出時行為會出現差異。

::

    # 假設我們總希望 speed 介於 0 到 20 之間。
    var speed = -10
    assert(speed < 20) # True，程式會繼續執行。
    assert(speed >= 0) # False，程式將停止。
    assert(speed >= 0 and speed < 20) # 也可將兩個條件合併檢查。
    assert(speed < 20, "限速為 20") # 顯示訊息。

\ **注意：** :ref:`assert()<class_@GDScript_method_assert>` 是關鍵字，不是函式，無法作為 :ref:`Callable<class_Callable>` 呼叫，也不能用於運算式中。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_char:

.. rst-class:: classref-method

:ref:`String<class_String>` **char**\ (\ code\: :ref:`int<class_int>`\ ) :ref:`🔗<class_@GDScript_method_char>`

回傳指定 Unicode 碼位 ``code`` 對應的單一字元（以長度為 1 的 :ref:`String<class_String>` 表示）。

::

    print(char(65))     # 印出「A」
    print(char(129302)) # 印出 "🤖"（機器人臉表情符號）

這是 :ref:`ord()<class_@GDScript_method_ord>` 的反向操作。另請參閱 :ref:`String.chr()<class_String_method_chr>` 與 :ref:`String.unicode_at()<class_String_method_unicode_at>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_convert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **convert**\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ) :ref:`🔗<class_@GDScript_method_convert>`

**已棄用：** Use :ref:`@GlobalScope.type_convert()<class_@GlobalScope_method_type_convert>` instead.

將 ``what`` 儘可能轉換為 ``type``\ 。 ``type`` 使用 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 列舉的值。

::

    var a = [4, 2.5, 1.2]
    print(a is Array) # 輸出 true

    var b = convert(a, TYPE_PACKED_BYTE_ARRAY)
    print(b)          # 輸出 [4, 2, 1]
    print(b is Array) # 輸出 false

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_dict_to_inst:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **dict_to_inst**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_@GDScript_method_dict_to_inst>`

**已棄用：** Consider using :ref:`JSON.to_native()<class_JSON_method_to_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

將用 :ref:`inst_to_dict()<class_@GDScript_method_inst_to_dict>` 建立的 ``dictionary`` 轉換回 Object 實例。這對反序列化很有用。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_get_stack:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_get_stack>`

Returns an array of dictionaries representing the current call stack.

::

    func _ready():
        foo()

    func foo():
        bar()

    func bar():
        print(get_stack())

Starting from ``_ready()``, ``bar()`` would print:

.. code:: text

    [{function:bar, line:12, source:res://script.gd}, {function:foo, line:9, source:res://script.gd}, {function:_ready, line:6, source:res://script.gd}]

See also :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`print_stack()<class_@GDScript_method_print_stack>`, and :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Note:** By default, backtraces are only available in editor builds and debug builds. To enable them for release builds as well, you need to enable :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_inst_to_dict:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **inst_to_dict**\ (\ instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_@GDScript_method_inst_to_dict>`

**已棄用：** Consider using :ref:`JSON.from_native()<class_JSON_method_from_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

將傳入的 ``instance`` 轉換為 :ref:`Dictionary<class_Dictionary>`\ ，可用於序列化。

::

    var foo = "bar"
    func _ready():
        var d = inst_to_dict(self)
        print(d.keys())
        print(d.values())

輸出：

.. code:: text

    [@subpath, @path, foo]
    [, res://test.gd, bar]

\ **注意：**\ 此函式僅能序列化掛載於獨立檔案之 :ref:`GDScript<class_GDScript>` 腳本的物件。不支援沒有掛載腳本、使用其他語言腳本或內建腳本的物件。

\ **注意：**\ 此函式不具遞迴性，巢狀物件不會被轉成字典。同時，以參考傳遞的屬性（\ :ref:`Object<class_Object>`\ 、\ :ref:`Dictionary<class_Dictionary>`\ 、\ :ref:`Array<class_Array>` 與各種打包陣列）僅複製參考而非內容。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_is_instance_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_instance_of**\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_is_instance_of>`

若 ``value`` 為 ``type`` 的實例，則回傳 ``true``\ 。\ ``type`` 必須符合以下其中一種：

- :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 列舉常數，例如 :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>`\ 。

- 登錄在 :ref:`ClassDB<class_ClassDB>` 且繼承自 :ref:`Object<class_Object>` 的類別，例如 :ref:`Node<class_Node>`\ 。

- :ref:`Script<class_Script>`\ （可使用任何類別，包含巢狀類）。

與 ``is`` 運算子的右元不同，\ ``type`` 可為變數。\ ``is`` 支援更多功能（如型別化陣列），若不需動態檢查請優先使用該運算子。

\ **範例：**\ 

::

    print(is_instance_of(a, TYPE_INT))
    print(is_instance_of(a, Node))
    print(is_instance_of(a, MyClass))
    print(is_instance_of(a, MyClass.InnerClass))

\ **注意：**\ 若 ``value`` 或 ``type`` 為已釋放物件（參見 :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`\ ），或 ``type`` 不屬於上述項目，執行時將拋出錯誤。

另見 :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>`\ 、\ :ref:`type_exists()<class_@GDScript_method_type_exists>`\ 、\ :ref:`Array.is_same_typed()<class_Array_method_is_same_typed>`\ （與其他 :ref:`Array<class_Array>` 方法）。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **len**\ (\ var\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_len>`

回傳指定 Variant ``var`` 的長度。長度可為 :ref:`String<class_String>` 或 :ref:`StringName<class_StringName>` 的字元數、任意陣列型別的元素數，或 :ref:`Dictionary<class_Dictionary>` 的大小。對其他型別會產生運作時錯誤並中止執行。

::

    var a = [1, 2, 3, 4]
    len(a) # 回傳 4

    var b = "Hello!"
    len(b) # 回傳 6

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_load>`

從檔案系統的絕對 ``path`` 載入 :ref:`Resource<class_Resource>`\ 。除非該資源已被其他地方（如其他腳本或場景）引用，否則會於呼叫函式時從磁碟載入，這可能會產生小幅延遲，特別是在載入大型場景時。若需多次載入同一資源，建議將其儲存於變數內或使用 :ref:`preload()<class_@GDScript_method_preload>` 預載入以避免不必要的延遲。本方法等同於以 :ref:`ResourceLoader.CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>` 模式呼叫 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`\ 。

\ **注意：** 可於「檔案系統」面板右鍵點擊資源並選擇「複製路徑」，或將檔案拖拉至腳本取得資源路徑。

::

    # 載入專案根目錄下名為 "main" 的場景並快取於變數。
    var main = load("res://main.tscn") # main 會包含 PackedScene 資源。

\ **重要：** 相對路徑 *不是* 以呼叫此方法的腳本所在目錄為準，而是會自動加上 ``"res://"`` 前綴。從相對路徑載入有可能無法如預期運作。

本函式為 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` 的簡化版，適用於更進階的使用情境。

\ **注意：** 檔案必須先匯入引擎後才能使用本方法載入。若需於執行時載入 :ref:`Image<class_Image>`\ ，可使用 :ref:`Image.load()<class_Image_method_load>`\ ；若需匯入音訊檔，請參考 :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>` 內說明的範例。

\ **注意：** 若 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 設為 ``true``\ ，\ :ref:`load()<class_@GDScript_method_load>` 將無法於匯出後專案讀取已轉換的檔案。如需在執行時載入 PCK 內的檔案，請將該設定設為 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_ord:

.. rst-class:: classref-method

:ref:`int<class_int>` **ord**\ (\ char\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_ord>`

回傳一個整數，表示指定字元 ``char`` 的 Unicode 碼位。該字元應為長度為 1 的字串。

::

    print(ord("A")) # 印出 65
    print(ord("🤖")) # 印出 129302

這是 :ref:`char()<class_@GDScript_method_char>` 的反向操作。另請參閱 :ref:`String.chr()<class_String_method_chr>` 與 :ref:`String.unicode_at()<class_String_method_unicode_at>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_preload:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **preload**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_preload>`

從檔案系統的 ``path`` 載入 :ref:`Resource<class_Resource>`\ 。於執行時，該資源會在腳本解析時載入，此函式實際上是對該資源的引用。請注意，\ ``path`` 必須為常數 :ref:`String<class_String>`\ 。若需從動態或變數路徑載入資源，請改用 :ref:`load()<class_@GDScript_method_load>`\ 。

\ **注意：** 可於「資產面板」右鍵點擊資源選「複製路徑」，或將檔案自「檔案系統」面板拖曳至腳本獲得路徑。

::

    # 建立場景實例。
    var diamond = preload("res://diamond.tscn").instantiate()

\ **注意：** :ref:`preload()<class_@GDScript_method_preload>` 是關鍵字，非函式，無法作為 :ref:`Callable<class_Callable>` 使用。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_debug:

.. rst-class:: classref-method

|void| **print_debug**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_print_debug>`

Like :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`, but includes the current stack frame when running with the debugger turned on.

The output in the console may look like the following:

.. code:: text

    Test print
    At: res://test.gd:15:_process()

See also :ref:`print_stack()<class_@GDScript_method_print_stack>`, :ref:`get_stack()<class_@GDScript_method_get_stack>`, and :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Note:** By default, backtraces are only available in editor builds and debug builds. To enable them for release builds as well, you need to enable :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_stack:

.. rst-class:: classref-method

|void| **print_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_print_stack>`

在目前的程式碼位置列印堆疊追蹤。

主控台中的輸出可能如下所示：

.. code:: text

    Frame 0 - res://test.gd:16 in function '_process'

另請參閱 :ref:`print_debug()<class_@GDScript_method_print_debug>`\ 、\ :ref:`get_stack()<class_@GDScript_method_get_stack>` 與 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`\ 。

\ **注意：** 預設情況下，堆疊追蹤僅在編輯器建置與除錯建置中可用。若要在發佈建置中也啟用，您需要啟用 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_range:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **range**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_range>`

回傳包含指定範圍的陣列。\ :ref:`range()<class_@GDScript_method_range>` 可以用三種方式呼叫：

\ ``range(n: int)``\ ：從 0 開始，每次加 1，並在 *到達前* ``n`` 停止。參數 ``n`` 為 **不包含**\ 。

\ ``range(b: int, n: int)``\ ：從 ``b`` 開始，每次加 1，在 *到達前* ``n`` 停止。參數 ``b`` 為 **包含**\ ，\ ``n`` 為 **不包含**\ 。

\ ``range(b: int, n: int, s: int)``\ ：從 ``b`` 開始，以 ``s`` 為步長遞增或遞減，在 *到達前* ``n`` 停止。參數 ``b`` 為 **包含**\ ，\ ``n`` 為 **不包含**\ 。\ ``s`` **可以**\ 是負數，但不能為 ``0``\ 。如果 ``s`` 為 ``0``\ ，會顯示錯誤訊息。

\ :ref:`range()<class_@GDScript_method_range>` 會先將所有參數轉為 :ref:`int<class_int>` 再處理。

\ **注意：** 如果沒有值滿足條件（例： ``range(2, 5, -1)`` 或 ``range(5, 5, 1)``\ ），則回傳空陣列。

\ **範例：**\ 

::

    print(range(4))        # 輸出 [0, 1, 2, 3]
    print(range(2, 5))     # 輸出 [2, 3, 4]
    print(range(0, 6, 2))  # 輸出 [0, 2, 4]
    print(range(4, 1, -1)) # 輸出 [4, 3, 2]

若要反向走訪 :ref:`Array<class_Array>`\ ，請使用：

::

    var array = [3, 6, 9]
    for i in range(array.size() - 1, -1, -1):
        print(array[i])

輸出：

.. code:: text

    9
    6
    3

若要走訪 :ref:`float<class_float>`\ ，請在迴圈中轉型：

::

    for i in range(3, 0, -1):
        print(i / 10.0)

輸出：

.. code:: text

    0.3
    0.2
    0.1

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_type_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **type_exists**\ (\ type\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_@GDScript_method_type_exists>`

如果 :ref:`ClassDB<class_ClassDB>` 中存在給定的 :ref:`Object<class_Object>` 衍生類，則返回 ``true``\ 。請注意，\ :ref:`Variant<class_Variant>` 資料型別未在 :ref:`ClassDB<class_ClassDB>` 中註冊。

::

    type_exists("Sprite2D") # 返回 true
    type_exists("NonExistentClass") # 返回 false

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
