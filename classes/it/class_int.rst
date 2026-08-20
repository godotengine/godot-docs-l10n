:github_url: hide

.. _class_int:

int
===

Un tipo integrato per gli interi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Tipo intero a 64 bit con segno. Ciò significa che può assumere valori da ``-2^63`` a ``2^63 - 1``, ovvero da ``-9223372036854775808`` a ``9223372036854775807``. Quando supera questi limiti, si avvolgerà.

Gli **int** possono essere automaticamente convertiti in :ref:`float<class_float>` quando necessario, ad esempio quando sono passati come argomenti nelle funzioni. Il :ref:`float<class_float>` sarà il più vicino possibile all'intero originale.

Allo stesso modo, i :ref:`float<class_float>` possono essere automaticamente convertiti in **int**. Ciò troncherà il :ref:`float<class_float>`, scartando tutto ciò che segue la virgola mobile.

\ **Nota:** In un contesto booleano, un **int** sarà valutato come ``false`` se è uguale a ``0``, e come ``true`` altrimenti.


.. tabs::

 .. code-tab:: gdscript

    var x: int = 1 # x è 1
    x = 4.2 # x è 4, perché 4.2 viene troncato
    var max_int = 9223372036854775807 # Il valore più grande che un int può memorizzare
    max_int += 1 # max_int è ora -9223372036854775808, perché è stato avvolto

 .. code-tab:: csharp

    int x = 1; // x è 1
    x = (int)4.2; // x è 4, perché 4.2 viene troncato
    // Di seguito utilizziamo long, perché l'int di GDScript è a 64 bit mentre l'int di C# è a 32 bit.
    long maxLong = 9223372036854775807; // Il valore più grande che un long può memorizzare
    maxLong++; // maxLong è ora -9223372036854775808, perché è stato avvolto.

    // In alternativa con il tipo int a 32 bit di C#, che ha un valore massimo inferiore.
    int maxInt = 2147483647; // Il valore più grande che un int può memorizzare
    maxInt++; // maxInt è ora -2147483648, perché è stato avvolto



Puoi usare il letterale ``0b`` per la rappresentazione binaria, il letterale ``0x`` per la rappresentazione esadecimale e il simbolo ``_`` per separare i numeri lunghi e migliorare la leggibilità.


.. tabs::

 .. code-tab:: gdscript

    var x = 0b1001 # x è 9
    var y = 0xF5 # y è 245
    var z = 10_000_000 # z è 10000000

 .. code-tab:: csharp

    int x = 0b1001; // x è 9
    int y = 0xF5; // y è 245
    int z = 10_000_000; // z è 10000000



.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ )                                     |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`int<class_int>`\ )       |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`String<class_String>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`bool<class_bool>`\ )     |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`float<class_float>`\ )   |
   +-----------------------+---------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_int_operator_neq_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_int_operator_neq_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator %<class_int_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator &<class_int_operator_bwand_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`operator *<class_int_operator_mul_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_int_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_int_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`     | :ref:`operator *<class_int_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_int_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`     | :ref:`operator *<class_int_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_int_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>`     | :ref:`operator *<class_int_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_int_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator *<class_int_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_int_operator_pow_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator **<class_int_operator_pow_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_int_operator_sum_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator +<class_int_operator_sum_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_int_operator_dif_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator -<class_int_operator_dif_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_int_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator /<class_int_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_int_operator_lt_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_int_operator_lt_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator \<\<<class_int_operator_bwsl_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_int_operator_lte_float>`\ (\ right\: :ref:`float<class_float>`\ )              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_int_operator_lte_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_int_operator_eq_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_int_operator_eq_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_int_operator_gt_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_int_operator_gt_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_int_operator_gte_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_int_operator_gte_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator >><class_int_operator_bwsr_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator ^<class_int_operator_bwxor_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator unary+<class_int_operator_unplus>`\ (\ )                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator unary-<class_int_operator_unminus>`\ (\ )                                                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator |<class_int_operator_bwor_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator ~<class_int_operator_bwnot>`\ (\ )                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_int_constructor_int:

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ ) :ref:`🔗<class_int_constructor_int>`

Costruisce un **int** impostato su ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`int<class_int>`\ )

Costruisce un **int** come copia del **int** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`String<class_String>`\ )

Costruisce un nuovo **int** da una :ref:`String<class_String>`, seguendo le stesse regole del metodo :ref:`String.to_int()<class_String_method_to_int>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`bool<class_bool>`\ )

Costruisce un nuovo **int** da un :ref:`bool<class_bool>`. ``true`` è convertito a ``1`` e ``false`` è convertito a ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`float<class_float>`\ )

Costruisce un nuovo **int** da un :ref:`float<class_float>`. Questo troncherà il :ref:`float<class_float>`, scartando ogni cifra che segue la virgola mobile.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_int_operator_neq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_neq_float>`

Restituisce ``true`` se l'**int** non è equivalente al :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_neq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_neq_int>`

Restituisce ``true`` se gli **int** non sono uguali.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mod_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_mod_int>`

Restituisce il resto dopo aver diviso due **int**. Utilizza la divisione troncata, che restituisce un numero negativo se il dividendo è negativo. Se ciò non è desiderato, considera l'utilizzo di :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>`.

::

    print(6 % 2) # Stampa 0
    print(11 % 4) # Stampa 3
    print(-5 % 3) # Stampa -2

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwand_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator &**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwand_int>`

Esegue l'operazione bitwise ``AND``.

::

    print(0b1100 & 0b1010) # Stampa 8 (binario 1000)

Questo è utile per recuperare i flag binari da una variabile.

::

    var flags = 0b101
    # Controlla se il primo o il secondo bit sono abilitati.
    if flags & 0b011:
    do_stuff() # Questa riga sarà eseguita.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_int_operator_mul_Color>`

Moltiplica ogni componente del :ref:`Color<class_Color>` per l'**int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_int_operator_mul_Quaternion>`

Moltiplica ogni componente del :ref:`Quaternion<class_Quaternion>` per l'**int**. Questa operazione non ha senso di per sé, ma può essere utilizzata come parte di un'espressione più ampia.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_int_operator_mul_Vector2>`

Moltiplica ogni componente del :ref:`Vector2<class_Vector2>` per l'**int**.

::

    print(2 * Vector2(1, 4)) # Stampa (2, 8)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_int_operator_mul_Vector2i>`

Moltiplica ogni componente del :ref:`Vector2i<class_Vector2i>` per l'**int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_int_operator_mul_Vector3>`

Moltiplica ogni componente del :ref:`Vector3<class_Vector3>` per l'**int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_int_operator_mul_Vector3i>`

Moltiplica ogni componente del :ref:`Vector3i<class_Vector3i>` per l'**int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_int_operator_mul_Vector4>`

Moltiplica ogni componente del :ref:`Vector4<class_Vector4>` per l'**int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_int_operator_mul_Vector4i>`

Moltiplica ogni componente del :ref:`Vector4i<class_Vector4i>` per l'**int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_mul_float>`

Moltiplica il :ref:`float<class_float>` per l'**int**. Il risultato è un :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_mul_int>`

Moltiplica i due **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_pow_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_pow_float>`

Eleva un **int** alla potenza di un :ref:`float<class_float>`. Il risultato è un :ref:`float<class_float>`.

::

    print(2 ** 0.5) # Stampa 1.4142135623731

.. rst-class:: classref-item-separator

----

.. _class_int_operator_pow_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ****\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_pow_int>`

Eleva l'**int** sinistro alla potenza dell'**int** destro.

::

    stampa(3 ** 4) # Stampe 81

.. rst-class:: classref-item-separator

----

.. _class_int_operator_sum_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_sum_float>`

Aggiunge l'**int** e il :ref:`float<class_float>`. Il risultato è un :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_sum_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator +**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_sum_int>`

Aggiunge i due **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_dif_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_dif_float>`

Sottrae il :ref:`float<class_float>` dall'**int**. Il risultato è un :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_dif_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator -**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_dif_int>`

Sottrae i due **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_div_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_div_float>`

Divide l'**int** per il :ref:`float<class_float>`. Il risultato è un :ref:`float<class_float>`.

::

    print(10 / 3.0) # Stampa 3.33333333333333

.. rst-class:: classref-item-separator

----

.. _class_int_operator_div_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_div_int>`

Divide i due **int**. Il risultato è un **int**. Questo troncherà il :ref:`float<class_float>`, scartando ogni cifra dopo il punto decimale.

::

    Stampa(6 / 2) # Stampa 3
    stampa(5 / 3) # Stampa 1

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_lt_float>`

Restituisce ``true`` se l'**int** è minore del :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_lt_int>`

Restituisce ``true`` se l'**int** sinistro è minore dell'**int** destro.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwsl_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator <<**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwsl_int>`

Esegue l'operazione di spostamento bit a sinistra. In pratica è uguale alla moltiplicazione per una potenza di 2.

::

    print(0b1010 << 1) # Stampa 20 (binario 10100)
    print(0b1010 << 3) # Stampa 80 (binario 1010000)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_lte_float>`

Restituisce ``true`` se l'**int** è minore o uguale al :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_lte_int>`

Restituisce ``true`` se l'**int** sinistro è minore o uguale all'**int** destro.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_eq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_eq_float>`

Restituisce ``true`` se l'**int** è uguale al :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_eq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_eq_int>`

Restituisce ``true`` se i due **int** sono uguali.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_gt_float>`

Restituisce ``true`` se l'**int** è maggiore del :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_gt_int>`

Restituisce ``true`` se l'**int** sinistro è maggiore dell'**int** destro.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_gte_float>`

Restituisce ``true`` se il **int** è maggiore o uguale al :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_gte_int>`

Restituisce ``true`` se l'**int** sinistro è maggiore o uguale all'**int** destro.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwsr_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator >>**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwsr_int>`

Esegue l'operazione di spostamento bit a destra. In pratica è uguale alla divisione per una potenza di 2.

::

    print(0b1010 >> 1) # Stampa 5 (binario 101)
    print(0b1010 >> 2) # Stampa 2 (binario 10)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwxor_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ^**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwxor_int>`

Esegue l'operazione bitwise ``XOR``.

::

    print(0b1100 ^ 0b1010) # Stampa 6 (110 in binario)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_unplus:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator unary+**\ (\ ) :ref:`🔗<class_int_operator_unplus>`

Restituisce lo stesso valore come se ``+`` non ci fosse. Il ``+`` unario non fa nulla, ma a volte può rendere il tuo codice più leggibile.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_unminus:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator unary-**\ (\ ) :ref:`🔗<class_int_operator_unminus>`

Restituisce il valore negativo di **int**. Se positivo, rende il numero negativo. Se negativo, rende il numero positivo. Se zero, non fa nulla.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwor_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator |**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwor_int>`

Esegue l'operazione bitwise ``OR``.

::

    print(0b1100 | 0b1010) # Stampa 14 (binario 1110)

Questo è utile per memorizzare i flag binari in una variabile.

::

    var flags = 0
    flags |= 0b101 # Attiva il primo e il terzo bit.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwnot:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ~**\ (\ ) :ref:`🔗<class_int_operator_bwnot>`

Esegue l'operazione bitwise ``NOT`` sull'**int**. A causa del `Completamento a due <https://it.wikipedia.org/wiki/Complemento_a_due>`__, è effettivamente uguale a ``-(int + 1)``.

::

    print(~4) # Stampa -5
    print(~(-7)) # Stampa 6

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
