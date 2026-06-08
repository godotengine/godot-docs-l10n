:github_url: hide

.. _class_SceneTreeTimer:

SceneTreeTimer
==============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Timer a colpo singolo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un timer a colpo singolo gestito dall'albero di scene, che emette :ref:`timeout<class_SceneTreeTimer_signal_timeout>` al completamento. Vedi anche :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

A differenza di :ref:`Timer<class_Timer>`, non richiede l'istanziazione di un nodo. Comunemente utilizzato per creare un timer di ritardo a colpo singolo come nel seguente esempio:


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("Timer started.")
        await get_tree().create_timer(1.0).timeout
        print("Timer ended.")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("Timer started.");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("Timer ended.");
    }



Il timer verrà dereferenziato dopo che il suo tempo è trascorso. Per conservare il timer, puoi mantenere un riferimento ad esso. Vedi :ref:`RefCounted<class_RefCounted>`.

\ **Nota:** Il timer viene elaborato dopo tutti i nodi nel frame attuale, ovvero il metodo :ref:`Node._process()<class_Node_private_method__process>` del nodo verrebbe chiamato prima del timer (o :ref:`Node._physics_process()<class_Node_private_method__physics_process>` se ``process_in_physics`` in :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>` è stato impostato su ``true``).

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`time_left<class_SceneTreeTimer_property_time_left>` |
   +---------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_SceneTreeTimer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_SceneTreeTimer_signal_timeout>`

Emesso quando il timer raggiunge 0.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SceneTreeTimer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_SceneTreeTimer_property_time_left>`

.. rst-class:: classref-property-setget

- |void| **set_time_left**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_left**\ (\ )

Il tempo rimanente (in secondi).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
