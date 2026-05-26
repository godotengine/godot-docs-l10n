:github_url: hide

.. _class_EditorInspector:

EditorInspector
===============

**Eredita:** :ref:`ScrollContainer<class_ScrollContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un controllo per modificare le proprietà di un oggetto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo è il controllo che implementa la modifica delle proprietà nelle finestre Impostazioni, nel pannello Ispettore, ecc. dell'editor. Per utilizzare **EditorInspector** nel pannello Ispettore dell'editor, usa :ref:`EditorInterface.get_inspector()<class_EditorInterface_method_get_inspector>`.

\ **EditorInspector** mostrerà le proprietà nello stesso ordine dell'array restituito da :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

Se il nome di una proprietà è simile a un percorso (ovvero se contiene barre), **EditorInspector** creerà sezioni nidificate per le "cartelle" lungo il percorso. Ad esempio, se una proprietà si chiama ``highlighting/gdscript/node_path_color``, sarà mostrata come "Node Path Color", dentro la sezione "GDScript", nidificata dentro la sezione "Highlighting".

Se una proprietà ha un uso :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>`, raggrupperà le proprietà successive il cui nome inizia con la stringa indicativa della proprietà. Il gruppo termina quando una proprietà non inizia con quella stringa indicativa o quando inizia un nuovo gruppo. Un nome di gruppo vuoto termina il gruppo attuale. **EditorInspector** creerà una sezione di primo livello per ogni gruppo. Ad esempio, se una proprietà con uso di gruppo ha il nome ``Collide With`` e la sua stringa indicativa è ``collide_with_``, una proprietà successiva ``collide_with_area`` sarà mostrata come "Area" dentro la sezione "Collide With". Esiste anche un caso speciale: quando la stringa indicativa contiene il nome di una proprietà, anche quella proprietà è raggruppata. Questo serve principalmente per aiutare a raggruppare proprietà come ``font``, ``font_color`` e ``font_size`` (tramite la stringa indicativa ``font_``).

Se una proprietà ha un uso :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>`, un sottogruppo sarà creato allo stesso modo di un gruppo e sarà creata una sezione di secondo livello per ciascun sottogruppo.

\ **Nota:** A differenza delle sezioni create da nomi di proprietà simili a percorsi, **EditorInspector** non userà la maiuscola per i nomi delle sezioni create da gruppi. Pertanto, i nomi delle proprietà con l'uso di gruppo solitamente in maiuscolo anziché in snake_case.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | draw_focus_border      | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_draw_focus_border>`)   |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`           | focus_mode             | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)                             |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | follow_focus           | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_follow_focus>`)        |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` | horizontal_scroll_mode | ``0`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_horizontal_scroll_mode>`) |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`collapse_all_folding<class_EditorInspector_method_collapse_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorInspector<class_EditorInspector>` | :ref:`create_default_inspector<class_EditorInspector_method_create_default_inspector>`\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static|                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`edit<class_EditorInspector_method_edit>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_all_folding<class_EditorInspector_method_expand_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_revertable<class_EditorInspector_method_expand_revertable>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                   | :ref:`get_edited_object<class_EditorInspector_method_get_edited_object>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_selected_path<class_EditorInspector_method_get_selected_path>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorProperty<class_EditorProperty>`   | :ref:`instantiate_property_editor<class_EditorInspector_method_instantiate_property_editor>`\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_EditorInspector_signal_edited_object_changed:

.. rst-class:: classref-signal

**edited_object_changed**\ (\ ) :ref:`🔗<class_EditorInspector_signal_edited_object_changed>`

Emesso quando l'oggetto modificato dall'ispettore è cambiato.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_object_id_selected:

.. rst-class:: classref-signal

**object_id_selected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorInspector_signal_object_id_selected>`

Emesso quando il pulsante Modifica di un :ref:`Object<class_Object>` è stato premuto nell'ispettore. Viene utilizzato principalmente nell'Ispettore dell'albero di scene remoto.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_deleted:

.. rst-class:: classref-signal

**property_deleted**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_deleted>`

Emesso quando una proprietà viene rimossa dall'ispettore.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_edited:

.. rst-class:: classref-signal

**property_edited**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_edited>`

Emesso quando una proprietà viene modificata nell'ispettore.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_keyed:

.. rst-class:: classref-signal

**property_keyed**\ (\ property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`, advance\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_keyed>`

Emesso quando una proprietà viene usata come chiave nell'ispettore. È possibile usare come chiave una proprietà cliccando sull'icona "chiave" accanto a una proprietà quando il pannello Animazione è attivo.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_selected:

.. rst-class:: classref-signal

**property_selected**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_selected>`

Emesso quando una proprietà viene selezionata nell'ispettore.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_toggled:

.. rst-class:: classref-signal

**property_toggled**\ (\ property\: :ref:`String<class_String>`, checked\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_toggled>`

Emesso quando una proprietà booleana viene commutata nell'ispettore.

\ **Nota:** Questo segnale non viene mai emesso se la proprietà interna ``autoclear`` è abilitata. Poiché questa proprietà è sempre abilitata nell'ispettore dell'editor, questo segnale non viene mai emesso dall'editor stesso.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_resource_selected>`

Emesso quando una risorsa viene selezionata nell'ispettore.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_restart_requested:

.. rst-class:: classref-signal

**restart_requested**\ (\ ) :ref:`🔗<class_EditorInspector_signal_restart_requested>`

Emesso quando una proprietà che richiede un riavvio per essere applicata viene modificata nell'ispettore. È utilizzato solo nelle Impostazioni del progetto e nelle Impostazioni dell'editor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorInspector_method_collapse_all_folding:

.. rst-class:: classref-method

|void| **collapse_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_collapse_all_folding>`

Collapses all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_create_default_inspector:

.. rst-class:: classref-method

:ref:`EditorInspector<class_EditorInspector>` **create_default_inspector**\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static| :ref:`🔗<class_EditorInspector_method_create_default_inspector>`

Creates an inspector with the same configuration as the one used in the editor's Inspector dock. When passing a :ref:`LineEdit<class_LineEdit>` into ``filter_line_edit``, the inspector will filter its properties based on :ref:`LineEdit.text<class_LineEdit_property_text>` whenever :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` is emitted.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_edit:

.. rst-class:: classref-method

|void| **edit**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorInspector_method_edit>`

Mostra le proprietà dell'oggetto ``object`` in questo ispettore per la modifica. Per cancellare l'ispettore, chiama questo metodo con ``null``.

\ **Nota:** Se si desidera modificare un oggetto nell'ispettore principale dell'editor, usa invece i metodi ``edit_*`` in :ref:`EditorInterface<class_EditorInterface>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_all_folding:

.. rst-class:: classref-method

|void| **expand_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_all_folding>`

Expands all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_revertable:

.. rst-class:: classref-method

|void| **expand_revertable**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_revertable>`

Expands only the foldable sections that contain a revertable (i.e. non-default) property.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_edited_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_edited_object**\ (\ ) :ref:`🔗<class_EditorInspector_method_get_edited_object>`

Restituisce l'oggetto attualmente selezionato in questo ispettore.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_selected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_path**\ (\ ) |const| :ref:`🔗<class_EditorInspector_method_get_selected_path>`

Ottiene il percorso della proprietà attualmente selezionata.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_instantiate_property_editor:

.. rst-class:: classref-method

:ref:`EditorProperty<class_EditorProperty>` **instantiate_property_editor**\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_EditorInspector_method_instantiate_property_editor>`

Crea un editor di proprietà che può essere utilizzato dall'interfaccia utente dell'estensione per modificare la proprietà specificata dell'oggetto ``object``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
