:github_url: hide

.. _class_VisualShaderNodeSmoothStep:

VisualShaderNodeSmoothStep
==========================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Calcola una funzione di SmoothStep all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Tradotto come ``smoothstep(edge0, edge1, x)`` nel linguaggio di shader.

Restituisce ``0.0`` se ``x`` è minore di ``edge0`` e ``1.0`` se ``x`` è maggiore di ``edge1``. Altrimenti, il valore di ritorno è interpolato tra ``0.0`` e ``1.0`` utilizzando i polinomi di Hermite.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` | :ref:`op_type<class_VisualShaderNodeSmoothStep_property_op_type>` | ``0`` |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeSmoothStep_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeSmoothStep_OpType>`

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_SCALAR** = ``0``

Un tipo scalare in virgola mobile.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Un tipo di vettore 2D.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

La porta ``x`` utilizza un tipo di vettore 2D. Le prime due porte utilizzano un tipo di scalare in virgola mobile.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

Un tipo di vettore 3D.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

La porta ``x`` utilizza un tipo di vettore 3D. Le prime due porte utilizzano un tipo di scalare in virgola mobile.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Un tipo di vettore 4D.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

Le porte ``a`` e ``b`` utilizzano un tipo di vettore 4D. La porta ``weight`` utilizza un tipo scalare.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_MAX** = ``7``

Rappresenta la dimensione dell'enumerazione :ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeSmoothStep_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeSmoothStep_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **get_op_type**\ (\ )

Un tipo di operandi e valore restituito.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
