:github_url: hide

.. _class_Rect2:

Rect2
=====

Una bounding box allineata agli assi 2D con coordinate in virgola mobile.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il tipo di :ref:`Variant<class_Variant>` integrato **Rect2** rappresenta un rettangolo allineato agli assi in uno spazio 2D. È definito dalla sua :ref:`position<class_Rect2_property_position>` e :ref:`size<class_Rect2_property_size>`, che sono :ref:`Vector2<class_Vector2>`. Viene spesso utilizzato per test rapidi di sovrapposizione (vedi :ref:`intersects()<class_Rect2_method_intersects>`). Nonostante **Rect2** sia allineato agli assi, può essere combinato con :ref:`Transform2D<class_Transform2D>` per rappresentare un rettangolo ruotato o inclinato.

Per coordinate intere, usa :ref:`Rect2i<class_Rect2i>`. L'equivalente 3D di **Rect2** è :ref:`AABB<class_AABB>`.

\ **Nota:** I valori negativi per :ref:`size<class_Rect2_property_size>` non sono supportati. Con dimensioni negative, la maggior parte dei metodi **Rect2** non funziona correttamente. Utilizza :ref:`abs()<class_Rect2_method_abs>` per ottenere un **Rect2** equivalente con una dimensione non negativa.

\ **Nota:** In un contesto booleano, un **Rect2** è valutato come ``false`` se sia :ref:`position<class_Rect2_property_position>` sia :ref:`size<class_Rect2_property_size>` sono zero (pari a :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`). Altrimenti, è sempre valutato come ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione di matematica <../tutorials/math/index>`

- :doc:`Matematica dei vettori <../tutorials/math/vector_math>`

- :doc:`Matematica avanzata dei vettori <../tutorials/math/vectors_advanced>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end<class_Rect2_property_end>`           | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_Rect2_property_position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_Rect2_property_size>`         | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ )                                                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`abs<class_Rect2_method_abs>`\ (\ ) |const|                                                                                                                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_Rect2_method_encloses>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`expand<class_Rect2_method_expand>`\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_area<class_Rect2_method_get_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_center<class_Rect2_method_get_center>`\ (\ ) |const|                                                                                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_support<class_Rect2_method_get_support>`\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow<class_Rect2_method_grow>`\ (\ amount\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_individual<class_Rect2_method_grow_individual>`\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_side<class_Rect2_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const|                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_area<class_Rect2_method_has_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Rect2_method_has_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`intersection<class_Rect2_method_intersection>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_Rect2_method_intersects>`\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Rect2_method_is_equal_approx>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Rect2_method_is_finite>`\ (\ ) |const|                                                                                                                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`merge<class_Rect2_method_merge>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Rect2_operator_neq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`operator *<class_Rect2_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Rect2_operator_eq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Rect2_property_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_end>`

Il punto di fine. Di solito è l'angolo in basso a destra del rettangolo ed è equivalente a ``posizione + dimensioni``. L'impostazione di questo punto influisce su :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_position>`

Il punto di origine. Di solito è l'angolo in alto a sinistra del rettangolo.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_size>`

La larghezza e l'altezza del rettangolo, a partire da :ref:`position<class_Rect2_property_position>`. L'impostazione di questo valore influisce anche sul punto :ref:`end<class_Rect2_property_end>`.

\ **Nota:** Si consiglia di impostare larghezza e altezza su valori non negativi, poiché la maggior parte dei metodi in Godot presuppone che :ref:`position<class_Rect2_property_position>` sia l'angolo in alto a sinistra e :ref:`end<class_Rect2_property_end>` sia l'angolo in basso a destra. Per ottenere un rettangolo equivalente con dimensioni non negative, usa :ref:`abs()<class_Rect2_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Rect2_constructor_Rect2:

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ ) :ref:`🔗<class_Rect2_constructor_Rect2>`

Costruisce un **Rect2** con la sua :ref:`position<class_Rect2_property_position>` e :ref:`size<class_Rect2_property_size>` impostate su :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

Costruisce un **Rect2** come copia del **Rect2** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

Costruisce un **Rect2** da un :ref:`Rect2i<class_Rect2i>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )

Costruisce un **Rect2** dalla posizione (``position``) e dimensioni (``size``).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ )

Costruisce un **Rect2** impostando la sua :ref:`position<class_Rect2_property_position>` su (``x``, ``y``) e la sua :ref:`size<class_Rect2_property_size>` su (``width``, ``height``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Rect2_method_abs:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2_method_abs>`

Restituisce un **Rect2** equivalente a questo rettangolo, con la sua larghezza e altezza modificate per essere valori non negativi e con la sua :ref:`position<class_Rect2_property_position>` che è l'angolo in alto a sinistra del rettangolo.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(25, 25, -100, -50)
    var assoluto = rect.abs() # assoluto è Rect2(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2(25, 25, -100, -50);
    var assoluto = rect.Abs(); // assoluto è Rect2(-75, -25, 100, 50)



\ **Nota:** Si consiglia di utilizzare questo metodo quando :ref:`size<class_Rect2_property_size>` è negativo, poiché la maggior parte degli altri metodi in Godot presuppone che :ref:`position<class_Rect2_property_position>` sia l'angolo in alto a sinistra e :ref:`end<class_Rect2_property_end>` sia l'angolo in basso a destra.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_encloses>`

Restituisce ``true`` se questo rettangolo racchiude *completamente* il rettangolo ``b``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_expand:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **expand**\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_expand>`

Restituisce una copia di questo rettangolo espanso per allineare i bordi con il punto ``to`` specificato, se necessario.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(0, 0, 5, 2)

    rect = rect.expand(Vector2(10, 0)) # rect è Rect2(0, 0, 10, 2)
    rect = rect.expand(Vector2(-5, 5)) # rect è Rect2(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2(0, 0, 5, 2);

    rect = rect.Expand(new Vector2(10, 0)); // rect è Rect2(0, 0, 10, 2)
    rect = rect.Expand(new Vector2(-5, 5)); // rect è Rect2(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_area:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_area>`

Restituisce l'area di questo rettangolo. Questo è equivalente a ``size.x * size.y``. Vedi anche :ref:`has_area()<class_Rect2_method_has_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_center>`

Restituisce il punto centrale del rettangolo. È lo stesso di ``position + (size / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_support:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_support**\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_get_support>`

Restituisce la posizione del vertice di questo rettangolo che è il più lontano nella direzione fornita. Questo punto è comunemente noto come punto di supporto negli algoritmi di rilevamento delle collisioni.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow>`

Restituisce una copia di questo rettangolo esteso su tutti i lati dalla quantità ``amount``. Un ``amount`` negativo restringe invece il rettangolo. Vedi anche :ref:`grow_individual()<class_Rect2_method_grow_individual>` e :ref:`grow_side()<class_Rect2_method_grow_side>`.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2(4, 4, 8, 8).grow(4) # a è Rect2(0, 0, 16, 16)
    var b = Rect2(0, 0, 8, 4).grow(2) # b è Rect2(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2(4, 4, 8, 8).Grow(4); // a è Rect2(0, 0, 16, 16)
    var b = new Rect2(0, 0, 8, 4).Grow(2); // b è Rect2(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_individual**\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_individual>`

Restituisce una copia di questo rettangolo con i suoi lati sinistro (``left``), superiore (``top``), destro (``right``) e inferiore (``bottom``) estesi delle quantità specificate. I valori negativi, invece, restringono i lati. Vedi anche :ref:`grow()<class_Rect2_method_grow>` e :ref:`grow_side()<class_Rect2_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_side>`

Restituisce una copia di questo rettangolo con il suo lato (``side``) esteso della quantità ``amount`` (vedi le costanti di :ref:`Side<enum_@GlobalScope_Side>`). Un ``amount`` negativo, invece, restringe il rettangolo. Vedi anche :ref:`grow()<class_Rect2_method_grow>` e :ref:`grow_individual()<class_Rect2_method_grow_individual>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_has_area>`

Restituisce ``true`` se questo rettangolo ha larghezza e altezza positive. Vedi anche :ref:`get_area()<class_Rect2_method_get_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_has_point>`

Restituisce ``true`` se il rettangolo contiene il punto ``point``. Per convenzione, i punti sui bordi destro e inferiore **non** sono inclusi.

\ **Nota:** Questo metodo non è affidabile per un **Rect2** con una :ref:`size<class_Rect2_property_size>` *negativa*. Utilizza prima :ref:`abs()<class_Rect2_method_abs>` per ottenere un rettangolo valido.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **intersection**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_intersection>`

Restituisce l'intersezione tra questo rettangolo e ``b``. Se i rettangoli non si intersecano, restituisce un **Rect2** vuoto.


.. tabs::

 .. code-tab:: gdscript

    var rect1 = Rect2(0, 0, 5, 10)
    var rect2 = Rect2(2, 0, 8, 4)

    var a = rect1.intersection(rect2) # a è Rect2(2, 0, 3, 4)

 .. code-tab:: csharp

    var rect1 = new Rect2(0, 0, 5, 10);
    var rect2 = new Rect2(2, 0, 8, 4);

    var a = rect1.Intersection(rect2); // a è Rect2(2, 0, 3, 4)



\ **Nota:** Se hai solo bisogno di sapere se due rettangoli si sovrappongono, usa invece :ref:`intersects()<class_Rect2_method_intersects>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Rect2_method_intersects>`

Restituisce ``true`` se questo rettangolo si sovrappone al rettangolo ``b``. I bordi di entrambi i rettangoli sono esclusi, a meno che ``include_borders`` sia ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_is_equal_approx>`

Restituisce ``true`` se questo rettangolo e ``rect`` sono approssimativamente eguali, chiamando\ :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` su :ref:`position<class_Rect2_property_position>` e :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Rect2_method_is_finite>`

Restituisce ``true`` se i valori di questo rettangolo sono finiti, chiamando :ref:`Vector2.is_finite()<class_Vector2_method_is_finite>` su :ref:`position<class_Rect2_property_position>` e :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_merge:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **merge**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_merge>`

Restituisce un **Rect2** che racchiude sia questo rettangolo sia ``b`` attorno ai bordi. Vedi anche :ref:`encloses()<class_Rect2_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Rect2_operator_neq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_neq_Rect2>`

Restituisce ``true`` se :ref:`position<class_Rect2_property_position>` o :ref:`size<class_Rect2_property_size>` di entrambi i rettangoli non sono uguali.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>`, che è più affidabile.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Rect2_operator_mul_Transform2D>`

Trasforma inversamente (moltiplica) il **Rect2** per la matrice di trasformazione :ref:`Transform2D<class_Transform2D>` fornita, presupponendo che la base di trasformazione sia ortonormale (ovvero rotazione/riflessione vanno bene, ma scala/distorsione no).

\ ``rect * transform`` è equivalente a ``transform.inverse() * rect``. Vedi :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`.

Per trasformare per inverso una trasformazione affine (ad esempio con scala) può essere utilizzato ``transform.affine_inverse() * rect``. Vedi :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_eq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_eq_Rect2>`

Restituisce ``true`` se :ref:`position<class_Rect2_property_position>` e :ref:`size<class_Rect2_property_size>` di entrambi i rettangoli sono esattamente uguali, rispettivamente.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>`, che è più affidabile.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
