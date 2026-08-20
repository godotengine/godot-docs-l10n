:github_url: hide

.. _class_Quaternion:

Quaternion
==========

Un quaternione unitario utilizzato per rappresentare le rotazioni in 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il tipo di :ref:`Variant<class_Variant>` integrato **Quaternion** è una struttura dati 4D che rappresenta la rotazione sotto forma di un `quaternione di convenzione di Hamilton <https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation>`__. Rispetto al tipo :ref:`Basis<class_Basis>` che può memorizzare sia la rotazione sia la scala, i quaternioni possono *solo* memorizzare la rotazione.

Un **Quaternion** è composto da 4 componenti in virgola mobile: :ref:`w<class_Quaternion_property_w>`, :ref:`x<class_Quaternion_property_x>`, :ref:`y<class_Quaternion_property_y>` e :ref:`z<class_Quaternion_property_z>`. Questi componenti sono molto compatti in memoria e per questo motivo alcune operazioni sono più efficienti e hanno meno probabilità di causare errori in virgola mobile. Metodi come :ref:`get_angle()<class_Quaternion_method_get_angle>`, :ref:`get_axis()<class_Quaternion_method_get_axis>` e :ref:`slerp()<class_Quaternion_method_slerp>` sono più veloci delle loro controparti in :ref:`Basis<class_Basis>`.

Per un'ottima introduzione ai quaternioni, guarda `questo video di 3Blue1Brown <https://www.youtube.com/watch?v=d4EgbgTm0Bg>`__. Non hai bisogno di conoscere la matematica dietro i quaternioni, poiché Godot fornisce diversi metodi di supporto che la gestiscono per te. Questi includono :ref:`slerp()<class_Quaternion_method_slerp>` e :ref:`spherical_cubic_interpolate()<class_Quaternion_method_spherical_cubic_interpolate>`, così come l'operatore ``*``.

\ **Nota:** I quaternioni devono essere normalizzati prima di essere usati per la rotazione (vedi :ref:`normalized()<class_Quaternion_method_normalized>`).

\ **Nota:** Similmente a :ref:`Vector2<class_Vector2>` e :ref:`Vector3<class_Vector3>`, i componenti di un quaternione usano una precisione a 32 bit per impostazione predefinita, a differenza di :ref:`float<class_float>` che è sempre a 64 bit. Se è necessaria una doppia precisione, compila il motore con l'opzione ``precision=double``.

\ **Nota:** In un contesto booleano, un quaternione verrà valutato come ``false`` se è uguale a :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`. Altrimenti, un quaternione verrà sempre valutato come ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Video di 3Blue1Brown sui quaternioni <https://www.youtube.com/watch?v=d4EgbgTm0Bg>`__

- `Visualizzazione dei quaternioni online <https://quaternions.online/>`__

- `Utilizzare le trasformazioni 3D <../tutorials/3d/using_transforms.html#interpolating-with-quaternions>`__

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

- `Visualizzazione avanzata dei quaternioni <https://iwatake2222.github.io/rotation_master/rotation_master.html>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`w<class_Quaternion_property_w>` | ``1.0`` |
   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`x<class_Quaternion_property_x>` | ``0.0`` |
   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`y<class_Quaternion_property_y>` | ``0.0`` |
   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`z<class_Quaternion_property_z>` | ``0.0`` |
   +---------------------------+---------------------------------------+---------+

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ )                                                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )                                                                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ arc_from\: :ref:`Vector3<class_Vector3>`, arc_to\: :ref:`Vector3<class_Vector3>`\ )                                           |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ from\: :ref:`Basis<class_Basis>`\ )                                                                                           |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`, w\: :ref:`float<class_float>`\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`angle_to<class_Quaternion_method_angle_to>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`dot<class_Quaternion_method_dot>`\ (\ with\: :ref:`Quaternion<class_Quaternion>`\ ) |const|                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`exp<class_Quaternion_method_exp>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`from_euler<class_Quaternion_method_from_euler>`\ (\ euler\: :ref:`Vector3<class_Vector3>`\ ) |static|                                                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_angle<class_Quaternion_method_get_angle>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_axis<class_Quaternion_method_get_axis>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_euler<class_Quaternion_method_get_euler>`\ (\ order\: :ref:`int<class_int>` = 2\ ) |const|                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`inverse<class_Quaternion_method_inverse>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_equal_approx<class_Quaternion_method_is_equal_approx>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const|                                                                                                                                                                                                                                                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_finite<class_Quaternion_method_is_finite>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_normalized<class_Quaternion_method_is_normalized>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`length<class_Quaternion_method_length>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`length_squared<class_Quaternion_method_length_squared>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`log<class_Quaternion_method_log>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`normalized<class_Quaternion_method_normalized>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`slerp<class_Quaternion_method_slerp>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`slerpni<class_Quaternion_method_slerpni>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`spherical_cubic_interpolate<class_Quaternion_method_spherical_cubic_interpolate>`\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`spherical_cubic_interpolate_in_time<class_Quaternion_method_spherical_cubic_interpolate_in_time>`\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`, b_t\: :ref:`float<class_float>`, pre_a_t\: :ref:`float<class_float>`, post_b_t\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_Quaternion_operator_neq_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_Quaternion_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_Quaternion_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_Quaternion_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_Quaternion_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator +<class_Quaternion_operator_sum_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator -<class_Quaternion_operator_dif_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator /<class_Quaternion_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator /<class_Quaternion_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_Quaternion_operator_eq_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator []<class_Quaternion_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator unary+<class_Quaternion_operator_unplus>`\ (\ )                                                  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator unary-<class_Quaternion_operator_unminus>`\ (\ )                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Quaternion_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_Quaternion_constant_IDENTITY>`

Il quaternione di identità, che rappresenta nessuna rotazione. Ha la stessa rotazione di :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`.

Se un :ref:`Vector3<class_Vector3>` è ruotato (moltiplicato) da questo quaternione, esso non cambia.

\ **Nota:** In GDScript, questa costante è identica alla creazione di un :ref:`Quaternion<class_Quaternion_constructor_Quaternion>` senza parametri. Questa costante può essere usata per rendere il codice più chiaro e per coerenza con C#.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Quaternion_property_w:

.. rst-class:: classref-property

:ref:`float<class_float>` **w** = ``1.0`` :ref:`🔗<class_Quaternion_property_w>`

Componente W del quaternione. Questa è la parte "reale".

\ **Nota:** I componenti di un quaternione solitamente non dovrebbero essere manipolati direttamente.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_x:

.. rst-class:: classref-property

:ref:`float<class_float>` **x** = ``0.0`` :ref:`🔗<class_Quaternion_property_x>`

Componente X del quaternione. Questo è il valore lungo l'asse "immaginario" ``i``.

\ **Nota:** I componenti di un quaternione solitamente non dovrebbero essere manipolati direttamente.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_y:

.. rst-class:: classref-property

:ref:`float<class_float>` **y** = ``0.0`` :ref:`🔗<class_Quaternion_property_y>`

Componente Y del quaternione. Questo è il valore lungo l'asse "immaginario" ``j``.

\ **Nota:** I componenti di un quaternione solitamente non dovrebbero essere manipolati direttamente.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_z:

.. rst-class:: classref-property

:ref:`float<class_float>` **z** = ``0.0`` :ref:`🔗<class_Quaternion_property_z>`

Componente Z del quaternione. Questo è il valore lungo l'asse "immaginario" ``k``.

\ **Nota:** I componenti di un quaternione solitamente non dovrebbero essere manipolati direttamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Quaternion_constructor_Quaternion:

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ ) :ref:`🔗<class_Quaternion_constructor_Quaternion>`

Costruisce un **Quaternion** identico a :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`.

\ **Nota:** In C#, costruisce un **Quaternion** con tutti i suoi componenti impostati su ``0.0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

Costruisce un **Quaternion** come copia del **Quaternion** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ arc_from\: :ref:`Vector3<class_Vector3>`, arc_to\: :ref:`Vector3<class_Vector3>`\ )

Costruisce un **Quaternion** che rappresenta l'arco più corto tra ``arc_from`` e ``arc_to``. Si possono immaginare come due punti che intersecano la superficie di una sfera, con un raggio di ``1.0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

Costruisce un **Quaternion** che rappresenta la rotazione attorno all'asse ``axis`` per l'angolo ``angle``, in radianti. L'asse deve essere un vettore normalizzato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ from\: :ref:`Basis<class_Basis>`\ )

Costruisce un **Quaternion** dalla :ref:`Basis<class_Basis>` di rotazione fornita.

Questo costruttore è più veloce di :ref:`Basis.get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>`, ma la base fornita deve essere *ortonormalizzata* (vedi :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`). Altrimenti, il costruttore fallisce e restituisce :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`, w\: :ref:`float<class_float>`\ )

Costruisce un **Quaternion** definito dai valori forniti.

\ **Nota:** Solo i quaternioni normalizzati rappresentano la rotazione; se questi valori non sono normalizzati, il nuovo **Quaternion** non sarà una rotazione valida.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Quaternion_method_angle_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **angle_to**\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_angle_to>`

Restituisce l'angolo tra questo quaternione e ``to``. Questa è l'ampiezza dell'angolo di cui dovresti ruotare per passare dall'uno all'altro.

\ **Nota:** L'ampiezza dell'errore in virgola mobile per questo metodo è anormalmente alta, quindi metodi come ``is_zero_approx`` non funzioneranno in modo affidabile.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_dot:

.. rst-class:: classref-method

:ref:`float<class_float>` **dot**\ (\ with\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_dot>`

Restituisce il prodotto scalare tra questo quaternione e ``with``.

Ciò equivale a ``(quat.x * with.x) + (quat.y * with.y) + (quat.z * with.z) + (quat.w * with.w)``.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_exp:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **exp**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_exp>`

Restituisce l'esponenziale di questo quaternione. L'asse di rotazione del risultato è l'asse di rotazione normalizzato di questo quaternione, l'angolo del risultato è la lunghezza della parte vettoriale di questo quaternione.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_from_euler:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Quaternion_method_from_euler>`

Costruisce un nuovo **Quaternion** dal :ref:`Vector3<class_Vector3>` fornito di `angoli di Eulero <https://it.wikipedia.org/wiki/Angoli_di_Eulero>`__, in radianti. In Godot, gli angoli di Eulero utilizzano sempre l'ordine intrinseco. Questo metodo usa sempre la convenzione intrinseca YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`).

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_get_angle>`

Restituisce l'angolo di rotazione rappresentato da questo quaternione.

\ **Nota:** Il quaternione deve essere normalizzato.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_axis**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_get_axis>`

Restituisce l'asse di rotazione della rotazione rappresentata da questo quaternione.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Quaternion_method_get_euler>`

Restituisce la rotazione di questo quaternione sotto forma di un :ref:`Vector3<class_Vector3>` di `angoli di Eulero <https://it.wikipedia.org/wiki/Angoli_di_Eulero>`__, in radianti.

L'ordine di ogni rotazione consecutiva si può cambiare con ``order`` (vedi :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` costanti). In Godot, gli angoli di Eulero utilizzano sempre l'ordine intrinseco. Come predefinito, è usata la convenzione YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): poiché stiamo scomponendo, viene calcolato prima l'asse Z locale (rollio), poi l'asse X locale (beccheggio) e infine l'asse Y locale (imbardata). Quando si utilizza il metodo opposto :ref:`from_euler()<class_Quaternion_method_from_euler>` per comporre una rotazione, questo ordine è invertito.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_inverse:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **inverse**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_inverse>`

Restituisce la versione inversa di questo quaternione, invertendo il segno di ogni componente eccetto :ref:`w<class_Quaternion_property_w>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_is_equal_approx>`

Restituisce ``true`` se questo quaternione e ``to`` sono approssimativamente uguali, chiamando :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` su ogni componente.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_is_finite>`

Restituisce ``true`` se questo quaternione è finito, chiamando :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` su ogni componente.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_normalized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_normalized**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_is_normalized>`

Restituisce ``true`` se questo quaternione è normalizzato. Vedi anche :ref:`normalized()<class_Quaternion_method_normalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_length>`

Restituisce la lunghezza di questo quaternione, detta anche magnitudine.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_length_squared:

.. rst-class:: classref-method

:ref:`float<class_float>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_length_squared>`

Restituisce la lunghezza di questo quaternione, al quadrato.

\ **Nota:** Questo metodo è più veloce di :ref:`length()<class_Quaternion_method_length>`, quindi è preferibile se si desidera solo confrontare le lunghezze dei quaternioni.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_log:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **log**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_log>`

Restituisce il logaritmo di questo quaternione. Moltiplica l'asse di rotazione di questo quaternione per il suo angolo di rotazione e memorizza il risultato nella parte vettoriale del quaternione restituito (:ref:`x<class_Quaternion_property_x>`, :ref:`y<class_Quaternion_property_y>` e :ref:`z<class_Quaternion_property_z>`). La parte reale del quaternione restituito (:ref:`w<class_Quaternion_property_w>`) è sempre ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_normalized:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **normalized**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_normalized>`

Restituisce una copia di questo quaternione, normalizzato affinché la sua lunghezza sia ``1.0``. Vedi anche :ref:`is_normalized()<class_Quaternion_method_is_normalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_slerp:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **slerp**\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_slerp>`

Esegue un'interpolazione sferico-lineare con il quaternione ``to``, specificato un peso ``weight`` e restituisce il risultato. Sia questo quaternione che ``to`` devono essere normalizzati.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_slerpni:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **slerpni**\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_slerpni>`

Esegue un'interpolazione sferico-lineare con il quaternione ``to``, specificato un peso ``weight`` e restituisce il risultato. A differenza di :ref:`slerp()<class_Quaternion_method_slerp>`, questo metodo non controlla se il percorso di rotazione è inferiore a 90 gradi. Sia questo quaternione che ``to`` devono essere normalizzati.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_spherical_cubic_interpolate:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **spherical_cubic_interpolate**\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_spherical_cubic_interpolate>`

Esegue un'interpolazione cubica sferica tra quaternioni ``pre_a``, questo vettore, ``b`` e ``post_b``, per la quantità specificata da ``weight``.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_spherical_cubic_interpolate_in_time:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **spherical_cubic_interpolate_in_time**\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`, b_t\: :ref:`float<class_float>`, pre_a_t\: :ref:`float<class_float>`, post_b_t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_spherical_cubic_interpolate_in_time>`

Esegue un'interpolazione cubica sferica tra quaternioni ``pre_a``, questo vettore, ``b`` e ``post_b``, per la quantità specificata da ``weight``.

Può eseguire un'interpolazione più fluida rispetto a :ref:`spherical_cubic_interpolate()<class_Quaternion_method_spherical_cubic_interpolate>` in base ai valori temporali.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Quaternion_operator_neq_Quaternion:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_neq_Quaternion>`

Restituisce ``true`` se i componenti di entrambi i quaternioni non sono esattamente uguali.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Quaternion_method_is_equal_approx>`, che è più affidabile.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_mul_Quaternion>`

Compone (moltiplica) due quaternioni. Questo ruota il quaternione ``right`` (il figlio) di questo quaternione (il genitore).

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Quaternion_operator_mul_Vector3>`

Ruota (moltiplica) il vettore ``right`` per questo quaternione, restituendo un :ref:`Vector3<class_Vector3>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Quaternion_operator_mul_float>`

Moltiplica ogni componente del **Quaternion** per il valore :ref:`float<class_float>` destro.

Questa operazione non è significativa di per sé, ma può essere utilizzata come parte di un'espressione più ampia.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_mul_int>`

Moltiplica ogni componente del **Quaternion** per il valore :ref:`int<class_int>` destro.

Questa operazione non è significativa di per sé, ma può essere utilizzata come parte di un'espressione più ampia.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_sum_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator +**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_sum_Quaternion>`

Aggiunge ogni componente del **Quaternion** sinistro al **Quaternion** destro.

Questa operazione non è significativa di per sé, ma può essere utilizzata come parte di un'espressione più ampia, come l'approssimazione di una rotazione intermedia tra due rotazioni vicine.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_dif_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator -**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_dif_Quaternion>`

Sottrae ogni componente del **Quaternion** sinistro dal **Quaternion** destro.

Questa operazione non è significativa di per sé, ma può essere utilizzata come parte di un'espressione più ampia.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_div_float:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Quaternion_operator_div_float>`

Moltiplica ogni componente del **Quaternion** per il valore :ref:`float<class_float>` destro.

Questa operazione non è significativa di per sé, ma può essere utilizzata come parte di un'espressione più ampia.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_div_int:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_div_int>`

Moltiplica ogni componente del **Quaternion** per il valore :ref:`float<class_float>` destro.

Questa operazione non è significativa di per sé, ma può essere utilizzata come parte di un'espressione più ampia.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_eq_Quaternion:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_eq_Quaternion>`

Restituisce ``true`` se i componenti di entrambi i quaternioni sono esattamente uguali.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Quaternion_method_is_equal_approx>`, che è più affidabile.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_idx_int>`

Accede a ogni componente di questo quaternione tramite il suo indice.

L'indice ``0`` è lo stesso di :ref:`x<class_Quaternion_property_x>`, l'indice ``1`` è lo stesso di :ref:`y<class_Quaternion_property_y>`, l'indice ``2`` è lo stesso di :ref:`z<class_Quaternion_property_z>` e l'indice ``3`` è lo stesso di :ref:`w<class_Quaternion_property_w>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_unplus:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator unary+**\ (\ ) :ref:`🔗<class_Quaternion_operator_unplus>`

Restituisce lo stesso valore come se ``+`` non ci fosse. Il ``+`` unario non fa nulla, ma a volte può rendere il tuo codice più leggibile.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_unminus:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator unary-**\ (\ ) :ref:`🔗<class_Quaternion_operator_unminus>`

Restituisce il valore negativo del **Quaternion**. Ciò equivale a moltiplicare tutti i componenti per ``-1``. Questa operazione genera un quaternione che rappresenta la stessa rotazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
