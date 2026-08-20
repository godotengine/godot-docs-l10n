:github_url: hide

.. _class_EditorProperty:

EditorProperty
==============

**Eredita:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Controllo personalizzato per la modifica delle proprietà che può essere aggiunto a :ref:`EditorInspector<class_EditorInspector>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un controllo personalizzato per la modifica delle proprietà che può essere aggiunto a :ref:`EditorInspector<class_EditorInspector>`. Viene aggiunto tramite :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`checkable<class_EditorProperty_property_checkable>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`checked<class_EditorProperty_property_checked>`                   | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`deletable<class_EditorProperty_property_deletable>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_background<class_EditorProperty_property_draw_background>`   | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_label<class_EditorProperty_property_draw_label>`             | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_warning<class_EditorProperty_property_draw_warning>`         | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                                              | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`keying<class_EditorProperty_property_keying>`                     | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`label<class_EditorProperty_property_label>`                       | ``""``                                                              |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | :ref:`name_split_ratio<class_EditorProperty_property_name_split_ratio>` | ``0.5``                                                             |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`read_only<class_EditorProperty_property_read_only>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`selectable<class_EditorProperty_property_selectable>`             | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`use_folding<class_EditorProperty_property_use_folding>`           | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_set_read_only<class_EditorProperty_private_method__set_read_only>`\ (\ read_only\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                            |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_update_property<class_EditorProperty_private_method__update_property>`\ (\ ) |virtual|                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`add_focusable<class_EditorProperty_method_add_focusable>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                            |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`deselect<class_EditorProperty_method_deselect>`\ (\ )                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`emit_changed<class_EditorProperty_method_emit_changed>`\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>` = &"", changing\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_edited_object<class_EditorProperty_method_get_edited_object>`\ (\ )                                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_edited_property<class_EditorProperty_method_get_edited_property>`\ (\ ) |const|                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_selected<class_EditorProperty_method_is_selected>`\ (\ ) |const|                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`select<class_EditorProperty_method_select>`\ (\ focusable\: :ref:`int<class_int>` = -1\ )                                                                                                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_bottom_editor<class_EditorProperty_method_set_bottom_editor>`\ (\ editor\: :ref:`Control<class_Control>`\ )                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_label_reference<class_EditorProperty_method_set_label_reference>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_object_and_property<class_EditorProperty_method_set_object_and_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ )                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`update_property<class_EditorProperty_method_update_property>`\ (\ )                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_EditorProperty_signal_multiple_properties_changed:

.. rst-class:: classref-signal

**multiple_properties_changed**\ (\ properties\: :ref:`PackedStringArray<class_PackedStringArray>`, value\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EditorProperty_signal_multiple_properties_changed>`

Emettilo se vuoi che più proprietà vengano modificate allo stesso tempo. Non usarlo se aggiunto tramite :ref:`EditorInspectorPlugin._parse_property()<class_EditorInspectorPlugin_private_method__parse_property>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_object_id_selected:

.. rst-class:: classref-signal

**object_id_selected**\ (\ property\: :ref:`StringName<class_StringName>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorProperty_signal_object_id_selected>`

Utilizzato dai sotto-ispettori. Emettilo se l'ID di un oggetto è stato selezionato.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_can_revert_changed:

.. rst-class:: classref-signal

**property_can_revert_changed**\ (\ property\: :ref:`StringName<class_StringName>`, can_revert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_can_revert_changed>`

Emesso quando la ripristinabilità (ovvero se ha un valore non predefinito e quindi è visualizzato con un'icona di ripristino) di una proprietà viene cambiata.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_changed:

.. rst-class:: classref-signal

**property_changed**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>`, changing\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_changed>`

Non emetterlo manualmente, utilizzare invece il metodo :ref:`emit_changed()<class_EditorProperty_method_emit_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_checked:

.. rst-class:: classref-signal

**property_checked**\ (\ property\: :ref:`StringName<class_StringName>`, checked\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_checked>`

Emesso quando una proprietà viene spuntata. Utilizzato internamente.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_deleted:

.. rst-class:: classref-signal

**property_deleted**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_signal_property_deleted>`

Emesso quando una proprietà viene eliminata. Utilizzato internamente.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_favorited:

.. rst-class:: classref-signal

**property_favorited**\ (\ property\: :ref:`StringName<class_StringName>`, favorited\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_favorited>`

Emettilo se desideri impostare una proprietà come preferita, facendola apparire in cima all'ispettore.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_keyed:

.. rst-class:: classref-signal

**property_keyed**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_signal_property_keyed>`

Emettilo se vuoi aggiungere questo valore come chiave di animazione (verifica prima che le chiavi d'animazione siano abilitate).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_keyed_with_value:

.. rst-class:: classref-signal

**property_keyed_with_value**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorProperty_signal_property_keyed_with_value>`

Emettilo se desideri impostare una chiave per questa proprietà con un singolo valore.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_overridden:

.. rst-class:: classref-signal

**property_overridden**\ (\ ) :ref:`🔗<class_EditorProperty_signal_property_overridden>`

Emesso quando viene richiesto una sostituzione di un'impostazione per il progetto attuale.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_pinned:

.. rst-class:: classref-signal

**property_pinned**\ (\ property\: :ref:`StringName<class_StringName>`, pinned\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_pinned>`

Emettilo se vuoi marcare (o smarcare) il valore di una proprietà per essere salvato anche se è uguale al valore predefinito.

Il valore predefinito è quello che la proprietà otterrà quando il nodo è appena istanziato e può provenire da una scena antenata nella catena di ereditarietà/istanziazione, uno script o una classe integrata.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ path\: :ref:`String<class_String>`, resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_EditorProperty_signal_resource_selected>`

Se si desidera modificare una sotto-risorsa, emettere questo segnale con la risorsa.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_selected:

.. rst-class:: classref-signal

**selected**\ (\ path\: :ref:`String<class_String>`, focusable_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorProperty_signal_selected>`

Emesso quando viene selezionato. Utilizzato internamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_EditorProperty_property_checkable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **checkable** = ``false`` :ref:`🔗<class_EditorProperty_property_checkable>`

.. rst-class:: classref-property-setget

- |void| **set_checkable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_checkable**\ (\ )

Utilizzato per l'ispettore, impostato su ``true`` quando la proprietà è spuntabile.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_checked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **checked** = ``false`` :ref:`🔗<class_EditorProperty_property_checked>`

.. rst-class:: classref-property-setget

- |void| **set_checked**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_checked**\ (\ )

Utilizzato per l'ispettore, impostato su ``true`` quando la proprietà è spuntata.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_deletable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deletable** = ``false`` :ref:`🔗<class_EditorProperty_property_deletable>`

.. rst-class:: classref-property-setget

- |void| **set_deletable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deletable**\ (\ )

Utilizzato per l'ispettore, impostato su ``true`` quando la proprietà può essere eliminata dall'utente.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_background:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_background** = ``true`` :ref:`🔗<class_EditorProperty_property_draw_background>`

.. rst-class:: classref-property-setget

- |void| **set_draw_background**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_background**\ (\ )

Utilizzato per l'ispettore, impostato su ``true`` quando lo sfondo della proprietà è disegnato.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_label:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_label** = ``true`` :ref:`🔗<class_EditorProperty_property_draw_label>`

.. rst-class:: classref-property-setget

- |void| **set_draw_label**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_label**\ (\ )

Utilizzato per l'ispettore, impostato su ``true`` quando l'etichetta della proprietà è disegnata.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_warning** = ``false`` :ref:`🔗<class_EditorProperty_property_draw_warning>`

.. rst-class:: classref-property-setget

- |void| **set_draw_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_warning**\ (\ )

Utilizzato dall'ispettore, impostato su ``true`` quando la proprietà è disegnata con il colore di avviso del tema dell'editor. È utilizzato per le proprietà dei figli modificabili.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_keying:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keying** = ``false`` :ref:`🔗<class_EditorProperty_property_keying>`

.. rst-class:: classref-property-setget

- |void| **set_keying**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keying**\ (\ )

Utilizzato dall'ispettore, impostato su ``true`` se la proprietà può aggiungere chiavi da animare.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorProperty_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

Imposta questa proprietà per modificare l'etichetta (se vuoi mostrarne una).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_name_split_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **name_split_ratio** = ``0.5`` :ref:`🔗<class_EditorProperty_property_name_split_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_name_split_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_name_split_ratio**\ (\ )

Rapporto di distribuzione dello spazio tra l'etichetta e il campo di modifica.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorProperty_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

Utilizzato per l'ispettore, impostato su ``true`` quando la proprietà è di sola lettura.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_selectable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selectable** = ``true`` :ref:`🔗<class_EditorProperty_property_selectable>`

.. rst-class:: classref-property-setget

- |void| **set_selectable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selectable**\ (\ )

Utilizzato per l'ispettore, impostato su ``true`` quando la proprietà è selezionabile.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_use_folding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_folding** = ``false`` :ref:`🔗<class_EditorProperty_property_use_folding>`

.. rst-class:: classref-property-setget

- |void| **set_use_folding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_folding**\ (\ )

Utilizzato per l'ispettore, impostato su ``true`` quando la proprietà è ridotta.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorProperty_private_method__set_read_only:

.. rst-class:: classref-method

|void| **_set_read_only**\ (\ read_only\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorProperty_private_method__set_read_only>`

Chiamato quando lo stato di sola lettura della proprietà è cambiato. Potrebbe essere usato per modificare i controlli personalizzati in uno stato di sola lettura o modificabile.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_private_method__update_property:

.. rst-class:: classref-method

|void| **_update_property**\ (\ ) |virtual| :ref:`🔗<class_EditorProperty_private_method__update_property>`

Quando viene chiamata questa funzione virtuale, è necessario aggiornare l'editor.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_add_focusable:

.. rst-class:: classref-method

|void| **add_focusable**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_add_focusable>`

Se uno qualsiasi dei controlli aggiunti può ottenere il focus della tastiera, aggiungilo qui. Ciò permetterà di ripristinare il focus se l'ispettore è aggiornato.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_deselect:

.. rst-class:: classref-method

|void| **deselect**\ (\ ) :ref:`🔗<class_EditorProperty_method_deselect>`

Disegna la proprietà come non selezionata. Usato per l'ispettore.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_emit_changed:

.. rst-class:: classref-method

|void| **emit_changed**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>` = &"", changing\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorProperty_method_emit_changed>`

Se una o più proprietà sono state cambiate, è necessario richiamare questa funzione. ``field`` è utilizzato nel caso in cui l'editor possa modificare i campi separatamente (ad esempio, Vector3.x). L'argomento ``changing`` evita che l'editor richieda l'aggiornamento di questa proprietà (rimani su ``false`` in caso di dubbi).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_get_edited_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_edited_object**\ (\ ) :ref:`🔗<class_EditorProperty_method_get_edited_object>`

Restituisce l'oggetto in fase di modifica.

\ **Nota:** Questo metodo potrebbe restituire ``null`` se l'editor non è ancora stato associato a una proprietà. Tuttavia, in :ref:`_update_property()<class_EditorProperty_private_method__update_property>` e :ref:`_set_read_only()<class_EditorProperty_private_method__set_read_only>`, è *garantito* che questo valore non sia ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_get_edited_property:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_edited_property**\ (\ ) |const| :ref:`🔗<class_EditorProperty_method_get_edited_property>`

Restituisce la proprietà in fase di modifica. Se l'editor è per una singola proprietà (aggiunta tramite :ref:`EditorInspectorPlugin._parse_property()<class_EditorInspectorPlugin_private_method__parse_property>`), questo restituirà la proprietà.

\ **Nota:** Questo metodo potrebbe restituire ``null`` se l'editor non è ancora stato associato a una proprietà. Tuttavia, in :ref:`_update_property()<class_EditorProperty_private_method__update_property>` e :ref:`_set_read_only()<class_EditorProperty_private_method__set_read_only>`, questo valore è *garantito* di non essere ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_is_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_selected**\ (\ ) |const| :ref:`🔗<class_EditorProperty_method_is_selected>`

Restituisce ``true`` se la proprietà è disegnata come selezionata. Usato per l'ispettore.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_select:

.. rst-class:: classref-method

|void| **select**\ (\ focusable\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_EditorProperty_method_select>`

Disegna la proprietà come selezionata. Usato per l'ispettore.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_bottom_editor:

.. rst-class:: classref-method

|void| **set_bottom_editor**\ (\ editor\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_set_bottom_editor>`

Posiziona il controllo ``editor`` sotto l'etichetta della proprietà. Il controllo deve essere prima aggiunto attraverso :ref:`Node.add_child()<class_Node_method_add_child>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_label_reference:

.. rst-class:: classref-method

|void| **set_label_reference**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_set_label_reference>`

Utilizzato dall'ispettore, impostato su un controllo che sarà utilizzato come riferimento per calcolare la dimensione dell'etichetta.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_object_and_property:

.. rst-class:: classref-method

|void| **set_object_and_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_method_set_object_and_property>`

Assegna l'oggetto e la proprietà da modificare.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_update_property:

.. rst-class:: classref-method

|void| **update_property**\ (\ ) :ref:`🔗<class_EditorProperty_method_update_property>`

Forza un'aggiornamento della visualizzazione della proprietà.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
