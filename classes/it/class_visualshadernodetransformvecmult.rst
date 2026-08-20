:github_url: hide

.. _class_VisualShaderNodeTransformVecMult:

VisualShaderNodeTransformVecMult
================================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Moltiplica un :ref:`Transform3D<class_Transform3D>` e un :ref:`Vector3<class_Vector3>` all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'operazione di moltiplicazione su una trasformazione (matrice 4×4) e un vettore, con supporto per diversi operatori di moltiplicazione.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` | :ref:`operator<class_VisualShaderNodeTransformVecMult_property_operator>` | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeTransformVecMult_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformVecMult_Operator>`

.. _class_VisualShaderNodeTransformVecMult_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_AxB** = ``0``

Moltiplica la trasformazione ``a`` per il vettore ``b``.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_BxA** = ``1``

Moltiplica il vettore ``b`` per la trasformazione ``a``.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_AxB** = ``2``

Moltiplica la trasformazione ``a`` per il vettore ``b``, saltando l'ultima riga e colonna della trasformazione.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_BxA** = ``3``

Moltiplica il vettore ``b`` per la trasformazione ``a``, saltando l'ultima riga e colonna della trasformazione.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_MAX** = ``4``

Rappresenta la dimensione dell'enumerazione :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeTransformVecMult_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformVecMult_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **get_operator**\ (\ )

Il tipo di moltiplicazione da eseguire.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
