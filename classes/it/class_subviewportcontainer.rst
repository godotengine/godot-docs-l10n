:github_url: hide

.. _class_SubViewportContainer:

SubViewportContainer
====================

**Eredita:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contenitore utilizzato per visualizzare il contenuto di una :ref:`SubViewport<class_SubViewport>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un contenitore che visualizza il contenuto dei nodi :ref:`SubViewport<class_SubViewport>` figlio sottostanti. Utilizza la dimensione combinata delle :ref:`SubViewport<class_SubViewport>` come dimensione minima, a meno che :ref:`stretch<class_SubViewportContainer_property_stretch>` non sia abilitato.

\ **Nota:** Modificare il :ref:`Control.scale<class_Control_property_scale>` di un **SubViewportContainer** distorcerà visivamente il suo contenuto. Per modificare la sua dimensione visiva senza causare distorsioni, regola invece i margini del nodo (se non è già in un contenitore).

\ **Nota:** Il **SubViewportContainer** inoltra le notifiche di ingresso e uscita del mouse ai suoi sotto-viewport.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                                                | ``1`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`mouse_target<class_SubViewportContainer_property_mouse_target>`     | ``false``                                                           |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`stretch<class_SubViewportContainer_property_stretch>`               | ``false``                                                           |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`stretch_shrink<class_SubViewportContainer_property_stretch_shrink>` | ``1``                                                               |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_propagate_input_event<class_SubViewportContainer_private_method__propagate_input_event>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| |const| |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SubViewportContainer_property_mouse_target:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_target** = ``false`` :ref:`🔗<class_SubViewportContainer_property_mouse_target>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_target**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mouse_target_enabled**\ (\ )

Configura se il nodo **SubViewportContainer** o, in alternativa, i nodi :ref:`Control<class_Control>` dei suoi :ref:`SubViewport<class_SubViewport>` figlio devono essere disponibili come destinazioni di funzionalità che riguardano il mouse, come l'identificazione della destinazione di rilascio nelle operazioni di trascinamento, oppure la forma del cursore del nodo :ref:`Control<class_Control>` su cui si passa sopra.

Se ``false``, i nodi :ref:`Control<class_Control>` all'interno dei suoi :ref:`SubViewport<class_SubViewport>` figlio sono considerati come destinazioni.

Se ``true``, il **SubViewportContainer** stesso sarà considerato come destinazione.

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch** = ``false`` :ref:`🔗<class_SubViewportContainer_property_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretch_enabled**\ (\ )

Se ``true``, la sotto-viewport sarà automaticamente ridimensionata alle dimensioni del controllo.

\ **Nota:** Se ``true``, questo proibirà il cambiamento manuale di :ref:`SubViewport.size<class_SubViewport_property_size>` dei suoi figli.

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch_shrink:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_shrink** = ``1`` :ref:`🔗<class_SubViewportContainer_property_stretch_shrink>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_shrink**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_shrink**\ (\ )

Divide la risoluzione effettiva della sotto-viewport per questo valore, preservandone la scala. Può essere utilizzato per velocizzare il rendering.

Ad esempio, una viewport secondaria da 1280×720 con :ref:`stretch_shrink<class_SubViewportContainer_property_stretch_shrink>` impostato su ``2`` sarà renderizzata a 640×360, occupando le stesse dimensioni nel contenitore.

\ **Nota:** :ref:`stretch<class_SubViewportContainer_property_stretch>` deve essere ``true`` affinché questa proprietà funzioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SubViewportContainer_private_method__propagate_input_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_propagate_input_event**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| |const| :ref:`🔗<class_SubViewportContainer_private_method__propagate_input_event>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Metodo virtuale da implementare dall'utente. Se restituisce ``true``, l'evento ``event`` viene propagato ai figli :ref:`SubViewport<class_SubViewport>`. La propagazione non avviene se restituisce ``false``. Se la funzione non è implementata, tutti gli eventi vengono propagati alle SubViewport.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
