:github_url: hide

.. _class_Vector4i:

Vector4i
========

Un vettore 4D che utilizza coordinate intere.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una struttura a 4 elementi che può essere utilizzata per rappresentare coordinate di griglia 4D o qualsiasi altro insieme di 4 numeri interi.

Utilizza coordinate intere ed è quindi preferibile a :ref:`Vector4<class_Vector4>` quando è necessaria una precisione esatta. Nota che i valori sono limitati a 32 bit e, a differenza di :ref:`Vector4<class_Vector4>`, questo non può essere configurato con un'opzione di build del motore. Utilizza :ref:`int<class_int>` o :ref:`PackedInt64Array<class_PackedInt64Array>` se sono necessari valori a 64 bit.

\ **Nota:** In un contesto booleano, un Vector4i sarà valutato come ``false`` se è uguale a ``Vector4i(0, 0)``. Altrimenti, un Vector4i sarà sempre valutato come ``true``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`w<class_Vector4i_property_w>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector4i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector4i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`z<class_Vector4i_property_z>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ )                                                                                                             |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4<class_Vector4>`\ )                                                                       |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`abs<class_Vector4i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clamp<class_Vector4i_method_clamp>`\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clampi<class_Vector4i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector4i_method_distance_squared_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector4i_method_distance_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector4i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector4i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`max<class_Vector4i_method_max>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector4i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`maxi<class_Vector4i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`min<class_Vector4i_method_min>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector4i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`mini<class_Vector4i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`sign<class_Vector4i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snapped<class_Vector4i_method_snapped>`\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snappedi<class_Vector4i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector4i_operator_neq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator *<class_Vector4i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator +<class_Vector4i_operator_sum_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator -<class_Vector4i_operator_dif_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator /<class_Vector4i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector4i_operator_lt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector4i_operator_lte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector4i_operator_eq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector4i_operator_gt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector4i_operator_gte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector4i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary+<class_Vector4i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary-<class_Vector4i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Vector4i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector4i_Axis>`

.. _class_Vector4i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_X** = ``0``

Valore enumerato per l'asse X. Restituito da :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` e :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Y** = ``1``

Valore enumerato per l'asse Y. Restituito da :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` e :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Z** = ``2``

Valore enumerato per l'asse Z. Restituito da :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` e :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_W:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_W** = ``3``

Valore enumerato per l'asse W. Restituito da :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` e :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Vector4i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector4i(0, 0, 0, 0)`` :ref:`🔗<class_Vector4i_constant_ZERO>`

Il vettore zero, un vettore con tutti i suoi componenti impostati su ``0``.

.. _class_Vector4i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector4i(1, 1, 1, 1)`` :ref:`🔗<class_Vector4i_constant_ONE>`

Il vettore unitario, un vettore con tutti i suoi componenti impostati su ``1``.

.. _class_Vector4i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector4i(-2147483648, -2147483648, -2147483648, -2147483648)`` :ref:`🔗<class_Vector4i_constant_MIN>`

Il vettore minimo, un vettore con tutti i componenti uguali a ``INT32_MIN``. Può essere utilizzato come equivalente negativo di :ref:`Vector4.INF<class_Vector4_constant_INF>` per gli interi.

.. _class_Vector4i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector4i(2147483647, 2147483647, 2147483647, 2147483647)`` :ref:`🔗<class_Vector4i_constant_MAX>`

Il vettore massimo, un vettore con tutti i componenti uguali a ``INT32_MAX``. Può essere utilizzato come equivalente di :ref:`Vector4.INF<class_Vector4_constant_INF>` per gli interi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Vector4i_property_w:

.. rst-class:: classref-property

:ref:`int<class_int>` **w** = ``0`` :ref:`🔗<class_Vector4i_property_w>`

Il componente W del vettore. Accessibile anche tramite la posizione di indice ``[3]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector4i_property_x>`

Il componente X del vettore. Accessibile anche tramite la posizione di indice ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector4i_property_y>`

Il componente Y del vettore. Accessibile anche tramite la posizione di indice ``[1]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_z:

.. rst-class:: classref-property

:ref:`int<class_int>` **z** = ``0`` :ref:`🔗<class_Vector4i_property_z>`

Il componente Z del vettore. Accessibile anche tramite la posizione di indice ``[2]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Vector4i_constructor_Vector4i:

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ ) :ref:`🔗<class_Vector4i_constructor_Vector4i>`

Costruisce un **Vector4i** predefinito con tutti i componenti impostati su ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )

Costruisce un **Vector4i** come copia del **Vector4i** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4<class_Vector4>`\ )

Costruisce un nuovo **Vector4i** dal :ref:`Vector4<class_Vector4>` fornito, troncando le parti frazionarie dei componenti (arrotondando verso zero). Per un comportamento diverso, considera di passare il risultato di :ref:`Vector4.ceil()<class_Vector4_method_ceil>`, :ref:`Vector4.floor()<class_Vector4_method_floor>` o :ref:`Vector4.round()<class_Vector4_method_round>` a questo costruttore.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ )

Restituisce un **Vector4i** con i componenti forniti.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Vector4i_method_abs:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_abs>`

Restituisce un nuovo vettore con tutti i componenti in valori assoluti (ovvero positivi).

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clamp**\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_clamp>`

Restituisce un nuovo vettore con tutti i suoi componenti limitati tra i componenti di ``min`` e ``max``, eseguendo :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` su ciascun componente.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_clampi>`

Restituisce un nuovo vettore con tutti i suoi componenti limitati tra ``min`` e ``max``, eseguendo :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` su ciascun componente.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_squared_to>`

Restituisce la `distanza euclidea <https://it.wikipedia.org/wiki/Distanza_euclidea>`__ al quadrato tra questo vettore e ``to``.

Questo metodo è più veloce di :ref:`distance_to()<class_Vector4i_method_distance_to>`, quindi è preferibile se è necessario confrontare vettori o se è necessaria la distanza al quadrato per qualche formula.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_to>`

Restituisce la `distanza euclidea <https://it.wikipedia.org/wiki/Distanza_euclidea>`__ tra questo vettore e ``to``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length>`

Restituisce la lunghezza (magnitudine) di questo vettore.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length_squared>`

Restituisce la lunghezza (magnitudine) al quadrato di questo vettore.

Questo metodo è più veloce di :ref:`length()<class_Vector4i_method_length>`, quindi è preferibile se è necessario confrontare vettori o se è necessaria la distanza al quadrato per una formula.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **max**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_max>`

Restituisce il massimo, componente per componente, di questo vettore e ``with``, equivalente a ``Vector4i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z), maxi(w, with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_max_axis_index>`

Restituisce l'asse del valore più alto del vettore. Vedi le costanti ``AXIS_*``. Se tutti i componenti sono uguali, questo metodo restituisce :ref:`AXIS_X<class_Vector4i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_maxi>`

Restituisce il massimo, componente per componente, di questo vettore e ``with``, equivalente a ``Vector4i(maxi(x, with), maxi(y, with), maxi(z, with), maxi(w, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **min**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_min>`

Restituisce il minimo, componente per componente, di questo vettore e ``with``, equivalente a ``Vector4i(mini(x, with.x), mini(y, with.y), mini(z, with.z), mini(w, with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_min_axis_index>`

Restituisce l'asse del valore più basso del vettore. Vedi le costanti ``AXIS_*``. Se tutti i componenti sono uguali, questo metodo restituisce :ref:`AXIS_W<class_Vector4i_constant_AXIS_W>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_mini:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_mini>`

Restituisce il minimo, componente per componente, di questo vettore e ``with``, equivalente a ``Vector4i(mini(x, with), mini(y, with), mini(z, with), mini(w, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_sign:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_sign>`

Restituisce un nuovo vettore con ogni componente impostato su ``1`` se è positivo, ``-1`` se è negativo e ``0`` se è zero. Il risultato è identico alla chiamata di :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` su ogni componente.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snapped**\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_snapped>`

Restituisce un nuovo vettore con ogni componente arrotondato al multiplo più vicino del componente corrispondente in ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_snappedi>`

Restituisce un nuovo vettore con ogni componente arrotondato al multiplo più vicino di ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Vector4i_operator_neq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_neq_Vector4i>`

Restituisce ``true`` se i vettori non sono uguali.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mod_Vector4i>`

Ottiene il resto di ogni componente di **Vector4i** con i componenti del **Vector4i** fornito. Questa operazione usa la divisione troncata, che spesso non è desiderata in quanto non funziona bene con i numeri negativi. Considera di usare :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` se vuoi gestire i numeri negativi.

::

    print(Vector4i(10, -20, 30, -40) % Vector4i(7, 8, 9, 10)) # Stampa (3, -4, 3, 0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mod_int>`

Ottiene il resto di ogni componente di **Vector4i** con l':ref:`int<class_int>` fornito. Questa operazione usa la divisione troncata, che spesso non è desiderata in quanto non funziona bene con i numeri negativi. Considera di usare :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` se vuoi gestire i numeri negativi.

::

    print(Vector4i(10, -20, 30, -40) % 7) # Stampa (3, -6, 2, -5)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mul_Vector4i>`

Moltiplica ogni componente del **Vector4i** per i componenti del **Vector4i** fornito.

::

    print(Vector4i(10, 20, 30, 40) * Vector4i(3, 4, 5, 6)) # Stampa (30, 80, 150, 240)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_mul_float>`

Moltiplica ogni componente del **Vector4i** per il :ref:`float<class_float>` fornito.

Restituisce un Vector4 a causa di operazioni in virgola mobile.

::

    print(Vector4i(10, 20, 30, 40) * 2) # Stampa (20.0, 40.0, 60.0, 80.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mul_int>`

Moltiplica ogni componente del **Vector4i** per l':ref:`int<class_int>` fornito.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_sum_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator +**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_sum_Vector4i>`

Aggiunge ogni componente del **Vector4i** con i componenti del **Vector4i** fornito.

::

    print(Vector4i(10, 20, 30, 40) + Vector4i(3, 4, 5, 6)) # Stampa (13, 24, 35, 46)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_dif_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator -**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_dif_Vector4i>`

Sottrae ogni componente del **Vector4i** dai componenti del **Vector4i** fornito.

::

    print(Vector4i(10, 20, 30, 40) - Vector4i(3, 4, 5, 6)) # Stampa (7, 16, 25, 34)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_div_Vector4i>`

Divide ogni componente del **Vector4i** per i componenti del **Vector4i** fornito.

::

    print(Vector4i(10, 20, 30, 40) / Vector4i(2, 5, 3, 4)) # Stampa (5, 4, 10, 10)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_div_float>`

Divide ogni componente del **Vector4i** per il :ref:`float<class_float>` fornito.

Restituisce un valore di tipo Vector4 a causa di operazioni in virgola mobile.

::

    print(Vector4i(1, 2, 3, 4) / 2 # Stampa (0.4, 0.8, 1.2, 1.6)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_div_int>`

Divide ogni componente del **Vector4i** per l':ref:`int<class_int>` fornito.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lt_Vector4i>`

Confronta due vettori **Vector4i** verificando prima se il valore X del vettore di sinistra è minore del valore X del vettore ``right``. Se i valori X sono esattamente uguali, ripete questa verifica con i valori Y dei due vettori, i valori Z dei due vettori e poi con i valori W. Questo operatore è utile per ordinare i vettori.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lte_Vector4i>`

Confronta due vettori **Vector4i** verificando prima se il valore X del vettore di sinistra è minore o uguale al valore X del vettore ``right``. Se i valori X sono esattamente uguali, ripete questa verifica con i valori Y dei due vettori, i valori Z dei due vettori e poi con i valori W. Questo operatore è utile per ordinare i vettori.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_eq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_eq_Vector4i>`

Restituisce ``true`` se i vettori sono esattamente uguali.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gt_Vector4i>`

Confronta due vettori **Vector4i** verificando prima se il valore X del vettore di sinistra è maggiore del valore X del vettore ``right``. Se i valori X sono esattamente uguali, ripete questa verifica con i valori Y dei due vettori, i valori Z dei due vettori e poi con i valori W. Questo operatore è utile per ordinare i vettori.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gte_Vector4i>`

Confronta due vettori **Vector4i** verificando prima se il valore X del vettore di sinistra è maggiore o uguale al valore X del vettore ``right``. Se i valori X sono esattamente uguali, ripete questa verifica con i valori Y dei due vettori, i valori Z dei due vettori e poi con i valori W. Questo operatore è utile per ordinare i vettori.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_idx_int>`

Accede ai componenti del vettore attraverso il loro indice (``index``). ``v[0]`` è equivalente a ``v.x``, ``v[1]`` è equivalente a ``v.y``, ``v[2]`` è equivalente a ``v.z``, ``v[3]`` è equivalente a ``v.w``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector4i_operator_unplus>`

Restituisce lo stesso valore come se ``+`` non ci fosse. Il ``+`` unario non fa nulla, ma a volte può rendere il tuo codice più leggibile.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector4i_operator_unminus>`

Restituisce il valore negativo del **Vector4i**. Equivale a scrivere ``Vector4(-v.x, -v.y, -v.z, -v.w)``. Questa operazione inverte la direzione del vettore mantenendo la stessa magnitudine.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
