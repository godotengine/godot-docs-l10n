:github_url: hide

.. _class_NodePath:

NodePath
========

Un percorso dell'albero di scene pre-interpretato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il tipo di :ref:`Variant<class_Variant>` incorporato **NodePath** rappresenta un percorso verso un nodo o una proprietà in una gerarchia di nodi. È progettato per essere passato efficientemente a molti metodi integrati (come :ref:`Node.get_node()<class_Node_method_get_node>`, :ref:`Object.set_indexed()<class_Object_method_set_indexed>`, :ref:`Tween.tween_property()<class_Tween_method_tween_property>`, ecc.) senza una dipendenza rigida al nodo o alla proprietà a cui puntano.

Un percorso di nodo è rappresentato come una :ref:`String<class_String>` composta da nomi di nodi separati da barra (``/``) e nomi di proprietà separati da due punti (``:``) (chiamati anche "sotto-nomi"). Simili a un percorso di file system, ``".."`` e ``"."`` sono nomi di nodo speciali. Si riferiscono rispettivamente al nodo padre e al nodo attuale.

Gli esempi seguenti sono percorsi relativi al nodo attuale:

::

    ^"A"     # Punta al figlio diretto A.
    ^"A/B"   # Punta al figlio di A, B.
    ^"."     # Punta al nodo attuale.
    ^".."    # Punta al nodo genitore.
    ^"../C"  # Punta al nodo fratello C.
    ^"../.." # Punta al nodo nonno.

Una barra iniziale indica che il percorso è assoluto e inizia dal :ref:`SceneTree<class_SceneTree>`:

::

    ^"/root"            # Punta al Window radice di SceneTree.
    ^"/root/Title"      # Può puntare al nodo radice della scena principale denominato "Title".
    ^"/root/Global"     # Può puntare a un nodo o a una scena autoload denominata "Global".

Nonostante il loro nome, i percorsi dei nodi possono anche puntare a una proprietà:

::

    ^":position"           # Punta alla posizione di questo oggetto.
    ^":position:x"         # Punta alla posizione di questo oggetto sull'asse x.
    ^"Camera3D:rotation:y" # Punta alla Camera3D figlia e alla sua rotazione y.
    ^"/root:size:x"        # Punta alla Window radice e alla sua larghezza.

In alcune situazioni, è possibile omettere il ``:`` iniziale quando si punta alla proprietà di un oggetto. Ad esempio, questo è il caso di :ref:`Object.set_indexed()<class_Object_method_set_indexed>` e :ref:`Tween.tween_property()<class_Tween_method_tween_property>`, poiché tali metodi chiamano :ref:`get_as_property_path()<class_NodePath_method_get_as_property_path>` internamente. Tuttavia, in genere si consiglia di mantenere il prefisso ``:``.

I percorsi dei nodi non possono verificare se sono validi e possono puntare a nodi o proprietà inesistenti. Il loro significato dipende interamente dal contesto in cui vengono utilizzati.

Di solito non devi preoccuparti del tipo **NodePath**, poiché le stringhe vengono automaticamente convertite in questo tipo quando necessario. Ci sono comunque momenti in cui definire i percorsi dei nodi è utile. Ad esempio, le proprietà **NodePath** esportate ti consentono di selezionare facilmente qualsiasi nodo all'interno della scena attualmente modificata. Sono inoltre aggiornate automaticamente quando sposti, rinomini o elimini nodi nell'editor dell'albero di scene. Vedi anche :ref:`@GDScript.@export_node_path<class_@GDScript_annotation_@export_node_path>`.

Vedi anche :ref:`StringName<class_StringName>`, che è un tipo simile progettato per stringhe ottimizzate.

\ **Nota:** In un contesto booleano, un **NodePath** sarà valutato come ``false`` se è vuoto (``NodePath("")``). Altrimenti, un **NodePath** sarà sempre valutato come ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di gioco di ruolo (RPG) 2D <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Costruttori
----------------------

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

Metodi
------------

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

Operatori
------------------

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

Descrizioni dei costruttori
------------------------------------------------------

.. _class_NodePath_constructor_NodePath:

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ ) :ref:`🔗<class_NodePath_constructor_NodePath>`

Costruisce un **NodePath** vuoto.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`NodePath<class_NodePath>`\ )

Costruisce un **NodePath** come copia del **NodePath** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`String<class_String>`\ )

Costruisce un **NodePath** da una :ref:`String<class_String>`. Il percorso creato è assoluto se preceduto da una barra (vedi :ref:`is_absolute()<class_NodePath_method_is_absolute>`).

I "sotto-nomi" facoltativamente inclusi dopo il percorso al nodo di destinazione possono puntare a proprietà e possono anche essere annidati.

Le seguenti stringe possono essere percorsi di nodi validi:

::

    # Punta al nodo Sprite2D.
    "Level/RigidBody2D/Sprite2D"

    # Punta al nodo Sprite2D e alla sua risorsa "texture".
    # get_node() recupererebbe Sprite2D, mentre get_node_and_resource()
    # recupererebbe sia il nodo Sprite2D sia la risorsa "texture".
    "Level/RigidBody2D/Sprite2D:texture"

    # Punta al nodo Sprite2D e alla sua proprietà "position".
    "Level/RigidBody2D/Sprite2D:position"

    # Punta al nodo Sprite2D e al componente "x" della sua proprietà "position".
    "Level/RigidBody2D/Sprite2D:position:x"

    # Punta al nodo RigidBody2D come percorso assoluto che parte dal SceneTree.
    "/root/Level/RigidBody2D"

\ **Nota:** In GDScript, è anche possibile convertire una stringa costante in un percorso di nodo prefissandola con ``^``. ``^"path/to/node"`` equivale a ``NodePath("path/to/node")``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_NodePath_method_get_as_property_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_as_property_path**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_as_property_path>`

Restituisce una copia di questo percorso del nodo con un carattere due punti (``:``) come prefisso, trasformandolo in un percorso di proprietà puro senza nomi di nodo (relativo al nodo attuale).


.. tabs::

 .. code-tab:: gdscript

    # node_path punta alla proprietà "x" del nodo figlio denominato "position".
    var node_path = ^"position:x"

    # property_path punta alla "position" nell'asse "x" di questo nodo.
    var property_path = node_path.get_as_property_path()
    print(property_path) # Stampa ":position:x"

 .. code-tab:: csharp

    // node_path punta alla proprietà "x" del nodo figlio denominato "position".
    var nodePath = new NodePath("position:x");

    // property_path punta alla "position" nell'asse "x" di questo nodo.
    NodePath propertyPath = nodePath.GetAsPropertyPath();
    GD.Print(propertyPath); // Stampa ":position:x"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_names**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_names>`

Restituisce tutti i nomi dei nodi concatenati con un carattere barra (``/``) come un singolo :ref:`StringName<class_StringName>`.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_subnames:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_subnames**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_subnames>`

Restituisce tutti i sotto-nomi di proprietà concatenati con un carattere due punti (``:``) come un singolo :ref:`StringName<class_StringName>`.


.. tabs::

 .. code-tab:: gdscript

    var node_path = ^"Sprite2D:texture:resource_name"
    print(node_path.get_concatenated_subnames()) # Stampa "texture:resource_name"

 .. code-tab:: csharp

    var nodePath = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(nodePath.GetConcatenatedSubnames()); // Stampa "texture:resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_name>`

Restituisce il nome del nodo indicato dall'indice ``idx``, a partire da 0. Se ``idx`` è fuori dai limiti, viene generato un errore. Vedi anche :ref:`get_subname_count()<class_NodePath_method_get_subname_count>` e :ref:`get_name_count()<class_NodePath_method_get_name_count>`.


.. tabs::

 .. code-tab:: gdscript

    var sprite_path = NodePath("../RigidBody2D/Sprite2D")
    print(sprite_path.get_name(0)) # Stampa ".."
    print(sprite_path.get_name(1)) # Stampa "RigidBody2D"
    print(sprite_path.get_name(2)) # Stampa "Sprite"

 .. code-tab:: csharp

    var spritePath = new NodePath("../RigidBody2D/Sprite2D");
    GD.Print(spritePath.GetName(0)); // Stampa ".."
    GD.Print(spritePath.GetName(1)); // Stampa "PathFollow2D"
    GD.Print(spritePath.GetName(2)); // Stampa "Sprite"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_name_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_name_count>`

Restituisce il numero di nomi di nodi nel percorso. I sotto-nomi delle proprietà non sono inclusi.

Ad esempio, ``"../RigidBody2D/Sprite2D:texture"`` contiene 3 nomi di nodi.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_subname**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_subname>`

Restituisce il nome di proprietà indicato dall'indice ``idx``, a partire da 0. Se ``idx`` è fuori dai limiti, viene generato un errore. Vedi anche :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`.


.. tabs::

 .. code-tab:: gdscript

    var path_to_name = NodePath("Sprite2D:texture:resource_name")
    print(path_to_name.get_subname(0)) # Stampa "texture"
    print(path_to_name.get_subname(1)) # Stampa "resource_name"

 .. code-tab:: csharp

    var pathToName = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(pathToName.GetSubname(0)); // Stampa "texture"
    GD.Print(pathToName.GetSubname(1)); // Stampa "resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subname_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_subname_count>`

Restituisce il numero di nomi di proprietà ("sotto-nomi") nel percorso. Ogni sottonome nel percorso del nodo è elencato dopo un carattere due punti (``:``).

Ad esempio, ``"Level/RigidBody2D/Sprite2D:texture:resource_name"`` contiene 2 sottonomi.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_NodePath_method_hash>`

Restituisce il valore di hash a 32 bit che rappresenta il contenuto del percorso di nodo.

\ **Nota:** I percorsi di nodo con valori uguali di hash *non* sono garantiti che siano gli stessi, a causa delle collisioni di hash. I percorsi di nodo con valori diversi di hash sono sicuramente diversi.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_absolute**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_absolute>`

Restituisce ``true`` se il percorso del nodo è assoluto. A differenza di un percorso relativo, un percorso assoluto è rappresentato da un carattere barra iniziale (``/``) e parte sempre dal :ref:`SceneTree<class_SceneTree>`. Può essere utilizzato per accedere in modo affidabile ai nodi dal nodo radice (ad esempio ``"/root/Global"`` se esiste un autoload denominato "Global").

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_empty>`

Restituisce ``true`` se il percorso di nodo è stato costruito da una stringa vuota (``""``).

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_slice:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_NodePath_method_slice>`

Restituisce la porzione del **NodePath**, da ``begin`` (incluso) a ``end`` (escluso), come un nuovo **NodePath**.

Il valore assoluto di ``begin`` e ``end`` sarà limitato alla somma di :ref:`get_name_count()<class_NodePath_method_get_name_count>` e :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`, quindi il valore predefinito per ``end`` lo fa suddividere fino alla fine di **NodePath** per impostazione predefinita (ad esempio, ``path.slice(1)`` è un'abbreviazione di ``path.slice(1, path.get_name_count() + path.get_subname_count())``).

Se ``begin`` o ``end`` sono negativi, saranno relativi alla fine del **NodePath** (ad esempio, ``path.slice(0, -2)`` è un'abbreviazione di ``path.slice(0, path.get_name_count() + path.get_subname_count() - 2)``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_NodePath_operator_neq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_neq_NodePath>`

Restituisce ``true`` se due percorsi di nodo non sono uguali.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_operator_eq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_eq_NodePath>`

Restituisce ``true`` se due percorsi di nodo sono uguali, cioè sono composti dagli stessi nodi e sotto-nomi nello stesso ordine.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
