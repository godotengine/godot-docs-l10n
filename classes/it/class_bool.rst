:github_url: hide

.. _class_bool:

bool
====

Un tipo booleano integrato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il **bool** è un tipo :ref:`Variant<class_Variant>` integrato che può memorizzare solo uno dei due valori: ``true`` o ``false``. Puoi immaginarlo come un interruttore che può essere acceso o spento, o come una cifra binaria che può essere 1 o 0.

I booleani possono essere utilizzati direttamente in ``if`` e in altre istruzioni condizionali:


.. tabs::

 .. code-tab:: gdscript

    var can_shoot = true
    if can_shoot:
        launch_bullet()

 .. code-tab:: csharp

    bool canShoot = true;
    if (canShoot)
    {
        LaunchBullet();
    }



Tutti gli operatori di confronto restituiscono valori booleani (``==``, ``>``, ``<=``, ecc.). Pertanto, non è necessario confrontare i booleani stessi. Non è necessario aggiungere ``== true`` o ``== false``.

I booleani possono essere combinati con gli operatori logici ``and``, ``or``, ``not`` per creare condizioni complesse:


.. tabs::

 .. code-tab:: gdscript

    if bullets > 0 and not is_reloading():
        launch_bullet()

    if bullets == 0 or is_reloading():
        play_clack_sound()

 .. code-tab:: csharp

    if (bullets > 0 && !IsReloading())
    {
        LaunchBullet();
    }

    if (bullets == 0 || IsReloading())
    {
        PlayClackSound();
    }



\ **Nota:** Nei linguaggi di programmazione moderni, gli operatori logici sono valutati in ordine. Tutte le condizioni restanti sono saltate se il loro risultato non avrebbe alcun effetto sul valore finale. Questo concetto è noto come `valutazione a corto circuito <https://it.wikipedia.org/wiki/Valutazione_a_corto_circuito>`__ e può essere utile per evitare di valutare condizioni costose in alcuni casi critici per le prestazioni.

\ **Nota:** Per convenzione, i metodi e le proprietà integrate che restituiscono booleani sono generalmente definiti come domande sì-no, singoli aggettivi, o simili (:ref:`String.is_empty()<class_String_method_is_empty>`, :ref:`Node.can_process()<class_Node_method_can_process>`, :ref:`Camera2D.enabled<class_Camera2D_property_enabled>`, ecc.).

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ )                                   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`float<class_float>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`int<class_int>`\ )     |
   +-------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_bool_operator_neq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<<class_bool_operator_lt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_bool_operator_eq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ><class_bool_operator_gt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_bool_constructor_bool:

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ ) :ref:`🔗<class_bool_constructor_bool>`

Costruisce un **bool** impostato su ``false``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`bool<class_bool>`\ )

Costruisce un **bool** come copia del **bool** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`float<class_float>`\ )

Casts a :ref:`float<class_float>` value to a **bool**. Returns ``false`` if ``from`` is equal to ``0.0`` (including ``-0.0``), and ``true`` for all other values (including :ref:`@GDScript.INF<class_@GDScript_constant_INF>` and :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>`).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`int<class_int>`\ )

Casts an :ref:`int<class_int>` value to a **bool**. Returns ``false`` if ``from`` is equal to ``0``, and ``true`` for all other values.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_bool_operator_neq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_neq_bool>`

Returns ``true`` if one **bool** is ``true`` and the other **bool** is ``false``. Equivalent to logical XOR (NEQ).

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_lt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_lt_bool>`

Returns ``true`` if the left **bool** is ``false`` and ``right`` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_eq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_eq_bool>`

Returns ``true`` if both **bool**\ s are ``true``, or if both **bool**\ s are ``false``. Equivalent to logical XNOR (EQ).

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_gt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_gt_bool>`

Returns ``true`` if the left **bool** is ``true`` and ``right`` is ``false``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
