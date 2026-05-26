:github_url: hide

.. _class_Container:

Container
=========

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AspectRatioContainer<class_AspectRatioContainer>`, :ref:`BoxContainer<class_BoxContainer>`, :ref:`CenterContainer<class_CenterContainer>`, :ref:`EditorProperty<class_EditorProperty>`, :ref:`FlowContainer<class_FlowContainer>`, :ref:`FoldableContainer<class_FoldableContainer>`, :ref:`GraphElement<class_GraphElement>`, :ref:`GridContainer<class_GridContainer>`, :ref:`MarginContainer<class_MarginContainer>`, :ref:`PanelContainer<class_PanelContainer>`, :ref:`ScrollContainer<class_ScrollContainer>`, :ref:`SplitContainer<class_SplitContainer>`, :ref:`SubViewportContainer<class_SubViewportContainer>`, :ref:`TabContainer<class_TabContainer>`

Classe di base per tutti i contenitori della GUI.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe di base per tutti i contenitori della GUI. Un **Container** organizza automaticamente i suoi controlli figli in un certo modo. Questa classe può essere ereditata per creare tipi di contenitori personalizzati.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei Container <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------+----------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`accessibility_region<class_Container_property_accessibility_region>` | ``false``                                                                          |
   +----------------------------------------------+----------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>` | mouse_filter                                                               | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)              |
   +----------------------------------------------+----------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | propagate_maximum_size                                                     | ``true`` (overrides :ref:`Control<class_Control_property_propagate_maximum_size>`) |
   +----------------------------------------------+----------------------------------------------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_horizontal<class_Container_private_method__get_allowed_size_flags_horizontal>`\ (\ ) |virtual| |const|              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_vertical<class_Container_private_method__get_allowed_size_flags_vertical>`\ (\ ) |virtual| |const|                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fit_child_in_rect<class_Container_method_fit_child_in_rect>`\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`queue_sort<class_Container_method_queue_sort>`\ (\ )                                                                                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Container_signal_pre_sort_children:

.. rst-class:: classref-signal

**pre_sort_children**\ (\ ) :ref:`🔗<class_Container_signal_pre_sort_children>`

Emesso quando i nodi figli devono essere riordinati.

.. rst-class:: classref-item-separator

----

.. _class_Container_signal_sort_children:

.. rst-class:: classref-signal

**sort_children**\ (\ ) :ref:`🔗<class_Container_signal_sort_children>`

Emesso quando è necessario ordinare i nodi figli.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_PRE_SORT_CHILDREN** = ``50`` :ref:`🔗<class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN>`

Notificazione mandata appena prima che i nodi figli vengano riordinati, nel caso ci sia qualcosa da elaborare in anticipo.

.. _class_Container_constant_NOTIFICATION_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_SORT_CHILDREN** = ``51`` :ref:`🔗<class_Container_constant_NOTIFICATION_SORT_CHILDREN>`

Notifica per l'ordinamento dei figli, alla quale bisogna obbedire immediatamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Container_property_accessibility_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **accessibility_region** = ``false`` :ref:`🔗<class_Container_property_accessibility_region>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_region**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_accessibility_region**\ (\ )

If ``true``, this container is marked as a region for accessibility. Use :ref:`Control.accessibility_name<class_Control_property_accessibility_name>` to give the region a descriptive name. Screen readers can navigate between regions using landmark navigation.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Container_private_method__get_allowed_size_flags_horizontal:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_horizontal**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_horizontal>`

Implementa per restituire una lista di :ref:`SizeFlags<enum_Control_SizeFlags>` orizzontali consentiti per i nodi figlio. Questo non impedisce tecnicamente l'utilizzo di altri flag di dimensione, se la propria implementazione lo richiede. Questo limita solo le opzioni disponibili all'utente nel pannello dell'Inspettore.

\ **Nota:** Non avere flag di dimensione equivale ad avere :ref:`Control.SIZE_SHRINK_BEGIN<class_Control_constant_SIZE_SHRINK_BEGIN>`. Pertanto, questo valore è sempre implicitamente consentito.

.. rst-class:: classref-item-separator

----

.. _class_Container_private_method__get_allowed_size_flags_vertical:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_vertical**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_vertical>`

Implementa per restituire una lista di :ref:`SizeFlags<enum_Control_SizeFlags>` verticali consentiti per i nodi figlio. Questo non impedisce tecnicamente l'utilizzo di altri flag di dimensione, se la propria implementazione lo richiede. Questo limita solo le opzioni disponibili all'utente nel pannello dell'Inspettore.

\ **Nota:** Non avere flag di dimensione equivale ad avere :ref:`Control.SIZE_SHRINK_BEGIN<class_Control_constant_SIZE_SHRINK_BEGIN>`. Pertanto, questo valore è sempre implicitamente consentito.

.. rst-class:: classref-item-separator

----

.. _class_Container_method_fit_child_in_rect:

.. rst-class:: classref-method

|void| **fit_child_in_rect**\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Container_method_fit_child_in_rect>`

Adatta un controllo figlio in un dato rettangolo. Questo è principalmente un aiuto per la creazione di classi contenitore personalizzate.

.. rst-class:: classref-item-separator

----

.. _class_Container_method_queue_sort:

.. rst-class:: classref-method

|void| **queue_sort**\ (\ ) :ref:`🔗<class_Container_method_queue_sort>`

Mette in coda un comando di ordinamento per i controlli figlio. Questo viene comunque chiamato automaticamente, ma può essere anche chiamato manualmente.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
