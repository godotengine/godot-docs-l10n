:github_url: hide

.. _class_PathFollow3D:

PathFollow3D
============

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Campionatore di punti per un :ref:`Path3D<class_Path3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo prende il suo :ref:`Path3D<class_Path3D>` genitore e restituisce le coordinate di un punto al suo interno, data una distanza dal primo vertice.

È utile per far sì che altri nodi seguano un percorso, senza scrivere codice per lo schema di movimento. Per questo, i nodi devono essere figli di questo nodo. I nodi discendenti si muoveranno di conseguenza quando si imposta :ref:`progress<class_PathFollow3D_property_progress>` in questo nodo.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`cubic_interp<class_PathFollow3D_property_cubic_interp>`       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`h_offset<class_PathFollow3D_property_h_offset>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`loop<class_PathFollow3D_property_loop>`                       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`progress<class_PathFollow3D_property_progress>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`progress_ratio<class_PathFollow3D_property_progress_ratio>`   | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`RotationMode<enum_PathFollow3D_RotationMode>` | :ref:`rotation_mode<class_PathFollow3D_property_rotation_mode>`     | ``3``     |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`tilt_enabled<class_PathFollow3D_property_tilt_enabled>`       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`use_model_front<class_PathFollow3D_property_use_model_front>` | ``false`` |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`v_offset<class_PathFollow3D_property_v_offset>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`correct_posture<class_PathFollow3D_method_correct_posture>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, rotation_mode\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ ) |static| |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_PathFollow3D_RotationMode:

.. rst-class:: classref-enumeration

enum **RotationMode**: :ref:`🔗<enum_PathFollow3D_RotationMode>`

.. _class_PathFollow3D_constant_ROTATION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_NONE** = ``0``

Impedisce la rotazione del PathFollow3D.

.. _class_PathFollow3D_constant_ROTATION_Y:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_Y** = ``1``

Consente al PathFollow3D di ruotare solo lungo l'asse Y.

.. _class_PathFollow3D_constant_ROTATION_XY:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_XY** = ``2``

Consente al PathFollow3D di ruotare sia lungo l'asse X, sia lungo l'asse Y.

.. _class_PathFollow3D_constant_ROTATION_XYZ:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_XYZ** = ``3``

Consente a PathFollow3D di ruotare lungo ogni asse.

.. _class_PathFollow3D_constant_ROTATION_ORIENTED:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_ORIENTED** = ``4``

Utilizza le informazioni del vettore alto in una :ref:`Curve3D<class_Curve3D>` per imporre l'orientamento. Questa modalità di rotazione richiede che la proprietà :ref:`Curve3D.up_vector_enabled<class_Curve3D_property_up_vector_enabled>` di :ref:`Path3D<class_Path3D>` sia impostata su ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PathFollow3D_property_cubic_interp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cubic_interp** = ``true`` :ref:`🔗<class_PathFollow3D_property_cubic_interp>`

.. rst-class:: classref-property-setget

- |void| **set_cubic_interpolation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_cubic_interpolation**\ (\ )

Se ``true``, la posizione tra due punti memorizzati nella cache è interpolata in modo cubico, altrimenti linearmente.

I punti lungo la :ref:`Curve3D<class_Curve3D>` del :ref:`Path3D<class_Path3D>` sono precalcolati prima dell'uso, per calcoli più rapidi. Il punto all'offset richiesto è quindi calcolato interpolando tra due punti adiacenti memorizzati nella cache. Ciò potrebbe rappresentare un problema se la curva effettua svolte brusche, poiché i punti memorizzati nella cache potrebbero non seguire la curva vicino abbastanza.

Ci sono due risposte a questo problema: aumenta il numero di punti memorizzati nella cache, aumentando il consumo di memoria, oppure effettua un'interpolazione cubica tra due punti, a costo di calcoli (leggermente) più lenti.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

L'offset del nodo lungo la curva.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_PathFollow3D_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Se ``true``, qualsiasi offset al di fuori della lunghezza del percorso sarà avvolto, invece di fermarsi alle estremità. Usalo per percorsi ciclici.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress**\ (\ )

La distanza dal primo vertice, misurata in unità 3D lungo il percorso. La modifica di questo valore imposta la posizione di questo nodo su un punto all'interno del percorso.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_progress_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress_ratio** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_progress_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_progress_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress_ratio**\ (\ )

La distanza dal primo vertice, considerando 0,0 come il primo vertice e 1,0 come l'ultimo. Questo è solo un altro modo di esprimere il progresso all'interno del percorso, poiché il progresso fornito è moltiplicato internamente per la lunghezza del percorso.

Può essere impostato o ottenuto solo se il **PathFollow3D** è il figlio di un :ref:`Path3D<class_Path3D>` che fa parte dell'albero di scene e che questo :ref:`Path3D<class_Path3D>` ha una :ref:`Curve3D<class_Curve3D>` con una lunghezza diversa da zero. Altrimenti, tentando di impostare questo campo sarà stampato un errore e ottenendo questo campo sarà restituito ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_rotation_mode:

.. rst-class:: classref-property

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **rotation_mode** = ``3`` :ref:`🔗<class_PathFollow3D_property_rotation_mode>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_mode**\ (\ value\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ )
- :ref:`RotationMode<enum_PathFollow3D_RotationMode>` **get_rotation_mode**\ (\ )

Consente o impedisce la rotazione su uno o più assi, a seconda delle costanti di :ref:`RotationMode<enum_PathFollow3D_RotationMode>` utilizzate.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_tilt_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tilt_enabled** = ``true`` :ref:`🔗<class_PathFollow3D_property_tilt_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tilt_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tilt_enabled**\ (\ )

Se ``true``, la proprietà di inclinazione di :ref:`Curve3D<class_Curve3D>` ha effetto.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_use_model_front:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_model_front** = ``false`` :ref:`🔗<class_PathFollow3D_property_use_model_front>`

.. rst-class:: classref-property-setget

- |void| **set_use_model_front**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_model_front**\ (\ )

Se ``true``, il nodo si sposta sul percorso di viaggio orientando l'asse +Z in avanti. Vedi anche :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` e :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

L'offset del nodo perpendicolare alla curva.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PathFollow3D_method_correct_posture:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **correct_posture**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, rotation_mode\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ ) |static| :ref:`🔗<class_PathFollow3D_method_correct_posture>`

Corregge la trasformazione ``transform``. ``rotation_mode`` specifica implicitamente come viene calcolata la postura (direzione anteriore, superiore e laterale).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
