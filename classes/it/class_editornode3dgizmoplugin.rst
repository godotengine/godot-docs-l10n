:github_url: hide

.. _class_EditorNode3DGizmoPlugin:

EditorNode3DGizmoPlugin
=======================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una classe utilizzata dall'editor per definire i tipi di gizmo Node3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**EditorNode3DGizmoPlugin** consente di definire un nuovo tipo di Gizmo. Esistono due modi principali per farlo: estendi **EditorNode3DGizmoPlugin** per i gizmo più semplici o crea un nuovo tipo di :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`. Consulta il tutorial nella documentazione per maggiori informazioni.

Per utilizzare **EditorNode3DGizmoPlugin**, registrarlo prima attraverso il metodo :ref:`EditorPlugin.add_node_3d_gizmo_plugin()<class_EditorPlugin_method_add_node_3d_gizmo_plugin>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Estensioni di gizmo per Node3D <../tutorials/plugins/editor/3d_gizmos>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_begin_handle_action<class_EditorNode3DGizmoPlugin_private_method__begin_handle_action>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_can_be_hidden<class_EditorNode3DGizmoPlugin_private_method__can_be_hidden>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_can_commit_handle_on_click<class_EditorNode3DGizmoPlugin_private_method__can_commit_handle_on_click>`\ (\ ) |virtual| |const|                                                                                                                                                                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_commit_handle<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual|                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_commit_subgizmos<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`   | :ref:`_create_gizmo<class_EditorNode3DGizmoPlugin_private_method__create_gizmo>`\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const|                                                                                                                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                         | :ref:`_get_gizmo_name<class_EditorNode3DGizmoPlugin_private_method__get_gizmo_name>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                         | :ref:`_get_handle_name<class_EditorNode3DGizmoPlugin_private_method__get_handle_name>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`_get_handle_value<class_EditorNode3DGizmoPlugin_private_method__get_handle_value>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_priority<class_EditorNode3DGizmoPlugin_private_method__get_priority>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`_get_subgizmo_transform<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_has_gizmo<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const|                                                                                                                                                                                               |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_is_handle_highlighted<class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                               |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_is_selectable_when_hidden<class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_redraw<class_EditorNode3DGizmoPlugin_private_method__redraw>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ ) |virtual|                                                                                                                                                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_set_handle<class_EditorNode3DGizmoPlugin_private_method__set_handle>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual|                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_set_subgizmo_transform<class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual|                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`_subgizmos_intersect_frustum<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, frustum_planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const|                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_subgizmos_intersect_ray<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_material<class_EditorNode3DGizmoPlugin_method_add_material>`\ (\ name\: :ref:`String<class_String>`, material\: :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ )                                                                                                                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_handle_material<class_EditorNode3DGizmoPlugin_method_create_handle_material>`\ (\ name\: :ref:`String<class_String>`, billboard\: :ref:`bool<class_bool>` = false, texture\: :ref:`Texture2D<class_Texture2D>` = null\ )                                                                                                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_icon_material<class_EditorNode3DGizmoPlugin_method_create_icon_material>`\ (\ name\: :ref:`String<class_String>`, texture\: :ref:`Texture2D<class_Texture2D>`, on_top\: :ref:`bool<class_bool>` = false, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ )                                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_material<class_EditorNode3DGizmoPlugin_method_create_material>`\ (\ name\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, billboard\: :ref:`bool<class_bool>` = false, on_top\: :ref:`bool<class_bool>` = false, use_vertex_color\: :ref:`bool<class_bool>` = false\ )                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StandardMaterial3D<class_StandardMaterial3D>` | :ref:`get_material<class_EditorNode3DGizmoPlugin_method_get_material>`\ (\ name\: :ref:`String<class_String>`, gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` = null\ )                                                                                                                                                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorNode3DGizmoPlugin_private_method__begin_handle_action:

.. rst-class:: classref-method

|void| **_begin_handle_action**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__begin_handle_action>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__can_be_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_be_hidden**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__can_be_hidden>`

Sovrascrivi questo metodo per definire se i gizmo gestiti da questo plugin possono essere nascosti o meno. Restituisce ``true`` se non sovrascritto.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__can_commit_handle_on_click:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_commit_handle_on_click**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__can_commit_handle_on_click>`

Override this method to define whether the gizmos should commit when the final handle position is the same as the initial one. Returns ``false`` if not overridden.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__commit_handle:

.. rst-class:: classref-method

|void| **_commit_handle**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`

Sovrascrivi questo metodo per commettere una maniglia in fase di modifica (le maniglie devono essere state aggiunte in precedenza da :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` durante :ref:`_redraw()<class_EditorNode3DGizmoPlugin_private_method__redraw>`). Questo solitamente significa creare un'azione di :ref:`UndoRedo<class_UndoRedo>` per la modifica, utilizzando il valore della maniglia attuale come "fai" e l'argomento ``restore`` come "annulla".

Se l'argomento ``cancel`` è ``true``, il valore ``restore`` dovrebbe essere impostato direttamente, senza alcuna azione di :ref:`UndoRedo<class_UndoRedo>`.

L'argomento ``secondary`` è ``true`` quando la maniglia commessa è secondaria (vedi :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` per maggiori informazioni).

Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos:

.. rst-class:: classref-method

|void| **_commit_subgizmos**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`

Sovrascrivi questo metodo per commettere un gruppo di gizmo secondari in fase di modifica (vedi :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>` e :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`). Questo di solito significa creare un'azione di :ref:`UndoRedo<class_UndoRedo>` per la modifica, usando le trasformazioni attuali come "fai" e le trasformazioni ``restores`` come "annulla".

Se l'argomento ``cancel`` è ``true``, le trasformazioni ``restores`` devono essere impostate direttamente, senza alcuna azione di :ref:`UndoRedo<class_UndoRedo>`. Come con tutti i metodi dei gizmo secondari, le trasformazioni sono fornite nello spazio locale rispetto al Node3D del gizmo. Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__create_gizmo:

.. rst-class:: classref-method

:ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` **_create_gizmo**\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__create_gizmo>`

Sovrascrivi questo metodo per restituire un :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` personalizzato per i nodi 3D di tua scelta, restituisci ``null`` per il resto dei nodi. Vedi anche :ref:`_has_gizmo()<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_gizmo_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_gizmo_name**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_gizmo_name>`

Sovrascrivi questo metodo per fornire il nome che apparirà nel menu di visibilità dei gizmo.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_handle_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_handle_name**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_handle_name>`

Sovrascrivi questo metodo per fornire i nomi delle maniglie del gizmo. L'argomento ``secondary`` è ``true`` quando la maniglia richiesta è secondaria (vedi :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` per maggiori informazioni). Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_handle_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_handle_value**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_handle_value>`

Sovrascrivi questo metodo per restituire il valore attuale di una maniglia. Questo valore sarà richiesto all'inizio di una modifica e utilizzato come argomento ``restore`` in :ref:`_commit_handle()<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`.

L'argomento ``secondary`` è ``true`` quando la maniglia richiesta è secondaria (vedi :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` per maggiori informazioni).

Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_priority:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_priority>`

Sovrascrivi questo metodo per impostare la priorità del gizmo. I gizmo con priorità più alta avranno la precedenza quando elaborano input come maniglie o selezione di gizmo secondari.

Tutti i gizmo integrati dell'editor restituiscono una priorità di ``-1``. Se non sovrascritto, questo metodo restituirà ``0``, il che significa che i gizmo personalizzati avranno automaticamente una priorità più alta rispetto ai gizmo integrati.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_subgizmo_transform**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>`

Sovrascrivi questo metodo per restituire la trasformazione attuale di un gizmo secondario. Come per tutti i metodi dei gizmo secondari, la trasformazione dovrebbe essere nello spazio locale rispetto al Node3D del gizmo. Questa trasformazione sarà richiesta all'inizio di una modifica e utilizzata nell'argomento ``restore`` in :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`. Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__has_gizmo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_gizmo**\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`

Sovrascrivi questo metodo per definire quali nodi Node3D hanno un gizmo da questa estensione. Ogni volta che un nodo :ref:`Node3D<class_Node3D>` viene aggiunto a una scena, questo metodo viene chiamato, se restituisce ``true`` il nodo ottiene un :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` generico assegnato e viene aggiunto alla lista di gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_handle_highlighted**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted>`

Sovrascrivi questo metodo per restituire ``true`` ogni volta che la maniglia specificata deve essere evidenziata nell'editor. L'argomento ``secondary`` è ``true`` quando la maniglia richiesta è secondaria (vedi :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` per maggiori informazioni). Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_selectable_when_hidden**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden>`

Sovrascrivi questo metodo per definire se sia possibile selezionare il Node3D con questo gizmo anche quando il gizmo è nascosto.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__redraw:

.. rst-class:: classref-method

|void| **_redraw**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__redraw>`

Sovrascrivi questo metodo per aggiungere tutti gli elementi gizmo quando un aggiornamento dei gizmo viene richiesto. È comune chiamare :ref:`EditorNode3DGizmo.clear()<class_EditorNode3DGizmo_method_clear>` all'inizio di questo metodo e successivamente aggiungere elementi visivi in base alle proprietà del nodo.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__set_handle:

.. rst-class:: classref-method

|void| **_set_handle**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__set_handle>`

Sovrascrivi questo metodo per aggiornare le proprietà del nodo quando l'utente trascina una maniglia del gizmo (aggiunta in precedenza con :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`). ``screen_pos`` è la posizione del mouse nelle coordinate dello schermo e la telecamera ``camera`` può essere utilizzata per convertirla in raycast.

L'argomento ``secondary`` è ``true`` quando la maniglia modificata è secondaria (vedi :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` per maggiori informazioni).

Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform:

.. rst-class:: classref-method

|void| **_set_subgizmo_transform**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform>`

Sovrascrivi questo metodo per aggiornare le proprietà del nodo durante la modifica di un gizmo secondario (vedi :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>` e :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`). La trasformazione ``transform`` è specificata nel sistema di coordinate locali del Node3D. Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_subgizmos_intersect_frustum**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, frustum_planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`

Sovrascrivi questo metodo per consentire la selezione di gizmo secondari tramite trascinamento del mouse. Specificata una telecamera (``camera``) e i piani di un tronco (``frustum_planes``), questo metodo dovrebbe restituire quali gizmo secondari sono contenuti nei tronchi. L'argomento ``frustum_planes`` consiste in un array con tutti i :ref:`Plane<class_Plane>` che compongono il tronco di selezione. Il valore restituito dovrebbe contenere una lista di identificatori univoci di gizmo secondari, che possono avere qualsiasi valore non negativo e saranno utilizzati in altri metodi virtuali come :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>` o :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`. Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray:

.. rst-class:: classref-method

:ref:`int<class_int>` **_subgizmos_intersect_ray**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>`

Sovrascrivi questo metodo per consentire la selezione di gizmo secondari tramite clic del mouse. Specificata una telecamera (``camera``) e una posizione in coordinate dello schermo (``screen_pos``), questo metodo dovrebbe restituire quale gizmo secondario dovrebbe essere selezionato. Il valore restituito dovrebbe essere un identificatore univoco di gizmo secondario, che può avere qualsiasi valore non negativo e sarà utilizzato in altri metodi virtuali come :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>` o :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`. Chiamato per i gizmo attivi di questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_add_material:

.. rst-class:: classref-method

|void| **add_material**\ (\ name\: :ref:`String<class_String>`, material\: :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_add_material>`

Aggiunge un nuovo materiale alla lista dei materiali interni per il plugin. È possibile accedervi con :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>`. Non dovrebbe essere sovrascritto.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_handle_material:

.. rst-class:: classref-method

|void| **create_handle_material**\ (\ name\: :ref:`String<class_String>`, billboard\: :ref:`bool<class_bool>` = false, texture\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_handle_material>`

Crea un materiale di maniglia con le sue variazioni (selezionata e/o modificabile) e le aggiunge alla lista interno dei materiali. È possibile accedervi in seguito con :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` e utilizzate in :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`. Non dovrebbe essere sovrascritto.

È possibile facoltativamente fornire una texture da utilizzare al posto dell'icona predefinita.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_icon_material:

.. rst-class:: classref-method

|void| **create_icon_material**\ (\ name\: :ref:`String<class_String>`, texture\: :ref:`Texture2D<class_Texture2D>`, on_top\: :ref:`bool<class_bool>` = false, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_icon_material>`

Crea un materiale d'icona con le sue variazioni (selezionata e/o modificabile) e le aggiunge alla lista interna dei materiali. È possibile accedervi in seguito con :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` e utilizzate in :ref:`EditorNode3DGizmo.add_unscaled_billboard()<class_EditorNode3DGizmo_method_add_unscaled_billboard>`. Non dovrebbe essere sovrascritto.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_material:

.. rst-class:: classref-method

|void| **create_material**\ (\ name\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, billboard\: :ref:`bool<class_bool>` = false, on_top\: :ref:`bool<class_bool>` = false, use_vertex_color\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_material>`

Crea un materiale non ombreggiato con le sue variazioni (selezionata e/o modificabile) e le aggiunge alla lista interna dei materiali. È possibile accedervi in seguito con :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` e utilizzate in :ref:`EditorNode3DGizmo.add_lines()<class_EditorNode3DGizmo_method_add_lines>`. Non dovrebbe essere sovrascritto.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_get_material:

.. rst-class:: classref-method

:ref:`StandardMaterial3D<class_StandardMaterial3D>` **get_material**\ (\ name\: :ref:`String<class_String>`, gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` = null\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_get_material>`

Ottiene un materiale dalla lista interna dei materiali. Se viene fornito un :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, proverà a ottenere la variazione corrispondente (selezionata e/o modificabile).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
