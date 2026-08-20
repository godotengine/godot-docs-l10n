:github_url: hide

.. _class_RichTextEffect:

RichTextEffect
==============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un effetto personalizzato per un :ref:`RichTextLabel<class_RichTextLabel>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un effetto personalizzato per un :ref:`RichTextLabel<class_RichTextLabel>`, che può essere caricato nell'Ispettore di un :ref:`RichTextLabel<class_RichTextLabel>` o attraverso :ref:`RichTextLabel.install_effect()<class_RichTextLabel_method_install_effect>`.

\ **Nota:** Affinché un **RichTextEffect** sia utilizzabile, è necessario definire un tag BBCode come variabile membro con il nome ``bbcode`` nello script.


.. tabs::

 .. code-tab:: gdscript

    # Sarà possibile usare il RichTextEffect in questo modo: `[example]Some text[/example]`
    var bbcode = "example"

 .. code-tab:: csharp

    // Sarà possibile usare il RichTextEffect in questo modo: `[example]Some text[/example]`
    string bbcode = "example";



\ **Nota:** Non appena un :ref:`RichTextLabel<class_RichTextLabel>` contiene almeno un **RichTextEffect**, elaborerà continuamente l'effetto a meno che il progetto non sia in pausa. Ciò potrebbe avere un impatto negativo sulla durata della batteria.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`BBCode in RichTextLabel <../tutorials/ui/bbcode_in_richtextlabel>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_custom_fx<class_RichTextEffect_private_method__process_custom_fx>`\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RichTextEffect_private_method__process_custom_fx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_custom_fx**\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| :ref:`🔗<class_RichTextEffect_private_method__process_custom_fx>`

Sovrascrivi questo metodo per modificare le proprietà in ``char_fx``. Il metodo deve restituire ``true`` se il carattere può essere trasformato correttamente. Se il metodo restituisce ``false``, ignorerà la trasformazione per evitare di visualizzare testo incorretto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
