:github_url: hide

.. _class_@GDScript:

@GDScript
=========

Вбудовані константи, функції та анотації GDScript.

.. rst-class:: classref-introduction-group

Опис
--------

Список службових функцій і анотацій, доступних з будь-якого сценарію, написаного на GDScript. 

Список глобальних функцій і констант, до яких можна отримати доступ будь-якою мовою сценаріїв, див. :ref:`@GlobalScope<class_@GlobalScope>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Експорт GDScript <../tutorials/scripting/gdscript/gdscript_exports>`

.. rst-class:: classref-reftable-group

Методи
------------

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

Константи
------------------

.. _class_@GDScript_constant_PI:

.. rst-class:: classref-constant

**PI** = ``3.14159265358979`` :ref:`🔗<class_@GDScript_constant_PI>`

Константа, яка показує, скільки разів діаметр кола поміщається в його периметрі. Це еквівалентно ``TAU / 2``, або 180 градусів в обертах.

.. _class_@GDScript_constant_TAU:

.. rst-class:: classref-constant

**TAU** = ``6.28318530717959`` :ref:`🔗<class_@GDScript_constant_TAU>`

Константа кола, окружність одного кола в радіанах. Це еквівалентно ``PI * 2``, або 360 градусів в обертах.

.. _class_@GDScript_constant_INF:

.. rst-class:: classref-constant

**INF** = ``inf`` :ref:`🔗<class_@GDScript_constant_INF>`

Позитивна нескінченність з рухомою комою. Це результат ділення з рухомою комою, коли дільник має вигляд ``0.0``. Для від'ємної нескінченності використовуйте ``-INF``. Ділення на ``-0.0`` призведе до від'ємної нескінченності, якщо чисельник додатний, тому ділення на ``0.0`` - це не те саме, що ділення на ``-0.0`` (незважаючи на те, що ``0.0 == -0.0`` повертає ``true``).

\ **Попередження:** Числова нескінченність це концепція лише для чисел з рухомою комою і не має еквівалента для цілих чисел. Ділення цілого числа на ``0`` не дасть :ref:`INF<class_@GDScript_constant_INF>`, а призведе до помилки під час виконання.

.. _class_@GDScript_constant_NAN:

.. rst-class:: classref-constant

**NAN** = ``nan`` :ref:`🔗<class_@GDScript_constant_NAN>`

«Не число», недійсне значення з плаваючою комою. Його повертають деякі недійсні операції, такі як ділення числа з плаваючою комою ``0.0`` на ``0.0``.

\ :ref:`NAN<class_@GDScript_constant_NAN>` має спеціальні властивості, зокрема те, що ``!=`` завжди повертає ``true``, тоді як інші оператори порівняння завжди повертають ``false``. Це вірно навіть під час порівняння з самим собою (``NAN == NAN`` повертає ``false`` та ``NAN != NAN`` повертає ``true``). Через це необхідно використовувати :ref:`@GlobalScope.is_nan()<class_@GlobalScope_method_is_nan>`, щоб перевірити, чи число дорівнює :ref:`NAN<class_@GDScript_constant_NAN>`.

\ **Попередження:** «Не число» – це поняття лише для чисел з плаваючою комою та не має еквівалента для цілих чисел. Ділення цілого числа ``0`` на ``0`` не призведе до :ref:`NAN<class_@GDScript_constant_NAN>`, а натомість призведе до помилки під час виконання.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Анотації
----------------

.. _class_@GDScript_annotation_@abstract:

.. rst-class:: classref-annotation

**@abstract**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@abstract>`

Позначає клас або метод як абстрактний.

Абстрактний клас – це клас, екземпляр якого не можна створити безпосередньо. Натомість він призначений для успадкування іншими класами. Спроба створити екземпляр абстрактного класу призведе до помилки.

Абстрактний метод – це метод, який не має реалізації. Тому після заголовка функції очікується новий рядок або крапка з комою. Це визначає контракт, якому повинні відповідати класи, що успадковуються, оскільки сигнатура методу має бути сумісною під час перевизначення.

Класи, що успадковуються, повинні або забезпечувати реалізації для всіх абстрактних методів, або клас, що успадковується, має бути позначений як абстрактний. Якщо клас має принаймні один абстрактний метод (або власний, або нереалізований успадкований), то він також має бути позначений як абстрактний. Однак зворотне не вірно: абстрактному класу дозволено не мати абстрактних методів.

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

Позначте наступну властивість як експортовану (можна редагувати в панелі інспектора та зберегти на диску). Щоб керувати типом експортованої властивості, використовуйте нотацію підказки типу.

::

    extends Node

    enum Direction {LEFT, RIGHT, UP, DOWN}

     # Вбудовані типи.
     @export var strint = ""
     @export var int_number = 5
     @export var float_number: float = 5

     # Enums.
     @export variable type: Variant.Type
    @export variable format: Image.Format
    @export var direction: Direction

     # Ресурси.
     @export var image: Image
    @export var custom_resource: CustomResource

     # Вузли.
     @export var node: node
    @export var custom_node: CustomNode

     # Введені масиви.
     @export var int_array: Array[int]
    @export var direction_array: Array[Direction]
    @export var image_array: Array[Image]
    @export var node_array: Array[node]

\ **Примітка:** Спеціальні ресурси та вузли слід реєструвати як глобальні класи за допомогою ``class_name``, оскільки Inspector наразі підтримує лише глобальні класи. Інакше буде експортовано менш специфічний тип.

\ **Примітка:** Експорт Node підтримується лише в класах, похідних від :ref:`Node<class_Node>`, і має ряд інших обмежень.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_category:

.. rst-class:: classref-annotation

**@export_category**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_category>`

Визначає нову категорію для наступних експортованих властивостей. Допоможе впорядкувати властивості на панелі інспектора.

Дивіться також :ref:`@GlobalScope.PROPERTY_USAGE_CATEGORY<class_@GlobalScope_constant_PROPERTY_USAGE_CATEGORY>`.

::

    @export_category("Statistics")
    @export var hp = 30
    @export var speed = 1.25

\ **Примітка:** Категорії у списку панелі Інспектора зазвичай розділяють властивості, що належать до різних класів (Node, Node2D, Sprite і т. д.). Для більшої наочності рекомендується використовувати :ref:`@export_group<class_@GDScript_annotation_@export_group>` та :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_color_no_alpha:

.. rst-class:: classref-annotation

**@export_color_no_alpha**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_color_no_alpha>`

Експорт властивісті :ref:`Color<class_Color>`, :ref:`Array<class_Array>`\ \[:ref:`Color<class_Color>`\ \] або :ref:`PackedColorArray<class_PackedColorArray>` без можливості редагувати прозорість (:ref:`Color.a<class_Color_property_a>`).

Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_COLOR_NO_ALPHA<class_@GlobalScope_constant_PROPERTY_HINT_COLOR_NO_ALPHA>`.

::

    @export_color_no_alpha var dye_color: Color 
    @export_color_no_alpha var dye_colors: array[color]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_custom:

.. rst-class:: classref-annotation

**@export_custom**\ (\ hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\] = 6\ ) :ref:`🔗<class_@GDScript_annotation_@export_custom>`

Дозволяє встановити спеціальну підказку, рядок підказки та позначки використання для експортованої властивості. Зауважте, що GDScript не виконує перевірку, він просто передає параметри до редактора.

::

     @export_custom(PROPERTY_HINT_NONE, "suffix:m") suffix var: Vector3

\ **Примітка:** Незалежно від значення ``usage`` прапор :ref:`@GlobalScope.PROPERTY_USAGE_SCRIPT_VARIABLE<class_@GlobalScope_constant_PROPERTY_USAGE_SCRIPT_VARIABLE>` додається завжди, як і будь-яка явно оголошена змінна сценарію.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_dir:

.. rst-class:: classref-annotation

**@export_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_dir>`

Експортуйте властивість :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] або :ref:`PackedStringArray<class_PackedStringArray>` як шлях до каталогу. Шлях буде обмежено папкою проекту та її вкладеними папками. Перегляньте :ref:`@export_global_dir<class_@GDScript_annotation_@export_global_dir>`, щоб дозволити вибір із усієї файлової системи.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_DIR<class_@GlobalScope_constant_PROPERTY_HINT_DIR>`.

::

     @export_dir var sprite_folder_path: String
     @export_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_enum:

.. rst-class:: classref-annotation

**@export_enum**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_enum>`

Експортуйте :ref:`int<class_int>`, :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>` або :ref:`PackedStringArray<class_PackedStringArray>` як пронумерований список параметрів (або масив параметрів). Якщо властивість є :ref:`int<class_int>`, тоді зберігається індекс значення, у тому ж порядку, що надаються значення. Ви можете додавати явні значення за допомогою двокрапки. Якщо властивість є :ref:`String<class_String>`, тоді значення зберігається.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_ENUM<class_@GlobalScope_constant_PROPERTY_HINT_ENUM>`.

::

     @export_enum("Warrior", "Wizard", "Thief") var character_class: int
     @export_enum("Slow:30", "Medium:60", "Very fast:200") var character_speed: int
     @export_enum("Rebecca", "Mary", "Leah") var character_name: string

     @export_enum("Sword", "Spear", "Mace"") var character_items: Array[int]
     @export_enum("double_jump", "climb", "dash") var character_skills: Array[String]

 Якщо ви хочете встановити початкове значення, ви повинні вказати його явно:

::

     @export_enum("Rebecca", "Mary", "Leah") var character_name: String = "Rebecca"

 Якщо ви хочете використовувати іменовані переліки GDScript, замість цього використовуйте :ref:`@export<class_@GDScript_annotation_@export>`:

::

    enum CharacterName {REBECCA, MARY, LEAH}
     @export var character_name: Symbol name

    enum CharacterItem {SWORD, SCRIPT, MACE}
     @export var character_items: Array[CharacterItem]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_exp_easing:

.. rst-class:: classref-annotation

**@export_exp_easing**\ (\ hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_exp_easing>`

Експортуйте властивість з плаваючою комою за допомогою віджета редактора easing. Можна надати додаткові підказки для налаштування поведінки віджета. ``"attenuation"`` перевертає криву, що робить її більш інтуїтивно зрозумілою для редагування властивостей затухання. ``"positive_only"`` обмежує значення лише як більше або дорівнює нулю.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_EXP_EASING<class_@GlobalScope_constant_PROPERTY_HINT_EXP_EASING>`.

::

     @export_exp_easing var transition_speed
     @export_exp_easing("attenuation") var fading_attenuation
     @export_exp_easing("positive_only") var effect_power
     @export_exp_easing var speeds: Array [float]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file:

.. rst-class:: classref-annotation

**@export_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file>`

Експортувати властивість :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] або :ref:`PackedStringArray<class_PackedStringArray>` як шлях до файлу. Шлях буде обмежено папкою проєкту та її підпапками. Див. :ref:`@export_global_file<class_@GDScript_annotation_@export_global_file>`, щоб дозволити вибір з усієї файлової системи.

Якщо вказано ``filter``, для вибору будуть доступні лише відповідні файли.

Див. також :ref:`@GlobalScope.PROPERTY_HINT_FILE<class_@GlobalScope_constant_PROPERTY_HINT_FILE>`.

::

    @export_file var sound_effect_path: String
    @export_file("*.txt") var notes_path: String
    @export_file var level_paths: Array[String]

\ **Примітка:** Файл буде збережено та посилатиметься на нього як на UID, якщо він доступний. Це гарантує, що посилання буде дійсним навіть після переміщення файлу. Ви можете використовувати методи :ref:`ResourceUID<class_ResourceUID>` для перетворення його на шлях.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file_path:

.. rst-class:: classref-annotation

**@export_file_path**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file_path>`

Те саме, що й :ref:`@export_file<class_@GDScript_annotation_@export_file>`, але файл буде збережено як необроблений шлях. Це означає, що він може стати недійсним під час переміщення файлу. Якщо ви експортуєте шлях :ref:`Resource<class_Resource>`, спробуйте використовувати :ref:`@export_file<class_@GDScript_annotation_@export_file>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags:

.. rst-class:: classref-annotation

**@export_flags**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_flags>`

Експортувати властивість цілого числа як поле бітового прапора. Це дозволяє зберігати кілька «перевірених» чи ``true`` значень з однією властивістю та зручно вибирати їх із док-станції Inspector.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_FLAGS<class_@GlobalScope_constant_PROPERTY_HINT_FLAGS>`.

::

     @export_flags("Fire", "Water", "Earth", "Wind") var spell_elements = 0

 Ви можете додати явні значення за допомогою двокрапки:

::

    @export_flags("Self:4", "Allies:8", "Self and Allies:12", "Foes:16")

 Ви також можете комбінувати кілька прапорів:

::

     @export_flags("A:4", "Allies:8", "Me and Allies:12", "Enemies:16")
    var spell_targets = 0

\ **Примітка.** Значення прапора має бути не менше ``1`` і не більше ``2 ** 32 - 1``.

\ **Примітка:** На відміну від :ref:`@export_enum<class_@GDScript_annotation_@export_enum>`, попереднє явне значення не враховується. У наступному прикладі A дорівнює 16, B дорівнює 2, C дорівнює 4.

::

     @export_flags("A:16", "B", "C") змінна x

 Ви також можете використовувати анотацію для :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>` і :ref:`PackedInt64Array<class_PackedInt64Array>`\ 

::

     @export_flags("Fire", "Water", "Earth", "Wind") var phase_elements: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_navigation:

.. rst-class:: classref-annotation

**@export_flags_2d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_navigation>`

Експортуйте цілочисельну властивість як поле бітового прапора для двовимірних шарів навігації. Віджет у доці Inspector використовуватиме назви шарів, визначені в :ref:`ProjectSettings.layer_names/2d_navigation/layer_1<class_ProjectSettings_property_layer_names/2d_navigation/layer_1>`.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_NAVIGATION>`.

::

     @export_flags_2d_navigation var navigation_layers: int
     @export_flags_2d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_physics:

.. rst-class:: classref-annotation

**@export_flags_2d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_physics>`

Експортуйте властивість цілого числа як поле бітового прапора для шарів 2D фізики. Віджет у доці Inspector використовуватиме назви шарів, визначені в :ref:`ProjectSettings.layer_names/2d_physics/layer_1<class_ProjectSettings_property_layer_names/2d_physics/layer_1>`.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_PHYSICS>`.

::

     @export_flags_2d_physics змінна physics_layers: int
     @export_flags_2d_physics вар. physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_render:

.. rst-class:: classref-annotation

**@export_flags_2d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_render>`

Експортуйте властивість цілого числа як поле бітового прапорця для шарів 2D візуалізації. Віджет у доці Inspector використовуватиме назви шарів, визначені в :ref:`ProjectSettings.layer_names/2d_render/layer_1<class_ProjectSettings_property_layer_names/2d_render/layer_1>`.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_RENDER>`.

::

     @export_flags_2d_render var render_layers: int
     @export_flags_2d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_navigation:

.. rst-class:: classref-annotation

**@export_flags_3d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_navigation>`

Експортуйте властивість цілого числа як поле бітового прапора для шарів 3D-навігації. Віджет у доці Inspector використовуватиме назви шарів, визначені в :ref:`ProjectSettings.layer_names/3d_navigation/layer_1<class_ProjectSettings_property_layer_names/3d_navigation/layer_1>`.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_NAVIGATION>`.

::

     @export_flags_3d_navigation var navigation_layers: int
     @export_flags_3d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_physics:

.. rst-class:: classref-annotation

**@export_flags_3d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_physics>`

Експортуйте властивість цілого числа як поле бітового прапорця для шарів 3D-фізики. Віджет у доці Inspector використовуватиме назви шарів, визначені в :ref:`ProjectSettings.layer_names/3d_physics/layer_1<class_ProjectSettings_property_layer_names/3d_physics/layer_1>`.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_PHYSICS>`.

::

     @export_flags_3d_physics var physics_layers: int
     @export_flags_3d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_render:

.. rst-class:: classref-annotation

**@export_flags_3d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_render>`

Експортуйте цілочисельну властивість як поле бітового прапора для шарів 3D візуалізації. Віджет у доці Inspector використовуватиме назви шарів, визначені в :ref:`ProjectSettings.layer_names/3d_render/layer_1<class_ProjectSettings_property_layer_names/3d_render/layer_1>`.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_RENDER>`.

::

     @export_flags_3d_render var render_layers: int
     @export_flags_3d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_avoidance:

.. rst-class:: classref-annotation

**@export_flags_avoidance**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_avoidance>`

Експортуйте властивість цілого числа як поле бітового прапора для шарів уникнення навігації. Віджет у доці Inspector використовуватиме назви шарів, визначені в :ref:`ProjectSettings.layer_names/avoidance/layer_1<class_ProjectSettings_property_layer_names/avoidance/layer_1>`.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_AVOIDANCE<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_AVOIDANCE>`.

::

     @export_flags_avoidance вар. Avoidance_layers: int
     @export_flags_avoidance вар. Avoidance_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_dir:

.. rst-class:: classref-annotation

**@export_global_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_global_dir>`

Експортуйте властивість :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] або :ref:`PackedStringArray<class_PackedStringArray>` як абсолютний шлях до каталогу. Шлях можна вибрати з усієї файлової системи. Перегляньте :ref:`@export_dir<class_@GDScript_annotation_@export_dir>`, щоб обмежити його папкою проекту та її вкладеними папками.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_DIR<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_DIR>`.

::

     @export_global_dir var sprite_folder_path: String
     @export_global_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_file:

.. rst-class:: classref-annotation

**@export_global_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_global_file>`

Експортуйте властивість :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] або :ref:`PackedStringArray<class_PackedStringArray>` як абсолютний шлях до файлу. Шлях можна вибрати з усієї файлової системи. Перегляньте :ref:`@export_file<class_@GDScript_annotation_@export_file>`, щоб обмежити його папкою проекту та її вкладеними папками.

 Якщо надано ``filter``, лише відповідні файли будуть доступні для вибору.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_FILE<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_FILE>`.

::

     @export_global_file var sound_effect_path: String
     @export_global_file("*.txt") var notes_path: String
     @export_global_file var multiple_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_group:

.. rst-class:: classref-annotation

**@export_group**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_group>`

Визначте нову групу для таких експортованих властивостей. Це допомагає впорядкувати властивості в доці Inspector. Групи можна додавати за допомогою необов’язкового ``prefix``, що змусить групу розглядати лише властивості, які мають цей префікс. Групування буде розірвано для першої властивості, яка не має префікса. Префікс також видаляється з назви властивості в панелі Inspector.

 Якщо ``prefix`` не вказано, кожна наступна властивість буде додано до групи. Група закінчується, коли визначається наступна група або категорія. Ви також можете примусово завершити групу, використовуючи цю анотацію з порожніми рядками для параметрів, ``@export_group("", "")``.

 Групи не можуть бути вкладеними, використовуйте :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>`, щоб додати підгрупи всередині груп.

 Дивіться також :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>`.

::

     @export_group("Racer Properties")
     @export var nickname = "Nick"
     @export var age = 26

     @export_group("Car Properties", "car_7")
     @export var car_label = "Speedy"
     @export var car_number = 3

     @export_group("", "")
     @export var ungrouped_number = 3

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_multiline:

.. rst-class:: classref-annotation

**@export_multiline**\ (\ hint\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_multiline>`

Експортуйте властивість :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedStringArray<class_PackedStringArray>`, :ref:`Dictionary<class_Dictionary>` або :ref:`Array<class_Array>`\ \[:ref:`Dictionary<class_Dictionary>`\ \] з великим віджетом :ref:`TextEdit<class_TextEdit>` замість :ref:`LineEdit<class_LineEdit>`. Це додає підтримку багаторядкового вмісту та спрощує редагування великої кількості тексту, що зберігається у властивості.

Див. також :ref:`@GlobalScope.PROPERTY_HINT_MULTILINE_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_MULTILINE_TEXT>`.

\ ``codblock``\ 

@export_multiline var character_biography

@export_multiline var npc_dialogs: Array\ :ref:`String<class_String>`\ 

@export_multiline("monospace", "no_wrap") var favorite_ascii_art: String

[/codblock]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_node_path:

.. rst-class:: classref-annotation

**@export_node_path**\ (\ type\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_node_path>`

Експортуйте властивість :ref:`NodePath<class_NodePath>` або :ref:`Array<class_Array>`\ \[:ref:`NodePath<class_NodePath>`\ \] із фільтром для дозволених типів вузлів.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_NODE_PATH_VALID_TYPES<class_@GlobalScope_constant_PROPERTY_HINT_NODE_PATH_VALID_TYPES>`.

::

     @export_node_path("Bottom", "Bottom TouchScreenButton") var some_button
     @export_node_path("Button", "TouchScreenButton") var many_buttons: Array[NodePath]

\ **Примітка.** Тип має бути власним класом або глобально зареєстрованим сценарієм (з використанням ключового слова ``class_name``), який успадковує :ref:`Node<class_Node>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_placeholder:

.. rst-class:: classref-annotation

**@export_placeholder**\ (\ placeholder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_placeholder>`

Експортуйте властивість :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] або :ref:`PackedStringArray<class_PackedStringArray>` із текстом-заповнювачем, який відображається у віджеті редактора, якщо немає значення.

 Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_PLACEHOLDER_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_PLACEHOLDER_TEXT>`.

::

     @export_placeholder("Name in lowercase") var character_id: String
     @export_placeholder("Name in lowercase") var friend_ids: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_range:

.. rst-class:: classref-annotation

**@export_range**\ (\ min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, step\: :ref:`float<class_float>` = 1.0, extra_hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_range>`

Експортуйте властивість :ref:`int<class_int>`, :ref:`float<class_float>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>`\ \[:ref:`float<class_float>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>`, :ref:`PackedFloat32Array<class_PackedFloat32Array>` або :ref:`PackedFloat64Array<class_PackedFloat64Array>` як значення діапазону. Діапазон має бути визначений параметрами ``min`` та ``max``, а також необов'язковим параметром ``step`` та різноманітними додатковими підказками. Для цілочисельних властивостей ``step`` за замовчуванням має значення ``1``. Для чисел з плаваючою комою це значення залежить від налаштування :ref:`EditorSettings.interface/inspector/default_float_step<class_EditorSettings_property_interface/inspector/default_float_step>`.

Якщо надано підказки ``"or_greater"`` та ``"or_less"``, віджет редактора не обмежуватиме значення межами діапазону. Підказка ``"exp"`` призведе до експоненціальної зміни відредагованих значень у діапазоні. Підказка ``"prefer_slider"`` призведе до використання повзунка замість стрілок для редагування цілочисельних значень, тоді як ``"hide_control"`` приховає елемент, що керує значенням віджета редактора.

Підказки також дозволяють вказувати одиниці вимірювання для відредагованого значення. Використовуючи ``"radians_as_degrees"``, ви можете вказати, що фактичне значення має бути в радіанах, але має відображатися в градусах на панелі Інспектора (значення діапазону також у градусах). ``"degrees"`` дозволяє додати знак градуса як суфікс одиниці (значення залишається незмінним). Нарешті, можна надати власний суфікс за допомогою ``"suffix:unit"``, де "unit" може бути будь-яким рядком.

Див. також :ref:`@GlobalScope.PROPERTY_HINT_RANGE<class_@GlobalScope_constant_PROPERTY_HINT_RANGE>`.

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

Експортуйте властивість із :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` прапорцем. Властивість не відображається в редакторі, але вона серіалізується та зберігається у файлі сцени або ресурсу. Це може бути корисним для сценаріїв :ref:`@tool<class_@GDScript_annotation_@tool>`. Також значення властивості копіюється під час виклику :ref:`Resource.duplicate()<class_Resource_method_duplicate>` або :ref:`Node.duplicate()<class_Node_method_duplicate>`, на відміну від неекспортованих змінних.

::

    var a # Не зберігається у файлі, не відображається в редакторі.
     @export_storage var b # Зберігається у файлі, не відображається в редакторі.
     @export var c: int # Зберігається у файлі, відображається в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_subgroup:

.. rst-class:: classref-annotation

**@export_subgroup**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_subgroup>`

Визначте нову підгрупу для таких експортованих властивостей. Це допомагає впорядкувати властивості в доці Inspector. Підгрупи працюють так само, як групи, за винятком того, що для існування їм потрібна батьківська група. Перегляньте :ref:`@export_group<class_@GDScript_annotation_@export_group>`. 

Дивіться також :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>`. 

::
 
    @export_group("Racer Properties") 
    @export var nickname = "Nick" 
    @export var age = 26 

    @export_subgroup(", "Car Properties") 
    @export var car_label = "Speedy" 
    @export var car_number = 3  

\ **Примітка:** Підгрупи не можуть бути вкладеними, але ви можете використовувати роздільник похилої риски (``/``), щоб досягти бажаного ефекту: 

::
 
    @export_group("Car Properties") 
    @export_subgroup("Wheels", "wheel_") 
    @export_subgroup("Wheels/front", "front_wheel_") 
    @export var front_wheel_strength = 10 
    @export var front_wheel_mobility = 5 
    @export_subgroup("Wheels/rear", "rear_wheel_") 
    @export var rear_wheel_strength = 8 
    @export var rear_wheel_mobility = 3 
    @export_subgroup("Wheels", "wheel_") 
    @export var wheel_material: PhysicsMaterial 

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_tool_button:

.. rst-class:: classref-annotation

**@export_tool_button**\ (\ text\: :ref:`String<class_String>`, icon\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_tool_button>`

Експортуйте властивість :ref:`Callable<class_Callable>` як кнопку, яку можна натиснути, з міткою ``text``. При натисканні кнопки викликається абонент. 

Якщо вказано ``icon``, він використовується для отримання піктограми для кнопки через :ref:`Control.get_theme_icon()<class_Control_method_get_theme_icon>` із типу теми ``"EditorIcons"``. Якщо ``icon`` опущено, замість нього використовується типовий значок ``"Callable"``. 

Розгляньте можливість використання :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, щоб дозволити безпечне скасування дії. 

Дивіться також :ref:`@GlobalScope.PROPERTY_HINT_TOOL_BUTTON<class_@GlobalScope_constant_PROPERTY_HINT_TOOL_BUTTON>`. 

::
 
    @tool 
    extends Sprite2D 

    @export_tool_button("Hello") var hello_action = hello 
    @export_tool_button("Randomize the color!", "ColorRect") 
    var randomize_color_action = randomize_color 

    func hello(): 
        print("Привіт, світе!") 

    func randomize_color(): 
        var undo_redo = EditorInterface.get_editor_undo_redo() 
        undo_redo.create_action("Random color Sprite2D") 
        undo_redo.add_do_property(self, &"self_modulate", Color(randf(), randf(), randf())) 
        undo_redo.add_undo_property(self, &"self_modulate", self_modulate) 
        undo_redo.commit_action()  

\ **Примітка:** Властивість експортується без прапора :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`, оскільки :ref:`Callable<class_Callable>` неможливо належним чином серіалізувати та зберегти у файлі. 

\ **Примітка:** В експортованому проєкті не існує ані :ref:`EditorInterface<class_EditorInterface>`, ані :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, що може призвести до несправності деяких сценаріїв. Щоб запобігти цьому, ви можете використовувати :ref:`Engine.get_singleton()<class_Engine_method_get_singleton>` і опустити статичний тип в декларації змінної: 

::
 
    var undo_redo = Engine.get_singleton(&"EditorInterface").get_editor_undo_redo()  

\ **Примітка:** Уникайте зберігання лямбда-викликів у змінних-членах класів на основі :ref:`RefCounted<class_RefCounted>` (наприклад, ресурсів), оскільки це може призвести до витоку пам’яті. Використовуйте лише викликані методи та додатково :ref:`Callable.bind()<class_Callable_method_bind>` або :ref:`Callable.unbind()<class_Callable_method_unbind>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@icon:

.. rst-class:: classref-annotation

**@icon**\ (\ icon_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@icon>`

Додайте спеціальний значок до поточного сценарію. Піктограма, указана в ``icon_path``, відображається в панелі Scene для кожного вузла цього класу, а також у різних діалогових вікнах редактора. 

::
 
    @icon("res://path/to/class/icon.svg")  

\ **Примітка:** Лише скрипти може мати спеціальний значок. Внутрішні класи не підтримуються. 

\ **Примітка:** Оскільки анотації описують предмет, анотація :ref:`@icon<class_@GDScript_annotation_@icon>` має бути розміщена перед визначенням класу та успадкуванням. 

\ **Примітка:** На відміну від більшості інших анотацій, аргумент анотації :ref:`@icon<class_@GDScript_annotation_@icon>` має бути рядковим літералом (постійні вирази не підтримуються).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@onready:

.. rst-class:: classref-annotation

**@onready**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@onready>`

Позначте наступну властивість як призначену, коли :ref:`Node<class_Node>` буде готовий. Значення для цих властивостей не призначаються відразу після ініціалізації вузла (:ref:`Object._init()<class_Object_private_method__init>`), а натомість обчислюються та зберігаються безпосередньо перед :ref:`Node._ready()<class_Node_private_method__ready>`. 

::
 
    @onready var character_name = $Label 

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@rpc:

.. rst-class:: classref-annotation

**@rpc**\ (\ mode\: :ref:`String<class_String>` = "authority", sync\: :ref:`String<class_String>` = "call_remote", transfer_mode\: :ref:`String<class_String>` = "reliable", transfer_channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_@GDScript_annotation_@rpc>`

Позначте наступний метод для віддалених викликів процедури. Дивіться :doc:`Високий рівень багатокористувацької гри <../tutorials/networking/high_level_multiplayer>`.

Якщо ``mode`` встановлено як ``"any_peer"``, це дозволяє будь-якому аналогу викликати цю функцію RPC. В іншому випадку лише колега з владою має право викликати його, а ``mode`` слід зберігати як ``"авторитет"``. Під час налаштування функцій як RPC за допомогою :ref:`Node.rpc_config()<class_Node_method_rpc_config>` кожен із цих режимів відповідно відповідає :ref:`MultiplayerAPI.RPC_MODE_AUTHORITY<class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY>` і :ref:`Multiplayer API.RPS_MODe_ANY_PEER<class_Multiplayer API_constant_RPS_MODe_ANY_PEER>` режимам RPC. Див. :ref:`RPCMode<enum_MultiplayerAPI_RPCMode>`. Якщо колега, який не є авторитетом, спробує викликати функцію, яка дозволена лише для авторитету, функція не буде виконана. Якщо помилку можна виявити локально (коли конфігурація RPC узгоджується між локальним і віддаленим аналогом), повідомлення про помилку буде відображено на аналізі відправника. В іншому випадку віддалений аналог виявить помилку та надрукує там помилку.

Якщо ``sync`` встановлено як ``"call_remote"``, функція буде виконуватися лише на віддаленому рівні, але не локально. Щоб запустити цю функцію локально, встановіть ``sync`` на ``"call_local"``. Під час налаштування функцій як RPC за допомогою :ref:`Node.rpc_config()<class_Node_method_rpc_config>` це еквівалентно встановленню ``call_local``\ на ``true``\ 

Прийняті значення ``transfer_mode``: ``"ненадійний"``, ``"unreliable_ordered"`` або ``"надійні"``. Він встановлює режим передачі базового :ref:`MultiplayerPeer<class_MultiplayerPeer>`. Дивіться :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`.

\ ``transfer_channel`` визначає канал базового :ref:`MultiplayerPeer<class_MultiplayerPeer>`. Дивіться :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`.

Порядок ``mode``, ``sync`` та ``transfer_mode`` не має значення, але значення, пов"язані з одним і тим же аргументом, не повинні використовуватися більше одного разу. ``transfer_channel`` завжди має бути четвертим аргументом (ви повинні вказати 3 попередні аргументи).

::

    func fn(): pass

    @rpc("any_peer", "unreliable_ordered")
    func fn_update_pos(): pass

    @rpc("authority", "call_remote", "reliable", 0) # Equivalent to @rpc

    func fn_default(): pass

\ **Примітка:** Методи, анотовані за допомогою :ref:`@rpc<class_@GDScript_annotation_@rpc>`, не можуть отримувати об"єкти, які визначають необхідні параметри в :ref:`Object._init()<class_Object_private_method__init>`. Див. :ref:`Object._init()<class_Object_private_method__init>` для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@static_unload:

.. rst-class:: classref-annotation

**@static_unload**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@static_unload>`

Створіть скрипт зі статичними змінними, щоб не зберігатися після втрати всіх посилань. Якщо скрипт буде завантажено знову, статичні змінні повернуться до своїх значень за замовчуванням.

\ **Примітка:** Оскільки анотації описують свою тему, анотація :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` має бути розміщена перед визначенням класу та успадкуванням.

\ **Попередження:** Наразі через помилку сценарії ніколи не звільняються, навіть якщо використовується анотація :ref:`@static_unload<class_@GDScript_annotation_@static_unload>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@tool:

.. rst-class:: classref-annotation

**@tool**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@tool>`

Позначте поточний скрипт як інструментальний, щоб редактор міг його завантажити і виконати. Дивіться :doc:`Запуск коду у редакторі <../tutorials/plugins/running_code_in_the_editor>`.

::

    @tool
    extends Node

\ **Примітка:** Оскільки анотації описують свій предмет, анотацію :ref:`@tool<class_@GDScript_annotation_@tool>` слід розміщувати перед визначенням та успадкуванням класу.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore:

.. rst-class:: classref-annotation

**@warning_ignore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore>`

Позначте наступний оператор, щоб ігнорувати вказане ``warning``. Перегляньте :doc:`систему попереджень GDScript <../tutorials/scripting/gdscript/warning_system>`. 

::
 
    func test(): 
        print("привіт") 
        return 
        @warning_ignore("unavailable_code") 
        print("недосяжний")  

Дивіться також :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` і :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_restore:

.. rst-class:: classref-annotation

**@warning_ignore_restore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_restore>`

Перестає ігнорувати перелічені типи попереджень після :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>`. Ігнорування зазначених типів попереджень буде скинуто до параметрів проекту. Цю анотацію можна опустити, щоб ігнорувати типи попереджень до кінця файлу. 

\ **Примітка:** На відміну від більшості інших анотацій, аргументи анотації :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` мають бути рядковими літералами (постійні вирази не підтримуються).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_start:

.. rst-class:: classref-annotation

**@warning_ignore_start**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_start>`

Починає ігнорувати перелічені типи попереджень до кінця файлу або анотації :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` із заданим типом попередження. 

::
 
    func test(): 
        var a = 1 # Попередження (якщо ввімкнено в налаштуваннях проекту). 
        @warning_ignore_start("невикористана_змінна") 
        var b = 2 # Немає попередження. 
        var c = 3 # Немає попередження. 
        @warning_ignore_restore("невикористана_змінна") 
        var d = 4 # Попередження (якщо ввімкнено в налаштуваннях проекту).  

\ **Примітка:** Щоб приховати одне попередження, замість нього використовуйте :ref:`@warning_ignore<class_@GDScript_annotation_@warning_ignore>`. 

\ **Примітка:** На відміну від більшості інших анотацій, аргументи анотації :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` мають бути рядковими літералами (постійні вирази не підтримуються).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_@GDScript_method_Color8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **Color8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) :ref:`🔗<class_@GDScript_method_Color8>`

**Застаріло:** Use :ref:`Color.from_rgba8()<class_Color_method_from_rgba8>` instead.

Повертає :ref:`Color<class_Color>` сформований з червоного (``r8``), зеленого (``g8``), синього (``b8``), і, за бажання, альфа (``a8``) цілочисельних каналів, кожен з яких поділений на ``255.0`` для кінцевого значення.

::

    var red = Color8(255, 0, 0)             # Same as Color(1, 0, 0).
    var dark_blue = Color8(0, 0, 51)        # Same as Color(0, 0, 0.2).
    var my_color = Color8(306, 255, 0, 102) # Same as Color(1.2, 1, 0, 0.4).

\ **Примітка:** Через нижчу точність :ref:`Color8()<class_@GDScript_method_Color8>` порівняно зі стандартним конструктором :ref:`Color<class_Color>`, колір, створений за допомогою :ref:`Color8()<class_@GDScript_method_Color8>`, зазвичай не дорівнюватиме тому самому кольору, створеному за допомогою стандартного конструктора :ref:`Color<class_Color>`. Використовуйте :ref:`Color.is_equal_approx()<class_Color_method_is_equal_approx>` для порівнянь, щоб уникнути проблем з похибкою точності обчислень з плаваючою комою.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_assert:

.. rst-class:: classref-method

|void| **assert**\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_method_assert>`

Перевіряє, чи ``condition`` дорівнює ``true``. Якщо ``condition`` дорівнює ``false``, генерується помилка, і поточний метод повертає значення за замовчуванням. При виконанні з редактора невдалі перевірки також викликають зупинку відладчика. Цю функцію можна використовувати як більш потужну альтернативу :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` для повідомлення про помилки розробникам проєкту або користувачам доповнень.

Опціональне ``message`` може відображатися на додаток до загального повідомлення «Assertion failed». Ви можете використовувати це для надання додаткових деталей про те, чому перевірка не пройшла.

\ **Попередження:** З міркувань продуктивності код всередині :ref:`assert()<class_@GDScript_method_assert>` виконується лише в дебаг-збірках або під час запуску проекту з редактора. Не включайте код, що має побічні ефекти, у виклик :ref:`assert()<class_@GDScript_method_assert>`. Інакше проект поводитиметься інакше при експорті в режимі релізу.

::

    # Уявімо, що ми завжди хочемо, щоб швидкість була в межах від 0 до 20.
    var speed = -10
    assert(speed < 20) # True, програма продовжить роботу.
    assert(speed >= 0) # False, програма зупиниться.
    assert(speed >= 0 and speed < 20) # Ви також можете об'єднати ці дві умовні інструкції в одну перевірку.
    assert(speed < 20, "обмеження швидкості становить 20") # Показати повідомлення.

\ **Примітка:** :ref:`assert()<class_@GDScript_method_assert>` — це ключове слово, а не функція. Тому ви не можете отримати до нього доступ як до :ref:`Callable<class_Callable>` або використовувати його всередині виразів.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_char:

.. rst-class:: classref-method

:ref:`String<class_String>` **char**\ (\ code\: :ref:`int<class_int>`\ ) :ref:`🔗<class_@GDScript_method_char>`

Повертає один символ (як :ref:`String<class_String>` довжиною 1) заданої кодової точки Unicode ``code``.

::

    print(char(65)) # Виводить "A"
    print(char(129302)) # Виводить "🤖" (емодзі обличчя робота)

Це інверсія методу :ref:`ord()<class_@GDScript_method_ord>`. Див. також :ref:`String.chr()<class_String_method_chr>` та :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_convert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **convert**\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ) :ref:`🔗<class_@GDScript_method_convert>`

**Застаріло:** Use :ref:`@GlobalScope.type_convert()<class_@GlobalScope_method_type_convert>` instead.

Перетворює ``what`` на ``type`` найкращим чином. Параметр ``type`` використовує значення :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`.

::

    var a = [4, 2,5, 1,2]
    print(a is Array) # Друкує true

    var b = convert(a, TYPE_PACKED_BYTE_ARRAY)
    print(b) # Виводить [4, 2, 1]
    print(b is Array) # Виводить false

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_dict_to_inst:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **dict_to_inst**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_@GDScript_method_dict_to_inst>`

**Застаріло:** Consider using :ref:`JSON.to_native()<class_JSON_method_to_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Конвертує ``dictionary`` (створений з :ref:`inst_to_dict()<class_@GDScript_method_inst_to_dict>`) назад в екземпляр Object. Може бути корисний для десеріалізації.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_get_stack:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_get_stack>`

Повертає масив словників, що представляють поточний стек викликів.

::

    func _ready():
        foo()

    func foo():
        bar()

    func bar():
        print(get_stack())

Починаючи з ``_ready()``, ``bar()`` виведе:

.. code:: text

    [{function:bar, line:12, source:res://script.gd}, {function:foo, line:9, source:res://script.gd}, {function:_ready, line:6, source:res://script.gd}]

Див. також :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`print_stack()<class_@GDScript_method_print_stack>` та :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Примітка:** За замовчуванням зворотні трасування доступні лише в збірках редактора та налагоджувальних збірках. Щоб увімкнути їх також і для релізних збірок, потрібно ввімкнути :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_inst_to_dict:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **inst_to_dict**\ (\ instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_@GDScript_method_inst_to_dict>`

**Застаріло:** Consider using :ref:`JSON.from_native()<class_JSON_method_from_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Повертає переданий ``instance``, перетворений на словник. Може бути корисним для серіалізації. 

::
 
    var foo = "bar" 
    func _ready(): 
        var d = inst_to_dict(self) 
        print(d.keys()) 
        print(d.values())  

Роздруковує: 

.. code:: text
 
    [@subpath, @path, foo] 
    [, res://test.gd, bar]  

\ **Примітка:** Цю функцію можна використовувати лише для серіалізації об’єктів із прикріпленим :ref:`GDScript<class_GDScript>`, що зберігається в окремому файлі. Об’єкти без прикріпленого сценарію, зі сценарієм, написаним іншою мовою, або з вбудованим сценарієм не підтримуються. 

\ **Примітка:** Ця функція не є рекурсивною, що означає, що вкладені об’єкти не будуть представлені як словники. Крім того, властивості, передані за посиланням (:ref:`Object<class_Object>`, :ref:`Dictionary<class_Dictionary>`, :ref:`Array<class_Array>` і упаковані масиви), копіюються за посиланням, а не дублюються.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_is_instance_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_instance_of**\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_is_instance_of>`

Повертає ``true``, якщо ``value`` є екземпляром типу ``type``. Значення ``type`` має бути одним із таких:

- Константа з переліку :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, наприклад :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>`.

- Клас, похідний від :ref:`Object<class_Object>`, який існує в :ref:`ClassDB<class_ClassDB>`, наприклад :ref:`Node<class_Node>`.

- :ref:`Script<class_Script>` (можна використовувати будь-який клас, включаючи внутрішній).

На відміну від правого операнда оператора ``is``, ``type`` може бути неконстантним значенням. Оператор ``is`` підтримує більше можливостей (таких як типізовані масиви та словники). Використовуйте цей оператор замість цього методу, якщо вам не потрібно перевіряти тип динамічно.

\ **Приклади:**\ 

::

    print(is_instance_of(a, TYPE_INT))
    print(is_instance_of(a, Node))
    print(is_instance_of(a, MyClass))
    print(is_instance_of(a, MyClass.InnerClass))

\ **Примітка:** Якщо ``value`` та/або ``type`` є звільненими об’єктами (див. :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`), або ``type`` не є одним із наведених вище варіантів, цей метод викличе помилку виконання.

Див. також :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>`, :ref:`Object.is_class()<class_Object_method_is_class>`, ``methodObject.get_script``, :ref:`Array.is_same_typed()<class_Array_method_is_same_typed>` (та інші методи :ref:`Array()<class_@GDScript_method_Array>`), :ref:`Dictionary.is_same_typed()<class_Dictionary_method_is_same_typed>` (та інші методи :ref:`Dictionary<class_Dictionary>`).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **len**\ (\ var\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_len>`

Повертає довжину заданого варіанту ``var``. Довжиною може бути кількість символів :ref:`String<class_String>` або :ref:`StringName<class_StringName>`, кількість елементів будь-якого типу масиву або розмір :ref:`Dictionary<class_Dictionary>`. Для кожного іншого типу Variant генерується помилка під час виконання, і виконання припиняється. 

::
 
    var a = [1, 2, 3, 4] 
    len(a) # Повертає 4 

    var b = "Привіт!" 
    len(b) # Повертає 6 

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_load>`

Повертає :ref:`Resource<class_Resource>` із файлової системи, розташованої за абсолютним ``path``. Якщо на нього ще нема посилань в іншому місці (наприклад, в іншому сценарії або в сцені), ресурс завантажується з диска під час виклику функції, що може спричинити невелику затримку, особливо під час завантаження великих сцен. Щоб уникнути непотрібних затримок під час багаторазового завантаження чогось, або збережіть ресурс у змінній, або використовуйте :ref:`preload()<class_@GDScript_method_preload>`. Цей метод еквівалентний використанню :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` із :ref:`ResourceLoader.CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

\ **Примітка.** Шляхи до ресурсів можна отримати, клацнувши правою кнопкою миші на ресурсі в док-станції FileSystem і вибравши «Копіювати шлях», або перетягнувши файл із док-станції FileSystem у поточний скрипт.

::

     # Завантажимо сцену під назвою "main", розташовану в кореневому каталозі проєкту, і закешуємо її в змінній.
    var main = load("res://main.tscn") # main міститиме ресурс PackedScene.

\ **Важливо:** відносні шляхи *не є* відносними до сценарію, який викликає цей метод, натомість він має префікс ``"res://"``. Завантаження з відносних шляхів може не працювати належним чином.

 Ця функція є спрощеною версією :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`, який можна використовувати для складніших сценаріїв.

\ **Примітка: ** Щоб завантажити файли за допомогою цієї функції, спочатку їх потрібно імпортувати в механізм. Якщо ви хочете завантажити :ref:`Image<class_Image>` під час виконання, ви можете використовувати :ref:`Image.load()<class_Image_method_load>`. Якщо ви хочете імпортувати аудіофайли, ви можете використати фрагмент, описаний у :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`.

\ **Примітка:** Якщо :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` має значення ``true``, :ref:`load()<class_@GDScript_method_load>` не зможе прочитати конвертовані файли в експортованому проєкті. Якщо ви покладаєтеся на завантаження файлів у PCK під час виконання, установіть :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` на ``false``.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_ord:

.. rst-class:: classref-method

:ref:`int<class_int>` **ord**\ (\ char\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_ord>`

Повертає ціле число, що представляє кодову точку Unicode заданого символу ``char``, який має бути рядком довжини 1.

::

    print(ord("A")) # Виводить 65
    print(ord("🤖")) # Виводить 129302

Це інверсія до :ref:`char()<class_@GDScript_method_char>`. Див. також :ref:`String.chr()<class_String_method_chr>` та :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_preload:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **preload**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_preload>`

Повертає :ref:`Resource<class_Resource>` із файлової системи, розташованої за ``path``. Під час виконання ресурс завантажується під час аналізу скрипту. Ця функція діє як посилання на цей ресурс. Зауважте, що ця функція вимагає, щоб ``path`` був константою :ref:`String<class_String>`. Якщо ви хочете завантажити ресурс із динамічного/змінного шляху, використовуйте :ref:`load()<class_@GDScript_method_load>`.

\ **Примітка.** Шляхи до ресурсів можна отримати, клацнувши правою кнопкою миші на ресурсі на панелі ресурсів і вибравши «Копіювати шлях» або перетягнувши файл із док-станції FileSystem у поточний скрипт.

::

     # Створення екземпляра сцени.
    var diamond = preload("res://diamond.tscn").instantiate()

\ **Примітка:** :ref:`preload()<class_@GDScript_method_preload>` є ключовим словом, а не функцією. Тому ви не можете отримати до нього доступ як :ref:`Callable<class_Callable>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_debug:

.. rst-class:: classref-method

|void| **print_debug**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_print_debug>`

Подібно до :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`, але включає поточний стековий кадр під час роботи з увімкненим налагоджувачем.

Вивід у консолі може виглядати так:

.. code:: text

    Тестовий друк
    За адресою: res://test.gd:15:_process()

Див. також :ref:`print_stack()<class_@GDScript_method_print_stack>`, :ref:`get_stack()<class_@GDScript_method_get_stack>` та :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Примітка:** За замовчуванням зворотні трасування доступні лише в редакторських та налагоджувальних збірках. Щоб увімкнути їх також для релізних збірок, потрібно ввімкнути :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_stack:

.. rst-class:: classref-method

|void| **print_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_print_stack>`

Друкує трасування стека в поточному місці коду.

Вивід у консолі може виглядати так:

.. code:: text

    Кадр 0 - res://test.gd:16 у функції '_process'

Див. також :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`get_stack()<class_@GDScript_method_get_stack>` та :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Примітка:** За замовчуванням зворотні трасування доступні лише в редакторських та налагоджувальних збірках. Щоб увімкнути їх також для релізних збірок, потрібно ввімкнути :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_range:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **range**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_range>`

Повертає масив із заданим діапазоном. :ref:`range()<class_@GDScript_method_range>` можна викликати трьома способами: 

\ ``range(n: int)``: починається з 0, збільшується з кроком 1 і зупиняється *перед* ``n``. Аргумент ``n`` є **виключним**. 

\ ``range(b: int, n: int)``: починається з ``b``, збільшується на крок 1 і зупиняється *перед* ``n``. Аргументи ``b`` і ``n`` є **включними** та **виключними** відповідно. 

\ ``range(b: int, n: int, s: int)``: починається з ``b``, збільшує/зменшується кроками ``s`` та зупиняється *перед* ``n``. Аргументи ``b`` і ``n`` є **включними** та **виключними** відповідно. Аргумент ``s`` **може** бути негативним, але не ``0``. Якщо ``s`` дорівнює ``0``, друкується повідомлення про помилку. 

\ :ref:`range()<class_@GDScript_method_range>` перетворює всі аргументи на :ref:`int<class_int>` перед обробкою. 

\ **Примітка:** Повертає порожній масив, якщо жодне значення не відповідає обмеженню значення (наприклад, ``range(2, 5, -1)`` або ``range(5, 5, 1)``). 

\ **Приклади:** 

::
 
    print(range(4)) # Виводить [0, 1, 2, 3] 
    print(range(2, 5)) # Виводить [2, 3, 4] 
    print(range(0, 6, 2)) # Виводить [0, 2, 4] 
    print(range(4, 1, -1)) # Виводить [4, 3, 2]  

Щоб виконати ітерацію :ref:`Array<class_Array>` у зворотному напрямку, використовуйте: 

::
 
    var array = [3, 6, 9] 
    from i in range(array.size() - 1, -1, -1): 
        print(array[i])  

Вихід: 

.. code:: text
 
    9
    6
    3 

Щоб виконати ітерацію :ref:`float<class_float>`, перетворіть їх у циклі. 

::
 
    from i in range (3, 0, -1): 
        print(i / 10.0)  

Вихід: 

.. code:: text
 
    0.3
    0.2
    0.1

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_type_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **type_exists**\ (\ type\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_@GDScript_method_type_exists>`

**Застаріло:** Use :ref:`ClassDB.class_exists()<class_ClassDB_method_class_exists>` instead.

Повертає ``true`` якщо заданий :ref:`Object<class_Object>`-похідний клас існує в :ref:`ClassDB<class_ClassDB>`. Зауважте, що типи даних :ref:`Variant<class_Variant>` не зареєстровані в :ref:`ClassDB<class_ClassDB>`.

::

    type_exists("Sprite2D") # Повертає true
    type_exists("NonExistentClass") # Повертає false

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
