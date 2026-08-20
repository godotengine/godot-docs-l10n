:github_url: hide

.. _class_VisualShaderNodeTransformOp:

VisualShaderNodeTransformOp
===========================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un operatore :ref:`Transform3D<class_Transform3D>` da utilizzare all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Applica l'operazione :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>` a due trasformazioni (matrici 4×4) in ingresso.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` | :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>` | ``0`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeTransformOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformOp_Operator>`

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB** = ``0``

Moltiplica la trasformazione ``a`` per la trasformazione ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA** = ``1``

Moltiplica la trasformazione ``b`` per la trasformazione ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB_COMP** = ``2``

Esegue una moltiplicazione per ogni componente della trasformazione ``a`` per la trasformazione ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA_COMP** = ``3``

Esegue una moltiplicazione per ogni componente della trasformazione ``b`` per la trasformazione ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_ADD** = ``4``

Aggiunge due trasformazioni.

.. _class_VisualShaderNodeTransformOp_constant_OP_A_MINUS_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_MINUS_B** = ``5``

Sottrae la trasformazione ``a`` dalla trasformazione ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_B_MINUS_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_MINUS_A** = ``6``

Sottrae la trasformazione ``b`` dalla trasformazione ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_A_DIV_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_DIV_B** = ``7``

Divide la trasformazione ``a`` per la trasformazione ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_B_DIV_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_DIV_A** = ``8``

Divide la trasformazione ``b`` per la trasformazione ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_MAX** = ``9``

Rappresenta la dimensione dell'enumerazione :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeTransformOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **get_operator**\ (\ )

Il tipo di operazione da eseguire sulle trasformazioni.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
