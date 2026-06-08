:github_url: hide

.. _class_ShaderGlobalsOverride:

ShaderGlobalsOverride
=====================

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo utilizzato per sovrascrivere i valori dei parametri globali di shader in una scena.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Similmente a come un nodo :ref:`WorldEnvironment<class_WorldEnvironment>` può essere utilizzato per sovrascrivere l'ambiente mentre una scena specifica è caricata, **ShaderGlobalsOverride** può essere utilizzato per sovrascrivere temporaneamente i parametri globali di shader. Una volta rimosso il nodo, i valori dell'intero progetto per i parametri globali di shader sono ripristinati. Vedi i metodi ``global_shader_parameter_*`` del :ref:`RenderingServer<class_RenderingServer>` per ulteriori informazioni.

\ **Nota:** Può essere utilizzato solo uno **ShaderGlobalsOverride** per scena. Se c'è più di un nodo **ShaderGlobalsOverride** nell'albero di scene, solo il primo nodo (in ordine di albero) sarà preso in considerazione.

\ **Nota:** Tutti i nodi **ShaderGlobalsOverride** sono resi parte di un gruppo ``"shader_overrides_group"`` quando sono aggiunti all'albero di scene. Il nodo **ShaderGlobalsOverride** attualmente attivo ha anche un gruppo ``"shader_overrides_group_active"`` aggiunto. Puoi usarlo per verificare quale nodo **ShaderGlobalsOverride** è attualmente attivo.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Linguaggio di shading <../tutorials/shaders/shader_reference/shading_language>`

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
