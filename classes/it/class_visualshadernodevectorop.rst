:github_url: hide

.. _class_VisualShaderNodeVectorOp:

VisualShaderNodeVectorOp
========================

**Eredita:** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un operatore vettoriale da utilizzare all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo di visual shader per l'uso di operatori vettoriali. Funziona su un vettore ``a`` e un vettore ``b``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` | :ref:`operator<class_VisualShaderNodeVectorOp_property_operator>` | ``0`` |
   +---------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeVectorOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeVectorOp_Operator>`

.. _class_VisualShaderNodeVectorOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ADD** = ``0``

Aggiunge due vettori.

.. _class_VisualShaderNodeVectorOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_SUB** = ``1``

Sottrae un vettore da un altro vettore.

.. _class_VisualShaderNodeVectorOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MUL** = ``2``

Moltiplica due vettori.

.. _class_VisualShaderNodeVectorOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_DIV** = ``3``

Divide due vettori.

.. _class_VisualShaderNodeVectorOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MOD** = ``4``

Restituisce il resto dei due vettori.

.. _class_VisualShaderNodeVectorOp_constant_OP_POW:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_POW** = ``5``

Restituisce il valore del primo parametro elevato alla potenza del secondo, per ogni componente dei vettori.

.. _class_VisualShaderNodeVectorOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MAX** = ``6``

Restituisce il valore maggiore tra i due valori, per ogni componente dei vettori.

.. _class_VisualShaderNodeVectorOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MIN** = ``7``

Restituisce il valore minore tra i due valori, per ogni componente dei vettori.

.. _class_VisualShaderNodeVectorOp_constant_OP_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_CROSS** = ``8``

Calcola il prodotto vettoriale di due vettori.

.. _class_VisualShaderNodeVectorOp_constant_OP_ATAN2:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ATAN2** = ``9``

Restituisce l'arcotangente dei parametri.

.. _class_VisualShaderNodeVectorOp_constant_OP_REFLECT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_REFLECT** = ``10``

Restituisce il vettore che punta nella direzione della riflessione. ``a`` è vettore incidente e ``b`` è il vettore normale.

.. _class_VisualShaderNodeVectorOp_constant_OP_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_STEP** = ``11``

Operatore di passo vettoriale. Restituisce ``0.0`` se ``a`` è minore di ``b`` e ``1.0`` altrimenti.

.. _class_VisualShaderNodeVectorOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ENUM_SIZE** = ``12``

Rappresenta la dimensione dell'enumerazione :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeVectorOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeVectorOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **get_operator**\ (\ )

L'operatore da utilizzare.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
