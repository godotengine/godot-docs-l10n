:github_url: hide

.. _class_PathFollow2D:

PathFollow2D
============

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Campionatore di punti per un :ref:`Path2D<class_Path2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo prende il suo :ref:`Path2D<class_Path2D>` genitore e restituisce le coordinate di un punto al suo interno, data una distanza dal primo vertice.

È utile per far sì che altri nodi seguano un percorso, senza scrivere codice per lo schema di movimento. Per questo, i nodi devono essere figli di questo nodo. I nodi discendenti si muoveranno di conseguenza quando si imposta :ref:`progress<class_PathFollow2D_property_progress>` in questo nodo.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cubic_interp<class_PathFollow2D_property_cubic_interp>`     | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`h_offset<class_PathFollow2D_property_h_offset>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_PathFollow2D_property_loop>`                     | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`progress<class_PathFollow2D_property_progress>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`progress_ratio<class_PathFollow2D_property_progress_ratio>` | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`rotates<class_PathFollow2D_property_rotates>`               | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`v_offset<class_PathFollow2D_property_v_offset>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PathFollow2D_property_cubic_interp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cubic_interp** = ``true`` :ref:`🔗<class_PathFollow2D_property_cubic_interp>`

.. rst-class:: classref-property-setget

- |void| **set_cubic_interpolation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_cubic_interpolation**\ (\ )

Se ``true``, la posizione tra due punti memorizzati nella cache è interpolata in modo cubico, altrimenti linearmente.

I punti lungo la :ref:`Curve2D<class_Curve2D>` del :ref:`Path2D<class_Path2D>` sono precalcolati prima dell'uso, per calcoli più rapidi. Il punto all'offset richiesto è quindi calcolato interpolando tra due punti adiacenti memorizzati nella cache. Ciò potrebbe rappresentare un problema se la curva effettua svolte brusche, poiché i punti memorizzati nella cache potrebbero non seguire la curva vicino abbastanza.

Ci sono due risposte a questo problema: aumenta il numero di punti memorizzati nella cache, aumentando il consumo di memoria, oppure effettua un'interpolazione cubica tra due punti, a costo di calcoli (leggermente) più lenti.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

L'offset del nodo lungo la curva.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_PathFollow2D_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Se ``true``, qualsiasi offset al di fuori della lunghezza del percorso sarà avvolto, invece di fermarsi alle estremità. Usalo per percorsi ciclici.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress**\ (\ )

La distanza lungo il percorso, in pixel. La modifica di questo valore imposta la posizione di questo nodo su un punto all'interno del percorso.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_progress_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress_ratio** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_progress_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_progress_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress_ratio**\ (\ )

La distanza lungo il percorso come numero compreso tra 0,0 (per il primo vertice) e 1,0 (per l'ultimo). Questo è solo un altro modo di esprimere il progresso all'interno del percorso, poiché l'offset fornito è moltiplicato internamente per la lunghezza del percorso.

Può essere impostato o ottenuto solo se il **PathFollow2D** è il figlio di un :ref:`Path2D<class_Path2D>` che fa parte dell'albero di scene e che questo :ref:`Path2D<class_Path2D>` ha una :ref:`Curve2D<class_Curve2D>` con una lunghezza diversa da zero. Altrimenti, tentando di impostare questo campo sarà stampato un errore e ottenendo questo campo sarà restituito ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_rotates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rotates** = ``true`` :ref:`🔗<class_PathFollow2D_property_rotates>`

.. rst-class:: classref-property-setget

- |void| **set_rotates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rotating**\ (\ )

Se ``true``, questo nodo si gira per seguire il percorso, con la direzione +X rivolta in avanti lungo il percorso.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

L'offset del nodo perpendicolare alla curva.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
