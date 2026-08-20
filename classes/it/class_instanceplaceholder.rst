:github_url: hide

.. _class_InstancePlaceholder:

InstancePlaceholder
===================

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Segnaposto per il :ref:`Node<class_Node>` radice di un :ref:`PackedScene<class_PackedScene>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Attivando l'opzione **Carica come segnaposto** per una scena istanziata nell'editor, la scena sarà sostituita da un **InstancePlaceholder** all'esecuzione del gioco, il che non sostituirà il nodo nell'editor. Ciò rende possibile ritardare il caricamento effettivo della scena fino alla chiamata di :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`. È utile per evitare di caricare scene grandi tutte in una volta, caricandone selettivamente in parti.

\ **Nota:** Come :ref:`Node<class_Node>`, **InstancePlaceholder** non ha una trasformazione. Ciò significa che tutti i nodi figlio saranno posizionati relativamente all'origine della :ref:`Viewport<class_Viewport>`, anziché il loro genitore come visualizzato nell'editor. Sostituendo il segnaposto con una scena con una trasformazione trasformerà nuovamente i figli relativamente al loro genitore.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`             | :ref:`create_instance<class_InstancePlaceholder_method_create_instance>`\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_instance_path<class_InstancePlaceholder_method_get_instance_path>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_stored_values<class_InstancePlaceholder_method_get_stored_values>`\ (\ with_order\: :ref:`bool<class_bool>` = false\ )                                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_InstancePlaceholder_method_create_instance:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **create_instance**\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) :ref:`🔗<class_InstancePlaceholder_method_create_instance>`

Chiama questo metodo per caricare effettivamente il nodo. Il nodo creato verrà posizionato come fratello *sopra* l'**InstancePlaceholder** nell'albero di scene. Per comodità, viene restituito anche il riferimento al :ref:`Node<class_Node>` creato.

\ **Nota:** :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` non è sicuro su un altro thread. Usa :ref:`Object.call_deferred()<class_Object_method_call_deferred>` se si chiama da un thread.

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_instance_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_instance_path**\ (\ ) |const| :ref:`🔗<class_InstancePlaceholder_method_get_instance_path>`

Ottiene il percorso al file della risorsa :ref:`PackedScene<class_PackedScene>` caricata come predefinita quando si chiama :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`. Non è sicuro su un altro thread. Utilizza :ref:`Object.call_deferred()<class_Object_method_call_deferred>` se si chiama da un thread.

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_stored_values:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_stored_values**\ (\ with_order\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_InstancePlaceholder_method_get_stored_values>`

Restituisce la lista delle proprietà che saranno applicate al nodo quando :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` è chiamato.

Se ``with_order`` è ``true``, una chiave denominata ``.order`` (nota il punto iniziale) viene aggiunta al dizionario. Questa chiave ``.order`` è un :ref:`Array<class_Array>` di nomi di proprietà :ref:`String<class_String>` che specificano l'ordine in cui le proprietà saranno applicate (con l'indice 0 come primo).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
