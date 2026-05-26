:github_url: hide

.. _class_EditorContextMenuPlugin:

EditorContextMenuPlugin
=======================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Estensione per aggiungere menu contestuali personalizzati nell'editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**EditorContextMenuPlugin** consente di aggiungere opzioni personalizzate nel menu contestuale dell'editor.

Attualmente, i menu contestuali sono supportati per tre aree di uso comune: il file system, l'albero di scene e il pannello dell'elenco degli script nell'editor.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_popup_menu<class_EditorContextMenuPlugin_private_method__popup_menu>`\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual|                                                                                                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_context_menu_item<class_EditorContextMenuPlugin_method_add_context_menu_item>`\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ )                             |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_context_menu_item_from_shortcut<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`\ (\ name\: :ref:`String<class_String>`, shortcut\: :ref:`Shortcut<class_Shortcut>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_context_submenu_item<class_EditorContextMenuPlugin_method_add_context_submenu_item>`\ (\ name\: :ref:`String<class_String>`, menu\: :ref:`PopupMenu<class_PopupMenu>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ )                         |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_menu_shortcut<class_EditorContextMenuPlugin_method_add_menu_shortcut>`\ (\ shortcut\: :ref:`Shortcut<class_Shortcut>`, callback\: :ref:`Callable<class_Callable>`\ )                                                                              |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_EditorContextMenuPlugin_ContextMenuSlot:

.. rst-class:: classref-enumeration

enum **ContextMenuSlot**: :ref:`🔗<enum_EditorContextMenuPlugin_ContextMenuSlot>`

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TREE** = ``0``

Menu contestuale del pannello della Scena. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` verrà chiamato con una lista di percorsi verso i nodi attualmente selezionati, mentre il callback d'opzione riceverà la lista dei nodi attualmente selezionati.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM** = ``1``

Menu contestuale del pannello del FileSystem. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` e il callback d'opzione verranno chiamati con la lista dei percorsi dei file attualmente selezionati.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR** = ``2``

Menu contestuale delle schede degli script dell'editor di script. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` verrà chiamato con il percorso allo script attualmente modificato, mentre il callback d'opzione riceverà un riferimento a tale script.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM_CREATE** = ``3``

Il sottomenu "Crea..." del menu contestuale del pannello FileSystem, o la sezione "Nuovo" del menu contestuale principale quando si clicca su uno spazio vuoto. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` e il callback dell'opzione saranno richiamati con il percorso della cartella attualmente selezionata. Cliccando sullo spazio vuoto, la lista di percorsi per il metodo di popup sarà vuoto.

::

    func _popup_menu(paths):
        if paths.is_empty():
            add_context_menu_item("Nuovo file immagine...", create_image)
        else:
            add_context_menu_item("File immaggine...", create_image)

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR_CODE** = ``4``

Menu contestuale dell'editor di codice dell'editor di script. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` verrà chiamato con il percorso al nodo :ref:`CodeEdit<class_CodeEdit>`. È possibile recuperarlo tramite questo codice:

::

    func _popup_menu(paths):
        var code_edit = Engine.get_main_loop().root.get_node(paths[0]);

Il callback d'opzione riceverà un riferimento a quel nodo. Puoi usare i metodi di :ref:`CodeEdit<class_CodeEdit>` per eseguire ricerche di simboli ecc.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TABS:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TABS** = ``5``

Menu contestuale delle schede delle scene. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` verrà chiamato con il percorso della scena cliccata, o con un :ref:`PackedStringArray<class_PackedStringArray>` vuoto se il menu è stato aperto su uno spazio vuoto. Il callback d'opzione riceverà il percorso della scena cliccata, o una :ref:`String<class_String>` vuota se nessuna scena è stata cliccata.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_2D_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_2D_EDITOR** = ``6``

Menu contestuale del menu di scelta rapida di base dell'editor 2D. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` verrà chiamato con i percorsi a tutti i nodi :ref:`CanvasItem<class_CanvasItem>` sotto il cursore. È possibile recuperarli tramite questo codice:

::

    func _popup_menu(paths):
        var canvas_item = Engine.get_main_loop().root.get_node(paths[0]); # Sostituisci 0 con l'indice desiderato.

L'array dei percorsi è vuoto se non ci sono nodi sotto il cursore. Il callback d'opzione riceverà un array tipizzato di nodi :ref:`CanvasItem<class_CanvasItem>`.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_INSPECTOR_PROPERTY:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_INSPECTOR_PROPERTY** = ``7``

Context menu of the inspectors right-click menu. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` will be called with an array of two items: The first will be the object's ID, the second will be the property name. An object can be retrieved from it's ID via :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>` after converting it to an int. The option callback will receive the EditorProperty directly.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorContextMenuPlugin_private_method__popup_menu:

.. rst-class:: classref-method

|void| **_popup_menu**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorContextMenuPlugin_private_method__popup_menu>`

Chiamato alla creazione di un menu contestuale, è possibile aggiungere opzioni personalizzate attraverso le funzioni :ref:`add_context_menu_item()<class_EditorContextMenuPlugin_method_add_context_menu_item>` o :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`. ``paths`` contiene i percorsi attualmente selezionati (a seconda del menu), che è possibile usare per aggiungere opzioni in modo condizionale.

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item:

.. rst-class:: classref-method

|void| **add_context_menu_item**\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item>`

Aggiunge un'opzione personalizzata al menu contestuale dello slot specificato dell'estensione. Quando l'opzione è attivata, verrà chiamato ``callback``. Il callback dovrebbe accettare un singolo argomento :ref:`Array<class_Array>`; il contenuto dell'array dipende dallo slot del menu contestuale.

::

    func _popup_menu(paths):
        add_context_menu_item("File Custom options", handle, ICON)

Se vuoi assegnare una scorciatoia alla voce del menu, usa invece :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut:

.. rst-class:: classref-method

|void| **add_context_menu_item_from_shortcut**\ (\ name\: :ref:`String<class_String>`, shortcut\: :ref:`Shortcut<class_Shortcut>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`

Aggiunge un'opzione personalizzata al menu contestuale dello slot specificato dall'estensione. L'opzione avrà la scorciatoia ``shortcut`` assegnata e riutilizzerà il suo callback. La scorciatoia deve essere registrata in anticipo con :ref:`add_menu_shortcut()<class_EditorContextMenuPlugin_method_add_menu_shortcut>`.

::

    func _init():
        add_menu_shortcut(SHORTCUT, handle)

    func _popup_menu(paths):
        add_context_menu_item_from_shortcut("File Custom options", SHORTCUT, ICON)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_submenu_item:

.. rst-class:: classref-method

|void| **add_context_submenu_item**\ (\ name\: :ref:`String<class_String>`, menu\: :ref:`PopupMenu<class_PopupMenu>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_submenu_item>`

Aggiunge un sottomenu al menu contestuale dello slot specificato dell'estensione. Il sottomenu non viene gestito automaticamente, bisogna connetterlo ai suoi segnali manualmente. Inoltre, il sottomenu viene liberato a ogni popup, quindi fornisci un nuovo :ref:`PopupMenu<class_PopupMenu>` ogni volta.

::

    func _popup_menu(paths):
        var popup_menu = PopupMenu.new()
        popup_menu.add_item("Blue")
        popup_menu.add_item("White")
        popup_menu.id_pressed.connect(_on_color_submenu_option)

        add_context_submenu_item("Set Node Color", popup_menu)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_menu_shortcut:

.. rst-class:: classref-method

|void| **add_menu_shortcut**\ (\ shortcut\: :ref:`Shortcut<class_Shortcut>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_menu_shortcut>`

Registra una scorciatoia associata al menu contestuale dell'estensione. Questo metodo dovrebbe essere chiamato una sola volta (ad esempio nel :ref:`Object._init()<class_Object_private_method__init>` dell'estensione). ``callback`` verrà chiamato quando l'utente preme la scorciatoia ``shortcut`` mentre il contesto del menu è in effetto (ad esempio il pannello del FileSystem è in primo piano). Il callback dovrebbe accettare un singolo argomento :ref:`Array<class_Array>`; il contenuto dell'array dipende dallo slot del menu contestuale.

::

    func _init():
        add_menu_shortcut(SHORTCUT, handle)

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
