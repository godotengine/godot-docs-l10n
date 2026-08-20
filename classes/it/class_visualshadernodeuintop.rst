:github_url: hide

.. _class_VisualShaderNodeUIntOp:

VisualShaderNodeUIntOp
======================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un operatore di intero scalare senza segno da utilizzare all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Applica l'operazione :ref:`operator<class_VisualShaderNodeUIntOp_property_operator>` a due interi senza segno in ingresso: ``a`` e ``b``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` | :ref:`operator<class_VisualShaderNodeUIntOp_property_operator>` | ``0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeUIntOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeUIntOp_Operator>`

.. _class_VisualShaderNodeUIntOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_ADD** = ``0``

Somma due numeri usando ``a + b``.

.. _class_VisualShaderNodeUIntOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_SUB** = ``1``

Sottrae due numeri usando ``a - b``.

.. _class_VisualShaderNodeUIntOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_MUL** = ``2``

Moltiplica due numeri usando ``a * b``.

.. _class_VisualShaderNodeUIntOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_DIV** = ``3``

Divide due numeri usando ``a / b``.

.. _class_VisualShaderNodeUIntOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_MOD** = ``4``

Calcola il resto di due numeri usando ``a % b``.

.. _class_VisualShaderNodeUIntOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_MAX** = ``5``

Restituisce il numero maggiore tra due numeri. Tradotto come ``max(a, b)`` nel Godot Shader Language.

.. _class_VisualShaderNodeUIntOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_MIN** = ``6``

Restituisce il minimo di due numeri. Tradotto come ``max(a, b)`` nel Godot Shader Language.

.. _class_VisualShaderNodeUIntOp_constant_OP_BITWISE_AND:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_BITWISE_AND** = ``7``

Restituisce il risultato dell'operazione sui bit ``AND`` sull'intero. Tradotto come ``a & b`` nel Godot Shader Language.

.. _class_VisualShaderNodeUIntOp_constant_OP_BITWISE_OR:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_BITWISE_OR** = ``8``

Restituisce il risultato dell'operazione sui bit ``OR`` su due interi. Tradotto come ``a | b`` nel Godot Shader Language.

.. _class_VisualShaderNodeUIntOp_constant_OP_BITWISE_XOR:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_BITWISE_XOR** = ``9``

Restituisce il risultato dell'operazione sui bit ``XOR`` su due interi. Tradotto come ``a ^ b`` nel Godot Shader Language.

.. _class_VisualShaderNodeUIntOp_constant_OP_BITWISE_LEFT_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_BITWISE_LEFT_SHIFT** = ``10``

Restituisce il risultato dell'operazione di spostamento bit a sinistra sull'intero. Tradotto come ``a << b`` nel Godot Shader Language.

.. _class_VisualShaderNodeUIntOp_constant_OP_BITWISE_RIGHT_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_BITWISE_RIGHT_SHIFT** = ``11``

Restituisce il risultato dell'operazione di spostamento bit a destra sull'intero. Tradotto come ``a >> b`` nel Godot Shader Language.

.. _class_VisualShaderNodeUIntOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **OP_ENUM_SIZE** = ``12``

Rappresenta la dimensione dell'enumerazione :ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeUIntOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeUIntOp_Operator>` **get_operator**\ (\ )

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
