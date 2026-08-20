:github_url: hide

.. _class_VisualShaderNodeExpression:

VisualShaderNodeExpression
==========================

**Eredita:** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>`

Un'espressione di grafico di shader visivo scritta nel Godot Shading Language.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Espressione personalizzata nel Godot Shading Language, con un numero personalizzato di porte di ingresso e uscita.

Il codice fornito è iniettato direttamente nella funzione dello shader corrispondente del grafico (``vertex``, ``fragment`` o ``light``), quindi non può essere utilizzato per dichiarare funzioni, varying, uniformi o costanti globali. Vedi :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>` per tali definizioni globali.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`expression<class_VisualShaderNodeExpression_property_expression>` | ``""`` |
   +-----------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeExpression_property_expression:

.. rst-class:: classref-property

:ref:`String<class_String>` **expression** = ``""`` :ref:`🔗<class_VisualShaderNodeExpression_property_expression>`

.. rst-class:: classref-property-setget

- |void| **set_expression**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_expression**\ (\ )

Un'espressione nel Godot Shading Language, che sarà iniettata all'inizio della funzione dello shader corrispondente del grafico (``vertex``, ``fragment`` o ``light``) e quindi non può essere utilizzata per dichiarare funzioni, varying, uniformi o costanti globali.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
