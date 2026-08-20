:github_url: hide

.. _class_@GDScript:

@GDScript
=========

Costanti, funzioni e annotazioni di GDScript integrate.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una lista di funzioni di utilità e annotazioni, accessibili da qualsiasi script scritto in GDScript.

Per la lista di funzioni e costanti globali vedi :ref:`@GlobalScope<class_@GlobalScope>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Esportazione GDScript <../tutorials/scripting/gdscript/gdscript_exports>`

.. rst-class:: classref-reftable-group

Metodi
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

Costanti
----------------

.. _class_@GDScript_constant_PI:

.. rst-class:: classref-constant

**PI** = ``3.14159265358979`` :ref:`🔗<class_@GDScript_constant_PI>`

Constante che rappresenta quante volte il diametro di un cerchio rientra attorno al suo perimetro. Questo è equivalente a ``TAU / 2``, o 180 gradi di rotazione.

.. _class_@GDScript_constant_TAU:

.. rst-class:: classref-constant

**TAU** = ``6.28318530717959`` :ref:`🔗<class_@GDScript_constant_TAU>`

La costante del cerchio, la circonferenza del cerchio di raggio unitario in radianti (Circonferenza = Pi \* diametro). È equivalente a ``PI * 2``, o a 360 gradi di rotazione.

.. _class_@GDScript_constant_INF:

.. rst-class:: classref-constant

**INF** = ``inf`` :ref:`🔗<class_@GDScript_constant_INF>`

L'infinità positiva rappresentata in virgola mobile. Questo è il risultato della divisione in virgola mobile quando il divisore è ``0.0``. Per infinità negativa, utilizza ``-INF``. Dividere per ``-0.0`` risulterà in infinità negativa se è il numeratore è positivo, quindi dividere per ``0.0`` non è lo stesso di dividere per ``-0.0`` (nonostante ``0.0 == -0.0`` ritorni ``true``).

\ **Attenzione:** L'infinità numerica è solo un concetto per numeri in virgola mobile, e non ha equivalenti per i numeri interi. Dividere un numero intero per ``0`` non produrrà :ref:`INF<class_@GDScript_constant_INF>` ma risulterà in un errore durante l'esecuzione.

.. _class_@GDScript_constant_NAN:

.. rst-class:: classref-constant

**NAN** = ``nan`` :ref:`🔗<class_@GDScript_constant_NAN>`

"Not a Number", indica un valore in virgola mobile non valido. È restituito da alcune operazioni non valide, come la divisione in virgola mobile di ``0.0`` per ``0.0``.

\ :ref:`NAN<class_@GDScript_constant_NAN>` ha proprietà particolari, tra cui quella di restituire sempre ``true`` per l'operatore ``!=``, e per gli altri operatori di uguaglianza restituisce sempre ``false`` . Ciò si applica anche nei confronti con se stesso (``NAN == NAN`` restituisce ``false`` e ``NAN != NAN`` restituisce ``true``). Per questo motivo, è necessario utilizzare :ref:`@GlobalScope.is_nan()<class_@GlobalScope_method_is_nan>` per verificare se un numero è uguale a :ref:`NAN<class_@GDScript_constant_NAN>`.

\ **Attenzione:** "Not a Number" è solo un concetto per numeri in virgola mobile, e non ha equivalenti per i numeri interi. Dividere uno ``0`` intero per ``0`` non produrrà :ref:`NAN<class_@GDScript_constant_NAN>` ma risulterà in un errore durante l'esecuzione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Annotazioni
----------------------

.. _class_@GDScript_annotation_@abstract:

.. rst-class:: classref-annotation

**@abstract**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@abstract>`

Contrassegna una classe come astratta.

Una classe astratta è una classe che non può essere istanziata direttamente. Si dovrebbe invece implementare da altre classi. Tentare di istanziare una classe astratta risulterà in un errore.

Un metodo astratto è un metodo che non ha implementazione. Perciò, è prevista una nuova riga o un punto e virgola dopo l'header della funzione. Ciò definisce un contratto al quale le classi ereditanti dovranno aderire, in quanto la firma del metodo deve essere compatibile durante l'override.

Le classi ereditanti devono fornire implementazioni per tutti i metodi astratti oppure essere contrassegnate come astratte. Se una classe ha almeno un metodo astratto (che sia il proprio, o uno ereditato ma non implementato), allora deve essere contrassegnata come astratta. Però, l'inverso non è vero: una classe astratta può non contenere alcun metodo astratto.

::

    @abstract class Shape:
        @abstract func draw()

    class Circle extends Shape:
        func draw():
            print("Disegnando un cerchio.")

    class Square extends Shape:
        func draw():
            print("Disegnando un quadrato.")

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export:

.. rst-class:: classref-annotation

**@export**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export>`

Contrassegna la seguente proprietà come esportata (modificabile nel pannello Ispettore e salvato su disco). Per controllare il tipo della proprietà esportata, utilizza la notazione di suggerimento per il tipo.

::

    extends Node

    enum Direction {LEFT, RIGHT, UP, DOWN}

    # Tipi integrati.
    @export var string = ""
    @export var int_number = 5
    @export var float_number: float = 5

    # Enumerazioni.
    @export var type: Variant.Type
    @export var format: Image.Format
    @export var direction: Direction

    # Risorse.
    @export var image: Image
    @export var custom_resource: CustomResource

    # Nodi.
    @export var node: Node
    @export var custom_node: CustomNode

    # Array tipizzati.
    @export var int_array: Array[int]
    @export var direction_array: Array[Direction]
    @export var image_array: Array[Image]
    @export var node_array: Array[Node]

\ **Nota:** Le risorse e i nodi personalizzati devono essere registrati come classi globali attraverso ``class_name``, poiché l'Ispettore attualmente supporta solo classi globali. Altrimenti, un tipo meno specifico sarà invece esportato.

\ **Nota:** L'esportazione di nodi è supportata solo nelle classi derivanti da :ref:`Node<class_Node>` e ha un certo numero di altre limitazioni.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_category:

.. rst-class:: classref-annotation

**@export_category**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_category>`

Definisce una nuova categoria per le proprietà esportate seguenti. Questo aiuta a organizzare le proprietà nel pannello Ispettore.

Vedi anche :ref:`@GlobalScope.PROPERTY_USAGE_CATEGORY<class_@GlobalScope_constant_PROPERTY_USAGE_CATEGORY>`.

::

    @export_category("Statistics")
    @export var hp = 30
    @export var speed = 1.25

\ **Nota:** Le categorie nella lista del pannello Ispettore di solito dividono le proprietà provenienti da diverse classi (Node, Node2D, Sprite, ecc.). Per una migliore chiarezza, si consiglia di usare :ref:`@export_group<class_@GDScript_annotation_@export_group>` e :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>`, invece.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_color_no_alpha:

.. rst-class:: classref-annotation

**@export_color_no_alpha**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_color_no_alpha>`

Esporta una proprietà di tipo :ref:`Color<class_Color>`, :ref:`Array<class_Array>`\ \[:ref:`Color<class_Color>`\ \], o :ref:`PackedColorArray<class_PackedColorArray>` senza consentire la modifica della sua trasparenza (:ref:`Color.a<class_Color_property_a>`)).

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_COLOR_NO_ALPHA<class_@GlobalScope_constant_PROPERTY_HINT_COLOR_NO_ALPHA>`.

::

    @export_color_no_alpha var dye_color: Color
    @export_color_no_alpha var dye_colors: Array[Color]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_custom:

.. rst-class:: classref-annotation

**@export_custom**\ (\ hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\] = 6\ ) :ref:`🔗<class_@GDScript_annotation_@export_custom>`

Consente di impostare un'indicazione, una stringa indicativa e flag di utilizzo personalizzati per la proprietà esportata. Nota che non c'è alcuna validazione effettuata in GDScript, saranno solo passati i parametri all'editor.

::

    @export_custom(PROPERTY_HINT_NONE, "suffix:m") var suffix: Vector3

\ **Nota:** A prescindere dal valore di ``usage``, viene sempre aggiunto il flag :ref:`@GlobalScope.PROPERTY_USAGE_SCRIPT_VARIABLE<class_@GlobalScope_constant_PROPERTY_USAGE_SCRIPT_VARIABLE>`, come con qualsiasi variabile di script dichiarata esplicitamente.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_dir:

.. rst-class:: classref-annotation

**@export_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_dir>`

Esporta una proprietà di tipo :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], o :ref:`PackedStringArray<class_PackedStringArray>` come un percorso per una cartella. Il percorso sarà limitato alla cartella del progetto e alle sue sottocartelle. Vedi :ref:`@export_global_dir<class_@GDScript_annotation_@export_global_dir>` per consentire la scelta da tutto il filesystem.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_DIR<class_@GlobalScope_constant_PROPERTY_HINT_DIR>`.

::

    @export_dir var sprite_folder_path: String
    @export_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_enum:

.. rst-class:: classref-annotation

**@export_enum**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_enum>`

Esporta una proprietà di tipo :ref:`int<class_int>`, :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[\], :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>`, o :ref:`PackedStringArray<class_PackedStringArray>` come un elenco enumerato di opzioni (o un array di opzioni). Se la proprietà è un :ref:`int<class_int>`, viene memorizzato l'indice del valore, nello stesso ordine che sono stati forniti i valori. È possibile aggiungere valori espliciti utilizzando i due punti. Se la proprietà è un :ref:`String<class_String>`, il valore è memorizzato.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_ENUM<class_@GlobalScope_constant_PROPERTY_HINT_ENUM>`.

::

    @export_enum("Warrior", "Magician", "Thief") var character_class: int
    @export_enum("Slow:30", "Average:60", "Very Fast:200") var character_speed: int
    @export_enum("Rebecca", "Mary", "Leah") var character_name: String

    @export_enum("Sword", "Spear", "Mace") var character_items: Array[int]
    @export_enum("double_jump", "climb", "dash") var character_skills: Array[String]

Se si desidera impostare un valore iniziale, è necessario specificarlo esplicitamente:

::

    @export_enum("Rebecca", "Mary", "Leah") var character_name: String = "Rebecca"

Se si desidera utilizzare le enumerazioni di GDScript con nome, utilizza invece :ref:`@export<class_@GDScript_annotation_@export>`:

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

Esporta una proprietà in virgola mobile con un widget di editor di andamento. È possibile fornire ulteriori indicazioni per regolare il comportamento del widget. ``"attenuation"`` capovolge la curva, il che lo rende più intuitivo per modificare le proprietà di attenuazione. ``"positive_only"`` limita i valori per essere maggiori o uguali a zero.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_EXP_EASING<class_@GlobalScope_constant_PROPERTY_HINT_EXP_EASING>`.

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

Esporta una proprietà di tipo :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], o :ref:`PackedStringArray<class_PackedStringArray>` come un percorso per un file. Il percorso sarà limitato alla cartella del progetto e alle sue sottocartelle. Vedi :ref:`@export_global_file<class_@GDScript_annotation_@export_global_file>` per consentire la scelta da tutto il filesystem.

Se ``filter`` è fornito, solo i file corrispondenti saranno disponibili per la raccolta.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_FILE<class_@GlobalScope_constant_PROPERTY_HINT_FILE>`.

::

    @export_file var sound_effect_path: String
    @export_file("*.txt") var notes_path: String
    @export_file var level_paths: Array[String]

\ **Nota:** Il file sarà memorizzato e fatto riferimento come UID, se disponibile. Ciò garantisce che il riferimento sia valido anche quando il file viene spostato. È possibile utilizzare i metodi di :ref:`ResourceUID<class_ResourceUID>` per convertirlo in percorso.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file_path:

.. rst-class:: classref-annotation

**@export_file_path**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file_path>`

Come :ref:`@export_file<class_@GDScript_annotation_@export_file>`, con la differenza che il file sarà memorizzato come percorso non elaborato. Ciò significa che potrebbe non essere più valido quando il file è spostato. Se è necessario esportare un percorso di una :ref:`Resource<class_Resource>`, si consiglia invece di utilizzare :ref:`@export_file<class_@GDScript_annotation_@export_file>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags:

.. rst-class:: classref-annotation

**@export_flags**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_flags>`

Esporta una proprietà di intero come un campo di flag di bit. Questo consente di memorizzare diversi valori "spuntati" o ``true`` con una sola proprietà, e selezionarli comodamente dal pannello Ispettore.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_FLAGS<class_@GlobalScope_constant_PROPERTY_HINT_FLAGS>`.

::

    @export_flags("Fire", "Water", "Earth", "Wind") var spell_elements = 0

Puoi aggiungere valori espliciti tramite i due punti:

::

    @export_flags("Self:4", "Allies:8", "Foes:16") var spell_targets = 0

Puoi anche combinare diversi flag:

::

    @export_flags("Self:4", "Allies:8", "Self and Allies:12", "Foes:16")
    var spell_targets = 0

\ **Nota:** Il valore di un flag deve essere almeno ``1`` e al massimo ``2 ** 32 - 1``.

\ **Nota:** A differenza di :ref:`@export_enum<class_@GDScript_annotation_@export_enum>`, il valore esplicito precedente non è preso in considerazione. Nell'esempio seguente, A è 16, B è 2, C è 4.

::

    @export_flags("A:16", "B", "C") var x

Puoi anche usare l'annotazione sui tipi :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, e :ref:`PackedInt64Array<class_PackedInt64Array>`\ 

::

    @export_flags("Fire", "Water", "Earth", "Wind") var phase_elements: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_navigation:

.. rst-class:: classref-annotation

**@export_flags_2d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_navigation>`

Esporta una proprietà di intero come un campo di flag di bit per gli strati di navigazione 2D. Il widget nel pannello Ispettore utilizzerà i nomi degli strati definiti in :ref:`ProjectSettings.layer_names/2d_navigation/layer_1<class_ProjectSettings_property_layer_names/2d_navigation/layer_1>`.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_NAVIGATION>`.

::

    @export_flags_2d_navigation var navigation_layers: int
    @export_flags_2d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_physics:

.. rst-class:: classref-annotation

**@export_flags_2d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_physics>`

Esporta una proprietà di intero come un campo di flag di bit per gli strati di fisica 2D. Il widget nel pannello Ispettore utilizzerà i nomi degli strati definiti in :ref:`ProjectSettings.layer_names/2d_physics/layer_1<class_ProjectSettings_property_layer_names/2d_physics/layer_1>`.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_PHYSICS>`.

::

    @export_flags_2d_physics var physics_layers: int
    @export_flags_2d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_render:

.. rst-class:: classref-annotation

**@export_flags_2d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_render>`

Esporta una proprietà di intero come un campo di flag di bit per gli strati di rendering 2D. Il widget nel pannello Ispettore utilizzerà i nomi degli strati definiti in :ref:`ProjectSettings.layer_names/2d_physics/layer_1<class_ProjectSettings_property_layer_names/2d_physics/layer_1>`.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_RENDER>`.

::

    @export_flags_2d_render var render_layers: int
    @export_flags_2d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_navigation:

.. rst-class:: classref-annotation

**@export_flags_3d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_navigation>`

Esporta una proprietà di intero come un campo di flag di bit per gli strati di navigazione 3D. Il widget nel pannello Ispettore utilizzerà i nomi degli strati definiti in :ref:`ProjectSettings.layer_names/3d_navigation/layer_1<class_ProjectSettings_property_layer_names/3d_navigation/layer_1>`.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_NAVIGATION>`.

::

    @export_flags_3d_navigation var navigation_layers: int
    @export_flags_3d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_physics:

.. rst-class:: classref-annotation

**@export_flags_3d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_physics>`

Esporta una proprietà di intero come un campo di flag di bit per gli strati di fisica 3D. Il widget nel pannello Ispettore utilizzerà i nomi degli strati definiti in :ref:`ProjectSettings.layer_names/3d_physics/layer_1<class_ProjectSettings_property_layer_names/3d_physics/layer_1>`.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_PHYSICS>`.

::

    @export_flags_3d_physics var physics_layers: int
    @export_flags_3d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_render:

.. rst-class:: classref-annotation

**@export_flags_3d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_render>`

Esporta una proprietà di intero come un campo di flag di bit per gli strati di rendering 3D. Il widget nel pannello Ispettore utilizzerà i nomi degli strati definiti in :ref:`ProjectSettings.layer_names/3d_physics/layer_1<class_ProjectSettings_property_layer_names/3d_physics/layer_1>`.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_RENDER>`.

::

    @export_flags_3d_render var render_layers: int
    @export_flags_3d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_avoidance:

.. rst-class:: classref-annotation

**@export_flags_avoidance**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_avoidance>`

Esporta una proprietà di intero come un campo di flag di bit per gli strati di evitamento. Il widget nel pannello Ispettore utilizzerà i nomi degli strati definiti in :ref:`ProjectSettings.layer_names/avoidance/layer_1<class_ProjectSettings_property_layer_names/avoidance/layer_1>`.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_AVOIDANCE<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_AVOIDANCE>`.

::

    @export_flags_2d_render var avoidance_layers: int
    @export_flags_2d_render var avoidance_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_dir:

.. rst-class:: classref-annotation

**@export_global_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_global_dir>`

Esporta una proprietà di tipo :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], o :ref:`PackedStringArray<class_PackedStringArray>` come un percorso assoluto per una cartella. Il percorso può essere scelto da tutto il filesystem. Vedi :ref:`@export_dir<class_@GDScript_annotation_@export_dir>` per limitarlo alla cartella del progetto e alle sue sottocartelle.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_DIR<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_DIR>`.

::

    @export_global_dir var sprite_folder_path: String
    @export_global_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_file:

.. rst-class:: classref-annotation

**@export_global_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_global_file>`

Esporta una proprietà di tipo :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], o :ref:`PackedStringArray<class_PackedStringArray>` come un percorso assoluto per un file. Il percorso può essere scelto da tutto il filesystem. Vedi :ref:`@export_dir<class_@GDScript_annotation_@export_dir>` per limitarlo alla cartella del progetto e alle sue sottocartelle.

Se ``filter`` è fornito, solo i file corrispondenti saranno disponibili per la scelta.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_FILE<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_FILE>`.

::

    @export_global_file var sound_effect_path: String
    @export_global_file("*.txt") var notes_path: String
    @export_global_file var multiple_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_group:

.. rst-class:: classref-annotation

**@export_group**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_group>`

Definisce un nuovo gruppo per le seguenti proprietà esportate. Questo aiuta a organizzare le proprietà nel pannello Ispettore. I gruppi possono essere aggiunti con un prefisso ``prefix`` opzionale, che include nel gruppo solo le proprietà che hanno questo prefisso. Il raggruppamento si romperà alla prima proprietà che non ha il prefisso. Il prefisso è anche rimosso dal nome della proprietà nel pannello Ispettore.

Se non viene fornito ``prefix``, ogni proprietà seguente verrà aggiunta al gruppo. Il gruppo termina quando viene definito il prossimo gruppo o categoria. Puoi anche forzare la fine di un gruppo utilizzando questa annotazione con stringhe vuote per i parametri, ``@export_group("", "")``.

I gruppi non si possono annidare, utilizza :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>` per aggiungere sottogruppi all'interno dei gruppi.

Vedi anche :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>`.

::

    @export_group("Propertà di pilota")
    @export var nickname = "Nick"
    @export var age = 26

    @export_group("Proprietà dell'auto", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

    @export_group("", "")
    @export var ungrouped_number = 3

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_multiline:

.. rst-class:: classref-annotation

**@export_multiline**\ (\ hint\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_multiline>`

Esporta una proprietà di tipo :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedStringArray<class_PackedStringArray>`, :ref:`Dictionary<class_Dictionary>` o :ref:`Array<class_Array>`\ \[:ref:`Dictionary<class_Dictionary>`\ \] con un grande widget :ref:`TextEdit<class_TextEdit>` anziché con un :ref:`LineEdit<class_LineEdit>`. Ciò permette di supportare contenuti su più righe e semplifica la modifica di grandi quantità di testo memorizzate nella proprietà.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_MULTILINE_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_MULTILINE_TEXT>`.

::

    @export_multiline var character_biography
    @export_multiline var npc_dialogs: Array[String]
    @export_multiline(“monospace”, “no_wrap”) var favorite_ascii_art: String

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_node_path:

.. rst-class:: classref-annotation

**@export_node_path**\ (\ type\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_node_path>`

Esporta una proprietà di tipo :ref:`NodePath<class_NodePath>` o :ref:`Array<class_Array>`\ \[:ref:`NodePath<class_NodePath>`\ \] con un filtro per i tipi di nodo consentiti.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_NODE_PATH_VALID_TYPES<class_@GlobalScope_constant_PROPERTY_HINT_NODE_PATH_VALID_TYPES>`.

::

    @export_node_path("Button", "TouchScreenButton") var some_button
    @export_node_path("Button", "TouchScreenButton") var many_buttons: Array[NodePath]

\ **Nota:** Il tipo deve essere una classe nativa o uno script registrato globalmente (tramite la parola chiave ``class_name``) che eredita :ref:`Node<class_Node>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_placeholder:

.. rst-class:: classref-annotation

**@export_placeholder**\ (\ placeholder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_placeholder>`

Esporta una proprietà di tipo :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], o :ref:`PackedStringArray<class_PackedStringArray>` con un testo segnaposto visualizzato nel widget dell'editor quando non è presente alcun valore.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_PLACEHOLDER_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_PLACEHOLDER_TEXT>`.

::

    @export_placeholder("Name in lowercase") var character_id: String
    @export_placeholder("Name in lowercase") var friend_ids: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_range:

.. rst-class:: classref-annotation

**@export_range**\ (\ min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, step\: :ref:`float<class_float>` = 1.0, extra_hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_range>`

Esporta una proprietà di tipo :ref:`int<class_int>`, :ref:`float<class_float>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>` \[:ref:`float<class_float>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>`, :ref:`PackedFloat32Array<class_PackedFloat32Array>` o :ref:`PackedFloat64Array<class_PackedFloat64Array>` come valore tra un intervallo. L'intervallo deve essere definito da ``min`` e ``max``, oltre che da un passo facoltativo (``step``) e da una serie di ulteriori indicazioni. Il valore predefinito di ``step`` è ``1`` per le proprietà di tipo intero. Per i numeri in virgola mobile, questo valore dipende dall'impostazione :ref:`EditorSettings.interface/inspector/default_float_step<class_EditorSettings_property_interface/inspector/default_float_step>`.

Se vengono fornite le indicazioni ``"or_greater"`` e ``"or_less"``, il widget nell'editor non limiterà il valore ai confini dell'intervallo. L'indicazione ``"exp"`` consente di modificare i valori nell'intervallo in modo esponenziale. L'indicazione ``"prefer_slider"`` consente di modificare i valori di tipo intero tramite uno slider invece delle frecce, mentre ``"hide_control"`` nasconderà l'elemento che controlla il valore del widget nell'editor.

Le indicazioni consentono anche di indicare le unità di misura del valore modificato. Utilizzando ``"radians_as_degrees"`` è possibile specificare che il valore effettivo è in radianti, ma deve essere visualizzato in gradi nel pannello Ispettore (anche i valori dell'intervallo sono in gradi). ``"degrees"`` consente di aggiungere il simbolo dei gradi come suffisso dell'unità di misura (il valore rimane invariato). Infine, è possibile fornire un suffisso personalizzato utilizzando ``"suffix:unit"``, dove "unit" può essere qualsiasi stringa.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_RANGE<class_@GlobalScope_constant_PROPERTY_HINT_RANGE>`.

::

    @export_range(0, 20) var numero
    @export_range(-10, 20) var numero
    @export_range(-10, 20, 0.2) var numero: float
    @export_range(0, 20) var numeri: Array[float]

    @export_range(0, 100, 1, "or_greater") var energia_percentuale
    @export_range(0, 100, 1, "or_greater","or_less") var vita_delta

    @export_range(-180, 180, 0.001, "radians_as_degrees") var angolo_radianti
    @export_range(0, 360, 1, "degrees") var angolo_gradi
    @export_range(-8, 8, 2, "suffix:px") var offset_obiettivo

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_storage:

.. rst-class:: classref-annotation

**@export_storage**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_storage>`

Esporta una proprietà con il flag :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`. La proprietà non viene visualizzata nell'editor, ma è serializzata e memorizzata nella scena o nel file delle risorse. Questo può essere utile per :ref:`@tool<class_@GDScript_annotation_@tool>` script. Inoltre, il valore della proprietà viene copiato quando :ref:`Resource.duplicate()<class_Resource_method_duplicate>` o :ref:`Node.duplicate()<class_Node_method_duplicate>` è chiamato, a differenza di variabili non esportate.

::

    var a # Non memorizzato nel file, non visualizzato nell'editor.
    @export_storage var b # Memorizzato nel file, non visualizzato nell'editor.
    @export var c: int # Memorizzato nel file, visualizzato nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_subgroup:

.. rst-class:: classref-annotation

**@export_subgroup**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_subgroup>`

Definire un nuovo sottogruppo per le seguenti proprietà esportate. Questo aiuta a organizzare le proprietà nel pannello Ispettore. I sottogruppi funzionano esattamente come i gruppi, tranne che hanno bisogno di un gruppo genitore per esistere. Vedi :ref:`@export_group<class_@GDScript_annotation_@export_group>`.

Vedi anche :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>`.

::

    @export_group("Propertà del pilota")
    @export var nickname = "Nick"
    @export var age = 26

    @export_subgroup("Proprietà dell'auto", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

\ **Nota:** I sottogruppi non possono essere annidati, ma è possibile usare il separatore barra (``/``) per ottenere l'effetto desiderato:

::

    @export_group("Proprietà dell'auto")
    @export_subgroup("Ruote", "ruota_")
    @export_subgroup("Ruote/Avanti", "ruota_avanti_")
    @export var ruota_avanti_forza= 10
    @export var ruota_avanti_mobilità = 5
    @export_subgroup("Ruote/Dietro", "ruota_dietro_")
    @export var ruota_dietro_forza = 8
    @export var ruota_dietro_mobilità = 3
    @export_subgroup("Ruota", "ruota_")
    @export var ruota_materiale: PhysicsMaterial

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_tool_button:

.. rst-class:: classref-annotation

**@export_tool_button**\ (\ text\: :ref:`String<class_String>`, icon\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_tool_button>`

Esporta una proprietà :ref:`Callable<class_Callable>` come pulsante cliccabile con l'etichetta ``text``. Quando il pulsante viene premuto, il chiamabile viene chiamato.

Se ``icon`` è specificato, viene utilizzato per recuperare un'icona per il pulsante tramite :ref:`Control.get_theme_icon()<class_Control_method_get_theme_icon>`, dal tipo del tema ``"EditorIcons"``. Se ``icon`` viene omesso, viene utilizzata l'icona predefinita ``"Callable"``.

Considera di usare :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>` per prevedere l'annullamento sicuro dell'azione.

Vedi anche :ref:`@GlobalScope.PROPERTY_HINT_TOOL_BUTTON<class_@GlobalScope_constant_PROPERTY_HINT_TOOL_BUTTON>`.

::

    @tool
    extends Sprite2D

    @export_tool_button("Ciao") var azione_ciao = ciao
    @export_tool_button("Randomizza il colore!", "ColorRect")
    var azione_randomizza_colore = randomizza_colore

    func ciao():
        print("Ciao mondo!")

    func randomizza_colore():
        var undo_redo = EditorInterface.get_editor_undo_redo()
        undo_redo.create_action("Colore di Sprite2D randomizzato")
        undo_redo.add_do_property(self, &"self_modulate", Color(randf(), randf(), randf()))
        undo_redo.add_undo_property(self, &"self_modulate", self_modulate)
        undo_redo.commit_action()

\ **Nota:** La proprietà è esportata senza il flag :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` perché un :ref:`Callable<class_Callable>` non può essere serializzato correttamente e memorizzato in un file.

\ **Nota:** In un progetto esportato non esistono né :ref:`EditorInterface<class_EditorInterface>` né :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, il che potrebbe causare alcuni script a non funzionare correttamente. Per evitare ciò, è possibile usare :ref:`Engine.get_singleton()<class_Engine_method_get_singleton>` e omettere il tipo statico dalla dichiarazione della variabile:

::

    var undo_redo = Engine.get_singleton(&"EditorInterface").get_editor_undo_redo()

\ **Nota:** Evita di memorizzare i chiamabili lambda nelle variabili membro delle classi basate su :ref:`RefCounted<class_RefCounted>` (ad esempio risorse), poiché ciò può causare perdite di memoria. Utilizza solo i chiamabili da metodi e facoltativamente :ref:`Callable.bind()<class_Callable_method_bind>` o :ref:`Callable.unbind()<class_Callable_method_unbind>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@icon:

.. rst-class:: classref-annotation

**@icon**\ (\ icon_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@icon>`

Aggiunge un'icona personalizzata allo script attuale. L'icona specificata dal percorso ``icon_path`` viene visualizzata nel pannello Scena per ogni nodo di quella classe, così come in varie finestre di dialogo dell'editor.

::

    @icon("res://path/to/class/icon.svg")

\ **Nota:** Solo lo script può avere un'icona personalizzata. Le classi interne non sono supportate.

\ **Nota:** Poiché le annotazioni descrivono il loro soggetto, l'annotazione :ref:`@icon<class_@GDScript_annotation_@icon>` deve essere posta prima della definizione di classe e di eredità.

\ **Nota:** A differenza di altre annotazioni, l'argomento dell'annotazione :ref:`@icon<class_@GDScript_annotation_@icon>` deve essere una stringa letterale (le espressioni costanti non sono supportate).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@onready:

.. rst-class:: classref-annotation

**@onready**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@onready>`

Segna la proprietà seguente come assegnata quando il nodo è pronto. I valori per queste proprietà non vengono assegnati immediatamente quando il nodo viene inizializzato (:ref:`Object._init()<class_Object_private_method__init>`), e invece vengono calcolati e memorizzati subito prima di :ref:`Node._ready()<class_Node_private_method__ready>`.

::

    @onready var nome_personaggio = $Label

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@rpc:

.. rst-class:: classref-annotation

**@rpc**\ (\ mode\: :ref:`String<class_String>` = "authority", sync\: :ref:`String<class_String>` = "call_remote", transfer_mode\: :ref:`String<class_String>` = "reliable", transfer_channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_@GDScript_annotation_@rpc>`

Contrassegna il seguente metodo per le chiamate di procedura remota. Vedi :doc:` Multigiocatore di alto livello <../tutorials/networking/high_level_multiplayer>`.

Se ``mode`` è impostato a ``"any_peer"``, permette a qualsiasi peer di chiamare questa funzione RPC. Altrimenti, solo al peer dell'autorità è permesso chiamarlo e ``mode`` dovrebbe essere mantenuto a ``"autorità"``. Quando si configurano le funzioni come RPC con :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, ciascuna di queste modalità corrisponde rispettivamente alle modalità RPC :ref:`MultiplayerAPI.RPC_MODE_AUTHORITY<class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY>` e :ref:`MultiplayerAPI.RPC_MODE_ANY_PEER<class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER>`. Vedi :ref:`RPCMode<enum_MultiplayerAPI_RPCMode>`. Se un peer che non è l'autorità cerca di chiamare una funzione che è consentita solo per l'autorità, la funzione non sarà eseguita. Se l'errore può essere rilevato localmente (quando la configurazione RPC è consistente tra il peer locale e il peer remoto), verrà visualizzato un messaggio di errore sul peer del mittente. Altrimenti, il peer remoto individuerà l'errore e stamperà un errore lì.

Se ``sync`` è impostato a ``"call_remote"``, la funzione sarà eseguita solo sul peer remoto, ma non localmente. Per eseguire questa funzione anche localmente, imposta ``sync`` a ``"call_local"``. Quando si configurano le funzioni come RPC con :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, questo equivale a impostare ``call_local`` a ``true``.

I valori accettati da ``transfer_mode`` sono ``"unreliable"``, ``"unreliable_order"``, o ``"reliable"``. Esso imposta la modalità di trasferimento del :ref:`MultiplayerPeer<class_MultiplayerPeer>` sottostante. Vedi :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`.

Il ``transfer_channel`` definisce il canale del :ref:`MultiplayerPeer<class_MultiplayerPeer>` sottostante. Vedi :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`.

L'ordine di ``mode``, ``sync`` e ``transfer_mode`` non importa, ma i valori relativi allo stesso argomento non devono essere utilizzati più di una volta. ``transfer_channel`` deve sempre essere il quarto argomento (è necessario specificare 3 argomenti precedenti).

::

    @rpc
    func fn(): pass

    @rpc("any_peer", "unreliable_ordered")
    func fn_update_pos(): pass

    @rpc("authority", "call_remote", "reliable", 0) # Equivalente a @rpc
    func fn_default(): pass

\ **Nota:** I metodi annotati con :ref:`@rpc<class_@GDScript_annotation_@rpc>` non possono ricevere oggetti che definiscono parametri obbligatori in :ref:`Object._init()<class_Object_private_method__init>`. Per maggiori dettagli, vedi :ref:`Object._init()<class_Object_private_method__init>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@static_unload:

.. rst-class:: classref-annotation

**@static_unload**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@static_unload>`

Rende uno script con variabili statiche a non persistere dopo che tutti i suoi riferimenti sono persi. Se lo script viene caricato di nuovo le variabili statiche torneranno ai loro valori predefiniti.

\ **Nota:** Poiché le annotazioni descrivono il loro soggetto, l' annotazione :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` deve essere posta prima della definizione di classe e di eredità.

\ **Attenzione:** Attualmente, a causa di un bug, gli script non sono mai liberati, anche se l'annotazione :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` è utilizzata.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@tool:

.. rst-class:: classref-annotation

**@tool**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@tool>`

Marca lo script attuale come script di strumento (tool), permettendo di caricarlo ed eseguirlo dall'editor. Vedi :doc:`Esecuzione di codice nell'editor <../tutorials/plugins/running_code_in_the_editor>`.

::

    @tool
    extends Node

\ **Nota:** Poiché le annotazioni descrivono il loro soggetto, l'annotazione :ref:`@tool<class_@GDScript_annotation_@tool>` deve essere posta prima della definizione di classe e di eredità.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore:

.. rst-class:: classref-annotation

**@warning_ignore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore>`

Segna la seguente dichiarazione per ignorare l'avviso specificato da ``warning``. Vedi :doc:`Sistema di avvisi di GDScript <../tutorials/scripting/gdscript/warning_system>`.

::

    func test():
        print("ciao")
        return
        @warning_ignore("unreachable_code")
        print("non raggiungibile")

Vedi anche :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` e :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_restore:

.. rst-class:: classref-annotation

**@warning_ignore_restore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_restore>`

Smette di ignorare i tipi di avviso elencati dopo :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>`. Ciò sarà reimpostato sulle Impostazioni del progetto. È possibile omettere questa annotazione per ignorare i tipi di avviso fino alla fine del file.

\ **Nota:** A differenza della maggior parte delle altre annotazioni, gli argomenti dell'annotazione :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` devono essere stringhe letterali (le espressioni costanti non sono supportate).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_start:

.. rst-class:: classref-annotation

**@warning_ignore_start**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_start>`

Comincia a ignorare i tipi di avviso elencati fino alla fine del file o dell'annotazione :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` con il tipo di avviso specificato.

::

    func test():
        var a = 1 # Avviso (se abilitato nelle Impostazioni del progetto).
        @warning_ignore_start("unused_variable")
        var b = 2 # Nessun avviso.
        var c = 3 # Nessun avviso.
        @warning_ignore_restore("unused_variable")
        var d = 4 # Avviso (se abilitato nelle Impostazioni del progetto).

\ **Nota:** Per sopprimere un singolo avviso, usa invece :ref:`@warning_ignore<class_@GDScript_annotation_@warning_ignore>`.

\ **Nota:** A differenza della maggior parte delle altre annotazioni, gli argomenti dell'annotazione :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` devono essere stringhe letterali (le espressioni costanti non sono supportate).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_@GDScript_method_Color8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **Color8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) :ref:`🔗<class_@GDScript_method_Color8>`

**Deprecato:** Use :ref:`Color.from_rgba8()<class_Color_method_from_rgba8>` instead.

Restituisce un :ref:`Color<class_Color>` costruito da rosso (``r8``), verde (``g8``), blu (``b8``), e facoltativamente alfa (``a8``) canali interi, ciascuno diviso da ``255.0`` per il loro valore finale. Utilizzare :ref:`Color8()<class_@GDScript_method_Color8>` invece del costruttore di :ref:`Color<class_Color>` standard è utile quando è necessario corrispondere ai valori di colore esatti in un :ref:`Image<class_Image>`.

::

    var red = Color8(255, 0, 0)             # Uguale a Color(1, 0, 0).
    var dark_blue = Color8(0, 0, 51)        # Uguale a Color(0, 0, 0.2).
    var my_color = Color8(306, 255, 0, 102) # Uguale a Color(1.2, 1, 0, 0.4).

\ **Nota:** A causa della minore precisione di :ref:`Color8()<class_@GDScript_method_Color8>` rispetto al costruttore standard di :ref:`Color<class_Color>`, un colore creato con :ref:`Color8()<class_@GDScript_method_Color8>` generalmente non sarà uguale allo stesso colore creato con il costruttore standard di :ref:`Color<class_Color>`. Utilizzare :ref:`Color.is_equal_approx()<class_Color_method_is_equal_approx>` per i confronti per evitare problemi d'errori di precisione in virgola mobile.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_assert:

.. rst-class:: classref-method

|void| **assert**\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_method_assert>`

Verifica che la condizione ``condition`` sia vera (``true``). Se ``condition`` è falsa (``false``), è generato un errore e il metodo attuale restituisce un valore predefinito. Quando in esecuzione dall'editor, gli errori dalle asserzioni provocano anche un interruzione dal debugger. Lo si può usare come una forma più potente di :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` per riportare errori agli sviluppatori del progetto o agli utenti di estensioni.

L'argomento facoltativo ``message`` è mostrato in aggiunta al generico messaggio "Assertion failed" (Asserzione fallita). Si può usare per fornire più dettagli sul motivo per cui l'asserzione non è riuscita.

\ **Attenzione:** Per motivi di prestazioni, il codice all'interno di :ref:`assert()<class_@GDScript_method_assert>` è eseguito solo nelle build di debug o quando il progetto è eseguito dall'editor. Non includere codice che ha effetti collaterali in una chiamata di :ref:`assert()<class_@GDScript_method_assert>`. Altrimenti, il progetto si comporterà in modo diverso quando esportato in modalità di rilascio.

::

    # Immaginati di voler sempre avere una velocità tra 0 e 20.
    var velocità = -10
    assert(velocità < 20) # Vero (true), il programma continuerà.
    assert(velocità >= 0) # Falso (false), il programma si interromperà.
    assert(velocità >= 0 && speed < 20) # Puoi anche combinare due condizioni in un singolo controllo.
    assert(velocità < 20, "Il limite di velocità è 20") # Mostra un messaggio per chiarire i dettagli

\ **Note:** :ref:`assert()<class_@GDScript_method_assert>` è una parola chiave, non una funzione. Perciò non puoi accedervi come un :ref:`Callable<class_Callable>` o usarla all'interno di espressioni.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_char:

.. rst-class:: classref-method

:ref:`String<class_String>` **char**\ (\ code\: :ref:`int<class_int>`\ ) :ref:`🔗<class_@GDScript_method_char>`

Restituisce un unico carattere (come :ref:`String<class_String>` di lunghezza 1) del punto di codice Unicode ``code`` fornito.

::

    print(char(65))     # Stampa "A"
    print(char(129302)) # Stampa "🤖" (emoji faccia di robot)

È l'inverso di :ref:`ord()<class_@GDScript_method_ord>`. Vedi anche :ref:`String.chr()<class_String_method_chr>` e :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_convert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **convert**\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ) :ref:`🔗<class_@GDScript_method_convert>`

**Deprecato:** Use :ref:`@GlobalScope.type_convert()<class_@GlobalScope_method_type_convert>` instead.

Converte ``what`` a un altro tipo nel miglior modo possibile. ``type`` usa i valori di :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`.

::

    var a = [4, 2.5, 1.2]
    print(a is Array) # Stampa true

    var b = convert(a, TYPE_PACKED_BYTE_ARRAY)
    print(b)          # Stampa [4, 2, 1]
    print(b is Array) # Stampa false

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_dict_to_inst:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **dict_to_inst**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_@GDScript_method_dict_to_inst>`

**Deprecato:** Consider using :ref:`JSON.to_native()<class_JSON_method_to_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Riconverte un ``dictionary`` (creato in precedenza con :ref:`inst_to_dict()<class_@GDScript_method_inst_to_dict>`) in un'istanza di oggetto. Può essere utile per la deserializzazione.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_get_stack:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_get_stack>`

Restituisce un array di dizionari che rappresentano lo stack di chiamate attuale. Vedi anche :ref:`print_stack()<class_@GDScript_method_print_stack>`.

::

    func _ready():
        foo()

    func foo():
        bar()

    func bar():
        print(get_stack())

A partire da ``_ready()``, ``bar()`` stamperebbe:

::

    [{function:bar, line:12, source:res://script.gd}, {function:foo, line:9, source:res://script.gd}, {function:_ready, line:6, source:res://script.gd}]

Vedi anche :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`print_stack()<class_@GDScript_method_print_stack>` e :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Nota:** Come predefinito, i backtrace sono disponibili solo per le build dell'editor e di debug. Per abilitarli anche nelle build di rilascio, è necessario abilitare :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_inst_to_dict:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **inst_to_dict**\ (\ instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_@GDScript_method_inst_to_dict>`

**Deprecato:** Consider using :ref:`JSON.from_native()<class_JSON_method_from_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Restituisce l'istanza ``instance`` convertita in un :ref:`Dictionary<class_Dictionary>`. Può essere utile per la serializzazione.

::

    var foo = "bar"
    func _ready():
        var d = inst_to_dict(self)
        print(d.keys())
        print(d.values())

Stampa:

.. code:: text

    [@subpath, @path, foo]
    [, res://test.gd, bar]

\ **Nota:** Questa funzione può essere utilizzata solo per serializzare oggetti il quale :ref:`GDScript<class_GDScript>` allegato è memorizzato in un file separato. Gli oggetti senza uno script allegato, con uno script scritto in un altro linguaggio o con uno script integrato non sono supportati.

\ **Nota:** Questa funzione non è ricorsiva, il che significa che gli oggetti annidati non saranno rappresentati come dizionari. Inoltre, le proprietà passate per riferimento (:ref:`Object<class_Object>`, :ref:`Dictionary<class_Dictionary>`, :ref:`Array<class_Array>` e array impacchettati) vengono copiate per riferimento, non duplicate.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_is_instance_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_instance_of**\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_is_instance_of>`

Restituisce ``true`` se ``value`` è un'istanza del tipo ``type``. Il valore ``type`` deve essere uno dei seguenti:

- Una costante dall'enumerazione :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, per esempio :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>`.

- Una classe derivante da :ref:`Object<class_Object>` che esiste in :ref:`ClassDB<class_ClassDB>`, per esempio :ref:`Node<class_Node>`.

- Uno :ref:`Script<class_Script>` (è possibile utilizzare qualsiasi classe, comprese quelle interne).

A differenza dell'operando destro dell'operatore ``is``, ``type`` può essere un valore non costante. L'operatore ``is`` supporta più funzionalità (ad esempio array e dizionari tipizzati). Utilizza l'operatore al posto di questo metodo se non hai bisogno di verificare il tipo dinamicamente.

\ **Esempi:**\ 

::

    print(is_instance_of(a, TYPE_INT))
    print(is_instance_of(a, Node))
    print(is_instance_of(a, MyClass))
    print(is_instance_of(a, MyClass.InnerClass))

\ **Nota:** Se ``value`` e/o ``type`` sono oggetti liberati (vedi :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`), o ``type`` non è una delle opzioni precedenti, questo metodo genererà un errore durante l'esecuzione.

Vedi anche :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>`, :ref:`Object.is_class()<class_Object_method_is_class>`, :ref:`Object.get_script()<class_Object_method_get_script>`, :ref:`Array.is_same_typed()<class_Array_method_is_same_typed>` (e altri metodi di :ref:`Array<class_Array>`), :ref:`Dictionary.is_same_typed()<class_Dictionary_method_is_same_typed>` (e altri metodi di :ref:`Dictionary<class_Dictionary>`).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **len**\ (\ var\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_len>`

Restituisce la lunghezza del :ref:`Variant<class_Variant>` ``var``. La lunghezza può essere il numero dei caratteri di una :ref:`String<class_String>` o :ref:`StringName<class_StringName>`, il numero degli elementi di un tipo di array, o la dimensione di un :ref:`Dictionary<class_Dictionary>`. Per ogni altro tipo di :ref:`Variant<class_Variant>`, un errore verrà generato e l'esecuzione verrà interrotta.

::

    var a = [1, 2, 3, 4]
    len(a) # Restituisce 4

    var b = "Ciao!"
    len(b) # Restituisce 6

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_load>`

Restituisce una :ref:`Resource<class_Resource>` dal filesystem posizionata nel percorso assoluto ``path``. A meno che non sia già referenziata altrove (per esempio in un altro script o nella scena), la risorsa viene caricata dal disco alla chiamata del metodo, il che potrebbe causare un leggero ritardo, specialmente quando si caricano grandi scene. Per evitare ritardi superflui in caso di più caricamenti, salvare la risorsa in una variabile o usare :ref:`preload()<class_@GDScript_method_preload>`. Questo metodo è equivalente a usare :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` con :ref:`ResourceLoader.CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

\ **Nota:** È possibile ottenere i percorsi delle risorse cliccando con il tasto destro su una risorsa nel pannello Filesystem e scegliendo "Copia percorso" o trascinando il file dal pannello Filesystem nello script attuale.

::

    # Carica una scena chiamata main che si trova alla radice della cartella di progetto e salvala temporaneamente in una variabile.
    var main = load("res://main.tscn") # main conterrà una risorsa PackedScene.

\ **Importante:** I percorsi relativi *non* sono relativi allo script che chiama questo metodo, invece è preceduto da ``"res://"``. Il caricamento da percorsi relativi potrebbe non funzionare come previsto.

Questo metodo è una versione semplificata di :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`, che può essere usata in casi più avanzati.

\ **Nota:** I file devono essere prima importati nel motore per caricarli tramite questa funzione. Se si desidera caricare :ref:`Image<class_Image>` in fase di esecuzione, è possibile usare :ref:`Image.load()<class_Image_method_load>`. Se si desidera importare file audio, è possibile usare lo snippet descritto in :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`.

\ **Nota:** Se :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` è ``true``, :ref:`load()<class_@GDScript_method_load>` non sarà in grado di leggere i file convertiti in un progetto esportato. Se è desiderato caricare i file presenti nel PCK in fase di esecuzione, imposta :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` su ``false``.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_ord:

.. rst-class:: classref-method

:ref:`int<class_int>` **ord**\ (\ char\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_ord>`

Restituisce un intero rappresentate il punto di codice Unicode del carattere ``char``, che dovrebbe essere una stringa di lunghezza 1.

::

    print(ord("A")) # Stampa 65
    print(ord("🤖")) # Stampa 129302

È l'inverso di :ref:`char()<class_@GDScript_method_char>`. Vedi anche :ref:`String.chr()<class_String_method_chr>` e :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_preload:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **preload**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_preload>`

Restituisce una :ref:`Resource<class_Resource>` dal filesystem situata nel percorso ``path``. La risorsa viene caricata durante l'elaborazione dello script. Questa funzione funge effettivamente da riferimento a quella risorsa. Nota che questa funzione ha bisogno che ``path`` sia una :ref:`String<class_String>` costante. Se devi caricare una risorsa da un percorso dinamico, usa :ref:`load()<class_@GDScript_method_load>`.

\ **Nota:** È possibile ottenere il percorso di una risorsa cliccando col tasto destro sulla risorsa in questione nel pannello Assets e scegliendo "Copia percorso" oppure trascinando il file dal pannello Filesystem allo script attuale.

::

    # Crea un Istanza di una scena.
    var diamond = preload("res://diamond.tscn").instantiate()

\ **Note:** :ref:`preload()<class_@GDScript_method_preload>` è una parola chiave, non una funzione. Non è dunque possibile accedervi come :ref:`Callable<class_Callable>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_debug:

.. rst-class:: classref-method

|void| **print_debug**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_print_debug>`

Come :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`, ma include il frame dello stack attuale quando si è in esecuzione con il debugger attivato.

L'output nella console potrebbe avere il seguente aspetto:

.. code:: text

    Test print
    A: res://test.gd:15:_process()

Vedi anche :ref:`print_stack()<class_@GDScript_method_print_stack>`, :ref:`get_stack()<class_@GDScript_method_get_stack>` e :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Nota:** Come predefinito, i backtrace sono disponibili solo per le build dell'editor e di debug. Per abilitarli anche nelle build di rilascio, è necessario abilitare :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_stack:

.. rst-class:: classref-method

|void| **print_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_print_stack>`

Stampa lo stack trace dell'attuale posizione nel codice.

L'output nella console potrebbe avere il seguente aspetto:

.. code:: text

    Frame 0 - res://test.gd:16 in function '_process'

Vedi anche :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`get_stack()<class_@GDScript_method_get_stack>`, e :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Nota:** Come predefinito, i backtrace sono disponibili solo per le build dell'editor e di debug. Per abilitarli anche nelle build di rilascio, è necessario abilitare :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_range:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **range**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_range>`

Restituisce un array contenente l'intervallo fornito. :ref:`range()<class_@GDScript_method_range>` può essere chiamato in tre modi:

\ ``range(n:int)``: Parte da 0, incrementa di 1 a ogni passaggio, e si ferma *prima di*\ ``n``. L'argomento ``n`` è **esclusivo**.

\ ``range(b: int, n: int)``: Parte da ``b``, incrementa di 1 a ogni passaggio, e si ferma *prima* di ``n``. Gli argomenti ``b`` e ``n`` sono, rispettivamente, **inclusivo** ed **esclusivo**.

\ ``range(b: int, n: int, s: int)``: Parte da ``b``, aumenta/diminuisce di ``s`` a ogni passaggio, e si ferma *prima* di ``n``. Gli argomenti ``b`` e ``n`` sono, rispettivamente, **inclusivi** ed **esclusivi**. L'argomento ``s`` **può** essere negativo, ma non ``0``. Se ``s`` è ``0``, un messaggio di errore verrà stampato.

\ :ref:`range()<class_@GDScript_method_range>` converte tutti gli argomenti a :ref:`int<class_int>` prima di elaborarli.

\ **Nota:** Restituisce un array vuoto se nessun valore soddisfa i requisiti (es. ``range(2, 5, -1)`` o ``range(5, 5, 1)``).

\ **Esempi:**\ 

::

    print(range(4))        # Stampa [0, 1, 2, 3]
    print(range(2, 5))     # Stampa [2, 3, 4]
    print(range(0, 6, 2))  # Stampa [0, 2, 4]
    print(range(4, 1, -1)) # Stampa [4, 3, 2]

Per iterare su un :ref:`Array<class_Array>` all'indietro, usa:

::

    var array = [3, 6, 9]
    for i in range(array.size(), 0, -1):
        print(array[i - 1])

Risultato:

::

    9
    6
    3

Per iterare su un :ref:`float<class_float>`, convertili nel ciclo.

::

    for i in range (3, 0, -1):
        print(i / 10.0)

Risultato:

.. code:: text

    0.3
    0.2
    0.1

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_type_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **type_exists**\ (\ type\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_@GDScript_method_type_exists>`

**Deprecato:** Use :ref:`ClassDB.class_exists()<class_ClassDB_method_class_exists>` instead.

Restituisce ``true`` se la classe specificata, derivata da :ref:`Object<class_Object>`, esiste in :ref:`ClassDB<class_ClassDB>`. Nota che i tipi di dato :ref:`Variant<class_Variant>` non sono registrati in :ref:`ClassDB<class_ClassDB>`.

::

    type_exists("Sprite2D") # Restituisce true
    type_exists("NonExistentClass") # Restituisce false

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
