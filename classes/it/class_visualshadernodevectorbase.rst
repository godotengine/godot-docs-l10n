:github_url: hide

.. _class_VisualShaderNodeVectorBase:

VisualShaderNodeVectorBase
==========================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShaderNodeFaceForward<class_VisualShaderNodeFaceForward>`, :ref:`VisualShaderNodeVectorCompose<class_VisualShaderNodeVectorCompose>`, :ref:`VisualShaderNodeVectorDecompose<class_VisualShaderNodeVectorDecompose>`, :ref:`VisualShaderNodeVectorDistance<class_VisualShaderNodeVectorDistance>`, :ref:`VisualShaderNodeVectorFunc<class_VisualShaderNodeVectorFunc>`, :ref:`VisualShaderNodeVectorLen<class_VisualShaderNodeVectorLen>`, :ref:`VisualShaderNodeVectorOp<class_VisualShaderNodeVectorOp>`, :ref:`VisualShaderNodeVectorRefract<class_VisualShaderNodeVectorRefract>`

Un tipo base per i nodi che eseguono operazioni vettoriali all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa è una classe astratta. Vedi tipi derivati per descrizioni delle operazioni possibili.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` | :ref:`op_type<class_VisualShaderNodeVectorBase_property_op_type>` | ``1`` |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeVectorBase_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeVectorBase_OpType>`

.. _class_VisualShaderNodeVectorBase_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **OP_TYPE_VECTOR_2D** = ``0``

Un tipo di vettore 2D.

.. _class_VisualShaderNodeVectorBase_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **OP_TYPE_VECTOR_3D** = ``1``

Un tipo di vettore 3D.

.. _class_VisualShaderNodeVectorBase_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **OP_TYPE_VECTOR_4D** = ``2``

Un tipo di vettore 4D.

.. _class_VisualShaderNodeVectorBase_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **OP_TYPE_MAX** = ``3``

Rappresenta la dimensione dell'enumerazione :ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeVectorBase_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **op_type** = ``1`` :ref:`🔗<class_VisualShaderNodeVectorBase_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **get_op_type**\ (\ )

Un tipo di vettore su cui questa operazione viene eseguita.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
