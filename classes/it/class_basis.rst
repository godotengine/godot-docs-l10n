:github_url: hide

.. _class_Basis:

Basis
=====

Una matrice 3×3 per rappresentare la rotazione e la scala 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il tipo di :ref:`Variant<class_Variant>` integrato **Basis** è una `matrice <https://it.wikipedia.org/wiki/Matrice>`__ 3×3 utilizzata per rappresentare rotazione, scala e deformazione. Viene spesso utilizzato all'interno di un :ref:`Transform3D<class_Transform3D>`.

Una **Basis** è composta da 3 vettori di assi, ciascuno dei quali rappresenta una colonna della matrice: :ref:`x<class_Basis_property_x>`, :ref:`y<class_Basis_property_y>` e :ref:`z<class_Basis_property_z>`. La lunghezza di ciascun asse (:ref:`Vector3.length()<class_Vector3_method_length>`) influenza la scala della base, mentre la direzione di tutti gli assi influenza la rotazione. Di solito questi assi sono perpendicolari tra loro. Tuttavia, quando si ruota un asse individualmente, la base diventa inclinata. L'applicazione di una base inclinata a un modello 3D farà apparire il modello distorto.

Una **Basis** è:

- **Ortogonale** se i suoi assi sono perpendicolari tra loro. 

- **Normalizzata** se la lunghezza di ogni asse è ``1.0``.

- **Uniforme** se tutti gli assi condividono la stessa lunghezza (vedi :ref:`get_scale()<class_Basis_method_get_scale>`).

- **Ortonormale** se è sia ortogonale che normalizzata, il che le consente di rappresentare solo rotazioni. (vedi :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

- **Conforme** se è sia ortogonale sia uniforme, il che garantisce che non sia distorta.

Per un'introduzione generale, consulta il tutorial :doc:`Matrici e trasformazioni <../tutorials/math/matrices_and_transforms>`.

\ **Nota:** Godot utilizza un `sistema di coordinate destrorso <https://it.wikipedia.org/wiki/Regola_della_mano_destra>`__, che è uno standard comune. Per le direzioni, la convenzione per i tipi integrati come :ref:`Camera3D<class_Camera3D>` prevede che -Z punti in avanti (+X è destra, +Y è su e +Z è indietro). Altri oggetti possono utilizzare convenzioni di direzione diverse. Per ulteriori informazioni, consulta il tutorial `Convenzioni sulla direzione delle risorse 3D <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__.

\ **Nota:** Le matrici di base sono esposte come ordine di `colonna prima <https://www.mindcontrol.org/~hplus/graphics/matrix-layout.html>`__, che è lo stesso di OpenGL. Tuttavia, sono memorizzati internamente in ordine di riga prima, che è lo stesso di DirectX.

\ **Nota:** In un contesto booleano, una base sarà valutata come ``false`` se è uguale a :ref:`IDENTITY<class_Basis_constant_IDENTITY>`. Altrimenti, una base sarà sempre valutata come ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione di matematica <../tutorials/math/index>`

- :doc:`Le matrici e le trasformazioni <../tutorials/math/matrices_and_transforms>`

- :doc:`Utilizzare le trasformazioni 3D <../tutorials/3d/using_transforms>`

- `Demo di trasformazione di matrice <https://godotengine.org/asset-library/asset/2787>`__

- `Demo di gioco piattaforme 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

- `Demo di gioco 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`x<class_Basis_property_x>` | ``Vector3(1, 0, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`y<class_Basis_property_y>` | ``Vector3(0, 1, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`z<class_Basis_property_z>` | ``Vector3(0, 0, 1)`` |
   +-------------------------------+----------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ )                                                                                                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Basis<class_Basis>`\ )                                                                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )                                                                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Basis_method_determinant>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_euler<class_Basis_method_from_euler>`\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static|                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_scale<class_Basis_method_from_scale>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_euler<class_Basis_method_get_euler>`\ (\ order\: :ref:`int<class_int>` = 2\ ) |const|                                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`get_rotation_quaternion<class_Basis_method_get_rotation_quaternion>`\ (\ ) |const|                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_scale<class_Basis_method_get_scale>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`inverse<class_Basis_method_inverse>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_conformal<class_Basis_method_is_conformal>`\ (\ ) |const|                                                                                                                                                |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_equal_approx<class_Basis_method_is_equal_approx>`\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const|                                                                                                           |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_finite<class_Basis_method_is_finite>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_orthonormal<class_Basis_method_is_orthonormal>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`looking_at<class_Basis_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`orthonormalized<class_Basis_method_orthonormalized>`\ (\ ) |const|                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`rotated<class_Basis_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled<class_Basis_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled_local<class_Basis_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`slerp<class_Basis_method_slerp>`\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotx<class_Basis_method_tdotx>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdoty<class_Basis_method_tdoty>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotz<class_Basis_method_tdotz>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`transposed<class_Basis_method_transposed>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Basis_operator_neq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )      |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator *<class_Basis_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Basis_operator_eq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator []<class_Basis_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )            |
   +-------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Basis_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_IDENTITY>`

La **Basis** di identità. Questa è una base senza rotazione, senza inclinazione e con una scala pari a :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Ciò significa anche che:

- La :ref:`x<class_Basis_property_x>` punta a destra (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- La :ref:`y<class_Basis_property_y>` punta in alto (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- La :ref:`z<class_Basis_property_z>` punta indietro (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var basis = Basis.IDENTITY
    print("| X | Y | Z")
    print("| %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x])
    print("| %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y])
    print("| %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z])
    # Stampa:
    # | X | Y | Z
    # | 1 | 0 | 0
    # | 0 | 1 | 0
    # | 0 | 0 | 1

Se un :ref:`Vector3<class_Vector3>` o un altra **Basis** viene trasformata (moltiplicata) per questa costante, non si verifica alcuna trasformazione.

\ **Nota:** In GDScript, questa costante è identica alla creazione di una :ref:`Basis<class_Basis_constructor_Basis>` senza parametri. Questa costante può essere usata per rendere il codice più chiaro e per coerenza con C#.

.. _class_Basis_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_X>`

Quando qualsiasi base è moltiplicata per :ref:`FLIP_X<class_Basis_constant_FLIP_X>`, nega tutti i componenti dell'asse :ref:`x<class_Basis_property_x>` (la colonna X).

Quando :ref:`FLIP_X<class_Basis_constant_FLIP_X>` è moltiplicata per qualsiasi base, nega il componente :ref:`Vector3.x<class_Vector3_property_x>` di tutti gli assi (la riga X).

.. _class_Basis_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_Y>`

Quando qualsiasi base è moltiplicata per :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>`, nega tutti i componenti dell'asse :ref:`y<class_Basis_property_y>` (la colonna Y).

Quando :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>` è moltiplicata per qualsiasi base, nega il componente :ref:`Vector3.y<class_Vector3_property_y>` di tutti gli assi (la riga Y).

.. _class_Basis_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)`` :ref:`🔗<class_Basis_constant_FLIP_Z>`

Quando qualsiasi base è moltiplicata per :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>`, nega tutti i componenti dell'asse :ref:`z<class_Basis_property_z>` (la colonna Z).

Quando :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>` è moltiplicata per qualsiasi base, nega il componente :ref:`Vector3.z<class_Vector3_property_z>` di tutti gli assi (la riga Z).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Basis_property_x:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **x** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_Basis_property_x>`

L'asse X della base e la colonna ``0`` della matrice.

Sulla base di identità, questo vettore punta a destra (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_y:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **y** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_Basis_property_y>`

L'asse Y della base e la colonna ``1`` della matrice.

Sulla base di identità, questo vettore punta in alto (:ref:`Vector3.UP<class_Vector3_constant_UP>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_z:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **z** = ``Vector3(0, 0, 1)`` :ref:`🔗<class_Basis_property_z>`

L'asse Z della base e la colonna ``2`` della matrice.

Sulla base di identità, questo vettore punta indietro (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Basis_constructor_Basis:

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ ) :ref:`🔗<class_Basis_constructor_Basis>`

Costruisce una **Basis** identica a :ref:`IDENTITY<class_Basis_constant_IDENTITY>`.

\ **Nota:** In C#, costruisce una **Basis** con tutti i suoi componenti impostati su :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Basis<class_Basis>`\ )

Costruisce un **Basis** come copia del **Basis** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

Costruisce un **Basis** che rappresenta solo la rotazione, ruotato intorno all'asse ``axis`` per l'angolo ``angle``, in radianti. L'asse deve essere un vettore normalizzato.

\ **Nota:** Questo è lo stesso di usare :ref:`rotated()<class_Basis_method_rotated>` sulla base :ref:`IDENTITY<class_Basis_constant_IDENTITY>`. Con più di un angolo considera usare :ref:`from_euler()<class_Basis_method_from_euler>`, invece.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

Costruisce un **Basis** che rappresenta solo la rotazione dal :ref:`Quaternion<class_Quaternion>` specificato.

\ **Nota:** I quaternioni memorizzano *solo* la rotazione, non la scala. Per questo motivo, le conversioni da **Basis** a :ref:`Quaternion<class_Quaternion>` non possono essere sempre invertite.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ )

Costruisce un **Basis** da 3 vettori assi. Queste sono le colonne della matrice base.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Basis_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Basis_method_determinant>`

Restituisce il `determinante <https://it.wikipedia.org/wiki/Determinante_(algebra)>`__ della matrice di questa base. Per la matematica avanzata, questo numero può servire per determinare alcuni attributi:

- Se il determinante è esattamente ``0.0``, la base non è invertibile (vedi :ref:`inverse()<class_Basis_method_inverse>`).

- Se il determinante è un numero negativo, la base rappresenta una scala negativa.

\ **Nota:** Se la scala della base è la stessa per ogni asse, il suo determinante è sempre quella scala elevata alla potenza di 3.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_euler:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static| :ref:`🔗<class_Basis_method_from_euler>`

Costruisce una nuova **Basis** che rappresenta solo la rotazione dal :ref:`Vector3<class_Vector3>` fornito di `angoli di Eulero <https://it.wikipedia.org/wiki/Angoli_di_Eulero>`__, in radianti.

- Il :ref:`Vector3.x<class_Vector3_property_x>` dovrebbe contenere l'angolo attorno all'asse :ref:`x<class_Basis_property_x>` (beccheggio).

- Il :ref:`Vector3.y<class_Vector3_property_y>` dovrebbe contenere l'angolo attorno all'asse :ref:`y<class_Basis_property_y>` (imbardata).

- Il :ref:`Vector3.z<class_Vector3_property_z>` dovrebbe contenere l'angolo attorno all'asse :ref:`z<class_Basis_property_z>` (rollio).


.. tabs::

 .. code-tab:: gdscript

    # Crea una base il cui asse z punta verso il basso.
    var my_basis = Basis.from_euler(Vector3(TAU / 4, 0, 0))

    print(my_basis.z) # Stampa (0.0, -1.0, 0.0).

 .. code-tab:: csharp

    // Crea una base il cui asse z punta verso il basso.
    var myBasis = Basis.FromEuler(new Vector3(Mathf.Tau / 4.0f, 0.0f, 0.0f));

    GD.Print(myBasis.Z); // Stampa (0, -1, 0).



L'ordine di ogni rotazione consecutiva si può cambiare con ``order`` (vedi le costanti di :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). In Godot, gli angoli di Eulero utilizzano sempre l'ordine intrinseco. Come predefinito, è usata la convenzione YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): la base ruota prima attorno all'asse Y (imbardata), poi X (beccheggio) e infine Z (rollio). Quando si utilizza il metodo opposto :ref:`get_euler()<class_Basis_method_get_euler>` per scomporre una rotazione, questo ordine è invertito.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_scale:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Basis_method_from_scale>`

Costruisce una nuova **Basis** che rappresenta solo la scala, senza rotazione o inclinazione, dal vettore ``scale`` specificato.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.from_scale(Vector3(2, 4, 8))

    print(my_basis.x) # Stampa (2.0, 0.0, 0.0).
    print(my_basis.y) # Stampa (0.0, 4.0, 0.0).
    print(my_basis.z) # Stampa (0.0, 0.0, 8.0).

 .. code-tab:: csharp

    var myBasis = Basis.FromScale(new Vector3(2.0f, 4.0f, 8.0f));

    GD.Print(myBasis.X); // Stampa (2, 0, 0).
    GD.Print(myBasis.Y); // Stampa (0, 4, 0).
    GD.Print(myBasis.Z); // Stampa (0, 0, 8).



\ **Nota:** Nell'algebra lineare, la matrice di questa base è anche conosciuta come `matrice diagonale <https://it.wikipedia.org/wiki/Matrice_diagonale>`__.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Basis_method_get_euler>`

Restituisce la rotazione di questa base come un :ref:`Vector3<class_Vector3>` di `angoli di Eulero <https://it.wikipedia.org/wiki/Angoli_di_Eulero>`__, in radianti. Per il valore restituito:

- :ref:`Vector3.x<class_Vector3_property_x>` contiene l'angolo attorno all'asse :ref:`x<class_Basis_property_x>` (beccheggio);

- :ref:`Vector3.y<class_Vector3_property_y>` contiene l'angolo attorno all'asse :ref:`y<class_Basis_property_y>` (imbardata);

- :ref:`Vector3.z<class_Vector3_property_z>` contiene l'angolo attorno all'asse :ref:`z<class_Basis_property_z>` (rollio).

L'ordine di ogni rotazione consecutiva si può cambiare con ``order`` (vedi le costanti di :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). In Godot, gli angoli di Eulero utilizzano sempre l'ordine intrinseco. Come predefinito, è usata la convenzione YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): poiché stiamo scomponendo, viene calcolato prima l'asse Z locale (rollio), poi l'asse X locale (beccheggio) e infine l'asse Y locale (imbardata). Quando si utilizza il metodo opposto :ref:`from_euler()<class_Basis_method_from_euler>` per comporre una rotazione, questo ordine è invertito.

\ **Nota:** Affinché questo metodo restituisca correttamente, la base deve essere *ortonormale* (vedi :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

\ **Nota:** Gli angoli di Eulero sono molto più intuitivi ma non sono adatti per la matematica 3D. Per questo motivo, considera invece usare il metodo :ref:`get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>`, che restituisce un :ref:`Quaternion<class_Quaternion>`.

\ **Nota:** Nel pannello Ispettore, la rotazione di una base è spesso visualizzata in angoli di Eulero (in gradi), come nel caso della proprietà :ref:`Node3D.rotation<class_Node3D_property_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_rotation_quaternion:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_rotation_quaternion**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_rotation_quaternion>`

Restituisce la rotazione di questa base come :ref:`Quaternion<class_Quaternion>`.

\ **Nota:** I quaternioni sono molto più adatti alla matematica 3D ma sono meno intuitivi. Per le interfacce utente, considera l'utilizzo del metodo :ref:`get_euler()<class_Basis_method_get_euler>`, che restituisce angoli di Eulero.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_scale>`

Restituisce la lunghezza di ogni asse di questa base, come :ref:`Vector3<class_Vector3>`. Se la base non è inclinata, questo è il fattore di scala. Non è influenzato dalla rotazione.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(2, 0, 0),
        Vector3(0, 4, 0),
        Vector3(0, 0, 8)
    )
    # Ruotando la base in qualsiasi modo conserva la sua scala.
    my_basis = my_basis.rotated(Vector3.UP, TAU / 2)
    my_basis = my_basis.rotated(Vector3.RIGHT, TAU / 4)

    print(my_basis.get_scale()) # Prints (2.0, 4.0, 8.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        Vector3(2.0f, 0.0f, 0.0f),
        Vector3(0.0f, 4.0f, 0.0f),
        Vector3(0.0f, 0.0f, 8.0f)
    );
    // Ruotando la base in qualsiasi modo conserva la sua scala.
    myBasis = myBasis.Rotated(Vector3.Up, Mathf.Tau / 2.0f);
    myBasis = myBasis.Rotated(Vector3.Right, Mathf.Tau / 4.0f);

    GD.Print(myBasis.Scale); // Prints (2, 4, 8)



\ **Nota:** Se il valore restituito da :ref:`determinant()<class_Basis_method_determinant>` è negativo, anche la scala è negativa.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_inverse:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **inverse**\ (\ ) |const| :ref:`🔗<class_Basis_method_inverse>`

Restituisce l'`inverso della matrice di questa base <https://it.wikipedia.org/wiki/Matrice_invertibilex>`__.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_conformal>`

Restituisce ``true`` se questa base è conforme. Una base conforme è sia *ortogonale* (gli assi sono perpendicolari tra loro) sia *uniforme* (gli assi condividono la stessa lunghezza). Questo metodo può essere particolarmente utile durante i calcoli di fisica.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_Basis_method_is_equal_approx>`

Restituisce ``true`` se questa base e ``b`` sono approssimativamente eguali, chiamando :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` su tutti i componenti vettoriali.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_finite>`

Restituisce ``true`` se i valori di questa base sono finiti, chiamando :ref:`Vector2.is_finite()<class_Vector2_method_is_finite>` su tutti i componenti vettoriali.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_orthonormal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_orthonormal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_orthonormal>`

Restituisce ``true`` se questa base è ortonormale. Una base ortonormale è sia *ortogonale* (gli assi sono perpendicolari tra loro) sia *normalizzata* (la lunghezza di ogni asse è ``1.0``.). Questo metodo può essere particolarmente utile durante i calcoli di fisica.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_looking_at:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Basis_method_looking_at>`

Crea una nuova **Basis** con una rotazione tale che l'asse in avanti (-Z) punti verso la posizione ``target``.

Come predefinito, l'asse -Z (avanti per la telecamera) viene trattato come "in avanti" (implica che +X sia a destra). Se ``use_model_front`` è ``true``, l'asse +Z (avanti per gli asset) viene trattato come "in avanti" (implica che +X sia a sinistra) e punta verso la posizione ``target``.

L'asse in alto (+Y) punta il più vicino possibile al vettore ``up`` pur rimanendo perpendicolare all'asse in avanti. La base restituita è ortonormalizzata (vedi :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

I vettori ``target`` e ``up`` non possono essere :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>` e non dovrebbero essere collineari per evitare una rotazione involontaria attorno all'asse Z locale.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Basis_method_orthonormalized>`

Restituisce la versione ortonormalizzata di questa base. Una base ortonormale è sia *ortogonale* (gli assi sono perpendicolari tra loro) sia *normalizzata* (gli assi hanno una lunghezza di ``1.0``), il che significa inoltre che può rappresentare solo la rotazione.

Spesso è utile chiamare questo metodo per evitare errori di arrotondamento su una base in rotazione:


.. tabs::

 .. code-tab:: gdscript

    # Ruota questo Node3D ogni frame.
    func _process(delta):
        basis = basis.rotated(Vector3.UP, TAU * delta)
        basis = basis.rotated(Vector3.RIGHT, TAU * delta)
        basis = basis.orthonormalized()

 .. code-tab:: csharp

    // Ruota questo Node3D ogni frame.
    public override void _Process(double delta)
    {
        Basis = Basis.Rotated(Vector3.Up, Mathf.Tau * (float)delta)
                .Rotated(Vector3.Right, Mathf.Tau * (float)delta)
                .Orthonormalized();
    }



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_rotated:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_rotated>`

Restituisce questa base ruotata attorno all'asse ``axis`` di ``angle`` (in radianti).

\ ``axis`` deve essere un vettore normalizzato (vedi :ref:`Vector3.normalized()<class_Vector3_method_normalized>`). Se ``angle`` è positivo, la base viene ruotata in senso antiorario attorno all'asse.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.IDENTITY
    var angle = TAU / 2

    my_basis = my_basis.rotated(Vector3.UP, angle)    # Ruota intorno all'asse superiore (imbardata).
    my_basis = my_basis.rotated(Vector3.RIGHT, angle) # Ruota intorno all'asse destro (beccheggio).
    my_basis = my_basis.rotated(Vector3.BACK, angle)  # Ruota intorno all'asse posteriore (rollio).

 .. code-tab:: csharp

    var myBasis = Basis.Identity;
    var angle = Mathf.Tau / 2.0f;

    myBasis = myBasis.Rotated(Vector3.Up, angle);    // Ruota intorno all'asse superiore (imbardata).
    myBasis = myBasis.Rotated(Vector3.Right, angle); // Ruota intorno all'asse destro (beccheggio).
    myBasis = myBasis.Rotated(Vector3.Back, angle);  // Ruota intorno all'asse posteriore (rollio).



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled>`

Restituisce questa base con i componenti di ciascun asse ridimensionati in base ai componenti di ``scale``.

Le righe della matrice base sono moltiplicate per i componenti di ``scale``. Questa operazione è una scala globale (relativa al genitore).


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled(Vector3(0, 2, -2))

    print(my_basis.x) # Stampa (0.0, 2.0, -2.0)
    print(my_basis.y) # Stampa (0.0, 4.0, -4.0)
    print(my_basis.z) # Stampa (0.0, 6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.Scaled(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // Stampa (0, 2, -2)
    GD.Print(myBasis.Y); // Stampa (0, 4, -4)
    GD.Print(myBasis.Z); // Stampa (0, 6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled_local:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled_local>`

Restituisce questa base con i componenti di ciascun asse ridimensionati in base ai componenti di ``scale``.

Le righe della matrice base sono moltiplicate per i componenti di ``scale``. Questa operazione è una scala locale (relativa a se stesso).


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled(Vector3(0, 2, -2))

    print(my_basis.x) # Stampa (0.0, 0.0, 0.0)
    print(my_basis.y) # Stampa (4.0, 4.0, 4.0)
    print(my_basis.z) # Stampa (-6.0, -6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.Scaled(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // Stampa (0, 0, 0)
    GD.Print(myBasis.Y); // Stampa (4, 4, 4)
    GD.Print(myBasis.Z); // Stampa (-6, -6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_slerp:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **slerp**\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_slerp>`

Esegue un'interpolazione sferico-lineare con la base ``to``, specificato un peso ``weight``. Sia questa base sia ``to`` dovrebbero rappresentare una rotazione.

\ **Esempio:** Ruota gradualmente un :ref:`Node3D<class_Node3D>` sulla base di destinazione nel corso del tempo, con un :ref:`Tween<class_Tween>`.

::

    var start_basis = Basis.IDENTITY
    var target_basis = Basis.IDENTITY.rotated(Vector3.UP, TAU / 2)

    func _ready():
        create_tween().tween_method(interpolate, 0.0, 1.0, 5.0).set_trans(Tween.TRANS_EXPO)

    func interpolate(weight):
        basis = start_basis.slerp(target_basis, weight)

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotx:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotx**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotx>`

Restituisce il prodotto scalare trasposto tra ``with`` e l'asse :ref:`x<class_Basis_property_x>` (vedi :ref:`transposed()<class_Basis_method_transposed>`).

Questo è equivalente a ``basis.x.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdoty:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdoty**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdoty>`

Restituisce il prodotto scalare trasposto tra ``with`` e l'asse :ref:`y<class_Basis_property_y>` (vedi :ref:`transposed()<class_Basis_method_transposed>`).

Questo è equivalente a ``basis.y.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotz:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotz**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotz>`

Restituisce il prodotto scalare trasposto tra ``with`` e l'asse :ref:`z<class_Basis_property_z>` (vedi :ref:`transposed()<class_Basis_method_transposed>`).

Questo è equivalente a ``basis.z.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_transposed:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **transposed**\ (\ ) |const| :ref:`🔗<class_Basis_method_transposed>`

Restituisce la versione trasposta di questa base. Ciò trasforma le colonne della matrice base in righe e le sue righe in colonne.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 2, 3),
        Vector3(4, 5, 6),
        Vector3(7, 8, 9)
    )
    my_basis = my_basis.transposed()

    print(my_basis.x) # Stampa (1.0, 4.0, 7.0).
    print(my_basis.y) # Stampa (2.0, 5.0, 8.0).
    print(my_basis.z) # Stampa (3.0, 6.0, 9.0).

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 2.0f, 3.0f),
        new Vector3(4.0f, 5.0f, 6.0f),
        new Vector3(7.0f, 8.0f, 9.0f)
    );
    myBasis = myBasis.Transposed();

    GD.Print(myBasis.X); // Stampa (1, 4, 7).
    GD.Print(myBasis.Y); // Stampa (2, 5, 8).
    GD.Print(myBasis.Z); // Stampa (3, 6, 9).



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Basis_operator_neq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_neq_Basis>`

Restituisce ``true`` se i componenti di entrambe le basi non sono eguali.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>`, che è più affidabile.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Basis:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_mul_Basis>`

Trasforma (moltiplica) la base ``right`` per questa base.

Questa è l'operazione eseguita tra genitore e figlio :ref:`Node3D<class_Node3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Basis_operator_mul_Vector3>`

Trasforma (moltiplica) il vettore ``right`` per questa base, restituendo un :ref:`Vector3<class_Vector3>`.


.. tabs::

 .. code-tab:: gdscript

    # Base che scambia gli assi X/Z e raddoppia la scala.
    var my_basis = Basis(Vector3(0, 2, 0), Vector3(2, 0, 0), Vector3(0, 0, 2))
    print(my_basis * Vector3(1, 2, 3)) # Stampa (4.0, 2.0, 6.0)

 .. code-tab:: csharp

    // Base che scambia gli assi X/Z e raddoppia la scala.
    var myBasis = new Basis(new Vector3(0, 2, 0), new Vector3(2, 0, 0), new Vector3(0, 0, 2));
    GD.Print(myBasis * new Vector3(1, 2, 3)); // Prints (4, 2, 6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_mul_float>`

Moltiplica tutti i componenti del **Basis** per il :ref:`float<class_float>` indicato. Ciò influenza la scala della base in modo uniforme, ridimensionando tutti e 3 gli assi del valore ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_mul_int>`

Moltiplica tutti i componenti del **Basis** per l':ref:`int<class_int>` indicato. Ciò influenza la scala della base in modo uniforme, ridimensionando tutti e 3 gli assi del valore ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_div_float>`

Divide tutti i componenti di **Basis** per il :ref:`float<class_float>` indicato. Ciò influenza la scala della base in modo uniforme, ridimensionando tutti e 3 gli assi del valore ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_div_int>`

Divide tutti i componenti di **Basis** per il :ref:`int<class_int>` indicato. Ciò influenza la scala della base in modo uniforme, ridimensionando tutti e 3 gli assi del valore ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_eq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_eq_Basis>`

Restituisce ``true`` se i componenti di entrambe le basi sono esattamente eguali.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>`, che è più affidabile.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_idx_int>`

Accede a ciascun asse (colonna) di questa base tramite il relativo indice. L'indice ``0`` è uguale a :ref:`x<class_Basis_property_x>`, l'indice ``1`` è uguale a :ref:`y<class_Basis_property_y>` e l'indice ``2`` è uguale a :ref:`z<class_Basis_property_z>`.

\ **Nota:** In C++, questo operatore accede alle righe della matrice base, *non* alle colonne. Per lo stesso comportamento dei linguaggi di scripting, utilizza i metodi ``set_column`` e ``get_column``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
