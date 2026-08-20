:github_url: hide

.. _class_VisualShaderNodeFloatFunc:

VisualShaderNodeFloatFunc
=========================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una funzione scalare in virgola mobile da utilizzare all'interno del grafico di shader visivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Accetta uno scalare in virgola mobile (``x``) sulla porta di ingresso e lo trasforma a seconda della :ref:`function<class_VisualShaderNodeFloatFunc_property_function>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------+--------+
   | :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` | :ref:`function<class_VisualShaderNodeFloatFunc_property_function>` | ``13`` |
   +----------------------------------------------------------+--------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeFloatFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeFloatFunc_Function>`

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIN** = ``0``

Restituisce il seno del parametro. Tradotto come ``sin(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COS** = ``1``

Restituisce il coseno del parametro. Tradotto come ``cos(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TAN** = ``2``

Restituisce la tangente del parametro. Tradotto come ``tan(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASIN** = ``3``

Restituisce l'arcoseno del parametro. Tradotto come ``asin(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOS** = ``4``

Restituisce l'arcocoseno del parametro. Tradotto come ``acos(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATAN** = ``5``

Restituisce l'arcotangente del parametro. Tradotto come ``atan(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SINH** = ``6``

Restituisce il seno iperbolico del parametro. Tradotto come ``sinh(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COSH** = ``7``

Restituisce il coseno iperbolico del parametro. Tradotto come ``cosh(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TANH** = ``8``

Restituisce la tangente iperbolica del parametro. Tradotto come ``tanh(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG** = ``9``

Restituisce il logaritmo naturale del parametro. Tradotto come ``log(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP** = ``10``

Restituisce l'esponanzione naturale del parametro. Tradotto come ``exp(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SQRT** = ``11``

Restituisce la radice quadrata del parametro. Tradotto come ``sqrt(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ABS** = ``12``

Restituisce il valore assoluto del parametro. Tradotto come ``abs(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIGN** = ``13``

Restituisce il segno del parametro. Tradotto come ``sign(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FLOOR** = ``14``

Trova il numero intero più vicino che sia minore o uguale al parametro. Tradotto come ``floor(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUND** = ``15``

Trova il numero intero più vicino al parametro. Tradotto come ``round(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_CEIL** = ``16``

Trova il numero intero più vicino che sia maggiore o uguale al parametro. Tradotto come ``ceil(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FRACT** = ``17``

Calcola la parte frazionaria dell'argomento. Tradotto come ``fract(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SATURATE** = ``18``

Limita il valore tra ``0.0`` e ``1.0`` tramite ``min(max(x, 0.0), 1.0)``.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_NEGATE** = ``19``

Nega la ``x`` usando ``-(x)``.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOSH** = ``20``

Restituisce l'arcocoseno iperbolico del parametro. Tradotto come ``acosh(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASINH** = ``21``

Restituisce l'arcoseno iperbolico del parametro. Tradotto come ``asinh(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATANH** = ``22``

Restituisce l'arcotangente iperbolico del parametro. Tradotto come ``atanh(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_DEGREES** = ``23``

Converte una quantità in radianti a gradi. Tradotto come ``degrees(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP2** = ``24``

Restituisce 2 elevato alla potenza del parametro. Tradotto come ``exp2(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_INVERSE_SQRT** = ``25``

Restituisce l'inversa della radice quadrata del parametro. Tradotto come ``inversesqrt(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG2** = ``26``

Restituisce il logaritmo in base 2 del parametro. Tradotto come ``log2(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RADIANS** = ``27``

Converte una quantità in gradi a radianti. Tradotto come ``radians(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RECIPROCAL** = ``28``

Trova il valore reciproco di divisione per 1 da ``x`` (cioè ``1 / x``).

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUNDEVEN** = ``29``

Trova l'intero pari più vicino al parametro. Tradotto come ``roundEven(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TRUNC** = ``30``

Restituisce un valore uguale all'intero più vicino a ``x`` il cui valore assoluto non è più grande del valore assoluto di ``x``. Tradotto come ``trunc(x)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ONEMINUS** = ``31``

Sottrae la ``x`` scalare da 1 (cioè ``1 - x``).

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_MAX** = ``32``

Rappresenta la dimensione dell'enumerazione :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeFloatFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **function** = ``13`` :ref:`🔗<class_VisualShaderNodeFloatFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **get_function**\ (\ )

Una funzione da applicare allo scalare.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
