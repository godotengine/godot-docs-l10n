:github_url: hide

.. _class_VisualShaderNodeClamp:

VisualShaderNodeClamp
=====================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Limita un valore all'interno del grafico di shader visivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Limita un valore a essere compreso tra i valori ``min`` e ``max``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeClamp_OpType>` | :ref:`op_type<class_VisualShaderNodeClamp_property_op_type>` | ``0`` |
   +--------------------------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeClamp_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeClamp_OpType>`

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_FLOAT** = ``0``

Uno scalare in virgola mobile.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_INT** = ``1``

Uno scalare intero.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_UINT** = ``2``

Uno scalare intero senza segno.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_VECTOR_2D** = ``3``

Un tipo di vettore 2D.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_VECTOR_3D** = ``4``

Un tipo di vettore 3D.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Un tipo di vettore 4D.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_MAX** = ``6``

Rappresenta la dimensione dell'enumerazione :ref:`OpType<enum_VisualShaderNodeClamp_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeClamp_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeClamp_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeClamp_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **get_op_type**\ (\ )

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
