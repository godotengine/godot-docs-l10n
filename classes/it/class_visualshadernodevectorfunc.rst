:github_url: hide

.. _class_VisualShaderNodeVectorFunc:

VisualShaderNodeVectorFunc
==========================

**Eredita:** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Funzione vettoriale da utilizzare all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo di visual shader in grado di eseguire diverse funzioni utilizzando vettori.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` | :ref:`function<class_VisualShaderNodeVectorFunc_property_function>` | ``0`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeVectorFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeVectorFunc_Function>`

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NORMALIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NORMALIZE** = ``0``

Normalizza il vettore in modo che abbia una lunghezza di ``1`` ma che punti nella stessa direzione.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SATURATE** = ``1``

Limita il valore tra ``0.0`` e ``1.0``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NEGATE** = ``2``

Restituisce il valore opposto del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RECIPROCAL** = ``3``

Restituisce ``1/vector``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ABS** = ``4``

Restituisce il valore assoluto del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOS** = ``5``

Restituisce l'arcocoseno del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOSH** = ``6``

Restituisce il coseno iperbolico inverso del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASIN** = ``7``

Restituisce l'arcoseno del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASINH** = ``8``

Restituisce il seno iperbolico inverso del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATAN** = ``9``

Restituisce l'arcotangente del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATANH** = ``10``

Restituisce la tangente iperbolica inversa del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_CEIL** = ``11``

Trova il numero intero più vicino che sia maggiore o uguale al parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COS** = ``12``

Restituisce il coseno del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COSH** = ``13``

Restituisce il coseno iperbolico del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_DEGREES** = ``14``

Converte una quantità di radianti in gradi.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP** = ``15``

Esponenziale in base e.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP2** = ``16``

Esponenziale in base 2.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FLOOR** = ``17``

Trova il numero intero più vicino che sia minore o uguale al parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FRACT** = ``18``

Calcola la parte frazionaria dell'argomento.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_INVERSE_SQRT** = ``19``

Restituisce l'inversa della radice quadrata del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG** = ``20``

Logaritmo naturale.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG2** = ``21``

Logaritmo in base 2.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RADIANS** = ``22``

Converte una quantità in gradi in radianti.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUND** = ``23``

Trova il numero intero più vicino al parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUNDEVEN** = ``24``

Trova il numero intero pari più vicino al parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIGN** = ``25``

Estrae il segno del parametro, ossia restituisce ``-1`` se il parametro è negativo, ``1`` se è positivo e ``0`` altrimenti.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIN** = ``26``

Restituisce il seno del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SINH** = ``27``

Restituisce il seno iperbolico del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SQRT** = ``28``

Restituisce la radice quadrata del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TAN** = ``29``

Restituisce la tangente del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TANH** = ``30``

Restituisce la tangente iperbolica del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TRUNC** = ``31``

Restituisce un valore uguale all'intero più vicino al parametro il cui valore assoluto non è maggiore del valore assoluto del parametro.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ONEMINUS** = ``32``

Restituisce ``1.0 - vector``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_MAX** = ``33``

Rappresenta la dimensione dell'enumerazione :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeVectorFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeVectorFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **get_function**\ (\ )

La funzione da eseguire.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
