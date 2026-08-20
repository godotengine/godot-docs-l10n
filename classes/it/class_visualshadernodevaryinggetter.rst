:github_url: hide

.. _class_VisualShaderNodeVaryingGetter:

VisualShaderNodeVaryingGetter
=============================

**Eredita:** :ref:`VisualShaderNodeVarying<class_VisualShaderNodeVarying>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo di visual shader che ottiene un valore di un varying.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Produce un valore di un varying definito nel shader. È necessario prima creare un varying che può essere utilizzato nella funzione fornita, ad esempio, un getter di varying nel Fragment shader richiede un varying con la sua modalità impostata a :ref:`VisualShader.VARYING_MODE_VERTEX_TO_FRAG_LIGHT<class_VisualShader_constant_VARYING_MODE_VERTEX_TO_FRAG_LIGHT>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
