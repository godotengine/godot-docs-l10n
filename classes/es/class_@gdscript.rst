:github_url: hide

.. _class_@GDScript:

@GDScript
=========

Constantes, funciones y anotaciones de GDScript integradas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una lista de funciones de utilidad y anotaciones específicas de GDScript, accesibles desde cualquier script escrito en GDScript.

Para obtener la lista de funciones globales y constantes a las que se puede acceder desde cualquier lenguaje de scripting, Véase :ref:`@GlobalScope<class_@GlobalScope>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Exportaciones de GDScript <../tutorials/scripting/gdscript/gdscript_exports>`

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Constantes
--------------------

.. _class_@GDScript_constant_PI:

.. rst-class:: classref-constant

**PI** = ``3.14159265358979`` :ref:`🔗<class_@GDScript_constant_PI>`

Constante que representa cuántas veces el diámetro de un círculo se encuentra contenido en su perímetro.Esto equivale a ``TAU / 2``, o 180 grados en rotación.

.. _class_@GDScript_constant_TAU:

.. rst-class:: classref-constant

**TAU** = ``6.28318530717959`` :ref:`🔗<class_@GDScript_constant_TAU>`

La constante del círculo, la circunferencia de la unidad círculo en radianes. Esto equivale a ``PI * 2`` o 360 grados en rotación.

.. _class_@GDScript_constant_INF:

.. rst-class:: classref-constant

**INF** = ``inf`` :ref:`🔗<class_@GDScript_constant_INF>`

Infinito positivo de punto flotante. Este es el resultado de la división de punto flotante cuando el divisor es ``0.0``. Para infinito negativo, usa ``-INF``. Dividir por ``-0.0`` resultará en infinito negativo si el numerador es positivo, por lo que dividir por ``0.0`` no es lo mismo que dividir por ``-0.0`` (a pesar de que ``0.0 == -0.0`` devuelve ``true``).

\ **Advertencia:** El infinito numérico es solo un concepto aplicable a los números de punto flotante y no tiene equivalente para los enteros. Dividir un número entero entre ``0`` no resultará en :ref:`INF<class_@GDScript_constant_INF>` y causará un error en tiempo de ejecución en su lugar.

.. _class_@GDScript_constant_NAN:

.. rst-class:: classref-constant

**NAN** = ``nan`` :ref:`🔗<class_@GDScript_constant_NAN>`

"No es un Número", un valor de punto flotante inválido. Es devuelto por algunas operaciones inválidas, como dividir ``0.0`` de punto flotante entre ``0.0``.

\ :ref:`NAN<class_@GDScript_constant_NAN>` tiene propiedades especiales, incluyendo que ``!=`` siempre devuelve ``true``, mientras que los demás operadores de comparación siempre devuelven ``false``. Esto es cierto incluso al compararlo consigo mismo (``NAN == NAN`` devuelve ``false`` y ``NAN != NAN`` devuelve ``true``).

\ **Advertencia:** "No es un Número" es solo un concepto aplicable a los números de punto flotante y no tiene equivalente para los enteros. Dividir un entero ``0`` entre ``0`` no resultará en :ref:`NAN<class_@GDScript_constant_NAN>` y causará un error en tiempo de ejecución en su lugar.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Anotaciones
----------------------

.. _class_@GDScript_annotation_@abstract:

.. rst-class:: classref-annotation

**@abstract**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@abstract>`

Marca una clase o un método como abstracto.

Una clase abstracta es una clase que no puede ser instanciada directamente. En cambio, está hecha para ser heredada por otras clases. Intentar instanciar una clase abstracta resultará en un error.

Un método abstracto es un método que no tiene implementación. De esa manera, una nueva línea o punto y coma se espera después de la cabeza de la función. Esto define un contrato al que las clases herederas deben ceñirse, porque la firma del método debe ser compatible al sobrescribir.

Las clases herederas deben proveer implementaciones para todos los métodos abstractos, o marcarse como abstractas también. Si una clase tiene al menos un método abstracto (o suyo propio o uno heredado no implementado), entonces debe ser marcado como abstracto también. Sin embargo, lo contrario no es verdad: una clase abstracta puede no tener métodos abstractos.

::

    @abstract class Shape:
        @abstract func draw()

    class Circle extends Shape:
        func draw():
            print("Dibujando un círculo.")

    class Square extends Shape:
        func draw():
            print("Dibujando un cuadrado.")

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export:

.. rst-class:: classref-annotation

**@export**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export>`

Marca la siguiente propiedad como exportada (editable en el panel Inspector y guardada en disco). Para controlar el tipo de la propiedad exportada, utiliza la notación de sugerencia de tipo.

::

    extends Node

    enum Direction {LEFT, RIGHT, UP, DOWN}

    # Tipos integrados.
    @export var string = ""
    @export var int_number = 5
    @export var float_number: float = 5

    # Enumeraciones.
    @export var type: Variant.Type
    @export var format: Image.Format
    @export var direction: Direction

    # Recursos.
    @export var image: Image
    @export var custom_resource: CustomResource

    # Nodos.
    @export var node: Node
    @export var custom_node: CustomNode

    # Arrays tipados.
    @export var int_array: Array[int]
    @export var direction_array: Array[Direction]
    @export var image_array: Array[Image]
    @export var node_array: Array[Node]

\ **Nota:** Los recursos y nodos personalizados deben registrarse como clases globales utilizando ``class_name``, ya que el Inspector actualmente solo admite clases globales. De lo contrario, se exportará un tipo menos específico.

\ **Nota:** La exportación de nodos solo está soportada en clases derivadas de :ref:`Node<class_Node>` y tiene varias limitaciones adicionales.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_category:

.. rst-class:: classref-annotation

**@export_category**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_category>`

Define una nueva categoría para las siguientes propiedades exportadas. Esto ayuda a organizar propiedades en el panel de inspección.

Véase también :ref:`@GlobalScope.PROPERTY_USAGE_CATEGORY<class_@GlobalScope_constant_PROPERTY_USAGE_CATEGORY>`.

::

    @export_category("Statistics")
    @export var hp = 30
    @export var speed = 1.25

\ **Nota:** Las categorías en la lista del panel de inspección usualmente dividen las propiedades provenientes de diferentes clases (Node, Node2D, Sprite, etc) . Para una mejor claridad, se recomienda usar en su lugar :ref:`@export_group<class_@GDScript_annotation_@export_group>` y :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_color_no_alpha:

.. rst-class:: classref-annotation

**@export_color_no_alpha**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_color_no_alpha>`

Exporta una propiedad de tipo :ref:`Color<class_Color>`, :ref:`Array<class_Array>`\ \[:ref:`Color<class_Color>`\ \] o :ref:`PackedColorArray<class_PackedColorArray>` sin permitir que se edite su transparencia (:ref:`Color.a<class_Color_property_a>`).

Véase también :ref:`@GlobalScope.PROPERTY_HINT_COLOR_NO_ALPHA<class_@GlobalScope_constant_PROPERTY_HINT_COLOR_NO_ALPHA>`.

::

    @export_color_no_alpha var dye_color: Color
    @export_color_no_alpha var dye_colors: Array[Color]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_custom:

.. rst-class:: classref-annotation

**@export_custom**\ (\ hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\] = 6\ ) :ref:`🔗<class_@GDScript_annotation_@export_custom>`

Te permite establecer una sugerencia personalizada, una string de sugerencia y banderas de uso para la propiedad exportada. Ten en cuenta que no se realiza ninguna validación en GDScript, simplemente se pasarán los parámetros al editor.

::

    @export_custom(PROPERTY_HINT_NONE, "suffix:m") var suffix: Vector3

\ **Nota:** Independientemente del valor de ``usage``, siempre se agrega la bandera :ref:`@GlobalScope.PROPERTY_USAGE_SCRIPT_VARIABLE<class_@GlobalScope_constant_PROPERTY_USAGE_SCRIPT_VARIABLE>`, como ocurre con cualquier variable de script declarada explícitamente.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_dir:

.. rst-class:: classref-annotation

**@export_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_dir>`

Exporta una propiedad de tipo :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] o :ref:`PackedStringArray<class_PackedStringArray>` como una ruta hacia un directorio. La ruta estará limitada a la carpeta del proyecto y sus subcarpetas. Véase :ref:`@export_global_dir<class_@GDScript_annotation_@export_global_dir>` para permitir seleccionar desde todo el sistema de archivos.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_DIR<class_@GlobalScope_constant_PROPERTY_HINT_DIR>`.

::

    @export_dir var sprite_folder_path: String
    @export_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_enum:

.. rst-class:: classref-annotation

**@export_enum**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_enum>`

Exporta una propiedad :ref:`int<class_int>`, :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>`, o :ref:`PackedStringArray<class_PackedStringArray>` como una lista enumerada de opciones (o un array de opciones). Si la propiedad es un :ref:`int<class_int>`, entonces se guarda el índice del valor en el mismo orden en el que se proporcionan los valores. Se pueden añadir valores explícitos usando dos puntos (:). Si la propiedad es una :ref:`String<class_String>`, entonces se guarda el valor.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_ENUM<class_@GlobalScope_constant_PROPERTY_HINT_ENUM>`.

::

    @export_enum("Warrior", "Magician", "Thief") var character_class: int
    @export_enum("Slow:30", "Average:60", "Very Fast:200") var character_speed: int
    @export_enum("Rebecca", "Mary", "Leah") var character_name: String

    @export_enum("Sword", "Spear", "Mace") var character_items: Array[int]
    @export_enum("double_jump", "climb", "dash") var character_skills: Array[String]

Si queres asignar un valor inicial, lo debes especificar explícitamente:

::

    @export_enum("Rebecca", "Mary", "Leah") var character_name: String = "Rebecca"

Si quieres usar enums de GDSCript con nombre, entonces en cambio usa :ref:`@export<class_@GDScript_annotation_@export>`:

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

Exporta una propiedad de punto flotante con un widget de editor suavizado. Se pueden añadir pistas adicionales para ajustar el comportamiento del widget. ``"attenuation"`` invierte la curva, lo cual lo hace más intuitivo para editar las propiedades de atenuación. ``"positive_only"`` limita los valores para que sólo sean iguales o mayores que cero.

Véase además :ref:`@GlobalScope.PROPERTY_HINT_EXP_EASING<class_@GlobalScope_constant_PROPERTY_HINT_EXP_EASING>`.

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

Exporta una propiedad :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] o :ref:`PackedStringArray<class_PackedStringArray>` como una ruta a un archivo. La ruta se limitará a la carpeta del proyecto y sus subcarpetas. Véase :ref:`@export_global_file<class_@GDScript_annotation_@export_global_file>` para permitir la selección de todo el sistema de archivos.

Si se proporciona ``filter``, solo estarán disponibles para la selección los archivos coincidentes.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_FILE<class_@GlobalScope_constant_PROPERTY_HINT_FILE>`.

::

    @export_file var sound_effect_path: String
    @export_file("*.txt") var notes_path: String
    @export_file var level_paths: Array[String]

\ **Nota:** El archivo se almacenará y se hará referencia a él como UID, si está disponible. Esto asegura que la referencia sea válida incluso cuando el archivo se mueve. Puede utilizar los métodos :ref:`ResourceUID<class_ResourceUID>` para convertirlo en ruta.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file_path:

.. rst-class:: classref-annotation

**@export_file_path**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file_path>`

Igual que :ref:`@export_file<class_@GDScript_annotation_@export_file>`, excepto que el archivo se guardará como una ruta sin procesar. Esto significa que puede volverse inválida cuando se mueva el archivo. Si está exportando una ruta de :ref:`Resource<class_Resource>`, considera usar :ref:`@export_file<class_@GDScript_annotation_@export_file>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags:

.. rst-class:: classref-annotation

**@export_flags**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_flags>`

Exporta la propiedad de un entero como un campo de banderas de bits. Esto permite guardar varios valores "marcados" o ``true`` con una propiedad, y seleccionarlos cómodamente desde el panel del Inspector.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_FLAGS<class_@GlobalScope_constant_PROPERTY_HINT_FLAGS>`.

::

    @export_flags("Fire", "Water", "Earth", "Wind") var spell_elements = 0

Puedes añadir valores explícitos utilizando dos puntos:

::

    @export_flags("Self:4", "Allies:8", "Foes:16") var spell_targets = 0

Pueden incluso combinarse varias banderas:

::

    @export_flags("Self:4", "Allies:8", "Self and Allies:12", "Foes:16")
    var spell_targets = 0

\ **Nota:** El valor de una bandera debe ser al menos ``1`` y como máximo ``2 ** 32 - 1``.

\ **Nota:** A diferencia de :ref:`@export_enum<class_@GDScript_annotation_@export_enum>`, el valor explícito anterior no está tomado en cuenta. En el siguiente ejemplo, A es 16, B es 2, C es 4.

::

    @export_flags("A:16", "B", "C") var x

También puedes usar anotaciones con los tipos :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, y :ref:`PackedInt64Array<class_PackedInt64Array>`\ 

::

    @export_flags("Fire", "Water", "Earth", "Wind") var phase_elements: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_navigation:

.. rst-class:: classref-annotation

**@export_flags_2d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_navigation>`

Exporta una propiedad entera como una bandera binaria para las capas de navegación 2D. El widget en el panel de Inspector usará los nombres de capas definidos en :ref:`ProjectSettings.layer_names/2d_navigation/layer_1<class_ProjectSettings_property_layer_names/2d_navigation/layer_1>`.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_NAVIGATION>`.

::

    @export_flags_2d_navigation var navigation_layers: int
    @export_flags_2d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_physics:

.. rst-class:: classref-annotation

**@export_flags_2d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_physics>`

Exporta una propiedad de tipo int como un campo de bits para las capas físicas 2D. El widget en el panel del Inspector usará los nombres de capa definidos en :ref:`ProjectSettings.layer_names/2d_physics/layer_1<class_ProjectSettings_property_layer_names/2d_physics/layer_1>`.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_PHYSICS>`.

::

    @export_flags_2d_physics var physics_layers: int
    @export_flags_2d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_render:

.. rst-class:: classref-annotation

**@export_flags_2d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_render>`

Exporta un Integer como un campo de bandera de bit para las capas de renderizado 2D. El widget del inspector usará los nombres de capa definidos en :ref:`ProjectSettings.layer_names/2d_render/layer_1<class_ProjectSettings_property_layer_names/2d_render/layer_1>`.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_RENDER>`.

::

    @export_flags_2d_render var render_layers: int
    @export_flags_2d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_navigation:

.. rst-class:: classref-annotation

**@export_flags_3d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_navigation>`

Exporta una propiedad de tipo Integer como un campo de bandera de bits para las capas de navegación 3D. El widget en el panel del inspector usará los nombres de las capas definidas en :ref:`ProjectSettings.layer_names/3d_navigation/layer_1<class_ProjectSettings_property_layer_names/3d_navigation/layer_1>`.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_NAVIGATION>`.

::

    @export_flags_3d_navigation var navigation_layers: int
    @export_flags_3d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_physics:

.. rst-class:: classref-annotation

**@export_flags_3d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_physics>`

Exporta una propiedad entera como un campo de bandera de bits para capas de física 3D. El widget del panel del Inspector usará los nombres de capa definidos en :ref:`ProjectSettings.layer_names/3d_physics/layer_1<class_ProjectSettings_property_layer_names/3d_physics/layer_1>`.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_PHYSICS>`.

::

    @export_flags_3d_physics var physics_layers: int
    @export_flags_3d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_render:

.. rst-class:: classref-annotation

**@export_flags_3d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_render>`

Exporta una propiedad de un número entero como un campo de bandera de bits para capas de renderizado 3D. El widget en el panel del Inspector utilizará los nombres de capas definidos en :ref:`ProjectSettings.layer_names/3d_render/layer_1<class_ProjectSettings_property_layer_names/3d_render/layer_1>`.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_RENDER>`.

::

    @export_flags_3d_render var render_layers: int
    @export_flags_3d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_avoidance:

.. rst-class:: classref-annotation

**@export_flags_avoidance**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_avoidance>`

Exporta una propiedad de tipo Integer como un campo de bandera de bits para las capas de prevención de navegación. El widget en el Inspector usará los nombres de capas definidos en :ref:`ProjectSettings.layer_names/avoidance/layer_1<class_ProjectSettings_property_layer_names/avoidance/layer_1>`.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_AVOIDANCE<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_AVOIDANCE>`.

::

    @export_flags_avoidance var avoidance_layers: int
    @export_flags_avoidance var avoidance_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_dir:

.. rst-class:: classref-annotation

**@export_global_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_global_dir>`

Exporta una propiedad :ref:`String<class_String>`, :ref:`Array<class_Array>` \[ :ref:`String<class_String>` \], o :ref:`PackedStringArray<class_PackedStringArray>` como una ruta absoluta a un directorio. La ruta puede ser tomada desde el Sistema de Archivos entero. Véase :ref:`@export_dir<class_@GDScript_annotation_@export_dir>` para limitarlo a las carpetas del proyecto y a sus subcarpetas.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_DIR<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_DIR>`.

::

    @export_global_dir var sprite_folder_path: String
    @export_global_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_file:

.. rst-class:: classref-annotation

**@export_global_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_global_file>`

Exporta una propiedad de tipo :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], o :ref:`PackedStringArray<class_PackedStringArray>` como ruta absoluta a un archivo. La ruta puede ser tomada desde el Sistema de Archivos entero. Véase :ref:`@export_file<class_@GDScript_annotation_@export_file>` para limitarlo a las carpetas del proyecto y a sus subcarpetas.

Si se proporciona ``filter``, sólo los archivos marcados estarán disponibles para la selección.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_FILE<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_FILE>`.

::

    @export_global_file var sound_effect_path: String
    @export_global_file("*.txt") var notes_path: String
    @export_global_file var multiple_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_group:

.. rst-class:: classref-annotation

**@export_group**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_group>`

Define un nuevo grupo para las siguientes propiedades exportadas. Esto ayuda a organizar las propiedades en el panel Inspector. Los grupos pueden ser agregados con un ``prefix`` opcional, que podría hacer un grupo para solo considerar las propiedades que tenga este prefijo. El agrupamiento se romperá con la primera propiedad que no tenga un prefijo. El prefijo también sera removido del nombre de la propiedad en el panel Inspector.

Si no se proporciona un ``prefix``, entonces cada propiedad siguiente sera agregada al grupo. El grupo se disuelve para cuando el grupo o categoría siguiente es definida. También puedes forzar la disolución de un grupo usando esta anotación con strings vacías como parámetros, ``@export_group("", "")``.

Los grupos no pueden ser anidados, usa :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>` para añadir subgrupos dentro de grupos.

Véase también :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>`.

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

Exporta una propiedad :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedStringArray<class_PackedStringArray>`, :ref:`Dictionary<class_Dictionary>` o :ref:`Array<class_Array>`\ \[:ref:`Dictionary<class_Dictionary>`\ \] con un widget grande de :ref:`TextEdit<class_TextEdit>` en vez de un :ref:`LineEdit<class_LineEdit>`. Esto añade soporte para contenido multilínea y facilita editar una gran cantidad de texto almacenado en la propiedad.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_MULTILINE_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_MULTILINE_TEXT>`.

::

    @export_multiline var character_biography
    @export_multiline var npc_dialogs: Array[String]
    @export_multiline("monospace", "no_wrap") var favorite_ascii_art: String

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_node_path:

.. rst-class:: classref-annotation

**@export_node_path**\ (\ type\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_node_path>`

Exporta una propiedad :ref:`NodePath<class_NodePath>` o :ref:`Array<class_Array>`\ \[:ref:`NodePath<class_NodePath>`\ \] con un filtro para los tipos de nodo permitidos.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_NODE_PATH_VALID_TYPES<class_@GlobalScope_constant_PROPERTY_HINT_NODE_PATH_VALID_TYPES>`.

::

    @export_node_path("Button", "TouchScreenButton") var some_button
    @export_node_path("Button", "TouchScreenButton") var many_buttons: Array[NodePath]

\ **Note:** El tipo debe de ser una clase nativa o un script registrado globalmente (usando la keyword de ``class_name`` ) que hereda de la clase :ref:`Node<class_Node>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_placeholder:

.. rst-class:: classref-annotation

**@export_placeholder**\ (\ placeholder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_placeholder>`

Exporta una propiedad :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], or :ref:`PackedStringArray<class_PackedStringArray>` con un texto genérico mostrado en el widget del editor cuando no hay valores presentes.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_PLACEHOLDER_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_PLACEHOLDER_TEXT>`.

::

    @export_placeholder("Nombre en minúscula") var character_id: String
    @export_placeholder("Nombre en minúscula") var friend_id: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_range:

.. rst-class:: classref-annotation

**@export_range**\ (\ min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, step\: :ref:`float<class_float>` = 1.0, extra_hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_range>`

Exporta una propiedad :ref:`int<class_int>`, :ref:`float<class_float>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>`\ \[:ref:`float<class_float>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>`, :ref:`PackedFloat32Array<class_PackedFloat32Array>` o :ref:`PackedFloat64Array<class_PackedFloat64Array>` como un valor de rango. El rango debe estar definido entre ``min`` y ``max``, así como un ``step`` opcional y una variedad de pistas extras. El valor de ``step`` por defecto es ``1`` para propiedades de tipo entero. Para los números de punto flotante, el valor depende de tu configuración en :ref:`EditorSettings.interface/inspector/default_float_step<class_EditorSettings_property_interface/inspector/default_float_step>`.

Si se suministran las pistas ``"or_greater"`` y ``"or_less"``, el control del editor no limitará el valor a los límites establecidos. La pista ``"exp"`` hará que los valores editados en el rango cambien exponencialmente. La pista ``"prefer_slider"`` hará que los valores enteros usen el deslizador en lugar de flechas para editar, mientras que ``"hide_control"`` ocultará el elemento que controla el valor en el control del editor.

Las pistas también pueden usarse para especificar distintas unidades de medida para el parámetro editado. Usando ``"radians_as_degrees"``, puedes especificar que el valor real es en radianes pero que deberá ser mostrado como grados en el panel del Inspector (los valores del rango también están en grados). ``"degrees"`` permitirá añadir el símbolo de grados como sufijo de la unidad. Finalmente, se podrá especificar una pista personalizada para añadir alguna clase de sufijo al valor usando ``"suffix:unit"``, donde "unit" podrá ser cualquier string de texto.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_RANGE<class_@GlobalScope_constant_PROPERTY_HINT_RANGE>`.

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

Exporta una propiedad con la bandera :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`. La propiedad no se muestra en el editor, pero es serializada y almacenada en la escena o el archivo de recurso. Esto puede ser útil para los scripts :ref:`@tool<class_@GDScript_annotation_@tool>`. Además, el valor de la propiedad es copiado cuando :ref:`Resource.duplicate()<class_Resource_method_duplicate>` o :ref:`Node.duplicate()<class_Node_method_duplicate>` es llamado, a diferencia de las variables no-exportadas.

::

    var a # No almacenado en el archivo, no se muestra en el editor.
    @export_storage var b # Almacenado en el archivo, no se muestra en el editor.
    @export var c: int # Almacenado en el archivo, se muestra en el editor.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_subgroup:

.. rst-class:: classref-annotation

**@export_subgroup**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_subgroup>`

Define un nuevo subgrupo para las siguientes propiedades exportadas. Esto ayuda a organizar las propiedades en el dock Inspector. Los subgrupos funcionan exactamente como los grupos, excepto que necesitan que exista un grupo padre. Véase :ref:`@export_group<class_@GDScript_annotation_@export_group>`.

Véase también :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>`.

::

    @export_group("Racer Properties")
    @export var nickname = "Nick"
    @export var age = 26

    @export_subgroup("Car Properties", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

\ **Nota:** Los subgrupos no se pueden anidar, pero puedes usar el separador de barra (``/``) para lograr el efecto deseado:

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

Exporta una propiedad :ref:`Callable<class_Callable>` como un botón clickeable con la etiqueta ``text``. Cuando se presiona el botón, se llama al :ref:`Callable<class_Callable>`.

Si se especifica ``icon``, este se utiliza para obtener un icono para el botón mediante :ref:`Control.get_theme_icon()<class_Control_method_get_theme_icon>`, del tipo de tema ``"EditorIcons"``. Si se omite ``icon``, se usa el icono predeterminado ``"Callable"``.

Considera usar :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>` para permitir que la acción pueda revertirse de manera segura.

Véase también :ref:`@GlobalScope.PROPERTY_HINT_TOOL_BUTTON<class_@GlobalScope_constant_PROPERTY_HINT_TOOL_BUTTON>`.

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

\ **Nota:** La propiedad se exporta sin la bandera :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` porque un :ref:`Callable<class_Callable>` no puede ser serializado ni almacenado adecuadamente en un archivo.

\ **Nota:** En un proyecto exportado, ni :ref:`EditorInterface<class_EditorInterface>` ni :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>` existen, lo que puede hacer que algunos scripts fallen. Para evitar esto, puedes usar :ref:`Engine.get_singleton()<class_Engine_method_get_singleton>` y omitir el tipo estático en la declaración de la variable:

::

    var undo_redo = Engine.get_singleton(&"EditorInterface").get_editor_undo_redo()

\ **Nota:** Evita almacenar :ref:`Callable<class_Callable>` tipo lambda en variables miembro de clases basadas en :ref:`RefCounted<class_RefCounted>` (por ejemplo, recursos), ya que esto podría provocar fugas de memoria. Usa únicamente :ref:`Callable<class_Callable>` de métodos y, si es necesario, utiliza los métodos :ref:`Callable.bind()<class_Callable_method_bind>` o :ref:`Callable.unbind()<class_Callable_method_unbind>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@icon:

.. rst-class:: classref-annotation

**@icon**\ (\ icon_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@icon>`

Añade un icono personalizado al script actual. El icono especificado en ``icon_path`` se muestra en el panel de la Escena por cada nodo de esa clase, así como en varios diálogos de edición.

::

    @icon("res://path/to/class/icon.svg")

\ **Nota:** Solo el script puede tener un icono personalizado. Las clases internas no están soportadas.

\ **Nota:** Como las anotaciones describen su tema, la anotación :ref:`@icon<class_@GDScript_annotation_@icon>` se debe poner antes de definir la clase y su herencia.

\ **Nota:** A diferencia de la mayoría de las otras anotaciones, el argumento de la anotación :ref:`@icon<class_@GDScript_annotation_@icon>` debe ser un literal de string (las expresiones constantes no están soportadas).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@onready:

.. rst-class:: classref-annotation

**@onready**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@onready>`

Marca la siguiente propiedad como asignada cuando el :ref:`Node<class_Node>` esté listo. Los valores para esas propiedades no son asignadas inmediatamente cuando el nodo (:ref:`Object._init()<class_Object_private_method__init>`) es inicializado, y en su lugar son computadas y almacenadas justo antes de :ref:`Node._ready()<class_Node_private_method__ready>`.

::

    @onready var character_name: Label = $Label

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@rpc:

.. rst-class:: classref-annotation

**@rpc**\ (\ mode\: :ref:`String<class_String>` = "authority", sync\: :ref:`String<class_String>` = "call_remote", transfer_mode\: :ref:`String<class_String>` = "reliable", transfer_channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_@GDScript_annotation_@rpc>`

Marca el siguiente método para llamadas de procedimiento remoto (RPC). Véase :doc:`High-level multiplayer <../tutorials/networking/high_level_multiplayer>`.

Si ``mode`` es establecido como ``"any_peer"``, permite que cualquier par llame a esta función RPC. De lo contrario, solo la autoridad de red tiene permitido llamarla y el ``mode`` debe mantenerse como ``"authority"``. Al configurar funciones como las RPCs con :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, cada uno de estos modos corresponden respectivamente a los modos RPC :ref:`MultiplayerAPI.RPC_MODE_AUTHORITY<class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY>` y :ref:`MultiplayerAPI.RPC_MODE_ANY_PEER<class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER>` RPC. Véase :ref:`RPCMode<enum_MultiplayerAPI_RPCMode>`. Si un par que no es la autirudad intenta llamar a una función permitida solo para la autoridad, entonces la función no será ejecutada. Si el error puede ser detectado localmente (cuando la configuración RPC es consistente entre el par local y el remoto), se mostrará un mensaje de error en el par emisor. De lo contrario, el par remoto debería detectar e imprimir el error allí.

Si ``sync`` es establecido como ``"call_remote"``, la función se ejecutará solo en el par remoto, pero no localmente. Para ejecutar esta función también de forma local, establece ``sync`` como ``"call_local"``. Al configurar funciones como RPCs con :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, esto es equivalente a establecer ``call_local`` como ``true``.

Los valores aceptados para ``transfer_mode`` son ``"unreliable"``, ``"unreliable_ordered"``, or ``"reliable"``. Establece el modo de transferencia subyacente :ref:`MultiplayerPeer<class_MultiplayerPeer>`. Véase :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`.

El ``transfer_channel`` define el canal del :ref:`MultiplayerPeer<class_MultiplayerPeer>` subyacente. Véase :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`.

El orden de ``mode``, ``sync`` y ``transfer_mode`` no importa, pero no deben usarse valores relacionados al mismo argumento más de una vez. ``transfer_channel`` siempre debe ser el cuarto argumento (debes especificar los tres argumentos precedentes).

::

    @rpc
    func fn(): pass

    @rpc("any_peer", "unreliable_ordered")
    func fn_update_pos(): pass

    @rpc("authority", "call_remote", "reliable", 0) # Equivalente a @rpc
    func fn_default(): pass

\ **Nota:** Los métodos con la anotación :ref:`@rpc<class_@GDScript_annotation_@rpc>` no pueden recibir objetos que definen un parámetro requerido en el método :ref:`Object._init()<class_Object_private_method__init>`. Véase :ref:`Object._init()<class_Object_private_method__init>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@static_unload:

.. rst-class:: classref-annotation

**@static_unload**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@static_unload>`

Crea un script con variables estáticas que no persistan después de que se pierdan todas las referencias. Si el script se carga nuevamente, las variables estáticas volverán a sus valores predeterminados.

\ **Nota:** Como las anotaciones describen su subject, la anotación :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` debe colocarse antes de la definición de clase y la herencia.

\ **Advertencia:** Actualmente, debido a un error, los scripts nunca se liberan, incluso si se usa la anotación :ref:`@static_unload<class_@GDScript_annotation_@static_unload>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@tool:

.. rst-class:: classref-annotation

**@tool**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@tool>`

Marca el script actual como una herramienta de script, permitiéndole ser cargado y ejecutado por el editor. Véase :doc:`Ejecutar código en el editor <../tutorials/plugins/running_code_in_the_editor>`.

::

    @tool
    extends Node

\ **Nota:** Como las anotaciones describen sus sujetos, la :ref:`@tool<class_@GDScript_annotation_@tool>`\ debe ser colocada antes de la definición de clase y herencia.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore:

.. rst-class:: classref-annotation

**@warning_ignore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore>`

Marca la siguiente declaración para ignorar el ``warning`` especificado. Véase :doc:`GDScript warning system <../tutorials/scripting/gdscript/warning_system>`.

::

    . . . .func test():
    . . . .print("hola")
    . . . .return
    . . . .@warning_ignore("unreachable_code")
    print("unreachable")

Véase también :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` y :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_restore:

.. rst-class:: classref-annotation

**@warning_ignore_restore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_restore>`

Deja de ignorar los tipos de advertencia enumerados después de :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>`. Al ignorar los tipos de advertencia especificados, se restablecerá la configuración del proyecto. Esta anotación se puede omitir para ignorar los tipos de advertencia hasta el final del archivo.

\ **Nota:** A diferencia de la mayoría de las demás anotaciones, los argumentos de la anotación :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` deben ser literales de string (no se admiten expresiones constantes).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_start:

.. rst-class:: classref-annotation

**@warning_ignore_start**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_start>`

Comienza a ignorar los tipos de advertencias enumerados hasta el final del archivo o hasta la anotación :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` con el tipo de advertencia especificado.

::

    func test():
        var a = 1 # Advertencia (si está habilitada en la Configuración del Proyecto).
        @warning_ignore_start("unused_variable")
        var b = 2 # Sin advertencia.
        var c = 3 # Sin advertencia.
        @warning_ignore_restore("unused_variable")
        var d = 4 # Advertencia (si está habilitada en la Configuración del Proyecto).

\ **Nota:** Para suprimir una sola advertencia, utiliza :ref:`@warning_ignore<class_@GDScript_annotation_@warning_ignore>` en su lugar.

\ **Nota:** A diferencia de la mayoría de otras anotaciones, los argumentos de la anotación :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` deben ser literales de string (las expresiones constantes no son compatibles).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_@GDScript_method_Color8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **Color8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) :ref:`🔗<class_@GDScript_method_Color8>`

**Obsoleto:** Use :ref:`Color.from_rgba8()<class_Color_method_from_rgba8>` instead.

Devuelve un :ref:`Color<class_Color>` construido a partir de rojo (``r8``), verde (``g8``), azul (``b8``) y opcionalmente alfa (``a8``), cada uno dividido entre ``255.0`` para obtener su valor final. Usar :ref:`Color8()<class_@GDScript_method_Color8>` en vez del constructor estándar :ref:`Color<class_Color>` es útil cuando se necesita hacer coincidir exactamente los valores de color en una :ref:`Image<class_Image>`.

::

    var red = Color8(255, 0, 0) • • • • • • • • • • • # Igual que Color(1, 0, 0)
    var dark_blue = Color8(0, 0, 51) • • • • • • # Igual que Color(0, 0, 0.2).
    var my_color = Color8(306, 255, 0, 102) # Igual que Color(1.2, 1, 0, 0.4).

\ **Nota:** Debido a la baja precisión de :ref:`Color8()<class_@GDScript_method_Color8>` comparada con la del constructor estándar :ref:`Color<class_Color>`, un color creado con :ref:`Color8()<class_@GDScript_method_Color8>` generalmente no será igual al mismo color creado con el constructor :ref:`Color<class_Color>` estándar. Utiliza :ref:`Color.is_equal_approx()<class_Color_method_is_equal_approx>` para hacer comparaciones y evitar problemas con errores de precisión de punto flotante.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_assert:

.. rst-class:: classref-method

|void| **assert**\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_method_assert>`

Verifica que la ``condition`` sea ``true``. Si la ``condition`` es ``false``, se genera un error. Al ejecutar desde el editor, el proyecto en ejecución también se pausará hasta que lo reanudes. Esto puede usarse como una forma más estricta de :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` para reportar errores a los desarrolladores del proyecto o a los usuarios de plugins.

Un mensaje opcional ``message`` puede mostrarse además del mensaje genérico "Assertion failed". Puedes usar esto para proporcionar detalles adicionales sobre por qué falló la aserción.

\ **Advertencia:** Por razones de rendimiento, el código dentro de :ref:`assert()<class_@GDScript_method_assert>` solo se ejecuta en versiones de depuración o al ejecutar el proyecto desde el editor. No incluyas código con efectos secundarios en una llamada a :ref:`assert()<class_@GDScript_method_assert>`. De lo contrario, el proyecto se comportará de manera diferente cuando se exporte en modo de lanzamiento.

::

    Imagina que siempre queremos que la velocidad esté entre 0 y 20.
    var speed = -10
    assert(speed < 20) # Verdadero, el programa continuará.
    assert(speed >= 0) # Falso, el programa se detendrá.
    assert(speed >= 0 and speed < 20) # También puedes combinar las dos condiciones en una sola verificación.
    assert(speed < 20, "el límite de velocidad es 20") # Muestra un mensaje.

\ **Nota:** :ref:`assert()<class_@GDScript_method_assert>` es una palabra clave, no una función. Por lo tanto, no puedes acceder a ella como un :ref:`Callable<class_Callable>` ni usarla dentro de expresiones.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_char:

.. rst-class:: classref-method

:ref:`String<class_String>` **char**\ (\ code\: :ref:`int<class_int>`\ ) :ref:`🔗<class_@GDScript_method_char>`

Devuelve un único carácter (como un :ref:`String<class_String>` de longitud 1) del punto de código Unicode ``code`` dado.

::

    print(char(65))     # Imprime "A"
    print(char(129302)) # Imprime "🤖" (emoji de cara de robot)

Esta es la inversa de :ref:`ord()<class_@GDScript_method_ord>`. Véase también :ref:`String.chr()<class_String_method_chr>` y :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_convert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **convert**\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ) :ref:`🔗<class_@GDScript_method_convert>`

**Obsoleto:** Use :ref:`@GlobalScope.type_convert()<class_@GlobalScope_method_type_convert>` instead.

Convierte ``what`` a ``type`` de la mejor forma posible. El ``type`` usa los valores de :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`.

::

    var a = [4, 2.5, 1.2]
    print(a is Array) # Imprime true

    var b = convert(a, TYPE_PACKED_BYTE_ARRAY)
    print(b)          # Imprime [4, 2, 1]
    print(b is Array) # Imprime false

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_dict_to_inst:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **dict_to_inst**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_@GDScript_method_dict_to_inst>`

**Obsoleto:** Consider using :ref:`JSON.to_native()<class_JSON_method_to_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Convierte un ``dictionary`` (creado con :ref:`inst_to_dict()<class_@GDScript_method_inst_to_dict>`) en una instancia de objeto. Puede ser útil para deserializar datos.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_get_stack:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_get_stack>`

Devuelve un array de diccionarios que representan la pila de llamadas actual.

::

    func _ready():
        foo()

    func foo():
        bar()

    func bar():
        print(get_stack())

Empezando desde ``_ready()``, ``bar()`` esto imprimirá:

.. code:: text

    [{function:bar, line:12, source:res://script.gd}, {function:foo, line:9, source:res://script.gd}, {function:_ready, line:6, source:res://script.gd}]

Véase también :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`print_stack()<class_@GDScript_method_print_stack>` y :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Nota:** Por defecto, los "backtraces" solo están disponibles en compilaciones de editor y compilaciones de depuración. Para habilitarlos también para compilaciones de lanzamiento, debes habilitar :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_inst_to_dict:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **inst_to_dict**\ (\ instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_@GDScript_method_inst_to_dict>`

**Obsoleto:** Consider using :ref:`JSON.from_native()<class_JSON_method_from_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Devuelve la instancia ``instance`` convertida a un :ref:`Dictionary<class_Dictionary>`. Puede ser útil para la serialización.

::

    var foo = "bar"
    func _ready():
        var d = inst_to_dict(self)
        print(d.keys())
        print(d.values())

Imprime:

.. code:: text

    [@subpath, @path, foo]
    [, res://test.gd, bar]

\ **Nota:** Esta función sólo se puede utilizar para serializar objetos con un :ref:`GDScript<class_GDScript>` adjunto almacenado en un archivo independiente. No están soportados objetos sin un script adjunto, con un script escrito en otro lenguaje o con un script integrado.

\ **Nota:** Esta función no es recursiva, lo que significa que los objetos anidados no se representarán como diccionarios. Además, las propiedades pasadas por referencia (:ref:`Object<class_Object>`, :ref:`Dictionary<class_Dictionary>`, :ref:`Array<class_Array>` y arrays empaquetados) se copian por referencia, no duplicadas.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_is_instance_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_instance_of**\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_is_instance_of>`

Devuelve ``true`` si ``value`` es una instancia de ``type``. El valor de ``type`` debe ser uno de los siguientes:

- Una constante del enum :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, por ejemplo :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>`.

- Una clase derivada de :ref:`Object<class_Object>` que exista en :ref:`ClassDB<class_ClassDB>`, por ejemplo :ref:`Node<class_Node>`.

- Un :ref:`Script<class_Script>` (puedes usar cualquier clase, incluidas las internas).

A diferencia del operando derecho del operador ``is``, ``type`` puede ser un valor no constante. El operador ``is`` admite más características (como arrays tipados). Usa el operador en lugar de este método si no necesitas comprobación dinámica de tipos.

\ **Ejemplos:**\ 

::

    print(is_instance_of(a, TYPE_INT))
    print(is_instance_of(a, Node))
    print(is_instance_of(a, MyClass))
    print(is_instance_of(a, MyClass.InnerClass))

\ **Nota:** Si ``value`` y/o ``type`` son objetos liberados (ver :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`), o ``type`` no es una de las opciones anteriores, este método generará un error en tiempo de ejecución.

Véase también :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>`, :ref:`type_exists()<class_@GDScript_method_type_exists>`, :ref:`Array.is_same_typed()<class_Array_method_is_same_typed>` (y otros métodos de :ref:`Array<class_Array>`).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **len**\ (\ var\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_len>`

Devuelve la longitud del ``var`` Variant dado. La longitud puede ser el recuento de caracteres de un :ref:`String<class_String>` o :ref:`StringName<class_StringName>`, el recuento de elementos de cualquier tipo de array, o el tamaño de un :ref:`Dictionary<class_Dictionary>`. Para cualquier otro tipo de Variant, se genera un error en tiempo de ejecución y se detiene la ejecución.

::

    var a = [1, 2, 3, 4]
    len(a) # Devuelve 4

    var b = "¡Hola!"
    len(b) # Devuelve 6

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_load>`

Devuelve un :ref:`Resource<class_Resource>` del sistema de archivos ubicado en la ruta absoluta ``path``. A menos que ya esté referenciado en otro lugar (como en otro script o en la escena), el recurso se carga desde el disco en la llamada a la función, lo que podría causar un ligero retraso, especialmente al cargar escenas grandes. Para evitar retrasos innecesarios al cargar algo varias veces, almacena el recurso en una variable o usa :ref:`preload()<class_@GDScript_method_preload>`. Este método es equivalente a usar :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` con :ref:`ResourceLoader.CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

\ **Nota:** Las rutas de los recursos se pueden obtener haciendo clic derecho sobre un recurso en el panel FileSystem y eligiendo "Copiar ruta", o arrastrando el archivo desde el panel FileSystem al script actual.

::

    # Carga una escena llamada "main" ubicada en la raíz del directorio del proyecto y la almacena en una variable.
    var main = load("res://main.tscn") # main contendrá un recurso PackedScene.

\ **Importante:** Las rutas relativas *no* son relativas al script que llama a este método, sino que están prefijadas con ``"res://"``. Cargar desde rutas relativas puede no funcionar como se espera.

Esta función es una versión simplificada de :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`, que puede usarse para escenarios más avanzados.

\ **Nota:** Los archivos deben importarse primero en el motor para poder cargarlos usando esta función. Si deseas cargar :ref:`Image<class_Image>`\ s en tiempo de ejecución, puedes usar :ref:`Image.load()<class_Image_method_load>`. Si deseas importar archivos de audio, puedes usar el fragmento descrito en :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`.

\ **Nota:** Si :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` está configurado como ``true``, :ref:`load()<class_@GDScript_method_load>` no podrá leer los archivos convertidos en un proyecto exportado. Si dependes de la carga en tiempo de ejecución de archivos presentes dentro del PCK, configura :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` como ``false``.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_ord:

.. rst-class:: classref-method

:ref:`int<class_int>` **ord**\ (\ char\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_ord>`

Devuelve un entero que representa el punto de código Unicode del carácter ``char`` dado, que debe ser una string de longitud 1.

::

    print(ord("A")) # Imprime 65
    print(ord("🤖")) # Imprime 129302

Esta es la inversa de :ref:`char()<class_@GDScript_method_char>`. Véase también :ref:`String.chr()<class_String_method_chr>` y :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_preload:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **preload**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_preload>`

Devuelve un :ref:`Resource<class_Resource>` del sistema de archivos ubicado en la ruta ``path``. En tiempo de ejecución, el recurso se carga durante el análisis sintáctico del script. Esta función efectivamente actúa como una referencia a ese recurso. Ten en cuenta que el método requiere que ``path`` sea una constante :ref:`String<class_String>`. Si deseas cargar un recurso de una ruta dinámica/variable, utiliza :ref:`load()<class_@GDScript_method_load>`.

\ **Nota:** Las rutas de los recursos se pueden obtener haciendo clic con el botón derecho del ratón en un recurso del panel FileSystem y eligiendo "Copiar Ruta" o arrastrando el archivo desde el panel al script.

::

    # Crea la instancia de una escena.
    var diamante = preload("res://diamante.tscn").instantiate()

\ **Nota:** :ref:`preload()<class_@GDScript_method_preload>` es una palabra reservada, no una función. Por lo que no la puedes usar como una :ref:`Callable<class_Callable>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_debug:

.. rst-class:: classref-method

|void| **print_debug**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_print_debug>`

Similar a :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`, pero incluye el marco de pila actual cuando se ejecuta con el depurador activado.

La salida en la consola puede verse así:

.. code:: text

    Test print
    At: res://test.gd:15:_process()

Véase también :ref:`print_stack()<class_@GDScript_method_print_stack>`, :ref:`get_stack()<class_@GDScript_method_get_stack>` y :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Nota:** De forma predeterminada, los "backtraces" solo están disponibles en compilaciones de editor y compilaciones de depuración. Para habilitarlos también para compilaciones de lanzamiento, debes habilitar :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_stack:

.. rst-class:: classref-method

|void| **print_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_print_stack>`

Imprime un stack trace en la ubicación actual del código.

La salida en la consola puede verse de la siguiente manera:

.. code:: text

    Frame 0 - res://test.gd:16 in function '_process'

Véase también :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`get_stack()<class_@GDScript_method_get_stack>` y :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Nota:** Por defecto, los backtraces solo están disponibles en las compilaciones del editor y compilaciones de depuración. Para habilitarlos también en las compilaciones de lanzamiento, debes activar :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_range:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **range**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_range>`

Devuelve un array con el rango indicado. El :ref:`range()<class_@GDScript_method_range>` se puede llamar de tres maneras:

\ ``range(n: int)``: Comienza desde 0, aumenta en pasos de 1 y se detiene *antes* de ``n``. El argumento ``n`` es **exclusivo**.

\ ``range(b: int, n: int)``: Comienza desde ``b``, aumenta en pasos de 1 y se detiene *antes* de ``n``. Los argumentos ``b`` y ``n`` son **inclusivos** y **exclusivos**, respectivamente.

\ ``range(b: int, n: int, s: int)``: Comienza en ``b``, aumenta/disminuye en pasos de ``s`` y se detiene *antes* de ``n``. Los argumentos ``b`` y ``n`` son **inclusivos** y **exclusivos**, respectivamente. El argumento ``s`` **puede** ser negativo, pero no ``0``. Si ``s`` es ``0``, se muestra un mensaje de error.

\ :ref:`range()<class_@GDScript_method_range>` convierte todos los argumentos a :ref:`int<class_int>` antes del procesamiento.

\ **Nota:** Devuelve un array vacío si ningún valor cumple la restricción de valor (p. ej., ``range(2, 5, -1)`` o ``range(5, 5, 1)``).

\ **Ejemplos:**\ 

::

    print(range(4))        # Imprime [0, 1, 2, 3]
    print(range(2, 5))     # Imprime [2, 3, 4]
    print(range(0, 6, 2))  # Imprime [0, 2, 4]
    print(range(4, 1, -1)) # Imprime [4, 3, 2]

Para iterar sobre un :ref:`Array<class_Array>` hacia atrás, use:

::

    var array = [3, 6, 9]
    for i in range(array.size() - 1, -1, -1):
        print(array[i])

Resultado:

.. code:: text

    9
    6
    3

Para iterar sobre :ref:`float<class_float>`, conviértelos en el bucle.

::

    for i in range(3, 0, -1):
        print(i / 10.0)

Salida:

::

    0.3
    0.2
    0.1

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_type_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **type_exists**\ (\ type\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_@GDScript_method_type_exists>`

Devuelve `` true `` si la clase dada existe en :ref:`ClassDB<class_ClassDB>`.

::

    type_exists("Sprite2D") # Devuelve true
    type_exists("Variant") # Devuelve false

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
