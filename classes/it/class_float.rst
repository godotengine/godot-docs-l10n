:github_url: hide

.. _class_float:

float
=====

Tipo integrato per i numeri in virgola mobile.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

The **float** built-in type is a 64-bit double-precision floating-point number, equivalent to ``double`` in C++. This type has 14 reliable decimal digits of precision. The maximum value of **float** is approximately ``1.79769e308``, and the minimum is approximately ``-1.79769e308``.

Many methods and properties in the engine use 32-bit single-precision floating-point numbers instead, equivalent to ``float`` in C++, which have 6 reliable decimal digits of precision. For data structures such as :ref:`Vector2<class_Vector2>` and :ref:`Vector3<class_Vector3>`, Godot uses 32-bit floating-point numbers by default, but it can be changed to use 64-bit doubles if Godot is compiled with the ``precision=double`` option.

Math done using the **float** type is not guaranteed to be exact and will often result in small errors. You should usually use the :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` and :ref:`@GlobalScope.is_zero_approx()<class_@GlobalScope_method_is_zero_approx>` methods instead of ``==`` to compare **float** values for equality.

\ **Note:** In a boolean context, a **float** will evaluate to ``false`` if it's exactly equal to ``0.0``, and to ``true`` otherwise.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Wikipedia: Formato in virgola mobile a doppia precisione <https://en.wikipedia.org/wiki/Double-precision_floating-point_format>`__

- `Wikipedia: Formato a punto variabile a singola precisione <https://en.wikipedia.org/wiki/Single-precision_floating-point_format>`__

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ )                                     |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`float<class_float>`\ )   |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`String<class_String>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`bool<class_bool>`\ )     |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`int<class_int>`\ )       |
   +---------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_float_operator_neq_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_float_operator_neq_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`operator *<class_float_operator_mul_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_float_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_float_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )          |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_float_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_float_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )          |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_float_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_float_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )          |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_float_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_float_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_float_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_float_operator_pow_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_float_operator_pow_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_float_operator_sum_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_float_operator_sum_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_float_operator_dif_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_float_operator_dif_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_float_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_float_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_float_operator_lt_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_float_operator_lt_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_float_operator_lte_float>`\ (\ right\: :ref:`float<class_float>`\ )              |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_float_operator_lte_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_float_operator_eq_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_float_operator_eq_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_float_operator_gt_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_float_operator_gt_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_float_operator_gte_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_float_operator_gte_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator unary+<class_float_operator_unplus>`\ (\ )                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator unary-<class_float_operator_unminus>`\ (\ )                                                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_float_constructor_float:

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ ) :ref:`🔗<class_float_constructor_float>`

Costruisce un **float** predefinito, impostato su ``0.0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`float<class_float>`\ )

Costruisce un **float** come copia del **float** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`String<class_String>`\ )

Converte una :ref:`String<class_String>` in un **float**, seguendo le stesse regole del metodo :ref:`String.to_float()<class_String_method_to_float>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`bool<class_bool>`\ )

Converte un :ref:`bool<class_bool>` in un valore in virgola mobile, ``float(true)`` sarà uguale a 1.0 e ``float(false)`` sarà uguale a 0.0.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`int<class_int>`\ )

Converti un :ref:`int<class_int>` in un valore in virgola mobile, ``float(1)`` sarà uguale a ``1.0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_float_operator_neq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_neq_float>`

Restituisce ``true`` se due numeri in virgola mobile sono diversi tra loro.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comporta come altri numeri. Pertanto, i risultati di questo operatore potrebbero non essere accurati se vengono inclusi i NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_neq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_neq_int>`

Restituisce ``true`` se l'intero ha un valore diverso dal **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_float_operator_mul_Color>`

Moltiplica ogni componente del :ref:`Color<class_Color>`, compreso l'alfa, per il **float** fornito.

::

    print(1.5 * Color(0.5, 0.5, 0.5)) # Stampa (0.75, 0.75, 0.75, 1.5)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_float_operator_mul_Quaternion>`

Moltiplica ogni componente del :ref:`Quaternion<class_Quaternion>` per il **float** fornito. Questa operazione non ha senso di per sé, ma può essere utilizzata come parte di un'espressione più ampia.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_float_operator_mul_Vector2>`

Moltiplica ogni componente del :ref:`Vector2<class_Vector2>` per il **float** fornito.

::

    print(2.5 * Vector2(1, 3)) # Stampa (2.5, 7.5)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_float_operator_mul_Vector2i>`

Moltiplica ogni componente del :ref:`Vector2i<class_Vector2i>` per il **float** fornito. Restituisce un :ref:`Vector2<class_Vector2>`.

::

    print(0.9 * Vector2i(10, 15)) # Stampa (9.0, 13.5)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_float_operator_mul_Vector3>`

Moltiplica ogni componente del :ref:`Vector3<class_Vector3>` per il **float** fornito.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_float_operator_mul_Vector3i>`

Moltiplica ogni componente del :ref:`Vector3i<class_Vector3i>` per il **float** fornito. Restituisce un :ref:`Vector3<class_Vector3>`.

::

    print(0.9 * Vector3i(10, 15, 20)) # Stampa (9.0, 13.5, 18.0)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_float_operator_mul_Vector4>`

Moltiplica ogni componente del :ref:`Vector4<class_Vector4>` per il **float** fornito.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_float_operator_mul_Vector4i>`

Moltiplica ogni componente del :ref:`Vector4i<class_Vector4i>` per il **float** fornito. Restituisce un :ref:`Vector4<class_Vector4>`.

::

    print(0.9 * Vector4i(10, 15, 20, -10)) # Stampa (9.0, 13.5, 18.0, -9.0)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_mul_float>`

Moltiplica due **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_mul_int>`

Moltiplica un **float** e un :ref:`int<class_int>`. Il risultato è un **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_pow_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_pow_float>`

Eleva un **float** alla potenza di un **float**.

::

    print(39.0625**0.25) # 2.5

.. rst-class:: classref-item-separator

----

.. _class_float_operator_pow_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_pow_int>`

Eleva un **float** alla potenza di un :ref:`int<class_int>`. Il risultato è un **float**.

::

    print(0.9**3) # 0.729

.. rst-class:: classref-item-separator

----

.. _class_float_operator_sum_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_sum_float>`

Aggiunge due **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_sum_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_sum_int>`

Aggiunge un **float** e un :ref:`int<class_int>`. Il risultato è un **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_dif_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_dif_float>`

Sottrae un float da un float.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_dif_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_dif_int>`

Sottrae un :ref:`int<class_int>` da un **float**. Il risultato è un **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_div_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_div_float>`

Divide due float.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_div_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_div_int>`

Divide un **float** per un :ref:`int<class_int>`. Il risultato è un **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_lt_float>`

Restituisce ``true`` se il float sinistro è minore di quello destro.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comporta come altri numeri. Pertanto, i risultati di questo operatore potrebbero non essere accurati se vengono inclusi i NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_lt_int>`

Restituisce ``true`` se questo **float** è minore dell':ref:`int<class_int>` fornito.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_lte_float>`

Restituisce ``true`` se il float sinistro è minore o uguale a quello destro.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comporta come altri numeri. Pertanto, i risultati di questo operatore potrebbero non essere accurati se vengono inclusi i NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_lte_int>`

Restituisce ``true`` se questo **float** è minore o uguale all':ref:`int<class_int>` fornito.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_eq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_eq_float>`

Restituisce ``true`` se entrambi i **float** sono esattamente uguali.

\ **Nota:** A causa di errori di precisione per virgola mobile, considera invece utilizzare :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` o :ref:`@GlobalScope.is_zero_approx()<class_@GlobalScope_method_is_zero_approx>`, che sono più affidabili.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comporta come altri numeri. Pertanto, i risultati di questo operatore potrebbero non essere accurati se vengono inclusi i NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_eq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_eq_int>`

Restituisce ``true`` se questo **float** e l':ref:`int<class_int>` fornito sono uguali.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_gt_float>`

Restituisce ``true`` se il float sinistro è maggiore di quello destro.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comporta come altri numeri. Pertanto, i risultati di questo operatore potrebbero non essere accurati se vengono inclusi i NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_gt_int>`

Restituisce ``true`` se questo **float** è maggiore dell':ref:`int<class_int>` fornito.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_gte_float>`

Restituisce ``true`` se il float sinistro è maggiore o uguale a quello destro.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comporta come altri numeri. Pertanto, i risultati di questo operatore potrebbero non essere accurati se vengono inclusi i NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_gte_int>`

Restituisce ``true`` se questo **float** è maggiore o uguale all':ref:`int<class_int>` fornito.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_unplus:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator unary+**\ (\ ) :ref:`🔗<class_float_operator_unplus>`

Restituisce lo stesso valore come se ``+`` non ci fosse. Il ``+`` unario non fa nulla, ma a volte può rendere il tuo codice più leggibile.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_unminus:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator unary-**\ (\ ) :ref:`🔗<class_float_operator_unminus>`

Restituisce il valore negativo del **float**. Se positivo, rende il numero negativo. Se negativo, rende il numero positivo. Con i numeri in virgola mobile, il numero zero può essere sia positivo sia negativo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
