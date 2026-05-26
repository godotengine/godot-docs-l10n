:github_url: hide

.. _class_Transform2D:

Transform2D
===========

Una matrice 2×3 che rappresenta una trasformazione 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

The **Transform2D** built-in :ref:`Variant<class_Variant>` type is a 2×3 `matrix <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__ representing a transformation in 2D space. It contains three :ref:`Vector2<class_Vector2>` values: :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>`, and :ref:`origin<class_Transform2D_property_origin>`. Together, they can represent translation, rotation, scale, and skew.

The :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` axes form a 2×2 matrix, known as the transform's **basis**. The length of each axis (:ref:`Vector2.length()<class_Vector2_method_length>`) influences the transform's scale, while the direction of all axes influence the rotation. Usually, both axes are perpendicular to one another. However, when you rotate one axis individually, the transform becomes skewed. Applying a skewed transform to a 2D sprite will make the sprite appear distorted.

For a general introduction, see the :doc:`Matrices and transforms <../tutorials/math/matrices_and_transforms>` tutorial.

\ **Note:** Unlike :ref:`Transform3D<class_Transform3D>`, there is no 2D equivalent to the :ref:`Basis<class_Basis>` type. All mentions of "basis" refer to the :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` components of **Transform2D**.

\ **Note:** In a boolean context, a Transform2D will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`. Otherwise, a Transform2D will always evaluate to ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione di matematica <../tutorials/math/index>`

- :doc:`Le matrici e le trasformazioni <../tutorials/math/matrices_and_transforms>`

- `Demo di trasformazione di matrice <https://godotengine.org/asset-library/asset/2787>`__

- `Demo di gioco 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`origin<class_Transform2D_property_origin>` | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`x<class_Transform2D_property_x>`           | ``Vector2(1, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`y<class_Transform2D_property_y>`           | ``Vector2(0, 1)`` |
   +-------------------------------+--------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ )                                                                                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                            |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ ) |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`affine_inverse<class_Transform2D_method_affine_inverse>`\ (\ ) |const|                                                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform<class_Transform2D_method_basis_xform>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform_inv<class_Transform2D_method_basis_xform_inv>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`determinant<class_Transform2D_method_determinant>`\ (\ ) |const|                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_origin<class_Transform2D_method_get_origin>`\ (\ ) |const|                                                                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_rotation<class_Transform2D_method_get_rotation>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_scale<class_Transform2D_method_get_scale>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_skew<class_Transform2D_method_get_skew>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`interpolate_with<class_Transform2D_method_interpolate_with>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`inverse<class_Transform2D_method_inverse>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_conformal<class_Transform2D_method_is_conformal>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform2D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const|                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform2D_method_is_finite>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`looking_at<class_Transform2D_method_looking_at>`\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`orthonormalized<class_Transform2D_method_orthonormalized>`\ (\ ) |const|                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated<class_Transform2D_method_rotated>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated_local<class_Transform2D_method_rotated_local>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled<class_Transform2D_method_scaled>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                 |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled_local<class_Transform2D_method_scaled_local>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated<class_Transform2D_method_translated>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated_local<class_Transform2D_method_translated_local>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform2D_operator_neq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator *<class_Transform2D_operator_mul_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`operator *<class_Transform2D_operator_mul_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator *<class_Transform2D_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform2D_operator_eq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator []<class_Transform2D_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Transform2D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_IDENTITY>`

Il **Transform2D** di identità. Una trasformazione senza traslazione, senza rotazione e con una scala pari a :ref:`Vector2.ONE<class_Vector2_constant_ONE>`. Ciò significa anche che:

- La :ref:`x<class_Transform2D_property_x>` punta a destra (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`);

- La :ref:`y<class_Transform2D_property_y>` punta in basso (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

::

    var transform = Transform2D.IDENTITY
    print("| X | Y | Origin")
    print("| %.f | %.f | %.f" % [transform.x.x, transform.y.x, transform.origin.x])
    print("| %.f | %.f | %.f" % [transform.x.y, transform.y.y, transform.origin.y])
    # Stampa:
    # | X | Y | Origin
    # | 1 | 0 | 0
    # | 0 | 1 | 0

Se un :ref:`Vector2<class_Vector2>`, un :ref:`Rect2<class_Rect2>`, un :ref:`PackedVector2Array<class_PackedVector2Array>` o un altro **Transform2D** viene trasformato (moltiplicato) per questa costante, non si verifica alcuna trasformazione.

\ **Nota:** In GDScript, questa costante è identica alla creazione di un :ref:`Transform2D<class_Transform2D_constructor_Transform2D>` senza alcun argomento. Questa costante può essere usata per rendere il codice più chiaro e per coerenza con C#.

.. _class_Transform2D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform2D(-1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_X>`

Quando una qualsiasi trasformazione è moltiplicata per :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>`, nega tutti i componenti dell'asse :ref:`x<class_Transform2D_property_x>` (la colonna X).

Quando :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` è moltiplicata per qualsiasi trasformazione, nega il componente :ref:`Vector2.x<class_Vector2_property_x>` di tutti gli assi (la riga X).

.. _class_Transform2D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform2D(1, 0, 0, -1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_Y>`

Quando una qualsiasi trasformazione è moltiplicata per :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>`, nega tutti i componenti dell'asse :ref:`y<class_Transform2D_property_y>` (la colonna Y).

Quando :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` è moltiplicata per qualsiasi trasformazione, nega il componente :ref:`Vector2.y<class_Vector2_property_y>` di tutti gli assi (la riga Y).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Transform2D_property_origin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **origin** = ``Vector2(0, 0)`` :ref:`🔗<class_Transform2D_property_origin>`

L'offset di traslazione di questa trasformazione e la colonna ``2`` della matrice. Nello spazio 2D, questo può essere visto come la posizione.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_x:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **x** = ``Vector2(1, 0)`` :ref:`🔗<class_Transform2D_property_x>`

L'asse X della base di trasformazione e la colonna ``0`` della matrice. Combinato con :ref:`y<class_Transform2D_property_y>`, questo rappresenta la rotazione, la scala e l'inclinazione della trasformazione.

Sulla trasformazione di identità, questo vettore punta a destra (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_y:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **y** = ``Vector2(0, 1)`` :ref:`🔗<class_Transform2D_property_y>`

L'asse Y della base di trasformazione e la colonna ``1`` della matrice. Combinato con :ref:`x<class_Transform2D_property_x>`, questo rappresenta la rotazione, la scala e l'inclinazione della trasformazione.

Sulla trasformazione di identità, questo vettore punta in basso (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Transform2D_constructor_Transform2D:

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ ) :ref:`🔗<class_Transform2D_constructor_Transform2D>`

Costruisce un **Transform2D** identico a :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`.

\ **Nota:** In C#, costruisce un **Transform2D** con tutti i suoi componenti impostati su :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )

Costruisce un **Transform2D** come copia del **Transform2D** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Costruisce un **Transform2D** da un determinato angolo (in radianti) e posizione.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Costruisce un **Transform2D** da un determinato angolo (in radianti), scala, inclinazione (in radianti) e posizione.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )

Costruisce un **Transform2D** da 3 valori :ref:`Vector2<class_Vector2>` che rappresentano :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>` e :ref:`origin<class_Transform2D_property_origin>` (le tre colonne della matrice).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Transform2D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_affine_inverse>`

Restituisce la versione invertita di questa trasformazione. A differenza di :ref:`inverse()<class_Transform2D_method_inverse>`, questo metodo funziona con quasi ogni base, comprese quelle non uniformi, ma è più lento.

\ **Nota:** Affinché questo metodo restituisca correttamente, la base della trasformazione deve avere un determinante che non sia esattamente ``0.0`` (vedi :ref:`determinant()<class_Transform2D_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform>`

Restituisce una copia del vettore ``v``, trasformato (moltiplicato) per la matrice della base di trasformazione. A differenza dell'operatore di moltiplicazione (``*``), questo metodo ignora l':ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform_inv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform_inv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform_inv>`

Restituisce una copia del vettore ``v``, trasformato (moltiplicato) per la matrice della base di trasformazione inversa (vedi :ref:`inverse()<class_Transform2D_method_inverse>`). Questo metodo ignora l':ref:`origin<class_Transform2D_property_origin>`.

\ **Nota:** Questo metodo presuppone che la base di questa trasformazione sia *ortonormale* (vedi :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Se la base non è ortonormale, dovrebbe essere usato ``transform.affine_inverse().basis_xform(vector)`` (vedi :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_determinant>`

Restituisce il `determinante <https://it.wikipedia.org/wiki/Determinante_(algebra)>`__ della matrice di questa base di trasformazione. Per la matematica avanzata, questo numero può essere utilizzato per determinare alcuni attributi:

- Se il determinante è esattamente ``0.0``, la base non è invertibile (vedi :ref:`inverse()<class_Transform2D_method_inverse>`).

- Se il determinante è un numero negativo, la base rappresenta una scala negativa.

\ **Nota:** Se la scala della base è la stessa per ogni asse, il suo determinante è sempre quella scala alla potenza di 2.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_origin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_origin**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_origin>`

Restituisce la traslazione di questa trasformazione. Equivale a :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rotation**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_rotation>`

Restituisce la rotazione di questa trasformazione (in radianti). Ciò equivale all'angolo di :ref:`x<class_Transform2D_property_x>` (vedi :ref:`Vector2.angle()<class_Vector2_method_angle>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_scale>`

Restituisce la lunghezza di :ref:`x<class_Transform2D_property_x>` e :ref:`y<class_Transform2D_property_y>`, come :ref:`Vector2<class_Vector2>`. Se la base di questa trasformazione non è distorta, questo valore è il fattore di scala. Non è influenzato dalla rotazione.


.. tabs::

 .. code-tab:: gdscript

    var my_transform = Transform2D(
        Vector2(2, 0),
        Vector2(0, 4),
        Vector2(0, 0)
    )
    # Ruotare il Transform2D in qualsiasi modo ne preserva la scala.
    my_transform = my_transform.rotated(TAU / 2)

    print(my_transform.get_scale()) # Stampa (2.0, 4.0).

 .. code-tab:: csharp

    var myTransform = new Transform2D(
        Vector3(2.0f, 0.0f),
        Vector3(0.0f, 4.0f),
        Vector3(0.0f, 0.0f)
    );
    // Ruotare il Transform2D in qualsiasi modo ne preserva la scala.
    myTransform = myTransform.Rotated(Mathf.Tau / 2.0f);

    GD.Print(myTransform.GetScale()); // Stampa (2, 4).



\ **Nota:** Se il valore restituito da :ref:`determinant()<class_Transform2D_method_determinant>` è negativo, anche la scala è negativa.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_skew:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skew**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_skew>`

Restituisce l'inclinazione di questa trasformazione (in radianti).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **interpolate_with**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_interpolate_with>`

Restituisce il risultato dell'interpolazione lineare tra questa trasformazione e ``xform`` per il peso ``weight``.

\ ``weight`` dovrebbe essere compreso tra ``0.0`` e ``1.0`` (inclusi). I valori al di fuori di questo intervallo sono consentiti e possono essere utilizzati per eseguire un'*estrapolazione*.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_inverse>`

Restituisce la `versione invertita di questa trasformazione <https://it.wikipedia.org/wiki/Matrice_invertibile>`__.

\ **Nota:** Affinché questo metodo restituisca correttamente, la base della trasformazione deve essere *ortonormale* (vedi :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Ciò significa che la base dovrebbe rappresentare solo una rotazione. In caso contrario, usa invece :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_conformal>`

Restituisce ``true`` se la base di questa trasformazione è conforme. Una base conforme è sia *ortogonale* (gli assi sono perpendicolari tra loro) sia *uniforme* (gli assi condividono la stessa lunghezza). Questo metodo può essere particolarmente utile durante i calcoli di fisica.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const| :ref:`🔗<class_Transform2D_method_is_equal_approx>`

Restituisce ``true`` se questa trasformazione e ``xform`` sono approssimativamente uguali, chiamando :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` su ogni componente.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_finite>`

Restituisce ``true`` se questa trasformazione è finita, chiamando :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` su ogni componente.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **looking_at**\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Transform2D_method_looking_at>`

Restituisce una copia della trasformazione ruotata in modo che l'asse X ruotato punti verso la posizione ``target``, nello spazio globale.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_orthonormalized>`

Restituisce una copia di questa trasformazione con la sua base ortonormalizzata. Una base ortonormale è sia *ortogonale* (gli assi sono perpendicolari tra loro) sia *normalizzata* (gli assi hanno una lunghezza di ``1.0``), il che significa anche che può rappresentare solo una rotazione.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated>`

Restituisce una copia di questa trasformazione ruotata dell'angolo ``angle`` (in radianti).

Se ``angle`` è positivo, la trasformazione viene ruotata in senso orario.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una corrispondente trasformazione di rotazione ``R`` da sinistra, ovvero ``R * X``.

Ciò può essere visto come una trasformazione rispetto alla struttura globale/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated_local**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated_local>`

Restituisce una copia della trasformazione ruotata dell'angolo ``angle`` (in radianti).

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una corrispondente trasformazione di rotazione ``R`` da destra, ovvero ``X * R``.

Questo può essere visto come una trasformazione rispetto al frame locale.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled>`

Restituisce una copia della trasformazione scalata dal fattore ``scale`` specificato.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una trasformazione di scala corrispondente ``S`` da sinistra, ovvero ``S * X``.

Questo può essere visto come una trasformazione rispetto al frame globale/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled_local**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled_local>`

Restituisce una copia della trasformazione scalata dal fattore ``scale`` specificato.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una trasformazione di scala corrispondente ``S`` da destra, ovvero ``X * S``.

Questo può essere visto come una trasformazione rispetto al frame locale.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated>`

Restituisce una copia della trasformazione traslata dal valore di ``offset``.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una corrispondente trasformazione di traslazione ``T`` da sinistra, ovvero ``T * X``.

Questo può essere visto come una trasformazione rispetto al frame globale/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated_local**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated_local>`

Restituisce una copia della trasformazione traslata dal valore di ``offset``.

Questo metodo è una versione ottimizzata della moltiplicazione della trasformazione fornita ``X`` con una corrispondente trasformazione di traslazione ``T`` da destra, ovvero ``X * T``.

Questo può essere visto come una trasformazione rispetto al frame locale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Transform2D_operator_neq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_neq_Transform2D>`

Restituisce ``true`` se i componenti di entrambe le trasformazioni non sono uguali, rispettivamente.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>`, che è più affidabile.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Transform2D_operator_mul_PackedVector2Array>`

Trasforma (moltiplica) ogni elemento :ref:`Vector2<class_Vector2>` del :ref:`PackedVector2Array<class_PackedVector2Array>` specificato per questa matrice di trasformazione.

Su array più grandi, questa operazione è molto più veloce della trasformazione di ogni singolo :ref:`Vector2<class_Vector2>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Rect2:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Rect2>`

Trasforma (moltiplica) il :ref:`Rect2<class_Rect2>` per questa matrice di trasformazione.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Transform2D>`

Trasforma (moltiplica) questa trasformazione per la trasformazione ``right``.

Questa è l'operazione eseguita tra i nodi :ref:`CanvasItem<class_CanvasItem>` genitore e figlio.

\ **Nota:** Se devi modificare solo un attributo di questa trasformazione, considera di usare uno dei seguenti metodi:

- Per la traduzione, vedi :ref:`translated()<class_Transform2D_method_translated>` o :ref:`translated_local()<class_Transform2D_method_translated_local>`.

- Per la rotazione, vedi :ref:`rotated()<class_Transform2D_method_rotated>` o :ref:`rotated_local()<class_Transform2D_method_rotated_local>`.

- Per la scala, vedi :ref:`scaled()<class_Transform2D_method_scaled>` o :ref:`scaled_local()<class_Transform2D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Vector2>`

Trasforma (moltiplica) il :ref:`Vector2<class_Vector2>` per questa matrice di trasformazione.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_mul_float>`

Moltiplica tutti i componenti del **Transform2D** per il :ref:`float<class_float>` indicato, incluso l':ref:`origin<class_Transform2D_property_origin>`. Ciò influenza la scala della trasformazione in modo uniforme.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_mul_int>`

Moltiplica tutti i componenti del **Transform2D** per l':ref:`int<class_int>` indicato, incluso l':ref:`origin<class_Transform2D_property_origin>`. Ciò influenza la scala della trasformazione in modo uniforme.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_div_float>`

Divide tutti i componenti del **Transform2D** per il :ref:`float<class_float>` indicato, incluso l':ref:`origin<class_Transform2D_property_origin>`. Ciò influenza la scala della trasformazione in modo uniforme.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_div_int>`

Divide tutti i componenti del **Transform2D** per l':ref:`int<class_int>` indicato, incluso l':ref:`origin<class_Transform2D_property_origin>`. Ciò influenza la scala della trasformazione in modo uniforme.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_eq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_eq_Transform2D>`

Restituisce ``true`` se i componenti di entrambe le trasformazioni non sono esattamente uguali.

\ **Note:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>`, che è più affidabile.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_idx_int>`

Accede a ciascun asse (colonna) di questa trasformazione tramite il loro indice. L'indice ``0`` è lo stesso di :ref:`x<class_Transform2D_property_x>`, l'indice ``1`` è lo stesso di :ref:`y<class_Transform2D_property_y>` e l'indice ``2`` è lo stesso di :ref:`origin<class_Transform2D_property_origin>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
