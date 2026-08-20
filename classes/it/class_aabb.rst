:github_url: hide

.. _class_AABB:

AABB
====

Una bounding box 3D allineata agli assi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il tipo di :ref:`Variant<class_Variant>` integrato **AABB** rappresenta una bounding box allineata agli assi in uno spazio 3D. È definito dalla sua posizione (:ref:`position<class_AABB_property_position>`) e dimensioni (:ref:`size<class_AABB_property_size>`), che sono :ref:`Vector3<class_Vector3>`. È spesso utilizzato per fare test rapidi di sovrapposizione (vedi :ref:`intersects()<class_AABB_method_intersects>`). Nonostante **AABB** sia allineato agli assi, può essere combinato con :ref:`Transform3D<class_Transform3D>` per rappresentare una bounding box ruotata o inclinata.

Utilizza coordinate in virgola mobile. La controparte 2D a **AABB** è :ref:`Rect2<class_Rect2>`. Non esiste una versione di **AABB** che utilizza coordinate intere.

\ **Nota:** I valori negativi per :ref:`size<class_AABB_property_size>` non sono supportati. Con dimensioni negative, la maggior parte dei metodi **AABB** non funzionano correttamente. Utilizza :ref:`abs()<class_AABB_method_abs>` per ottenere un **AABB** equivalente con una dimensione non negativa.

\ **Nota:** In un contesto booleano, un **AABB** è valutato come ``false`` se sia :ref:`position<class_AABB_property_position>` sia :ref:`size<class_AABB_property_size>` sono zero (pari a :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`). Altrimenti, è sempre valutato come ``true``.

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

   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`end<class_AABB_property_end>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`position<class_AABB_property_position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_AABB_property_size>`         | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ )                                                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ from\: :ref:`AABB<class_AABB>`\ )                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`abs<class_AABB_method_abs>`\ (\ ) |const|                                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_AABB_method_encloses>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`expand<class_AABB_method_expand>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_AABB_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_endpoint<class_AABB_method_get_endpoint>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_longest_axis<class_AABB_method_get_longest_axis>`\ (\ ) |const|                                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_longest_axis_index<class_AABB_method_get_longest_axis_index>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_longest_axis_size<class_AABB_method_get_longest_axis_size>`\ (\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_shortest_axis<class_AABB_method_get_shortest_axis>`\ (\ ) |const|                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_shortest_axis_index<class_AABB_method_get_shortest_axis_index>`\ (\ ) |const|                                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_shortest_axis_size<class_AABB_method_get_shortest_axis_size>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_support<class_AABB_method_get_support>`\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_volume<class_AABB_method_get_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`grow<class_AABB_method_grow>`\ (\ by\: :ref:`float<class_float>`\ ) |const|                                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_AABB_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_surface<class_AABB_method_has_surface>`\ (\ ) |const|                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_volume<class_AABB_method_has_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`intersection<class_AABB_method_intersection>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_AABB_method_intersects>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects_plane<class_AABB_method_intersects_plane>`\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const|                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_AABB_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_AABB_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_AABB_method_is_equal_approx>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const|                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_AABB_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`merge<class_AABB_method_merge>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_AABB_operator_neq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`operator *<class_AABB_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_AABB_operator_eq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                      |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AABB_property_end:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **end** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_end>`

Il punto di fine. Questo è di solito lo spigolo in alto a destra e sul retro della bounding box, ed è equivalente a ``position + size``. Impostare questo punto influisce su :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_position>`

Il punto di origine. Questo è di solito lo spigolo in basso a sinistra e in avanti della bounding box.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_size>`

La larghezza, l'altezza e la profondità della bounding box a partire da :ref:`position<class_AABB_property_position>`. Impostare questo valore influisce anche sul punto :ref:`end<class_AABB_property_end>`.

\ **Nota:** Si raccomanda di impostare la larghezza, l'altezza e la profondità a valori non negativi. Questo perché la maggior parte dei metodi in Godot presumono che :ref:`position<class_AABB_property_position>` sia lo spigolo in basso a sinistra anteriore, e che :ref:`end<class_AABB_property_end>` sia lo spigolo in alto a destra posteriore. Per ottenere una bounding box con dimensioni non negative, utilizza :ref:`abs()<class_AABB_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_AABB_constructor_AABB:

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ ) :ref:`🔗<class_AABB_constructor_AABB>`

Costruisce un **AABB** con la sua posizione (:ref:`position<class_AABB_property_position>`) e dimensioni (:ref:`size<class_AABB_property_size>`) impostate a :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ from\: :ref:`AABB<class_AABB>`\ )

Costruisce un **AABB** come copia dell'**AABB** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ )

Costruisce un **AABB** dalla posizione (``position``) e dimensioni (``size``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AABB_method_abs:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **abs**\ (\ ) |const| :ref:`🔗<class_AABB_method_abs>`

Restituisce un **AABB** equivalente a questa bounding box, con la sua larghezza, altezza e profondità modificate per essere valori non negativi.


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(5, 0, 5), Vector3(-20, -10, -5))
    var absolute = box.abs()
    print(absolute.position) # Stampa (-15.0, -10.0, 0.0)
    print(absolute.size)     # Stampa (20.0, 10.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(5, 0, 5), new Vector3(-20, -10, -5));
    var absolute = box.Abs();
    GD.Print(absolute.Position); // Stampa (-15, -10, 0)
    GD.Print(absolute.Size);     // Stampa (20, 10, 5)



\ **Nota:** Si consiglia di utilizzare questo metodo quando :ref:`size<class_AABB_property_size>` è negativo, poiché la maggior parte degli altri metodi in Godot presumono che i componenti di :ref:`size<class_AABB_property_size>` sono maggiori di ``0``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_encloses>`

Restituisce ``true`` se questa bounding box racchiude *completamente* la bounding box ``with``. I bordi di entrambe i box sono inclusi.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(0, 0, 0), Vector3(4, 4, 4))
    var b = AABB(Vector3(1, 1, 1), Vector3(3, 3, 3))
    var c = AABB(Vector3(2, 2, 2), Vector3(8, 8, 8))

    print(a.encloses(a)) # Stampa true
    print(a.encloses(b)) # Stampa true
    print(a.encloses(c)) # Stampa false

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(0, 0, 0), new Vector3(4, 4, 4));
    var b = new Aabb(new Vector3(1, 1, 1), new Vector3(3, 3, 3));
    var c = new Aabb(new Vector3(2, 2, 2), new Vector3(8, 8, 8));

    GD.Print(a.Encloses(a)); // Stampa True
    GD.Print(a.Encloses(b)); // Stampa True
    GD.Print(a.Encloses(c)); // Stampa False



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_expand:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **expand**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_expand>`

Restituisce una copia di questa bounding box espansa per allineare i bordi con il punto ``to_point`` specificato, se necessario.


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(5, 2, 5))

    box = box.expand(Vector3(10, 0, 0))
    print(box.position) # Stampa (0.0, 0.0, 0.0)
    print(box.size)     # Stampa (10.0, 2.0, 5.0)

    box = box.expand(Vector3(-5, 0, 5))
    print(box.position) # Stampa (-5.0, 0.0, 0.0)
    print(box.size)     # Stampa (15.0, 2.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 5));

    box = box.Expand(new Vector3(10, 0, 0));
    GD.Print(box.Position); // Stampa (0, 0, 0)
    GD.Print(box.Size);     // Stampa (10, 2, 5)

    box = box.Expand(new Vector3(-5, 0, 5));
    GD.Print(box.Position); // Stampa (-5, 0, 0)
    GD.Print(box.Size);     // Stampa (15, 2, 5)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_center>`

Restituisce il punto centrale della bounding box. Questo è equivalente a ``position + (size / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_endpoint:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_endpoint**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AABB_method_get_endpoint>`

Restituisce la posizione di uno degli 8 vertici che compongono questa bounding box. Con un ``idx`` di ``0`` è la stessa di :ref:`position<class_AABB_property_position>`, e un ``idx`` di ``7`` è la stessa di :ref:`end<class_AABB_property_end>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_longest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis>`

Restituisce l'asse normalizzato più lungo di :ref:`size<class_AABB_property_size>` di questa bounding box, come :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>` o :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_longest_axis())       # Stampa (0.0, 0.0, 1.0)
    print(box.get_longest_axis_index()) # Stampa 2
    print(box.get_longest_axis_size())  # Stampa 8.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetLongestAxis());      // Stampa (0, 0, 1)
    GD.Print(box.GetLongestAxisIndex()); // Stampa Z
    GD.Print(box.GetLongestAxisSize());  // Stampa 8



Vedi anche :ref:`get_longest_axis_index()<class_AABB_method_get_longest_axis_index>` e :ref:`get_longest_axis_size()<class_AABB_method_get_longest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_longest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_index>`

Restituisce l'indice dell'asse più lungo di questa bounding box (vedi :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>`, e :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

Per un esempio, vedi :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_longest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_size>`

Restituisce la dimensione più lunga di :ref:`size<class_AABB_property_size>` di questa bounding box.

Per un esempio, vedi :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_shortest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis>`

Restituisce l'asse normalizzato più corto di :ref:`size<class_AABB_property_size>` di questa bounding box, come :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>` o :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_shortest_axis())       # Stampa (1.0, 0.0, 0.0)
    print(box.get_shortest_axis_index()) # Stampa 0
    print(box.get_shortest_axis_size())  # Stampa 2

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetShortestAxis());      // Stampa (1, 0, 0)
    GD.Print(box.GetShortestAxisIndex()); // Stampa X
    GD.Print(box.GetShortestAxisSize());  // Stampa 2



Vedi anche :ref:`get_shortest_axis_index()<class_AABB_method_get_shortest_axis_index>` e :ref:`get_shortest_axis_size()<class_AABB_method_get_shortest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_shortest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_index>`

Restituisce l'indice dell'asse più corto di questa bounding box (vedi :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>`, e :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

Per un esempio, vedi :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shortest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_size>`

Restituisce la dimensione più corta di :ref:`size<class_AABB_property_size>` di questa bounding box.

Per un esempio, vedi :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_support:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_support**\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_get_support>`

Restituisce la posizione del vertice di questa bounding box che è il più lontano nella direzione fornita. Questo punto è comunemente noto come punto di supporto negli algoritmi di rilevamento delle collisioni.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_volume>`

Restituisce il volume della bounding box. Questo è equivalente a ``size.x * size.y * size.z``. Vedi anche :ref:`has_volume()<class_AABB_method_has_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_grow:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **grow**\ (\ by\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_AABB_method_grow>`

Restituisce una copia di questa bounding box estesa su tutti i lati dalla quantità fornita (``by``). Una quantità negativa invece restringe il box.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(4, 4, 4), Vector3(8, 8, 8)).grow(4)
    print(a.position) # Stampa (0.0, 0.0, 0.0)
    print(a.size)     # Stampa (16.0, 16.0, 16.0)

    var b = AABB(Vector3(0, 0, 0), Vector3(8, 4, 2)).grow(2)
    print(b.position) # Stampa (-2.0, -2.0, -2.0)
    print(b.size)     # Stampa (12.0, 8.0, 6.0)

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(4, 4, 4), new Vector3(8, 8, 8)).Grow(4);
    GD.Print(a.Position); // Stampa (0, 0, 0)
    GD.Print(a.Size);     // Stampa (16, 16, 16)

    var b = new Aabb(new Vector3(0, 0, 0), new Vector3(8, 4, 2)).Grow(2);
    GD.Print(b.Position); // Stampa (-2, -2, -2)
    GD.Print(b.Size);     // Stampa (12, 8, 6)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_has_point>`

Restituisce ``true`` se la bounding box contiene il punto ``point``. Per convenzione, i punti esattamente sul lato destro, superiore, e anteriore **non** sono inclusi.

\ **Nota:** Questo metodo non è affidabile per un **AABB** con un :ref:`size<class_AABB_property_size>` *negativo*. Utilizza prima :ref:`abs()<class_AABB_method_abs>` per ottenere una bounding box valida.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_surface:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_surface**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_surface>`

Restituisce ``true`` se questa bounding box ha una superfice o una lunghezza, ovvero almeno uno dei componenti di :ref:`size<class_AABB_property_size>` è maggiore di ``0``. Altrimenti, restituisce ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_volume:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_volume>`

Restituisce ``true`` se la lunghezza, l'altezza, e la profondità di questa bounding box sono tutti positivi. Vedi anche :ref:`get_volume()<class_AABB_method_get_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **intersection**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersection>`

Restituisce l'intersezione tra questa bounding box e ``with``. Se i box non si intersecano, restituisce un **AABB** vuoto. Se i box si intersecano al bordo, restituisce un **AABB** piatto senza volume (vedi :ref:`has_surface()<class_AABB_method_has_surface>` e :ref:`has_volume()<class_AABB_method_has_volume>`).


.. tabs::

 .. code-tab:: gdscript

    var box1 = AABB(Vector3(0, 0, 0), Vector3(5, 2, 8))
    var box2 = AABB(Vector3(2, 0, 2), Vector3(8, 4, 4))

    var intersection = box1.intersection(box2)
    print(intersection.position) # Stampa (2.0, 0.0, 2.0)
    print(intersection.size)     # Stampa (3.0, 2.0, 4.0)

 .. code-tab:: csharp

    var box1 = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 8));
    var box2 = new Aabb(new Vector3(2, 0, 2), new Vector3(8, 4, 4));

    var intersection = box1.Intersection(box2);
    GD.Print(intersection.Position); // Stampa (2, 0, 2)
    GD.Print(intersection.Size);     // Stampa (3, 2, 4)



\ **Nota:** Se hai solo bisogno di sapere se due bounding box sono intersecanti, utilizza :ref:`intersects()<class_AABB_method_intersects>`, invece.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersects>`

Restituisce ``true`` se questa bounding box si sovrappone con quella ``with``. I lati di entrambe le bounding box sono *sempre* esclusi.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_plane:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects_plane**\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_plane>`

Restituisce ``true`` se questa bounding box è su entrambi i lati del piano ``plane``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_ray>`

Restituisce il primo punto in cui questa bounding box e il raggio fornito si intersecano, come :ref:`Vector3<class_Vector3>`. Se non si verifica alcuna intersezione, restituisce ``null``.

Il raggio comincia da ``from``, guarda verso la direzione ``dir`` e si estende verso l'infinito.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_segment>`

Restituisce il primo punto in cui questa bounding box e il segmento fornito si intersecano, come :ref:`Vector3<class_Vector3>`. Se non si verifica alcuna intersezione, restituisce ``null``.

Il raggio comincia da ``from``, e finisce a ``to``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_is_equal_approx>`

Restituisce ``true`` se questa bounding box e ``aabb`` sono approssimativamente eguali, chiamando :ref:`Vector3.is_equal_approx()<class_Vector3_method_is_equal_approx>` su :ref:`position<class_AABB_property_position>` e :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_AABB_method_is_finite>`

Restituisce ``true`` se i valori di questa bounding box sono finiti, chiamando :ref:`Vector3.is_finite()<class_Vector3_method_is_finite>` su :ref:`position<class_AABB_property_position>` e :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_merge:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **merge**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_merge>`

Restituisce un **AABB** che racchiude sia questa bounding box sia ``with`` intorno ai bordi. Vedi anche :ref:`encloses()<class_AABB_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_AABB_operator_neq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_neq_AABB>`

Restituisce ``true`` se :ref:`position<class_AABB_property_position>` e :ref:`size<class_AABB_property_size>` di entrambe le bounding box non sono eguali.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>`, che è più affidabile.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_AABB_operator_mul_Transform3D>`

Trasforma (moltiplica) inversamente l'**AABB** dalla matrice di trasformazione :ref:`Transform3D<class_Transform3D>` fornita, presupponendo che la base di trasformazione sia ortonormale (ovvero rotazione/riflessione vanno bene, ma scala/distorsione no).

\ ``abb * Transform`` è equivalente a ``transform.inverse() * aabb``. Vedi :ref:`Transform3D.inverse()<class_Transform3D_method_inverse>`.

Per trasformare dall'inverso di una trasformazione affine (ad esempio con scala) ``transform.affine_inverse() * aabb`` può essere invece utilizzato. Vedi :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_eq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_eq_AABB>`

Restituisce ``true`` se sia :ref:`position<class_AABB_property_position>` sia :ref:`size<class_AABB_property_size>` delle bounding box sono esattamente eguali.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>`, che è più affidabile.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
