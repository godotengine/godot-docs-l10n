:github_url: hide

.. _class_AnimationNodeOneShot:

AnimationNodeOneShot
====================

**Eredita:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Riproduce un'animazione una sola volta in un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A resource to add to an :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. This animation node will execute a sub-animation and return once it finishes. Blend times for fading in and out can be customized, as well as filters.

After setting the request and changing the animation playback, the one-shot node automatically clears the request on the next process frame by setting its ``request`` value to :ref:`ONE_SHOT_REQUEST_NONE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_NONE>`.


.. tabs::

 .. code-tab:: gdscript

    # Play child animation connected to "shot" port.
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE)
    # Alternative syntax (same result as above).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE

    # Abort child animation connected to "shot" port.
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT)
    # Alternative syntax (same result as above).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT

    # Abort child animation with fading out connected to "shot" port.
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT)
    # Alternative syntax (same result as above).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT

    # Get current state (read-only).
    animation_tree.get("parameters/OneShot/active")
    # Alternative syntax (same result as above).
    animation_tree["parameters/OneShot/active"]

    # Get current internal state (read-only).
    animation_tree.get("parameters/OneShot/internal_active")
    # Alternative syntax (same result as above).
    animation_tree["parameters/OneShot/internal_active"]

 .. code-tab:: csharp

    // Play child animation connected to "shot" port.
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Fire);

    // Abort child animation connected to "shot" port.
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Abort);

    // Abort child animation with fading out connected to "shot" port.
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.FadeOut);

    // Get current state (read-only).
    animationTree.Get("parameters/OneShot/active");

    // Get current internal state (read-only).
    animationTree.Get("parameters/OneShot/internal_active");



Optionally, signals can be used by setting an :ref:`AnimationNodeObserverOneShot<class_AnimationNodeObserverOneShot>` through :ref:`AnimationTree<class_AnimationTree>`.


.. tabs::

 .. code-tab:: gdscript

    var observer = tree.get("parameters/OneShot/observer")
    observer.started.connect(on_one_shot_started)

 .. code-tab:: csharp

    var observer = animationTree.Get("parameters/OneShot/observer").As<AnimationNodeObserverOneShot>();
    observer.Started += OnOneShotStarted;



.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`abort_on_reset<class_AnimationNodeOneShot_property_abort_on_reset>`                     | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>`                           | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`autorestart_delay<class_AnimationNodeOneShot_property_autorestart_delay>`               | ``1.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`autorestart_random_delay<class_AnimationNodeOneShot_property_autorestart_random_delay>` | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`break_loop_at_end<class_AnimationNodeOneShot_property_break_loop_at_end>`               | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>`                         | :ref:`fadein_curve<class_AnimationNodeOneShot_property_fadein_curve>`                         |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`fadein_time<class_AnimationNodeOneShot_property_fadein_time>`                           | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>`                         | :ref:`fadeout_curve<class_AnimationNodeOneShot_property_fadeout_curve>`                       |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`                         | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` | :ref:`mix_mode<class_AnimationNodeOneShot_property_mix_mode>`                                 | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AnimationNodeOneShot_OneShotRequest:

.. rst-class:: classref-enumeration

enum **OneShotRequest**: :ref:`🔗<enum_AnimationNodeOneShot_OneShotRequest>`

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_NONE** = ``0``

Lo stato predefinito della richiesta. Niente è eseguito.

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_FIRE** = ``1``

La richiesta di riprodurre l'animazione collegata alla porta "shot".

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_ABORT:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_ABORT** = ``2``

La richiesta di interrompere l'animazione collegata alla porta "shot".

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FADE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_FADE_OUT** = ``3``

La richiesta di dissolvere in uscita l'animazione collegata alla porta "shot".

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeOneShot_MixMode:

.. rst-class:: classref-enumeration

enum **MixMode**: :ref:`🔗<enum_AnimationNodeOneShot_MixMode>`

.. _class_AnimationNodeOneShot_constant_MIX_MODE_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **MIX_MODE_BLEND** = ``0``

Fonde due animazioni. Vedi anche :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`.

.. _class_AnimationNodeOneShot_constant_MIX_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **MIX_MODE_ADD** = ``1``

Fonde due animazioni additivamente. Vedi anche :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimationNodeOneShot_property_abort_on_reset:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **abort_on_reset** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_abort_on_reset>`

.. rst-class:: classref-property-setget

- |void| **set_abort_on_reset**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_aborted_on_reset**\ (\ )

Se ``true``, la sotto-animazione verrà interrotta se ripresa con un ripristino dopo un'interruzione precedente.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autorestart** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autorestart**\ (\ )

Se ``true``, la sottoanimazione si riavvia automaticamente dopo che è terminata.

In altre parole, per cominciare a riavviare automaticamente, l'animazione deve essere riprodotta una volta con la richiesta :ref:`ONE_SHOT_REQUEST_FIRE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE>`. La richiesta :ref:`ONE_SHOT_REQUEST_ABORT<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_ABORT>` impedisce il riavvio automatico, ma non disabilita :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>` da solo. Così, la richiesta :ref:`ONE_SHOT_REQUEST_FIRE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE>` comincierà a riavviare automaticamente.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart_delay:

.. rst-class:: classref-property

:ref:`float<class_float>` **autorestart_delay** = ``1.0`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart_delay>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart_delay**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_autorestart_delay**\ (\ )

Il ritardo dopo il quale viene attivato il riavvio automatico, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart_random_delay:

.. rst-class:: classref-property

:ref:`float<class_float>` **autorestart_random_delay** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart_random_delay>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart_random_delay**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_autorestart_random_delay**\ (\ )

Se :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>` è ``true``, un ritardo casuale aggiuntivo (in secondi) tra 0 e questo valore verrà aggiunto a :ref:`autorestart_delay<class_AnimationNodeOneShot_property_autorestart_delay>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_break_loop_at_end:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **break_loop_at_end** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_break_loop_at_end>`

.. rst-class:: classref-property-setget

- |void| **set_break_loop_at_end**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_loop_broken_at_end**\ (\ )

Se ``true``, interrompe la ripetizione alla fine del ciclo per la transizione, anche se l'animazione è in ripetizione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadein_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **fadein_curve** :ref:`🔗<class_AnimationNodeOneShot_property_fadein_curve>`

.. rst-class:: classref-property-setget

- |void| **set_fadein_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_fadein_curve**\ (\ )

Determina il modo in cui la dissolvenza incrociata tra le animazioni è allentata. Se vuoto, la transizione sarà lineare. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadein_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fadein_time** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_fadein_time>`

.. rst-class:: classref-property-setget

- |void| **set_fadein_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fadein_time**\ (\ )

La durata della dissolvenza in entrata. Ad esempio, impostando questo a ``1.0`` per un'animazione lunga 5 secondi produrrà una dissolvenza incrociata che inizia a 0 secondi e termina a 1 secondo durante l'animazione.

\ **Nota:** **AnimationNodeOneShot** passa lo stato attuale dopo la fine della dissolvenza.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadeout_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **fadeout_curve** :ref:`🔗<class_AnimationNodeOneShot_property_fadeout_curve>`

.. rst-class:: classref-property-setget

- |void| **set_fadeout_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_fadeout_curve**\ (\ )

Determina il modo in cui la dissolvenza incrociata tra le animazioni è allentata. Se vuoto, la transizione sarà lineare. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadeout_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fadeout_time** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_fadeout_time>`

.. rst-class:: classref-property-setget

- |void| **set_fadeout_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fadeout_time**\ (\ )

La durata della dissolvenza in uscita. Ad esempio, impostando questo a ``1.0`` per un'animazione lunga 5 secondi produrrà una dissolvenza incrociata che inizia a 0 secondi e termina a 1 secondo durante l'animazione.

\ **Nota:** **AnimationNodeOneShot** passa lo stato attuale dopo la fine della dissolvenza.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_mix_mode:

.. rst-class:: classref-property

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **mix_mode** = ``0`` :ref:`🔗<class_AnimationNodeOneShot_property_mix_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_mode**\ (\ value\: :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>`\ )
- :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **get_mix_mode**\ (\ )

Il tipo di fusione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
