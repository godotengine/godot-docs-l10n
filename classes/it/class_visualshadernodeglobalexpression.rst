:github_url: hide

.. _class_VisualShaderNodeGlobalExpression:

VisualShaderNodeGlobalExpression
================================

**Eredita:** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>` **<** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un'espressione globale personalizzata per il grafico di visual shader scritta nel Godot Shading Language.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Espressione personalizzata nel Godot Shader Language, che viene posizionata in cima allo shader generato. È possibile posizionare varie definizioni di funzioni all'interno per richiamarle in seguito in :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>` (che sono iniettate nelle funzioni principali dello shader). È possibile anche dichiarare varying, uniformi e costanti globali.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
