:github_url: hide

.. _class_Transform3D:

Transform3D
===========

Una matrice 3×4 che rappresenta una trasformazione 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

The **Transform3D** built-in :ref:`Variant<class_Variant>` type is a 3×4 matrix representing a transformation in 3D space. It contains a :ref:`Basis<class_Basis>`, which on its own can represent rotation, scale, and shear. Additionally, combined with its own :ref:`origin<class_Transform3D_property_origin>`, the transform can also represent a translation.

For a general introduction, see the :doc:`Matrices and transforms <../tutorials/math/matrices_and_transforms>` tutorial.

\ **Note:** Godot uses a `right-handed coordinate system <https://en.wikipedia.org/wiki/Right-hand_rule>`__, which is a common standard. For directions, the convention for built-in types like :ref:`Camera3D<class_Camera3D>` is for -Z to point forward (+X is right, +Y is up, and +Z is back). Other objects may use different direction conventions. For more information, see the `3D asset direction conventions <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__ tutorial.

\ **Note:** In a boolean context, a Transform3D will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`. Otherwise, a Transform3D will always evaluate to ``true``.

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

- `Demo di gioco 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`basis<class_Transform3D_property_basis>`   | ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`origin<class_Transform3D_property_origin>` | ``Vector3(0, 0, 0)``                 |
   +-------------------------------+--------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ )                                                                                                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )                                                                                      |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`affine_inverse<class_Transform3D_method_affine_inverse>`\ (\ ) |const|                                                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`interpolate_with<class_Transform3D_method_interpolate_with>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const|                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`inverse<class_Transform3D_method_inverse>`\ (\ ) |const|                                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform3D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const|                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform3D_method_is_finite>`\ (\ ) |const|                                                                                                                                                     |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`looking_at<class_Transform3D_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`orthonormalized<class_Transform3D_method_orthonormalized>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated<class_Transform3D_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated_local<class_Transform3D_method_rotated_local>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled<class_Transform3D_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled_local<class_Transform3D_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                        |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated<class_Transform3D_method_translated>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated_local<class_Transform3D_method_translated_local>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                               |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform3D_operator_neq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                             | :ref:`operator *<class_Transform3D_operator_mul_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`operator *<class_Transform3D_operator_mul_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`                           | :ref:`operator *<class_Transform3D_operator_mul_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`operator *<class_Transform3D_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform3D_operator_eq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Transform3D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_IDENTITY>`

Il **Transform3D** di identità. Questa è una base senza rotazione, senza inclinazione, e con una scala pari a :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. La sua :ref:`basis<class_Transform3D_property_basis>` è uguale a :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`. Ciò significa anche che:

- La sua :ref:`Basis.x<class_Basis_property_x>` punta a destra (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- La sua :ref:`Basis.y<class_Basis_property_y>` punta in alto (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- La sua :ref:`Basis.z<class_Basis_property_z>` punta indietro (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var transform = Transform3D.IDENTITY
    var basis = transform.basis
    print("| X | Y | Z | Origine")
    print("| %.f | %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x, transform.origin.x])
    print("| %.f | %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y, transform.origin.y])
    print("| %.f | %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z, transform.origin.z])
    # Stampa:
    # | X | Y | Z | Origine
    # | 1 | 0 | 0 | 0
    # | 0 | 1 | 0 | 0
    # | 0 | 0 | 1 | 0

Se un :ref:`Vector2<class_Vector2>`, un :ref:`AABB<class_AABB>`, un :ref:`Plane<class_Plane>`, un :ref:`PackedVector3Array<class_PackedVector3Array>` o un altro **Transform3D** viene trasformato (moltiplicato) per questa costante, non si verifica alcuna trasformazione.

\ **Nota:** In GDScript, questa costante è identica alla creazione di un :ref:`Transform3D<class_Transform3D_constructor_Transform3D>` senza alcun argomento. Questa costante può essere usata per rendere il codice più chiaro e per coerenza con C#.

.. _class_Transform3D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_X>`

**Transform3D** con specchiatura applicata perpendicolarmente al piano YZ. La sua :ref:`basis<class_Transform3D_property_basis>` è uguale a :ref:`Basis.FLIP_X<class_Basis_constant_FLIP_X>`.

.. _class_Transform3D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Y>`

**Transform3D** con specchiatura applicata perpendicolarmente al piano XZ . La sua :ref:`basis<class_Transform3D_property_basis>` è uguale a :ref:`Basis.FLIP_Y<class_Basis_constant_FLIP_Y>`.

.. _class_Transform3D_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Z>`

**Transform3D** con specchiatura applicata perpendicolarmente al piano XY. La sua :ref:`basis<class_Transform3D_property_basis>` è uguale a :ref:`Basis.FLIP_Z<class_Basis_constant_FLIP_Z>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Transform3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Transform3D_property_basis>`

La :ref:`Basis<class_Basis>` di questa trasformazione. È composta da 3 assi (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>` e :ref:`Basis.z<class_Basis_property_z>`). Insieme, rappresentano la rotazione, la scala e l'inclinazione della trasformazione.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_property_origin:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Transform3D_property_origin>`

L'offset di traslazione di questa trasformazione. Nello spazio 3D, questo può essere visto come la posizione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Transform3D_constructor_Transform3D:

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ ) :ref:`🔗<class_Transform3D_constructor_Transform3D>`

Costruisce un **Transform3D** identico a :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`.

\ **Nota:** In C#, costruisce un **Transform3D** con il suo :ref:`origin<class_Transform3D_property_origin>` e tutti i componenti della sua :ref:`basis<class_Transform3D_property_basis>` impostati su :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

Costruisce un **Transform3D** come copia del **Transform3D** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Costruisce un **Transform3D** da un :ref:`Basis<class_Basis>` e :ref:`Vector3<class_Vector3>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Projection<class_Projection>`\ )

Costruisce un **Transform3D** da una :ref:`Projection<class_Projection>`. Poiché **Transform3D** è una matrice 3×4 e :ref:`Projection<class_Projection>` è una matrice 4×4, questa operazione scarta l'ultima riga della matrice di proiezione (``from.x.w``, ``from.y.w``, ``from.z.w`` e ``from.w.w`` non sono inclusi nella nuova trasformazione).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Costruisce un **Transform3D** da quattro valori :ref:`Vector3<class_Vector3>` (chiamati anche colonne di matrice).

I primi tre argomenti sono gli assi della :ref:`basis<class_Transform3D_property_basis>` (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>` e :ref:`Basis.z<class_Basis_property_z>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Transform3D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_affine_inverse>`

Restituisce la versione invertita di questa trasformazione. A differenza di :ref:`inverse()<class_Transform3D_method_inverse>`, questo metodo funziona con quasi ogni :ref:`basis<class_Transform3D_property_basis>`, comprese quelle non uniformi, ma è più lento. Vedi anche :ref:`Basis.inverse()<class_Basis_method_inverse>`.

\ **Nota:** Affinché questo metodo restituisca correttamente, la :ref:`basis<class_Transform3D_property_basis>` della trasformazione deve avere un determinante che non sia esattamente ``0.0`` (vedi :ref:`Basis.determinant()<class_Basis_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **interpolate_with**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_interpolate_with>`

Restituisce il risultato dell'interpolazione lineare tra questa trasformazione e ``xform`` per il peso ``weight``.

\ ``weight`` dovrebbe essere compreso tra ``0.0`` e ``1.0`` (inclusi). I valori al di fuori di questo intervallo sono consentiti e possono essere utilizzati per eseguire un'*estrapolazione*.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_inverse>`

Restituisce la `versione invertita di questa trasformazione <https://it.wikipedia.org/wiki/Matrice_invertibile>`__. Vedi anche :ref:`Basis.inverse()<class_Basis_method_inverse>`.

\ **Nota:** Affinché questo metodo restituisca correttamente, la :ref:`basis<class_Transform3D_property_basis>` della trasformazione deve essere *ortonormale* (vedi :ref:`orthonormalized()<class_Transform3D_method_orthonormalized>`). Ciò significa che la base dovrebbe rappresentare solo una rotazione. In caso contrario, usa invece :ref:`affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const| :ref:`🔗<class_Transform3D_method_is_equal_approx>`

Restituisce ``true`` se questa trasformazione e ``xform`` sono approssimativamente uguali, chiamando :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` su ogni componente.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_is_finite>`

Restituisce ``true`` se questa trasformazione è finita, chiamando :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` su ogni componente.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Transform3D_method_looking_at>`

Restituisce una copia di questa trasformazione ruotata in modo che l'asse anteriore (-Z) punti verso la posizione ``target``.

L'asse superiore (+Y) punta il più vicino possibile al vettore ``up``, pur rimanendo perpendicolare all'asse anteriore. La trasformazione risultante è ortonormalizzata. Le informazioni esistenti sulla rotazione, scala e inclinazione della trasformazione originale vengono scartate. I vettori ``target`` e ``up`` non possono essere zero, non possono essere paralleli tra loro e sono definiti nello spazio globale/padre.

Se ``use_model_front`` è ``true``, l'asse +Z (avanti per gli asset) viene trattato come anteriore (implica che +X sia a sinistra) e punta verso la posizione ``target``. Come predefinito, l'asse -Z (avanti per la telecamera) viene trattato come anteriore (implica che +X sia a destra).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_orthonormalized>`

Restituisce una copia di questa trasformazione con la sua :ref:`basis<class_Transform3D_property_basis>` ortonormalizzata. Una base ortonormale è sia *ortogonale* (gli assi sono perpendicolari tra loro) sia *normalizzata* (gli assi hanno una lunghezza di ``1.0``), il che significa anche che può rappresentare solo una rotazione. Vedi anche :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated>`

Restituisce una copia di questa trasformazione ruotata attorno all'asse ``axis`` dell'angolo ``angle`` (in radianti).

L'asse ``axis`` deve essere un vettore normalizzato (vedi :ref:`Vector3.normalized()<class_Vector3_method_normalized>`). Se ``angle`` è positivo, la base viene ruotata in senso antiorario attorno l'asse.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una corrispondente trasformazione di rotazione ``R`` da sinistra, ovvero ``R * X``.

Ciò può essere visto come una trasformazione rispetto alla struttura globale/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated_local>`

Restituisce una copia di questa trasformazione ruotata attorno all'asse ``axis`` dell'angolo ``angle`` (in radianti).

L'asse ``axis`` deve essere un vettore normalizzato nel sistema di coordinate locali della trasformazione. Ad esempio, per ruotare attorno all'asse X locale, usa :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una corrispondente trasformazione di rotazione ``R`` da destra, ovvero ``X * R``.

Questo può essere visto come una trasformazione rispetto alla struttura locale.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled>`

Restituisce una copia di questa trasformazione scalata dal fattore ``scale`` specificato.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una trasformazione di scala corrispondente ``S`` da sinistra, ovvero ``S * X``.

Questo può essere visto come una trasformazione rispetto al frame globale/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled_local>`

Restituisce una copia di questa trasformazione scalata dal fattore ``scale`` specificato.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una trasformazione di scala corrispondente ``S`` da destra, ovvero ``X * S``.

Questo può essere visto come una trasformazione rispetto al frame locale.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated>`

Restituisce una copia di questa trasformazione traslata dal valore di ``offset``.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una corrispondente trasformazione di traslazione ``T`` da sinistra, ovvero ``T * X``.

Questo può essere visto come una trasformazione rispetto al frame globale/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated_local>`

Restituisce una copia di questa trasformazione traslata dal valore di ``offset``.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una corrispondente trasformazione di traslazione ``T`` da destra, ovvero ``X * T``.

Questo può essere visto come una trasformazione rispetto al frame locale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Transform3D_operator_neq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_neq_Transform3D>`

Restituisce ``true`` se i componenti di entrambe le trasformazioni non sono uguali, rispettivamente.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>`, che è più affidabile.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_AABB:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_Transform3D_operator_mul_AABB>`

Trasforma (moltiplica) l':ref:`AABB<class_AABB>` per questa matrice di trasformazione.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator ***\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Transform3D_operator_mul_PackedVector3Array>`

Trasforma (moltiplica) ogni elemento :ref:`Vector3<class_Vector3>` del :ref:`PackedVector3Array<class_PackedVector3Array>` specificato per questa matrice di trasformazione.

Su array più grandi, questa operazione è molto più veloce della trasformazione di ogni singolo :ref:`Vector3<class_Vector3>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Plane:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Plane>`

Trasforma (moltiplica) il :ref:`Plane<class_Plane>` per questa matrice di trasformazione.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Transform3D>`

Trasforma (moltiplica) questa trasformazione per la trasformazione ``right``.

Questa è l'operazione eseguita tra i nodi :ref:`Node3D<class_Node3D>` genitore e figlio.

\ **Nota:** Se devi modificare solo un attributo di questa trasformazione, considera di usare uno dei seguenti metodi:

- Per la traduzione, vedi :ref:`translated()<class_Transform3D_method_translated>` o :ref:`translated_local()<class_Transform3D_method_translated_local>`.

- Per la rotazione, vedi :ref:`rotated()<class_Transform3D_method_rotated>` o :ref:`rotated_local()<class_Transform3D_method_rotated_local>`.

- Per la scala, vedi :ref:`scaled()<class_Transform3D_method_scaled>` o :ref:`scaled_local()<class_Transform3D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Vector3>`

Trasforma (moltiplica) il :ref:`Vector3<class_Vector3>` per questa matrice di trasformazione.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_mul_float>`

Moltiplica tutti i componenti del **Transform3D** per il :ref:`float<class_float>` indicato, incluso l':ref:`origin<class_Transform3D_property_origin>`. Ciò influenza la scala della trasformazione in modo uniforme, ridimensionando la :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_mul_int>`

Moltiplica tutti i componenti del **Transform3D** per l':ref:`int<class_int>` indicato, incluso l':ref:`origin<class_Transform3D_property_origin>`. Ciò influenza la scala della trasformazione in modo uniforme, ridimensionando la :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_div_float>`

Divide tutti i componenti del **Transform3D** per il :ref:`float<class_float>` indicato, incluso l':ref:`origin<class_Transform3D_property_origin>`. Ciò influenza la scala della trasformazione in modo uniforme, ridimensionando la :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_div_int>`

Divide tutti i componenti del **Transform3D** per l':ref:`int<class_int>` indicato, incluso l':ref:`origin<class_Transform3D_property_origin>`. Ciò influenza la scala della trasformazione in modo uniforme, ridimensionando la :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_eq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_eq_Transform3D>`

Restituisce ``true`` se i componenti di entrambe le trasformazioni non sono esattamente uguali.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>`, che è più affidabile.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
