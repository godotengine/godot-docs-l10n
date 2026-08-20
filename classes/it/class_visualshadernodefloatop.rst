:github_url: hide

.. _class_VisualShaderNodeFloatOp:

VisualShaderNodeFloatOp
=======================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un operatore scalare in virgola mobile da utilizzare all'interno del grafico del visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Applica :ref:`operator<class_VisualShaderNodeFloatOp_property_operator>` a due input in virgola mobile: ``a`` e ``b``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` | :ref:`operator<class_VisualShaderNodeFloatOp_property_operator>` | ``0`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeFloatOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeFloatOp_Operator>`

.. _class_VisualShaderNodeFloatOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ADD** = ``0``

Somma due numeri usando ``a + b``.

.. _class_VisualShaderNodeFloatOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_SUB** = ``1``

Sottrae due numeri usando ``a - b``.

.. _class_VisualShaderNodeFloatOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MUL** = ``2``

Moltiplica due numeri usando ``a * b``.

.. _class_VisualShaderNodeFloatOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_DIV** = ``3``

Divide due numeri usando ``a / b``.

.. _class_VisualShaderNodeFloatOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MOD** = ``4``

Calcola il resto di due numeri. Tradotto come ``mod(a, b)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatOp_constant_OP_POW:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_POW** = ``5``

Eleva ``a`` alla potenza di ``b``. Tradotto come ``pow(a, b)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MAX** = ``6``

Restituisce il numero maggiore tra due numeri. Tradotto come ``max(a, b)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MIN** = ``7``

Restituisce il numero minore tra due numeri. Tradotto come ``max(a, b)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatOp_constant_OP_ATAN2:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ATAN2** = ``8``

Restituisce l'arcotangente dei parametri. Tradotto come ``atan(a, b)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatOp_constant_OP_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_STEP** = ``9``

Genera una funzione di passo confrontando ``b``\ (x) a ``a``\ (edge). Restituisce 0.0 se ``x`` è minore di ``edge`` e altrimenti 1.0. Tradotto come ``step(a, b)`` nel Godot Shader Language.

.. _class_VisualShaderNodeFloatOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ENUM_SIZE** = ``10``

Rappresenta la dimensione dell'enumerazione :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeFloatOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeFloatOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **get_operator**\ (\ )

Un operatore da applicare agli ingressi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
