:github_url: hide

.. _class_Rect2i:

Rect2i
======

Una bounding box allineata agli assi 2D con coordinate intere.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il tipo di :ref:`Variant<class_Variant>` integrato **Rect2i** rappresenta un rettangolo allineato agli assi in uno spazio 2D, usando coordinate intere. È definito dalla sua :ref:`position<class_Rect2i_property_position>` e :ref:`size<class_Rect2i_property_size>`, che sono :ref:`Vector2i<class_Vector2i>`. Viene spesso utilizzato per test rapidi di sovrapposizione (vedi :ref:`intersects()<class_Rect2i_method_intersects>`).

Per le coordinate in virgola mobile, vedi :ref:`Rect2<class_Rect2>`.

\ **Nota:** I valori negativi per :ref:`size<class_Rect2i_property_size>` non sono supportati. Con dimensioni negative, la maggior parte dei metodi **Rect2i** non funziona correttamente. Utilizza :ref:`abs()<class_Rect2i_method_abs>` per ottenere un **Rect2i** equivalente con una dimensione non negativa.

\ **Nota:** In un contesto booleano, un **Rect2i** è valutato come ``false`` se sia :ref:`position<class_Rect2i_property_position>` sia :ref:`size<class_Rect2i_property_size>` sono zero (pari a :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`). Altrimenti, è sempre valutato come ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione di matematica <../tutorials/math/index>`

- :doc:`Matematica dei vettori <../tutorials/math/vector_math>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`end<class_Rect2i_property_end>`           | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`position<class_Rect2i_property_position>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`size<class_Rect2i_property_size>`         | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ )                                                                                                                      |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                    |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`abs<class_Rect2i_method_abs>`\ (\ ) |const|                                                                                                                                                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`encloses<class_Rect2i_method_encloses>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`expand<class_Rect2i_method_expand>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_area<class_Rect2i_method_get_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_center<class_Rect2i_method_get_center>`\ (\ ) |const|                                                                                                                                     |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow<class_Rect2i_method_grow>`\ (\ amount\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_individual<class_Rect2i_method_grow_individual>`\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_side<class_Rect2i_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_area<class_Rect2i_method_has_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_point<class_Rect2i_method_has_point>`\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`intersection<class_Rect2i_method_intersection>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`intersects<class_Rect2i_method_intersects>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                    |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`merge<class_Rect2i_method_merge>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Rect2i_operator_neq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Rect2i_operator_eq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Rect2i_property_end:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **end** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_end>`

Il punto di fine. Di solito è l'angolo in basso a destra del rettangolo ed è equivalente a ``posizione + dimensioni``. L'impostazione di questo punto influisce su :ref:`size<class_Rect2i_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_position:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **position** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_position>`

Il punto di origine. Di solito è l'angolo in alto a sinistra del rettangolo.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_size>`

La larghezza e l'altezza del rettangolo, a partire da :ref:`position<class_Rect2i_property_position>`. L'impostazione di questo valore influisce anche sul punto :ref:`end<class_Rect2i_property_end>`.

\ **Nota:** Si consiglia di impostare larghezza e altezza su valori non negativi, poiché la maggior parte dei metodi in Godot presuppone che :ref:`position<class_Rect2i_property_position>` sia l'angolo in alto a sinistra e :ref:`end<class_Rect2i_property_end>` sia l'angolo in basso a destra. Per ottenere un rettangolo equivalente con dimensioni non negative, usa :ref:`abs()<class_Rect2i_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Rect2i_constructor_Rect2i:

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ ) :ref:`🔗<class_Rect2i_constructor_Rect2i>`

Costruisce un :ref:`Rect2<class_Rect2>` con la sua :ref:`position<class_Rect2i_property_position>` e :ref:`size<class_Rect2i_property_size>` impostate su :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

Costruisce un **Rect2i** come copia del **Rect2i** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

Costruisce un **Rect2i** da un :ref:`Rect2<class_Rect2>`. Le coordinate in virgola mobile vengono troncate.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )

Costruisce un **Rect2i** dalla posizione (``position``) e dimensioni (``size``).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )

Costruisce un **Rect2i** impostando la sua :ref:`position<class_Rect2i_property_position>` su (``x``, ``y``) e la sua :ref:`size<class_Rect2i_property_size>` su (``width``, ``height``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Rect2i_method_abs:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_abs>`

Restituisce un **Rect2i** equivalente a questo rettangolo, con la sua larghezza e altezza modificate per essere valori non negativi e con la sua :ref:`position<class_Rect2i_property_position>` che è l'angolo in alto a sinistra del rettangolo.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2i(25, 25, -100, -50)
    var assoluto = rect.abs() # assoluto è Rect2i(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2I(25, 25, -100, -50);
    var assoluto = rect.Abs(); // assoluto è Rect2I(-75, -25, 100, 50)



\ **Nota:** Si consiglia di utilizzare questo metodo quando :ref:`size<class_Rect2i_property_size>` è negativo, poiché la maggior parte degli altri metodi in Godot presuppone che :ref:`position<class_Rect2i_property_position>` sia l'angolo in alto a sinistra e :ref:`end<class_Rect2i_property_end>` sia l'angolo in basso a destra.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_encloses>`

Restituisce ``true`` se questo **Rect2i** racchiude completamente un altro.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_expand:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **expand**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_expand>`

Restituisce una copia di questo rettangolo espanso per allineare i bordi con il punto ``to`` specificato, se necessario.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(0, 0, 5, 2)

    rect = rect.expand(Vector2i(10, 0)) # rect è Rect2i(0, 0, 10, 2)
    rect = rect.expand(Vector2i(-5, 5)) # rect è Rect2i(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2(0, 0, 5, 2);

    rect = rect.Expand(new Vector2I(10, 0)); // rect è Rect2I(0, 0, 10, 2)
    rect = rect.Expand(new Vector2I(-5, 5)); // rect è Rect2I(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_area:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_area>`

Restituisce l'area di questo rettangolo. Questo è equivalente a ``size.x * size.y``. Vedi anche :ref:`has_area()<class_Rect2i_method_has_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_center>`

Restituisce il punto centrale del rettangolo. È lo stesso di ``position + (size / 2.0)``.

\ **Nota:** Se :ref:`size<class_Rect2i_property_size>` è dispari, il risultato sarà arrotondato verso :ref:`position<class_Rect2i_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow>`

Restituisce una copia di questo rettangolo esteso su tutti i lati dalla quantità ``amount``. Un ``amount`` negativo restringe invece il rettangolo. Vedi anche :ref:`grow_individual()<class_Rect2i_method_grow_individual>` e :ref:`grow_side()<class_Rect2i_method_grow_side>`.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(4, 4, 8, 8).grow(4) # a è Rect2i(0, 0, 16, 16)
    var b = Rect2i(0, 0, 8, 4).grow(2) # b è Rect2i(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = Rect2i(4, 4, 8, 8).grow(4) # a è Rect2i(0, 0, 16, 16)
    var b = Rect2i(0, 0, 8, 4).grow(2) # b è Rect2i(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_individual**\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_individual>`

Restituisce una copia di questo rettangolo con i suoi lati sinistro (``left``), superiore (``top``), destro (``right``) e inferiore (``bottom``) estesi delle quantità specificate. I valori negativi, invece, restringono i lati. Vedi anche :ref:`grow()<class_Rect2i_method_grow>` e :ref:`grow_side()<class_Rect2i_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_side>`

Restituisce una copia di questo rettangolo con il suo lato (``side``) esteso della quantità ``amount`` (vedi le costanti di :ref:`Side<enum_@GlobalScope_Side>`). Un ``amount`` negativo, invece, restringe il rettangolo. Vedi anche :ref:`grow()<class_Rect2i_method_grow>` e :ref:`grow_individual()<class_Rect2i_method_grow_individual>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_has_area>`

Restituisce ``true`` se questo rettangolo ha larghezza e altezza positive. Vedi anche :ref:`get_area()<class_Rect2i_method_get_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_has_point>`

Restituisce ``true`` se il rettangolo contiene il punto ``point``. Per convenzione, i punti sui bordi destro e inferiore **non** sono inclusi.

\ **Nota:** Questo metodo non è affidabile per un **Rect2i** con una :ref:`size<class_Rect2i_property_size>` *negativa*. Utilizza prima :ref:`abs()<class_Rect2i_method_abs>` per ottenere un rettangolo valido.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **intersection**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersection>`

Restituisce l'intersezione tra questo rettangolo e ``b``. Se i rettangoli non si intersecano, restituisce un **Rect2i** vuoto.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(0, 0, 5, 10)
    var b = Rect2i(2, 0, 8, 4)

    var c = a.intersection(b) # c è Rect2i(2, 0, 3, 4)

 .. code-tab:: csharp

    var a = new Rect2I(0, 0, 5, 10);
    var b = new Rect2I(2, 0, 8, 4);

    var c = rect1.Intersection(rect2); // c è Rect2I(2, 0, 3, 4)



\ **Nota:** Se hai solo bisogno di sapere se due rettangoli si sovrappongono, usa invece :ref:`intersects()<class_Rect2i_method_intersects>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersects>`

Restituisce ``true`` se questo rettangolo si sovrappone con il rettangolo ``b``. I lati di entrambi i rettangoli sono esclusi.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_merge:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **merge**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_merge>`

Restituisce un **Rect2i** che racchiude sia questo rettangolo sia ``b`` attorno ai bordi. Vedi anche :ref:`encloses()<class_Rect2i_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Rect2i_operator_neq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_neq_Rect2i>`

Restituisce ``true`` se :ref:`position<class_Rect2i_property_position>` o :ref:`size<class_Rect2i_property_size>` di entrambi i rettangoli non sono uguali.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_operator_eq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_eq_Rect2i>`

Restituisce ``true`` se entrambi :ref:`position<class_Rect2i_property_position>` e :ref:`size<class_Rect2i_property_size>` dei rettangoli sono uguali, rispettivamente.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
