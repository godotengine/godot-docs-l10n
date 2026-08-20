:github_url: hide

.. _class_AnimationNodeTimeSeek:

AnimationNodeTimeSeek
=====================

**Eredita:** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo di animazione per ricercare nel tempo usato in :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo di animazione può essere usato per attivare un comando di ricerca a qualsiasi figlio del grafico di animazione. Utilizzalo per riprodurre un':ref:`Animation<class_Animation>` dall'inizio o una certa posizione di riproduzione all'interno del :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

Dopo aver impostato il tempo e cambiata la riproduzione dell'animazione, il nodo di ricerca del tempo va automaticamente in modalità di riposo sul prossimo frame di processo impostando il suo valore di ``seek_request`` a ``-1.0``.


.. tabs::

 .. code-tab:: gdscript

    # Riproduce l'animazione figlia dall'inizio.
    animation_tree.set("parameters/TimeSeek/seek_request", 0.0)
    # Alternative syntax (same result as above).
    animation_tree["parameters/TimeSeek/seek_request"] = 0.0

    # Riproduce l'animazione figlia dal timestamp di 12 secondi.
    animation_tree.set("parameters/TimeSeek/seek_request", 12.0)
    # Alternative syntax (same result as above).
    animation_tree["parameters/TimeSeek/seek_request"] = 12.0

 .. code-tab:: csharp

    // Riproduce l'animazione figlia dall'inizio.
    animationTree.Set("parameters/TimeSeek/seek_request", 0.0);

    // Riproduce l'animazione figlia dal timestamp di 12 secondi.
    animationTree.Set("parameters/TimeSeek/seek_request", 12.0);



.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`explicit_elapse<class_AnimationNodeTimeSeek_property_explicit_elapse>` | ``true`` |
   +-------------------------+------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimationNodeTimeSeek_property_explicit_elapse:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **explicit_elapse** = ``true`` :ref:`🔗<class_AnimationNodeTimeSeek_property_explicit_elapse>`

.. rst-class:: classref-property-setget

- |void| **set_explicit_elapse**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_explicit_elapse**\ (\ )

Se ``true``, sono eseguiti alcuni processi per gestire le chiavi tra le funzioni di ricerca, come il calcolo del movimento radice e la ricerca della chiave discreta più vicina.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
